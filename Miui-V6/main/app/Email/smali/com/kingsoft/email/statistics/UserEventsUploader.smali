.class public Lcom/kingsoft/email/statistics/UserEventsUploader;
.super Ljava/lang/Object;
.source "UserEventsUploader.java"


# static fields
.field public static final SP_STATISTICS:Ljava/lang/String; = "xieyi"


# instance fields
.field private mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

.field private mContext:Landroid/content/Context;

.field private reportSwitch:Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "con"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/kingsoft/email/statistics/UserEventsUploader;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/kingsoft/email/statistics/UserEventsUploader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getTheAppDeviceInfo(Landroid/content/Context;)Lcom/kingsoft/email/statistics/AppDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/statistics/UserEventsUploader;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/statistics/UserEventsUploader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/statistics/UserEventsUploader;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingsoft/email/statistics/UserEventsUploader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getGeneralSettings()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method private initEmailsJSONArrayAndEvents(Landroid/content/Context;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 11
    .param p1, "con"    # Landroid/content/Context;
    .param p2, "emails"    # Lorg/json/JSONArray;
    .param p3, "events"    # Lorg/json/JSONArray;

    .prologue
    const/4 v10, 0x0

    .line 111
    invoke-static {p1}, Lcom/android/emailcommon/provider/Account;->getAllEmailAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 112
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/Account;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v8, p0, Lcom/kingsoft/email/statistics/UserEventsUploader;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->Event:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    invoke-static {v8, v9}, Lcom/kingsoft/email/statistics/DataPushSwitch;->getSwitchInfoByType(Landroid/content/Context;Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;)Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;

    move-result-object v8

    iput-object v8, p0, Lcom/kingsoft/email/statistics/UserEventsUploader;->reportSwitch:Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;

    .line 118
    iget-object v8, p0, Lcom/kingsoft/email/statistics/UserEventsUploader;->reportSwitch:Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;

    iget-boolean v8, v8, Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;->on:Z

    if-nez v8, :cond_2

    .line 119
    invoke-static {}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->deleteUserInfos()V

    goto :goto_0

    .line 123
    :cond_2
    const-string/jumbo v8, "xieyi"

    invoke-virtual {p1, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 125
    .local v5, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 126
    .local v0, "acc":Lcom/android/emailcommon/provider/Account;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 128
    .local v7, "userJson":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v8, "email"

    iget-object v9, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    iget-object v8, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v8, :cond_4

    .line 130
    const-string/jumbo v8, "protocol"

    iget-object v9, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v9, v9, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    :cond_4
    const-string/jumbo v8, "flags"

    iget v9, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 133
    const-string/jumbo v8, "syncInterval"

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getSyncInterval()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    const-string/jumbo v8, "syncLookback"

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getSyncLookback()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    iget-object v8, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 136
    .local v2, "configId":I
    if-lez v2, :cond_5

    .line 137
    const-string/jumbo v8, "loginConfig"

    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    :cond_5
    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 141
    iget-object v8, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/kingsoft/email/statistics/UserEventsUploader;->getUserEventsByEmail(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 142
    .local v6, "userEvent":Lorg/json/JSONObject;
    if-eqz v6, :cond_3

    .line 143
    invoke-virtual {p3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 145
    .end local v2    # "configId":I
    .end local v6    # "userEvent":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 146
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private putUnpushedMultipleEventsByUser(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "events"    # Lorg/json/JSONArray;

    .prologue
    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-static {p1}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->findUnpushedMultipleEventsByUser(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 208
    .local v0, "c":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/kingsoft/email/statistics/UserEventsUploader;->reportSwitch:Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;

    iget-object v1, v1, Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;->events:Ljava/util/Set;

    invoke-static {v0, p2, v1}, Lcom/kingsoft/email/statistics/AppEventUpload;->putUnPushedMultipleEvent(Landroid/database/Cursor;Lorg/json/JSONArray;Ljava/util/Set;)V

    .line 209
    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public getUserEventsByEmail(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 11
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v5, 0x0

    .line 153
    .local v5, "userData":Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->findUnpushedUserDatasLastDay(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 154
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 155
    const/4 v9, 0x0

    .line 200
    :goto_0
    return-object v9

    .line 157
    :cond_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 160
    .local v4, "res":Lorg/json/JSONArray;
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v7, "usergroup":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/json/JSONObject;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 164
    const-string/jumbo v9, "eventName"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/kingsoft/email/statistics/UserEventsUploader;->reportSwitch:Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;

    iget-object v9, v9, Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;->events:Ljava/util/Set;

    invoke-interface {v9, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 169
    const-string/jumbo v9, "event"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 170
    .local v8, "value":I
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 171
    .local v2, "event":Lorg/json/JSONObject;
    if-nez v2, :cond_3

    .line 172
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "event":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 173
    .restart local v2    # "event":Lorg/json/JSONObject;
    const-string/jumbo v9, "eventName"

    invoke-virtual {v2, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string/jumbo v9, "event"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string/jumbo v9, "eventType"

    const/4 v10, 0x2

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 176
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 177
    invoke-virtual {v7, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 183
    .end local v2    # "event":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v7    # "usergroup":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/json/JSONObject;>;"
    .end local v8    # "value":I
    :catch_0
    move-exception v9

    .line 186
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 189
    :goto_2
    invoke-direct {p0, p1, v4}, Lcom/kingsoft/email/statistics/UserEventsUploader;->putUnpushedMultipleEventsByUser(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 190
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 192
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    .end local v5    # "userData":Lorg/json/JSONObject;
    .local v6, "userData":Lorg/json/JSONObject;
    :try_start_2
    const-string/jumbo v9, "email"

    invoke-virtual {v6, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string/jumbo v9, "events"

    invoke-virtual {v6, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v6

    .end local v6    # "userData":Lorg/json/JSONObject;
    .restart local v5    # "userData":Lorg/json/JSONObject;
    :cond_2
    :goto_3
    move-object v9, v5

    .line 200
    goto :goto_0

    .line 179
    .restart local v2    # "event":Lorg/json/JSONObject;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v7    # "usergroup":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/json/JSONObject;>;"
    .restart local v8    # "value":I
    :cond_3
    :try_start_3
    const-string/jumbo v9, "event"

    const-string/jumbo v10, "event"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v8

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 186
    .end local v2    # "event":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v7    # "usergroup":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/json/JSONObject;>;"
    .end local v8    # "value":I
    :catchall_0
    move-exception v9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v9

    .restart local v7    # "usergroup":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/json/JSONObject;>;"
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 195
    .end local v7    # "usergroup":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/json/JSONObject;>;"
    :catch_1
    move-exception v1

    .line 196
    .local v1, "e":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 195
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v5    # "userData":Lorg/json/JSONObject;
    .restart local v6    # "userData":Lorg/json/JSONObject;
    :catch_2
    move-exception v1

    move-object v5, v6

    .end local v6    # "userData":Lorg/json/JSONObject;
    .restart local v5    # "userData":Lorg/json/JSONObject;
    goto :goto_4
.end method

.method public postEventsToServer()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 37
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v6, "subbmit":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 39
    .local v0, "emails":Lorg/json/JSONArray;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 40
    .local v8, "userevents":Lorg/json/JSONArray;
    iget-object v9, p0, Lcom/kingsoft/email/statistics/UserEventsUploader;->mContext:Landroid/content/Context;

    invoke-direct {p0, v9, v0, v8}, Lcom/kingsoft/email/statistics/UserEventsUploader;->initEmailsJSONArrayAndEvents(Landroid/content/Context;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 41
    const/4 v2, 0x0

    .line 42
    .local v2, "nullEmails":Z
    const/4 v3, 0x0

    .line 43
    .local v3, "nullEvents":Z
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 44
    const-string/jumbo v9, "emails"

    invoke-virtual {v6, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    :goto_0
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 50
    const-string/jumbo v9, "userEvents"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :goto_1
    if-nez v2, :cond_0

    if-eqz v3, :cond_4

    .line 56
    :cond_0
    if-eqz v2, :cond_1

    .line 57
    invoke-static {}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->deleteUserInfos()V

    .line 108
    :cond_1
    :goto_2
    return-void

    .line 46
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 52
    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .line 62
    :cond_4
    const-string/jumbo v9, "channel"

    iget-object v10, p0, Lcom/kingsoft/email/statistics/UserEventsUploader;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v10}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppChannelName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string/jumbo v9, "appVersion"

    iget-object v10, p0, Lcom/kingsoft/email/statistics/UserEventsUploader;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v10}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppVersionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string/jumbo v9, "deviceId"

    iget-object v10, p0, Lcom/kingsoft/email/statistics/UserEventsUploader;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v10}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string/jumbo v9, "appId"

    iget-object v10, p0, Lcom/kingsoft/email/statistics/UserEventsUploader;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v10}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    invoke-direct {p0}, Lcom/kingsoft/email/statistics/UserEventsUploader;->getGeneralSettings()Lorg/json/JSONArray;

    move-result-object v5

    .line 71
    .local v5, "settings":Lorg/json/JSONArray;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 72
    const-string/jumbo v9, "generalSettings"

    invoke-virtual {v6, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    :cond_5
    sget-boolean v9, Lcom/kingsoft/email/statistics/KingsoftAgent;->DEBUG:Z

    if-eqz v9, :cond_6

    .line 76
    const-string/jumbo v9, "KingsoftAgent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "subbmit user event json :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 79
    :cond_6
    invoke-static {}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->getIntance()Lcom/kingsoft/email/statistics/KingSoftHttpUtils;

    move-result-object v1

    .line 81
    .local v1, "httpUtils":Lcom/kingsoft/email/statistics/KingSoftHttpUtils;
    iget-object v9, p0, Lcom/kingsoft/email/statistics/UserEventsUploader;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/kingsoft/email/statistics/URLMap;->getUserDataUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "url":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v7, v9}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->connected(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "res":Ljava/lang/String;
    sget-boolean v9, Lcom/kingsoft/email/statistics/KingsoftAgent;->DEBUG:Z

    if-eqz v9, :cond_7

    .line 85
    const-string/jumbo v9, "KingsoftAgent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "subbmit user event res :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 88
    :cond_7
    invoke-static {v4}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->isErrRes(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 89
    invoke-static {}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->deleteUserInfos()V

    .line 93
    sget-boolean v9, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->TEST:Z

    if-eqz v9, :cond_1

    .line 94
    sput-boolean v12, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->TEST:Z

    .line 96
    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v10, Lcom/kingsoft/email/statistics/UserEventsUploader$1;

    invoke-direct {v10, p0}, Lcom/kingsoft/email/statistics/UserEventsUploader$1;-><init>(Lcom/kingsoft/email/statistics/UserEventsUploader;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2
.end method
