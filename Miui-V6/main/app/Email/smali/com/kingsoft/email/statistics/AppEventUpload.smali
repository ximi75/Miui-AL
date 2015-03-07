.class public Lcom/kingsoft/email/statistics/AppEventUpload;
.super Ljava/lang/Object;
.source "AppEventUpload.java"


# static fields
.field public static final EVENT_DETAILS:Ljava/lang/String; = "eventDetails"

.field public static final EVENT_IMEI_MD5:Ljava/lang/String; = "imeiMd5"

.field private static final TAG:Ljava/lang/String; = "AppEventUpload"


# instance fields
.field private mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

.field private mContext:Landroid/content/Context;

.field mTime:Ljava/lang/String;

.field private reportSwitch:Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "con"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mContext:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getTheAppDeviceInfo(Landroid/content/Context;)Lcom/kingsoft/email/statistics/AppDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/statistics/AppEventUpload;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/statistics/AppEventUpload;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private putUnPushedEvent(Lorg/json/JSONArray;)V
    .locals 14
    .param p1, "exs"    # Lorg/json/JSONArray;

    .prologue
    .line 124
    invoke-static {}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->findUnpushedEvents()Landroid/database/Cursor;

    move-result-object v0

    .line 125
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 128
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 130
    .local v2, "ex":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v12, "eventName"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, "name":Ljava/lang/String;
    iget-object v12, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->reportSwitch:Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;

    iget-object v12, v12, Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;->events:Ljava/util/Set;

    invoke-interface {v12, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-eqz v12, :cond_4

    .line 168
    .end local v7    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_0

    .line 170
    .end local v2    # "ex":Lorg/json/JSONObject;
    :cond_2
    if-eqz v0, :cond_3

    .line 171
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_3
    return-void

    .line 134
    .restart local v2    # "ex":Lorg/json/JSONObject;
    .restart local v7    # "name":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v12, "event"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 135
    .local v11, "value":Ljava/lang/String;
    const-string/jumbo v12, "eventType"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, "type":Ljava/lang/String;
    const-string/jumbo v12, "plusable"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 137
    .local v8, "plusable":I
    const-string/jumbo v12, "eventTime"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mTime:Ljava/lang/String;

    .line 138
    const/4 v12, 0x1

    if-ne v8, v12, :cond_5

    .line 139
    const-string/jumbo v12, "eventName"

    invoke-virtual {v2, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string/jumbo v12, "event"

    invoke-virtual {v2, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string/jumbo v12, "eventType"

    invoke-virtual {v2, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 164
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "plusable":I
    .end local v9    # "type":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "plusable":I
    .restart local v9    # "type":Ljava/lang/String;
    .restart local v11    # "value":Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 146
    .local v6, "len":I
    const/4 v3, 0x0

    .line 147
    .local v3, "has":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_6

    .line 148
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 149
    .local v5, "jo":Lorg/json/JSONObject;
    const-string/jumbo v12, "eventName"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 150
    const-string/jumbo v12, "event"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 151
    .local v10, "v":I
    const-string/jumbo v12, "event"

    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v5, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    const/4 v3, 0x1

    .line 156
    .end local v5    # "jo":Lorg/json/JSONObject;
    .end local v10    # "v":I
    :cond_6
    if-nez v3, :cond_1

    .line 159
    const-string/jumbo v12, "eventName"

    invoke-virtual {v2, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string/jumbo v12, "event"

    invoke-virtual {v2, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string/jumbo v12, "eventType"

    invoke-virtual {v2, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 147
    .restart local v5    # "jo":Lorg/json/JSONObject;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static putUnPushedMultipleEvent(Landroid/database/Cursor;Lorg/json/JSONArray;Ljava/util/Set;)V
    .locals 20
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "exs"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lorg/json/JSONArray;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, "noReportEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 255
    :cond_0
    return-void

    .line 187
    :cond_1
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 189
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v13, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/json/JSONArray;>;"
    :cond_2
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 193
    .local v7, "ex":Lorg/json/JSONObject;
    const-string/jumbo v18, "eventName"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 194
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 235
    :cond_3
    :goto_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v18

    if-nez v18, :cond_2

    .line 239
    .end local v7    # "ex":Lorg/json/JSONObject;
    .end local v11    # "key":Ljava/lang/String;
    :goto_1
    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v18

    if-lez v18, :cond_0

    .line 240
    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 241
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/json/JSONArray;>;>;"
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 242
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 243
    .local v6, "et":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/json/JSONArray;>;"
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 245
    .restart local v7    # "ex":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v18, "eventName"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string/jumbo v19, "event"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/json/JSONArray;

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string/jumbo v18, "eventType"

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 248
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 249
    :catch_0
    move-exception v5

    .line 250
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 197
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v6    # "et":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/json/JSONArray;>;"
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/json/JSONArray;>;>;"
    .restart local v11    # "key":Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string/jumbo v18, "subKey"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 198
    .local v16, "subKey":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 201
    const-string/jumbo v18, "subValue"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 203
    .local v17, "subValue":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 204
    const-string/jumbo v18, "t"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    :cond_5
    const-string/jumbo v18, "v"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string/jumbo v18, "c"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 208
    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    .line 209
    .local v4, "array":Lorg/json/JSONArray;
    if-nez v4, :cond_6

    .line 210
    new-instance v4, Lorg/json/JSONArray;

    .end local v4    # "array":Lorg/json/JSONArray;
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 211
    .restart local v4    # "array":Lorg/json/JSONArray;
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 212
    invoke-virtual {v13, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 236
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v7    # "ex":Lorg/json/JSONObject;
    .end local v11    # "key":Ljava/lang/String;
    .end local v16    # "subKey":Ljava/lang/String;
    .end local v17    # "subValue":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 237
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 214
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "array":Lorg/json/JSONArray;
    .restart local v7    # "ex":Lorg/json/JSONObject;
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v16    # "subKey":Ljava/lang/String;
    .restart local v17    # "subValue":Ljava/lang/String;
    :cond_6
    :try_start_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 215
    .local v12, "len":I
    const/4 v8, 0x0

    .line 216
    .local v8, "has":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-ge v9, v12, :cond_9

    .line 217
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 218
    .local v14, "obj":Lorg/json/JSONObject;
    const-string/jumbo v18, "t"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "_subkey":Ljava/lang/String;
    const-string/jumbo v18, "v"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "_subValue":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_a

    :cond_7
    const/4 v15, 0x1

    .line 223
    .local v15, "sameKey":Z
    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b

    :cond_8
    const/16 v18, 0x1

    :goto_5
    and-int v15, v15, v18

    .line 225
    if-eqz v15, :cond_c

    .line 226
    const/4 v8, 0x1

    .line 227
    const-string/jumbo v18, "c"

    const-string/jumbo v19, "c"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 231
    .end local v2    # "_subValue":Ljava/lang/String;
    .end local v3    # "_subkey":Ljava/lang/String;
    .end local v14    # "obj":Lorg/json/JSONObject;
    .end local v15    # "sameKey":Z
    :cond_9
    if-nez v8, :cond_3

    .line 232
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 221
    .restart local v2    # "_subValue":Ljava/lang/String;
    .restart local v3    # "_subkey":Ljava/lang/String;
    .restart local v14    # "obj":Lorg/json/JSONObject;
    :cond_a
    const/4 v15, 0x0

    goto :goto_4

    .line 223
    .restart local v15    # "sameKey":Z
    :cond_b
    const/16 v18, 0x0

    goto :goto_5

    .line 216
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method private putUnPushedMultipleEvent(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "exs"    # Lorg/json/JSONArray;

    .prologue
    .line 176
    invoke-static {}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->findUnpushedMultipleEvents()Landroid/database/Cursor;

    move-result-object v0

    .line 177
    .local v0, "c":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->reportSwitch:Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;

    iget-object v1, v1, Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;->events:Ljava/util/Set;

    invoke-static {v0, p1, v1}, Lcom/kingsoft/email/statistics/AppEventUpload;->putUnPushedMultipleEvent(Landroid/database/Cursor;Lorg/json/JSONArray;Ljava/util/Set;)V

    .line 178
    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method postServerEvent()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 42
    iget-object v11, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->Event:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    invoke-static {v11, v12}, Lcom/kingsoft/email/statistics/DataPushSwitch;->getSwitchInfoByType(Landroid/content/Context;Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;)Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;

    move-result-object v11

    iput-object v11, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->reportSwitch:Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;

    .line 43
    iget-object v11, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->reportSwitch:Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;

    iget-boolean v11, v11, Lcom/kingsoft/email/statistics/DataPushSwitch$ReportSwitchResult;->on:Z

    if-nez v11, :cond_1

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->deleteEventsByTime(Ljava/lang/String;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 49
    .local v5, "exs":Lorg/json/JSONArray;
    invoke-direct {p0, v5}, Lcom/kingsoft/email/statistics/AppEventUpload;->putUnPushedEvent(Lorg/json/JSONArray;)V

    .line 50
    invoke-direct {p0, v5}, Lcom/kingsoft/email/statistics/AppEventUpload;->putUnPushedMultipleEvent(Lorg/json/JSONArray;)V

    .line 51
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 54
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 55
    .local v3, "eventDetails":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v2, "es":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v11, "eventList"

    invoke-virtual {v2, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 65
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 66
    .local v9, "subbmit":Lorg/json/JSONObject;
    iget-object v11, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mTime:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mTime:Ljava/lang/String;

    .line 70
    :cond_2
    :try_start_1
    const-string/jumbo v11, "channel"

    iget-object v12, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v12}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppChannelName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string/jumbo v11, "sysVersion"

    iget-object v12, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v12}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getSystemApi()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string/jumbo v11, "appVersion"

    iget-object v12, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v12}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppVersionName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string/jumbo v11, "language"

    iget-object v12, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v12}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getSystemLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string/jumbo v11, "resolution"

    iget-object v12, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v12}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getDevicePixel()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string/jumbo v11, "deviceName"

    iget-object v12, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v12}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string/jumbo v11, "versionCode"

    iget-object v12, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v12}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppVersionCode()I

    move-result v12

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    const-string/jumbo v11, "deviceId"

    iget-object v12, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v12}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string/jumbo v11, "network"

    iget-object v12, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v12}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getNetType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string/jumbo v11, "carriers"

    iget-object v12, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v12}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getCarriers()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v11, "appId"

    iget-object v12, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v12}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    iget-object v11, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v11}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getDeviceIMEI()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/kingsoft/email/jni/DESUtil;->getStringMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, "imeiMd5":Ljava/lang/String;
    const-string/jumbo v11, "imeiMd5"

    invoke-virtual {v9, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v11, "eventDetails"

    invoke-virtual {v9, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "events":Ljava/lang/String;
    sget-boolean v11, Lcom/kingsoft/email/statistics/KingsoftAgent;->DEBUG:Z

    if-eqz v11, :cond_3

    .line 95
    const-string/jumbo v11, "AppEventUpload"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "subbmit event json :\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v14, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 97
    :cond_3
    iget-object v11, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/kingsoft/email/statistics/URLMap;->getPushEventUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 99
    .local v10, "url":Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->getIntance()Lcom/kingsoft/email/statistics/KingSoftHttpUtils;

    move-result-object v6

    .line 104
    .local v6, "httpUtils":Lcom/kingsoft/email/statistics/KingSoftHttpUtils;
    invoke-virtual {v6, v10, v4}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->connected(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "res":Ljava/lang/String;
    invoke-static {v8}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->isErrRes(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 106
    iget-object v11, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mTime:Ljava/lang/String;

    invoke-static {v11}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->deleteEventsByTime(Ljava/lang/String;)V

    .line 107
    sget-boolean v11, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->TEST:Z

    if-eqz v11, :cond_0

    .line 108
    sput-boolean v14, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->TEST:Z

    .line 110
    new-instance v11, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v12, Lcom/kingsoft/email/statistics/AppEventUpload$1;

    invoke-direct {v12, p0}, Lcom/kingsoft/email/statistics/AppEventUpload$1;-><init>(Lcom/kingsoft/email/statistics/AppEventUpload;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 59
    .end local v4    # "events":Ljava/lang/String;
    .end local v6    # "httpUtils":Lcom/kingsoft/email/statistics/KingSoftHttpUtils;
    .end local v7    # "imeiMd5":Ljava/lang/String;
    .end local v8    # "res":Ljava/lang/String;
    .end local v9    # "subbmit":Lorg/json/JSONObject;
    .end local v10    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 86
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v9    # "subbmit":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 87
    .local v1, "e1":Lorg/json/JSONException;
    const-string/jumbo v11, "AppEventUpload"

    const-string/jumbo v12, "error when parase event json :\n"

    new-array v13, v14, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 88
    iget-object v11, p0, Lcom/kingsoft/email/statistics/AppEventUpload;->mTime:Ljava/lang/String;

    invoke-static {v11}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->deleteEventsByTime(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method
