.class public Lcom/kingsoft/email/statistics/DataPushSwitch;
.super Ljava/lang/Object;
.source "DataPushSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;,
        Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;
    }
.end annotation


# static fields
.field public static final PARAMETER_CHANNEL_NAME:Ljava/lang/String; = "channel"

.field public static final PARAMETER_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static final PARAMETER_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field public static final PARAMETER_VERSION_NAME:Ljava/lang/String; = "versionName"

.field public static final SWITCH_PREFERENCES:Ljava/lang/String; = "fun_switch"

.field public static final TAG:Ljava/lang/String; = "DataPushSwitch"

.field public static TIMEINTERVAL:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-wide/32 v0, 0x4ef6d80

    sput-wide v0, Lcom/kingsoft/email/statistics/DataPushSwitch;->TIMEINTERVAL:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method

.method public static getSwitchInfoByType(Landroid/content/Context;Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;)Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;
    .locals 13
    .param p0, "con"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "DataPushSwitch argument is null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 91
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 93
    .local v3, "now":J
    const-string/jumbo v9, "fun_switch"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 95
    .local v8, "settings":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->getValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "json":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 98
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 99
    .local v5, "obj":Lorg/json/JSONObject;
    const-string/jumbo v9, "time"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 100
    .local v1, "lastTime":J
    cmp-long v9, v3, v1

    if-lez v9, :cond_2

    sub-long v9, v3, v1

    sget-wide v11, Lcom/kingsoft/email/statistics/DataPushSwitch;->TIMEINTERVAL:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_2

    .line 101
    invoke-static {v5, p1}, Lcom/kingsoft/email/statistics/DataPushSwitch;->paraseJson(Lorg/json/JSONObject;Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;)Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 124
    .end local v1    # "lastTime":J
    .end local v5    # "obj":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-object v6

    .line 103
    :catch_0
    move-exception v9

    .line 108
    :cond_2
    new-instance v6, Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;

    invoke-direct {v6}, Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;-><init>()V

    .line 109
    .local v6, "res":Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;
    invoke-virtual {p1}, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->getValue()I

    move-result v9

    invoke-static {p0, v9}, Lcom/kingsoft/email/statistics/DataPushSwitch;->getSwitchString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "s":Ljava/lang/String;
    invoke-static {v7}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->isErrRes(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 115
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v5    # "obj":Lorg/json/JSONObject;
    invoke-static {v5, p1}, Lcom/kingsoft/email/statistics/DataPushSwitch;->paraseJson(Lorg/json/JSONObject;Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;)Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;

    move-result-object v6

    .line 117
    const-string/jumbo v9, "time"

    invoke-virtual {v5, v9, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 118
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-virtual {p1}, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->getValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 121
    .end local v5    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method private static getSwitchString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 49
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getTheAppDeviceInfo(Landroid/content/Context;)Lcom/kingsoft/email/statistics/AppDeviceInfo;

    move-result-object v1

    .line 51
    .local v1, "deviceInfo":Lcom/kingsoft/email/statistics/AppDeviceInfo;
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v8, "channel"

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppChannelName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v8, "versionName"

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppVersionName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v8, "deviceId"

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v8, "versionCode"

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppVersionCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v8, "appId"

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getCarriers()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 62
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v8, "carriers"

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getCarriers()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v8, "language"

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getSystemLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const-string/jumbo v0, "upload_log_pref"

    .line 69
    .local v0, "UPLOAD_LOG":Ljava/lang/String;
    const/4 v4, 0x1

    .line 70
    .local v4, "pref":I
    const-string/jumbo v7, "com.android.email"

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 73
    :cond_1
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v8, "pref"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v8, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {p0}, Lcom/kingsoft/email/statistics/URLMap;->getSwitchUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "url":Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->getIntance()Lcom/kingsoft/email/statistics/KingSoftHttpUtils;

    move-result-object v2

    .line 80
    .local v2, "httpUtils":Lcom/kingsoft/email/statistics/KingSoftHttpUtils;
    invoke-virtual {v2, v6, v3}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->connected(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "res":Ljava/lang/String;
    return-object v5
.end method

.method private static paraseJson(Lorg/json/JSONObject;Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;)Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;
    .locals 6
    .param p0, "obj"    # Lorg/json/JSONObject;
    .param p1, "type"    # Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    .prologue
    const/4 v4, 0x1

    .line 128
    new-instance v3, Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;

    invoke-direct {v3}, Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;-><init>()V

    .line 129
    .local v3, "res":Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;
    const-string/jumbo v5, "on"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_0

    :goto_0
    iput-boolean v4, v3, Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;->on:Z

    .line 130
    iget-boolean v4, v3, Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;->on:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->getValue()I

    move-result v4

    sget-object v5, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->Event:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    invoke-virtual {v5}, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 131
    const-string/jumbo v4, "offList"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 132
    .local v0, "arry":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 134
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 135
    iget-object v4, v3, Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;->events:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    .end local v0    # "arry":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 139
    :cond_1
    return-object v3
.end method
