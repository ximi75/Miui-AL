.class public Lcom/kingsoft/email/statistics/URLMap;
.super Ljava/lang/Object;
.source "URLMap.java"


# static fields
.field private static final CONTACT_FETCH:Ljava/lang/String; = "contacts/fetch"

.field private static final CONTACT_PUSH:Ljava/lang/String; = "contacts/push"

.field public static final DEBUG_HOST:Ljava/lang/String; = "http://192.168.134.67:9090/wpsmail-api/"

.field public static final FEED_BACK_URL:Ljava/lang/String; = "config/feedback"

.field public static final FETCH_CONFIG_URL:Ljava/lang/String; = "config/fetch"

.field public static final GET_DOMAIN_PROMPT_URL:Ljava/lang/String; = "config/suggestion"

.field public static final HOST:Ljava/lang/String; = "http://www.kmail.com/wpsmail-api/"

.field public static final PUSH_CONFIG_URL:Ljava/lang/String; = "config/push"

.field public static final PUSH_EVENT_URL:Ljava/lang/String; = "report/event"

.field public static final PUSH_EXCEPTION_URL:Ljava/lang/String; = "report/exception"

.field public static final PUSH_UPGRADE_CONFIG_URL:Ljava/lang/String; = "config/collect"

.field public static final PUSH_USER_INFO:Ljava/lang/String; = "report/account"

.field public static final SER_ERR_MAP_URL:Ljava/lang/String; = "lg/errorMap"

.field public static final SINGNATURE_FETCH:Ljava/lang/String; = "sign/fetch"

.field public static final SINGNATURE_PUSH:Ljava/lang/String; = "sign/push"

.field public static final SWITCH_URL:Ljava/lang/String; = "switch/check"

.field public static final UPGRADE_URL:Ljava/lang/String; = "upgrade/check"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCollectConfigUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/kingsoft/email/statistics/URLMap;->getUrlHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "config/collect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContactFetchUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 114
    const-string/jumbo v0, "http://www.kmail.com/wpsmail-api/contacts/fetch"

    return-object v0
.end method

.method public static getContactPushUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 110
    const-string/jumbo v0, "http://www.kmail.com/wpsmail-api/contacts/push"

    return-object v0
.end method

.method public static getDomainPromptUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 61
    const-string/jumbo v0, "http://www.kmail.com/wpsmail-api/config/suggestion"

    return-object v0
.end method

.method public static getFeedBackUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/kingsoft/email/statistics/URLMap;->getUrlHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "config/feedback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFetchConfigUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 69
    const-string/jumbo v0, "http://www.kmail.com/wpsmail-api/config/fetch"

    return-object v0
.end method

.method public static getPushConfigUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/kingsoft/email/statistics/URLMap;->getUrlHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "config/push"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPushEventUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/kingsoft/email/statistics/URLMap;->getUrlHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "report/event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPushExceptionUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/kingsoft/email/statistics/URLMap;->getUrlHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "report/exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSerLoginErrMapUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "http://www.kmail.com/wpsmail-api/lg/errorMap"

    return-object v0
.end method

.method public static getSignatureFetchUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/kingsoft/email/statistics/URLMap;->getUrlHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sign/fetch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSignaturePushUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/kingsoft/email/statistics/URLMap;->getUrlHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sign/push"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSwitchUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/kingsoft/email/statistics/URLMap;->getUrlHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "switch/check"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpgradeUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/kingsoft/email/statistics/URLMap;->getUrlHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "upgrade/check"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUrlHost(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-static {p0}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string/jumbo v0, "http://192.168.134.67:9090/wpsmail-api/"

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "http://www.kmail.com/wpsmail-api/"

    goto :goto_0
.end method

.method public static getUserDataUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/kingsoft/email/statistics/URLMap;->getUrlHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "report/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDebug(Landroid/content/Context;)Z
    .locals 3
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-static {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getTheAppDeviceInfo(Landroid/content/Context;)Lcom/kingsoft/email/statistics/AppDeviceInfo;

    move-result-object v1

    .line 120
    .local v1, "info":Lcom/kingsoft/email/statistics/AppDeviceInfo;
    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppChannelName()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "channel":Ljava/lang/String;
    const-string/jumbo v2, "DEBUG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
