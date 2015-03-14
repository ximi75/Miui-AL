.class public Lcom/kingsoft/email/statistics/AppDeviceInfo;
.super Ljava/lang/Object;
.source "AppDeviceInfo.java"


# static fields
.field private static final CHANNEL_NAME:Ljava/lang/String; = "channel"

.field private static final COMMIT_ID:Ljava/lang/String; = "commit_id"

.field public static final NETWORKTYPE_2G:Ljava/lang/String; = "2G"

.field public static final NETWORKTYPE_3G:Ljava/lang/String; = "3G"

.field public static final NETWORKTYPE_4G:Ljava/lang/String; = "4G"

.field public static final NETWORKTYPE_INVALID:Ljava/lang/String; = "unknown"

.field public static final NETWORKTYPE_WAP:Ljava/lang/String; = "wap"

.field public static final NETWORKTYPE_WIFI:Ljava/lang/String; = "WIFI"

.field public static final ST_APP_CHANNEL_NAME:Ljava/lang/String; = "channel"

.field public static final ST_APP_ID:Ljava/lang/String; = "appId"

.field public static final ST_APP_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final ST_APP_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field public static final ST_APP_VERSION_NAME:Ljava/lang/String; = "appVersion"

.field public static final ST_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static final ST_DEVICE_IMEI:Ljava/lang/String; = "imei"

.field public static final ST_DEVICE_NAME:Ljava/lang/String; = "deviceName"

.field public static final ST_DEVICE_PIXEL:Ljava/lang/String; = "resolution"

.field public static final ST_NET_CARRIERS:Ljava/lang/String; = "carriers"

.field public static final ST_NET_TYPE:Ljava/lang/String; = "network"

.field public static final ST_SYSTEM_LANGUAGE:Ljava/lang/String; = "language"

.field public static final ST_SYSTEM_RELEASE:Ljava/lang/String; = "sysVersion"

.field private static mInstance:Lcom/kingsoft/email/statistics/AppDeviceInfo;


# instance fields
.field private DeviceID:Ljava/lang/String;

.field private DeviceIMEI:Ljava/lang/String;

.field private DeviceName:Ljava/lang/String;

.field private DevicePixel:Ljava/lang/String;

.field private appChannelName:Ljava/lang/String;

.field private appID:Ljava/lang/String;

.field private appVersionCode:I

.field private appVersionName:Ljava/lang/String;

.field private carriers:Ljava/lang/String;

.field private commitId:Ljava/lang/String;

.field private mAppContext:Landroid/content/Context;

.field private netType:Ljava/lang/String;

.field private systemApi:Ljava/lang/String;

.field private systemLanguage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "con"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mAppContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->tryOpenMAC(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getMacAddress(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/kingsoft/email/statistics/AppDeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/statistics/AppDeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->DeviceID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->tryCloseMAC(Landroid/net/wifi/WifiManager;)V

    return-void
.end method

.method private getHDMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "con"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 224
    const-string/jumbo v5, "xieyi"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 225
    .local v2, "settings":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "deviceid"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "mac":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v4, v1

    .line 265
    :goto_0
    return-object v4

    .line 230
    :cond_0
    const-string/jumbo v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 231
    .local v3, "wifi":Landroid/net/wifi/WifiManager;
    if-nez v3, :cond_1

    .line 232
    const-string/jumbo v4, ""

    goto :goto_0

    .line 234
    :cond_1
    invoke-static {v3}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getMacAddress(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 236
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 237
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "deviceid"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 238
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v4, v1

    .line 239
    goto :goto_0

    .line 242
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    new-instance v5, Lcom/kingsoft/email/statistics/AppDeviceInfo$1;

    invoke-direct {v5, p0, v3, v2}, Lcom/kingsoft/email/statistics/AppDeviceInfo$1;-><init>(Lcom/kingsoft/email/statistics/AppDeviceInfo;Landroid/net/wifi/WifiManager;Landroid/content/SharedPreferences;)V

    invoke-virtual {v5}, Lcom/kingsoft/email/statistics/AppDeviceInfo$1;->start()V

    goto :goto_0
.end method

.method private static getMacAddress(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 2
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 270
    .local v0, "wifi":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 273
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getNetWorkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    const-string/jumbo v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 302
    .local v0, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 304
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 305
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, "type":Ljava/lang/String;
    const-string/jumbo v6, "WIFI"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 308
    const-string/jumbo v6, "WIFI"

    .line 325
    .end local v5    # "type":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 309
    .restart local v5    # "type":Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "MOBILE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 310
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "proxyHost":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 312
    const-string/jumbo v6, "wap"

    goto :goto_0

    .line 314
    :cond_1
    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 316
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    .line 317
    .local v3, "subType":I
    const/16 v6, 0xd

    if-ne v3, v6, :cond_2

    .line 318
    const-string/jumbo v6, "4G"

    goto :goto_0

    .line 321
    :cond_2
    invoke-static {v3}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->isFastMobileNetwork(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "3G"

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "2G"

    goto :goto_0

    .line 325
    .end local v2    # "proxyHost":Ljava/lang/String;
    .end local v3    # "subType":I
    .end local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v5    # "type":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "unknown"

    goto :goto_0
.end method

.method protected static getSimCarriers(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 295
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 296
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static getSystemVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getTheAppDeviceInfo(Landroid/content/Context;)Lcom/kingsoft/email/statistics/AppDeviceInfo;
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 213
    sget-object v0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mInstance:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    if-nez v0, :cond_1

    .line 214
    const-class v1, Lcom/kingsoft/email/statistics/AppDeviceInfo;

    monitor-enter v1

    .line 215
    :try_start_0
    sget-object v0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mInstance:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mInstance:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    .line 218
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_1
    sget-object v0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mInstance:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    return-object v0

    .line 218
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static isFastMobileNetwork(I)Z
    .locals 2
    .param p0, "subType"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 328
    packed-switch p0, :pswitch_data_0

    .line 362
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 336
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 338
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 342
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 344
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 346
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 348
    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 350
    goto :goto_0

    :pswitch_8
    move v0, v1

    .line 352
    goto :goto_0

    :pswitch_9
    move v0, v1

    .line 354
    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 358
    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private static tryCloseMAC(Landroid/net/wifi/WifiManager;)V
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 288
    return-void
.end method

.method private static tryOpenMAC(Landroid/net/wifi/WifiManager;)Z
    .locals 3
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "softOpenWifi":Z
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 279
    .local v1, "state":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 280
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 281
    const/4 v0, 0x1

    .line 283
    :cond_0
    return v0
.end method


# virtual methods
.method public getAppChannelName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 101
    iget-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->appChannelName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 106
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "channel"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->appChannelName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->appChannelName:Ljava/lang/String;

    return-object v2

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->appChannelName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 129
    iget-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->appID:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 131
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 134
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "appId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->appID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->appID:Ljava/lang/String;

    return-object v2

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->appID:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 5

    .prologue
    .line 88
    iget v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->appVersionCode:I

    if-nez v2, :cond_0

    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 92
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->appVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    iget v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->appVersionCode:I

    return v2

    .line 93
    .restart local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 75
    iget-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->appVersionName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 76
    const/4 v1, 0x0

    .line 78
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 79
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->appVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->appVersionName:Ljava/lang/String;

    return-object v2

    .line 80
    .restart local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCarriers()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    iget-object v1, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->carriers:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getSimCarriers(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "c":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .end local v0    # "c":Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->carriers:Ljava/lang/String;

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->carriers:Ljava/lang/String;

    return-object v1
.end method

.method public getCommitId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 115
    iget-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->commitId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 120
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "commit_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->commitId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->commitId:Ljava/lang/String;

    return-object v2

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->commitId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->DeviceID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getHDMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->DeviceID:Ljava/lang/String;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->DeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIMEI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 202
    iget-object v1, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->DeviceIMEI:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mAppContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 205
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    :goto_0
    iput-object v1, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->DeviceIMEI:Ljava/lang/String;

    .line 207
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->DeviceIMEI:Ljava/lang/String;

    return-object v1

    .line 205
    .restart local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->DeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->DeviceName:Ljava/lang/String;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->DeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicePixel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 154
    iget-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->DevicePixel:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mAppContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 156
    .local v1, "manager":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 157
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->DevicePixel:Ljava/lang/String;

    .line 160
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "manager":Landroid/view/WindowManager;
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->DevicePixel:Ljava/lang/String;

    return-object v2
.end method

.method public getNetType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->netType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getNetWorkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->netType:Ljava/lang/String;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->netType:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->systemApi:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 174
    invoke-static {}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getSystemVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->systemApi:Ljava/lang/String;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->systemApi:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->systemLanguage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 181
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->systemLanguage:Ljava/lang/String;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/statistics/AppDeviceInfo;->systemLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AppDeviceInfo :\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "appVersion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string/jumbo v1, "versionCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string/jumbo v1, "channel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string/jumbo v1, "deviceId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string/jumbo v1, "resolution"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getDevicePixel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string/jumbo v1, "deviceName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string/jumbo v1, "imei"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getDeviceIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string/jumbo v1, "sysVersion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getSystemApi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string/jumbo v1, "language"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getSystemLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string/jumbo v1, "carriers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getCarriers()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getNetType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
