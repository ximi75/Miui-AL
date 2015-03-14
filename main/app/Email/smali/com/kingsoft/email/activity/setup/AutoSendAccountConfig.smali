.class public Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;
.super Ljava/lang/Object;
.source "AutoSendAccountConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;
    }
.end annotation


# static fields
.field private static mSender:Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;


# instance fields
.field mContext:Landroid/content/Context;

.field private mHttpUtils:Lcom/kingsoft/email/statistics/KingSoftHttpUtils;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "con"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->getIntance()Lcom/kingsoft/email/statistics/KingSoftHttpUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->mHttpUtils:Lcom/kingsoft/email/statistics/KingSoftHttpUtils;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;)Lcom/kingsoft/email/statistics/KingSoftHttpUtils;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->mHttpUtils:Lcom/kingsoft/email/statistics/KingSoftHttpUtils;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 38
    const-class v1, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->mSender:Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->mSender:Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;

    .line 41
    :cond_0
    sget-object v0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->mSender:Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getMD5ParasConfig(Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;Lcom/android/emailcommon/provider/HostAuth;)Ljava/util/List;
    .locals 10
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "recvAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .param p3, "sendAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/provider/HostAuth;",
            "Lcom/android/emailcommon/provider/HostAuth;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "domain"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "recvProtocol"

    iget-object v7, p2, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "recvAddress"

    iget-object v7, p2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "recvPort"

    iget v7, p2, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "recvFlags"

    iget v7, p2, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    const/4 v2, 0x0

    .line 131
    .local v2, "recvTemplate":Ljava/lang/String;
    iget-object v5, p2, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    const-string/jumbo v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 132
    iget-object v5, p2, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    const-string/jumbo v2, "email"

    .line 146
    :goto_0
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "recvTemplate"

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "sendProtocol"

    iget-object v7, p3, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "sendAddress"

    iget-object v7, p3, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "sendPort"

    iget v7, p3, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "sendFlags"

    iget v7, p3, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    const/4 v3, 0x0

    .line 154
    .local v3, "sendTemplate":Ljava/lang/String;
    iget-object v5, p3, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    const-string/jumbo v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 155
    iget-object v5, p3, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 156
    const-string/jumbo v3, "email"

    .line 169
    :goto_1
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "sendTemplate"

    invoke-direct {v5, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getTheAppDeviceInfo(Landroid/content/Context;)Lcom/kingsoft/email/statistics/AppDeviceInfo;

    move-result-object v0

    .line 171
    .local v0, "device":Lcom/kingsoft/email/statistics/AppDeviceInfo;
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "channel"

    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppChannelName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "appVersion"

    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppVersionName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-object v1

    .line 135
    .end local v0    # "device":Lcom/kingsoft/email/statistics/AppDeviceInfo;
    .end local v3    # "sendTemplate":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "user"

    goto/16 :goto_0

    .line 138
    :cond_1
    iget-object v5, p2, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    const-string/jumbo v6, "\\\\"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "temStr":[Ljava/lang/String;
    aget-object v2, v4, v8

    .line 140
    aget-object v5, v4, v9

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\\email"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 143
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\\user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 158
    .end local v4    # "temStr":[Ljava/lang/String;
    .restart local v3    # "sendTemplate":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "user"

    goto :goto_1

    .line 161
    :cond_4
    iget-object v5, p3, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    const-string/jumbo v6, "\\\\"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 162
    .restart local v4    # "temStr":[Ljava/lang/String;
    aget-object v3, v4, v8

    .line 163
    aget-object v5, v4, v9

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\\email"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 166
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\\user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public loginFeedBack(Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;Ljava/util/ArrayList;)V
    .locals 13
    .param p1, "success"    # Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p2, "fails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;>;"
    const/4 v12, -0x1

    .line 47
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 48
    .local v7, "res":Lorg/json/JSONObject;
    const/4 v4, -0x1

    .line 49
    .local v4, "from":I
    if-eqz p1, :cond_0

    .line 50
    iget v4, p1, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->from:I

    .line 51
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 52
    .local v3, "exs":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .local v1, "ex":Lorg/json/JSONObject;
    const-string/jumbo v10, "configId"

    iget-object v11, p1, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->id:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 55
    const-string/jumbo v10, "successList"

    invoke-virtual {v7, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .end local v1    # "ex":Lorg/json/JSONObject;
    .end local v3    # "exs":Lorg/json/JSONArray;
    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 58
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 59
    .restart local v3    # "exs":Lorg/json/JSONArray;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;

    .line 60
    .local v8, "setup":Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .restart local v1    # "ex":Lorg/json/JSONObject;
    iget-object v10, v8, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;->exce:Lcom/kingsoft/emailcommon/mail/MessagingException;

    invoke-virtual {v10}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    .line 62
    .local v2, "exception":I
    const/4 v10, 0x5

    if-eq v2, v10, :cond_1

    .line 63
    const-string/jumbo v10, "configId"

    iget-object v11, v8, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;->id:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string/jumbo v10, "reason"

    invoke-virtual {v1, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 66
    if-ne v4, v12, :cond_1

    .line 67
    iget v4, v8, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;->type:I

    goto :goto_0

    .line 70
    .end local v1    # "ex":Lorg/json/JSONObject;
    .end local v2    # "exception":I
    .end local v8    # "setup":Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$FailSetup;
    :cond_2
    const-string/jumbo v10, "failList"

    invoke-virtual {v7, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    .end local v3    # "exs":Lorg/json/JSONArray;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    if-ne v4, v12, :cond_4

    .line 84
    :goto_1
    return-void

    .line 75
    :cond_4
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getTheAppDeviceInfo(Landroid/content/Context;)Lcom/kingsoft/email/statistics/AppDeviceInfo;

    move-result-object v0

    .line 76
    .local v0, "device":Lcom/kingsoft/email/statistics/AppDeviceInfo;
    const-string/jumbo v10, "channel"

    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppChannelName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string/jumbo v10, "appVersion"

    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppVersionName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string/jumbo v10, "fetchType"

    invoke-virtual {v7, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v6, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v11, "content"

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/kingsoft/email/statistics/URLMap;->getFeedBackUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 83
    .local v9, "url":Ljava/lang/String;
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;

    invoke-direct {v11, p0, v6, v9}, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;-><init>(Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public parasejson(Ljava/lang/String;)I
    .locals 4
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 218
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 223
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return v1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendBackCorrectConfig(Ljava/lang/String;Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 4
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "recvAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .param p4, "sendAuth"    # Lcom/android/emailcommon/provider/HostAuth;

    .prologue
    .line 91
    if-nez p4, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget v2, p4, Lcom/android/emailcommon/provider/HostAuth;->mConfigId:I

    if-gez v2, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz p3, :cond_0

    iget-object v2, p3, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p4, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {p0, p2, p3, p4}, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->getMD5ParasConfig(Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;Lcom/android/emailcommon/provider/HostAuth;)Ljava/util/List;

    move-result-object v0

    .line 107
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingsoft/email/statistics/URLMap;->getPushConfigUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;-><init>(Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public sendCollectConfig(Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "recvAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .param p3, "sendAuth"    # Lcom/android/emailcommon/provider/HostAuth;

    .prologue
    .line 114
    iget-object v2, p2, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p3, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->getMD5ParasConfig(Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;Lcom/android/emailcommon/provider/HostAuth;)Ljava/util/List;

    move-result-object v0

    .line 118
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingsoft/email/statistics/URLMap;->getCollectConfigUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;

    invoke-direct {v3, p0, v0, v1}, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig$MySendRun;-><init>(Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
