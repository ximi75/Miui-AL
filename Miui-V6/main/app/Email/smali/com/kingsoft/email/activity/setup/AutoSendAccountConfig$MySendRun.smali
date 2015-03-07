.class Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;
.super Ljava/lang/Object;
.source "AutoSendAccountConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySendRun"
.end annotation


# instance fields
.field email:Ljava/lang/String;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p3, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 183
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;->this$0:Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;->mData:Ljava/util/List;

    .line 185
    iput-object p3, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;->url:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public constructor <init>(Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;->this$0:Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;->mData:Ljava/util/List;

    .line 190
    iput-object p3, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;->url:Ljava/lang/String;

    .line 191
    iput-object p4, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;->email:Ljava/lang/String;

    .line 192
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 196
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;->this$0:Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;

    iget-object v5, v5, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->ConfigPush:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    invoke-static {v5, v6}, Lcom/kingsoft/email/statistics/DataPushSwitch;->getSwitchInfoByType(Landroid/content/Context;Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;)Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;

    move-result-object v3

    .line 198
    .local v3, "reportSwitch":Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;
    iget-boolean v5, v3, Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;->on:Z

    if-nez v5, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;->this$0:Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;

    # getter for: Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->mHttpUtils:Lcom/kingsoft/email/statistics/KingSoftHttpUtils;
    invoke-static {v5}, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->access$000(Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;)Lcom/kingsoft/email/statistics/KingSoftHttpUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;->url:Ljava/lang/String;

    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;->mData:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->connected(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "json":Ljava/lang/String;
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;->this$0:Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;

    iget-object v5, v5, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/kingsoft/email/statistics/URLMap;->getPushConfigUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 203
    invoke-static {v1}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->isErrRes(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 206
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;->this$0:Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;

    invoke-virtual {v5, v1}, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->parasejson(Ljava/lang/String;)I

    move-result v0

    .line 207
    .local v0, "configId":I
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;->this$0:Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;

    iget-object v5, v5, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "xieyi"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 208
    .local v4, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 209
    .local v2, "localEditor":Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;->email:Ljava/lang/String;

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
