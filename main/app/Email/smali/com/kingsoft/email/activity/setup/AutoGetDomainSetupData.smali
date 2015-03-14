.class public Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;
.super Ljava/lang/Object;
.source "AutoGetDomainSetupData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetdomainSetupDataCallBack;,
        Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoGetDomainSetupData"


# instance fields
.field private mCallBack:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetdomainSetupDataCallBack;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHttpUtils:Lcom/kingsoft/email/statistics/KingSoftHttpUtils;

.field mThread:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;

.field private mdomain:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetdomainSetupDataCallBack;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetdomainSetupDataCallBack;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mCallBack:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetdomainSetupDataCallBack;

    .line 41
    invoke-static {}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->getIntance()Lcom/kingsoft/email/statistics/KingSoftHttpUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mHttpUtils:Lcom/kingsoft/email/statistics/KingSoftHttpUtils;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;)Lcom/kingsoft/email/statistics/KingSoftHttpUtils;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mHttpUtils:Lcom/kingsoft/email/statistics/KingSoftHttpUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;)Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetdomainSetupDataCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mCallBack:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetdomainSetupDataCallBack;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static paraseJsonToPrividers(Ljava/lang/String;)Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    .locals 21
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 126
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v19, "domain"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "domain":Ljava/lang/String;
    const-string/jumbo v19, "configs"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 133
    .local v5, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-gtz v19, :cond_0

    .line 134
    const/4 v3, 0x0

    .line 209
    .end local v1    # "domain":Ljava/lang/String;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 129
    const/4 v3, 0x0

    goto :goto_0

    .line 135
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v1    # "domain":Ljava/lang/String;
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    const/4 v3, 0x0

    .line 136
    .local v3, "head":Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    const/16 v18, 0x0

    .line 137
    .local v18, "temp":Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v4, v0, :cond_7

    .line 138
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 140
    .local v6, "jsonObj":Lorg/json/JSONObject;
    if-nez v6, :cond_1

    .line 137
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 143
    :cond_1
    new-instance v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    invoke-direct {v8}, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;-><init>()V

    .line 144
    .local v8, "provider":Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    if-nez v3, :cond_2

    .line 145
    move-object v3, v8

    .line 149
    :goto_3
    move-object/from16 v18, v8

    .line 151
    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->from:I

    .line 153
    const-string/jumbo v19, "id"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->id:Ljava/lang/String;

    .line 154
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->label:Ljava/lang/String;

    .line 155
    iput-object v1, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->domain:Ljava/lang/String;

    .line 157
    const-string/jumbo v19, "recvFlags"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 158
    .local v10, "recv_flags":I
    const-string/jumbo v19, "sendFlags"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 159
    .local v15, "send_flags":I
    iput v10, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->recv_flag:I

    .line 160
    iput v15, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->send_flag:I

    .line 161
    const-string/jumbo v19, "recvPort"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->recvPort:I

    .line 162
    const-string/jumbo v19, "sendPort"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->sendPort:I

    .line 163
    const-string/jumbo v19, "recvAddress"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 164
    .local v9, "recv_address":Ljava/lang/String;
    const-string/jumbo v19, "sendAddress"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 165
    .local v14, "send_address":Ljava/lang/String;
    iput-object v9, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->recv_address:Ljava/lang/String;

    .line 166
    iput-object v14, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->send_address:Ljava/lang/String;

    .line 167
    const-string/jumbo v19, "recvProtocol"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 168
    .local v11, "recv_protocol":Ljava/lang/String;
    const-string/jumbo v19, "sendProtocol"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 170
    .local v16, "send_protocol":Ljava/lang/String;
    const-string/jumbo v19, "recvTemplate"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 171
    .local v12, "recv_template":Ljava/lang/String;
    const-string/jumbo v19, "sendTemplate"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 178
    .local v17, "send_template":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v19, "\\"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 179
    const-string/jumbo v19, "\\\\"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iput-object v0, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->domain2:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :goto_4
    const/4 v13, 0x0

    .line 187
    .local v13, "secheme":Ljava/lang/String;
    invoke-static {v11, v10}, Lcom/android/emailcommon/provider/HostAuth;->getSchemeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 188
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->incomingUriTemplate:Ljava/lang/String;

    .line 190
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/android/emailcommon/provider/HostAuth;->getSchemeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 191
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->outgoingUriTemplate:Ljava/lang/String;

    .line 192
    invoke-static {v12}, Lcom/kingsoft/email/activity/setup/AccountSettingsUtils;->checkUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    .line 194
    invoke-static/range {v17 .. v17}, Lcom/kingsoft/email/activity/setup/AccountSettingsUtils;->checkUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    .line 197
    iget-object v0, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->incomingUriTemplate:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "eas"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 198
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->accountType:I

    goto/16 :goto_2

    .line 147
    .end local v9    # "recv_address":Ljava/lang/String;
    .end local v10    # "recv_flags":I
    .end local v11    # "recv_protocol":Ljava/lang/String;
    .end local v12    # "recv_template":Ljava/lang/String;
    .end local v13    # "secheme":Ljava/lang/String;
    .end local v14    # "send_address":Ljava/lang/String;
    .end local v15    # "send_flags":I
    .end local v16    # "send_protocol":Ljava/lang/String;
    .end local v17    # "send_template":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v18

    iput-object v8, v0, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->next:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    goto/16 :goto_3

    .line 181
    .restart local v9    # "recv_address":Ljava/lang/String;
    .restart local v10    # "recv_flags":I
    .restart local v11    # "recv_protocol":Ljava/lang/String;
    .restart local v12    # "recv_template":Ljava/lang/String;
    .restart local v14    # "send_address":Ljava/lang/String;
    .restart local v15    # "send_flags":I
    .restart local v16    # "send_protocol":Ljava/lang/String;
    .restart local v17    # "send_template":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    iput-object v0, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->domain2:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 183
    :catch_1
    move-exception v19

    goto :goto_4

    .line 199
    .restart local v13    # "secheme":Ljava/lang/String;
    :cond_4
    iget-object v0, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->incomingUriTemplate:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "pop"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 200
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->accountType:I

    goto/16 :goto_2

    .line 201
    :cond_5
    iget-object v0, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->incomingUriTemplate:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "imap"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 202
    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->accountType:I

    goto/16 :goto_2

    .line 204
    :cond_6
    const/16 v19, -0x1

    move/from16 v0, v19

    iput v0, v8, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->accountType:I

    goto/16 :goto_2

    .line 208
    .end local v6    # "jsonObj":Lorg/json/JSONObject;
    .end local v8    # "provider":Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    .end local v9    # "recv_address":Ljava/lang/String;
    .end local v10    # "recv_flags":I
    .end local v11    # "recv_protocol":Ljava/lang/String;
    .end local v12    # "recv_template":Ljava/lang/String;
    .end local v13    # "secheme":Ljava/lang/String;
    .end local v14    # "send_address":Ljava/lang/String;
    .end local v15    # "send_flags":I
    .end local v16    # "send_protocol":Ljava/lang/String;
    .end local v17    # "send_template":Ljava/lang/String;
    :cond_7
    const/16 v18, 0x0

    .line 209
    goto/16 :goto_0
.end method


# virtual methods
.method public closeIO(Ljava/io/BufferedReader;)V
    .locals 1
    .param p1, "br"    # Ljava/io/BufferedReader;

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 110
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public excute(Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mThread:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mThread:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;

    iget-boolean v0, v0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->isRunning:Z

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mdomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mHttpUtils:Lcom/kingsoft/email/statistics/KingSoftHttpUtils;

    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->shutdown()V

    .line 55
    :cond_2
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mdomain:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mdomain:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;-><init>(Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mThread:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;

    .line 57
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mThread:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->start()V

    goto :goto_0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mdomain:Ljava/lang/String;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mThread:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mThread:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;

    iget-boolean v0, v0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->isRunning:Z

    goto :goto_0
.end method

.method public setCallBack(Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetdomainSetupDataCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetdomainSetupDataCallBack;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mCallBack:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetdomainSetupDataCallBack;

    .line 34
    return-void
.end method
