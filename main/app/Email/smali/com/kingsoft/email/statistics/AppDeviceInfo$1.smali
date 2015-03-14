.class Lcom/kingsoft/email/statistics/AppDeviceInfo$1;
.super Ljava/lang/Thread;
.source "AppDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/statistics/AppDeviceInfo;->getHDMacAddress(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/statistics/AppDeviceInfo;

.field final synthetic val$settings:Landroid/content/SharedPreferences;

.field final synthetic val$wifi:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/statistics/AppDeviceInfo;Landroid/net/wifi/WifiManager;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo$1;->this$0:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    iput-object p2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo$1;->val$wifi:Landroid/net/wifi/WifiManager;

    iput-object p3, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo$1;->val$settings:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 244
    iget-object v5, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo$1;->val$wifi:Landroid/net/wifi/WifiManager;

    # invokes: Lcom/kingsoft/email/statistics/AppDeviceInfo;->tryOpenMAC(Landroid/net/wifi/WifiManager;)Z
    invoke-static {v5}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->access$000(Landroid/net/wifi/WifiManager;)Z

    move-result v3

    .line 245
    .local v3, "isOkWifi":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v5, 0xa

    if-ge v2, v5, :cond_0

    .line 246
    iget-object v5, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo$1;->val$wifi:Landroid/net/wifi/WifiManager;

    # invokes: Lcom/kingsoft/email/statistics/AppDeviceInfo;->getMacAddress(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    invoke-static {v5}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->access$100(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "mac":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 248
    iget-object v5, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo$1;->this$0:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    # setter for: Lcom/kingsoft/email/statistics/AppDeviceInfo;->DeviceID:Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->access$202(Lcom/kingsoft/email/statistics/AppDeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    iget-object v5, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo$1;->val$settings:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 250
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "deviceid"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "mac":Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_1

    .line 261
    iget-object v5, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo$1;->val$wifi:Landroid/net/wifi/WifiManager;

    # invokes: Lcom/kingsoft/email/statistics/AppDeviceInfo;->tryCloseMAC(Landroid/net/wifi/WifiManager;)V
    invoke-static {v5}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->access$300(Landroid/net/wifi/WifiManager;)V

    .line 263
    :cond_1
    return-void

    .line 255
    .restart local v4    # "mac":Ljava/lang/String;
    :cond_2
    const-wide/16 v5, 0x1f4

    :try_start_0
    invoke-static {v5, v6}, Lcom/kingsoft/email/statistics/AppDeviceInfo$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
