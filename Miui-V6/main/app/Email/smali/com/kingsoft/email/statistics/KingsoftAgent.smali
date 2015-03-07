.class public Lcom/kingsoft/email/statistics/KingsoftAgent;
.super Ljava/lang/Object;
.source "KingsoftAgent.java"


# static fields
.field public static DEBUG:Z = false

.field private static final EVENT_MAX_GROUP_SIZE:I = 0x7

.field public static final EVENT_REPORT_TIME:I = 0x7

.field public static final TAG:Ljava/lang/String; = "KingsoftAgent"

.field private static TOP:I

.field private static lastStartTime:J

.field private static mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;


# instance fields
.field private hasInit:Z

.field private isUseActivityTrack:Z

.field private mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

.field private mContext:Landroid/content/Context;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/statistics/Info;",
            ">;"
        }
    .end annotation
.end field

.field mExitRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mInterval:J

.field private userInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/statistics/Info;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->DEBUG:Z

    .line 55
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->lastStartTime:J

    .line 56
    const/16 v0, 0xa

    sput v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->TOP:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "con"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInterval:J

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->isUseActivityTrack:Z

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->hasInit:Z

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mEvents:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->userInfos:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/kingsoft/email/statistics/KingsoftAgent$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/statistics/KingsoftAgent$1;-><init>(Lcom/kingsoft/email/statistics/KingsoftAgent;)V

    iput-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mExitRunnable:Ljava/lang/Runnable;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getTheAppDeviceInfo(Landroid/content/Context;)Lcom/kingsoft/email/statistics/AppDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    .line 77
    return-void
.end method

.method static synthetic access$000()Lcom/kingsoft/email/statistics/KingsoftAgent;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/statistics/KingsoftAgent;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/statistics/KingsoftAgent;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/email/statistics/KingsoftAgent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/statistics/KingsoftAgent;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->isNetAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/kingsoft/email/statistics/KingsoftAgent;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/statistics/KingsoftAgent;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->getUnPushedException()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/email/statistics/KingsoftAgent;Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/statistics/KingsoftAgent;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/kingsoft/email/statistics/KingsoftAgent;->exceptionToJson(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingsoft/email/statistics/KingsoftAgent;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/statistics/KingsoftAgent;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/kingsoft/email/statistics/KingsoftAgent;->postServerException(Lorg/json/JSONArray;)V

    return-void
.end method

.method private exceptionToJson(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/statistics/ExceptionInfo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/statistics/ExceptionInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 218
    const/4 v2, 0x0

    .line 233
    :cond_0
    return-object v2

    .line 220
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 222
    .local v2, "exs":Lorg/json/JSONArray;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/email/statistics/ExceptionInfo;

    .line 224
    .local v4, "info":Lcom/kingsoft/email/statistics/ExceptionInfo;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 225
    .local v1, "ex":Lorg/json/JSONObject;
    const-string/jumbo v5, "exceptType"

    iget-object v6, v4, Lcom/kingsoft/email/statistics/ExceptionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string/jumbo v5, "stacktrace"

    iget-object v6, v4, Lcom/kingsoft/email/statistics/ExceptionInfo;->trace:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string/jumbo v5, "exceptTime"

    iget-object v6, v4, Lcom/kingsoft/email/statistics/ExceptionInfo;->time:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v1    # "ex":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getUnPushedException()Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/statistics/ExceptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;->getCrashReportFiles(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v9

    .line 267
    .local v9, "files":[Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/statistics/ExceptionInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppVersionName()Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, "current":Ljava/lang/String;
    if-eqz v9, :cond_3

    array-length v0, v9

    move/from16 v21, v0

    if-lez v21, :cond_3

    .line 271
    move-object v3, v9

    .local v3, "arr$":[Ljava/lang/String;
    array-length v14, v3

    .local v14, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v14, :cond_3

    aget-object v8, v3, v10

    .line 272
    .local v8, "filename":Ljava/lang/String;
    new-instance v17, Ljava/util/Properties;

    invoke-direct/range {v17 .. v17}, Ljava/util/Properties;-><init>()V

    .line 273
    .local v17, "prop":Ljava/util/Properties;
    const/4 v11, 0x0

    .line 274
    .local v11, "in":Ljava/io/InputStream;
    const/16 v18, 0x0

    .line 275
    .local v18, "values":Landroid/content/ContentValues;
    const/4 v12, 0x0

    .line 277
    .local v12, "info":Lcom/kingsoft/email/statistics/ExceptionInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 282
    const/16 v20, 0x0

    .line 284
    .local v20, "version":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 285
    new-instance v13, Lcom/kingsoft/email/statistics/ExceptionInfo;

    invoke-direct {v13}, Lcom/kingsoft/email/statistics/ExceptionInfo;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 286
    .end local v12    # "info":Lcom/kingsoft/email/statistics/ExceptionInfo;
    .local v13, "info":Lcom/kingsoft/email/statistics/ExceptionInfo;
    :try_start_2
    const-string/jumbo v21, "exceptType"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lcom/kingsoft/email/statistics/ExceptionInfo;->name:Ljava/lang/String;

    .line 287
    const-string/jumbo v21, "stacktrace"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lcom/kingsoft/email/statistics/ExceptionInfo;->trace:Ljava/lang/String;

    .line 288
    const-string/jumbo v21, "exceptTime"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lcom/kingsoft/email/statistics/ExceptionInfo;->time:Ljava/lang/String;

    .line 289
    const-string/jumbo v21, "version"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 291
    if-eqz v20, :cond_0

    .line 292
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 294
    :cond_0
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 295
    .end local v18    # "values":Landroid/content/ContentValues;
    .local v19, "values":Landroid/content/ContentValues;
    :try_start_3
    const-string/jumbo v21, "exceptType"

    iget-object v0, v13, Lcom/kingsoft/email/statistics/ExceptionInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, v13, Lcom/kingsoft/email/statistics/ExceptionInfo;->trace:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/kingsoft/email/jni/DESUtil;->encodeMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 297
    .local v16, "md5":Ljava/lang/String;
    const-string/jumbo v21, "md5"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object v12, v13

    .end local v13    # "info":Lcom/kingsoft/email/statistics/ExceptionInfo;
    .restart local v12    # "info":Lcom/kingsoft/email/statistics/ExceptionInfo;
    move-object/from16 v18, v19

    .line 301
    .end local v16    # "md5":Ljava/lang/String;
    .end local v19    # "values":Landroid/content/ContentValues;
    .restart local v18    # "values":Landroid/content/ContentValues;
    :goto_1
    if-eqz v11, :cond_1

    .line 303
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 309
    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    if-eqz v12, :cond_2

    if-eqz v18, :cond_2

    invoke-static/range {v18 .. v18}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->insertException(Landroid/content/ContentValues;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 311
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, v12, Lcom/kingsoft/email/statistics/ExceptionInfo;->trace:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    iget-object v0, v12, Lcom/kingsoft/email/statistics/ExceptionInfo;->trace:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "test report fc"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 313
    const/16 v21, 0x1

    sput-boolean v21, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->TEST:Z

    .line 316
    :cond_2
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 317
    .local v7, "er":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 271
    .end local v7    # "er":Ljava/io/File;
    .end local v20    # "version":Ljava/lang/String;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 278
    :catch_0
    move-exception v6

    .line 279
    .local v6, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 298
    .end local v6    # "e1":Ljava/io/FileNotFoundException;
    .restart local v20    # "version":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 299
    .local v5, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 304
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 305
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 320
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "filename":Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v12    # "info":Lcom/kingsoft/email/statistics/ExceptionInfo;
    .end local v14    # "len$":I
    .end local v17    # "prop":Ljava/util/Properties;
    .end local v18    # "values":Landroid/content/ContentValues;
    .end local v20    # "version":Ljava/lang/String;
    :cond_3
    return-object v15

    .line 298
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v8    # "filename":Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v13    # "info":Lcom/kingsoft/email/statistics/ExceptionInfo;
    .restart local v14    # "len$":I
    .restart local v17    # "prop":Ljava/util/Properties;
    .restart local v18    # "values":Landroid/content/ContentValues;
    .restart local v20    # "version":Ljava/lang/String;
    :catch_3
    move-exception v5

    move-object v12, v13

    .end local v13    # "info":Lcom/kingsoft/email/statistics/ExceptionInfo;
    .restart local v12    # "info":Lcom/kingsoft/email/statistics/ExceptionInfo;
    goto :goto_4

    .end local v12    # "info":Lcom/kingsoft/email/statistics/ExceptionInfo;
    .end local v18    # "values":Landroid/content/ContentValues;
    .restart local v13    # "info":Lcom/kingsoft/email/statistics/ExceptionInfo;
    .restart local v19    # "values":Landroid/content/ContentValues;
    :catch_4
    move-exception v5

    move-object v12, v13

    .end local v13    # "info":Lcom/kingsoft/email/statistics/ExceptionInfo;
    .restart local v12    # "info":Lcom/kingsoft/email/statistics/ExceptionInfo;
    move-object/from16 v18, v19

    .end local v19    # "values":Landroid/content/ContentValues;
    .restart local v18    # "values":Landroid/content/ContentValues;
    goto :goto_4
.end method

.method public static instance(Landroid/content/Context;)Lcom/kingsoft/email/statistics/KingsoftAgent;
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 80
    sget-object v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;

    if-nez v0, :cond_1

    .line 81
    const-class v1, Lcom/kingsoft/email/statistics/KingsoftAgent;

    monitor-enter v1

    .line 82
    :try_start_0
    sget-object v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/kingsoft/email/statistics/KingsoftAgent;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;

    .line 85
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    sget-object v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isNetAvailable()Z
    .locals 5

    .prologue
    .line 238
    iget-object v3, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 240
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 242
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 243
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 244
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 245
    const/4 v3, 0x1

    .line 250
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :goto_1
    return v3

    .line 243
    .restart local v1    # "i":I
    .restart local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 395
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEventSum(Ljava/lang/String;I)V

    .line 396
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method private static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "subkey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 425
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    sget-boolean v1, Lcom/kingsoft/email/statistics/KingsoftAgent;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 429
    const-string/jumbo v1, "KingsoftAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 431
    :cond_2
    new-instance v0, Lcom/kingsoft/email/statistics/MultipleEventInfo;

    invoke-direct {v0}, Lcom/kingsoft/email/statistics/MultipleEventInfo;-><init>()V

    .line 432
    .local v0, "info":Lcom/kingsoft/email/statistics/MultipleEventInfo;
    iput-object p0, v0, Lcom/kingsoft/email/statistics/MultipleEventInfo;->eventKey:Ljava/lang/String;

    .line 433
    iput-object p1, v0, Lcom/kingsoft/email/statistics/MultipleEventInfo;->subKey:Ljava/lang/String;

    .line 434
    iput-object p2, v0, Lcom/kingsoft/email/statistics/MultipleEventInfo;->subValue:Ljava/lang/String;

    .line 435
    const/4 v1, 0x3

    iput v1, v0, Lcom/kingsoft/email/statistics/MultipleEventInfo;->eventType:I

    .line 436
    sget-object v1, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;

    invoke-direct {v1, v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->putEvent(Lcom/kingsoft/email/statistics/Info;)V

    goto :goto_0
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 448
    :cond_0
    return-void

    .line 443
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 444
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 446
    .local v0, "et":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static onEvent(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "plusable"    # Z
    .param p2, "type"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 405
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    :goto_0
    return-void

    .line 408
    :cond_0
    sget-boolean v2, Lcom/kingsoft/email/statistics/KingsoftAgent;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 409
    const-string/jumbo v2, "KingsoftAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEvent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 412
    :cond_1
    new-instance v0, Lcom/kingsoft/email/statistics/EventInfo;

    invoke-direct {v0}, Lcom/kingsoft/email/statistics/EventInfo;-><init>()V

    .line 413
    .local v0, "info":Lcom/kingsoft/email/statistics/EventInfo;
    iput-object p0, v0, Lcom/kingsoft/email/statistics/EventInfo;->name:Ljava/lang/String;

    .line 414
    iput-object p3, v0, Lcom/kingsoft/email/statistics/EventInfo;->value:Ljava/lang/String;

    .line 415
    iput p2, v0, Lcom/kingsoft/email/statistics/EventInfo;->type:I

    .line 416
    if-eqz p1, :cond_2

    :goto_1
    iput v1, v0, Lcom/kingsoft/email/statistics/EventInfo;->plusable:I

    .line 417
    sget-object v1, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;

    invoke-direct {v1, v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->putEvent(Lcom/kingsoft/email/statistics/Info;)V

    goto :goto_0

    .line 416
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static onEventSum(Ljava/lang/String;I)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "sum"    # I

    .prologue
    .line 399
    const/4 v0, 0x2

    .line 400
    .local v0, "type":I
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;ZILjava/lang/String;)V

    .line 401
    return-void
.end method

.method public static onPageEnd(Ljava/lang/String;)V
    .locals 0
    .param p0, "viewName"    # Ljava/lang/String;

    .prologue
    .line 392
    return-void
.end method

.method public static onPageStart(Ljava/lang/String;)V
    .locals 0
    .param p0, "viewName"    # Ljava/lang/String;

    .prologue
    .line 388
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 1
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 451
    sget-object v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;

    iget-boolean v0, v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->isUseActivityTrack:Z

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPageEnd(Ljava/lang/String;)V

    .line 454
    :cond_0
    sget-object v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;

    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->sendExitMessage()V

    .line 455
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 5
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 375
    sget-object v1, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/KingsoftAgent;->removeExitMessage()V

    .line 376
    sget-wide v1, Lcom/kingsoft/email/statistics/KingsoftAgent;->lastStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 377
    sget-object v1, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onAppStart()V

    .line 380
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "activityName":Ljava/lang/String;
    sget-object v1, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;

    iget-boolean v1, v1, Lcom/kingsoft/email/statistics/KingsoftAgent;->isUseActivityTrack:Z

    if-eqz v1, :cond_1

    .line 382
    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPageStart(Ljava/lang/String;)V

    .line 384
    :cond_1
    return-void
.end method

.method public static onUserEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 458
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onUserEventSum(Ljava/lang/String;Ljava/lang/String;I)V

    .line 459
    return-void
.end method

.method public static onUserEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 485
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onUserEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method private static onUserEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subkey"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 489
    sget-boolean v1, Lcom/kingsoft/email/statistics/KingsoftAgent;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 490
    const-string/jumbo v1, "KingsoftAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 492
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    :cond_1
    :goto_0
    return-void

    .line 495
    :cond_2
    new-instance v0, Lcom/kingsoft/email/statistics/MultipleUserEventInfo;

    invoke-direct {v0}, Lcom/kingsoft/email/statistics/MultipleUserEventInfo;-><init>()V

    .line 496
    .local v0, "info":Lcom/kingsoft/email/statistics/MultipleUserEventInfo;
    iput-object p1, v0, Lcom/kingsoft/email/statistics/MultipleUserEventInfo;->eventKey:Ljava/lang/String;

    .line 497
    iput-object p0, v0, Lcom/kingsoft/email/statistics/MultipleUserEventInfo;->email:Ljava/lang/String;

    .line 498
    iput-object p2, v0, Lcom/kingsoft/email/statistics/MultipleUserEventInfo;->subKey:Ljava/lang/String;

    .line 499
    iput-object p3, v0, Lcom/kingsoft/email/statistics/MultipleUserEventInfo;->subValue:Ljava/lang/String;

    .line 500
    const/4 v1, 0x3

    iput v1, v0, Lcom/kingsoft/email/statistics/MultipleUserEventInfo;->eventType:I

    .line 501
    sget-object v1, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;

    invoke-direct {v1, v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->putUserEvent(Lcom/kingsoft/email/statistics/Info;)V

    goto :goto_0
.end method

.method public static onUserEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p2, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 482
    :cond_0
    return-void

    .line 477
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 478
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 480
    .local v0, "et":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, p1, v2, v3}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onUserEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onUserEventSum(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sum"    # I

    .prologue
    .line 462
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    new-instance v0, Lcom/kingsoft/email/statistics/UserDataInfo;

    invoke-direct {v0}, Lcom/kingsoft/email/statistics/UserDataInfo;-><init>()V

    .line 466
    .local v0, "info":Lcom/kingsoft/email/statistics/UserDataInfo;
    iput-object p0, v0, Lcom/kingsoft/email/statistics/UserDataInfo;->user:Ljava/lang/String;

    .line 467
    iput-object p1, v0, Lcom/kingsoft/email/statistics/UserDataInfo;->dataName:Ljava/lang/String;

    .line 468
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingsoft/email/statistics/UserDataInfo;->value:Ljava/lang/String;

    .line 469
    sget-object v1, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;

    invoke-direct {v1, v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->putUserEvent(Lcom/kingsoft/email/statistics/Info;)V

    goto :goto_0
.end method

.method public static openActivityDurationTrack(Z)V
    .locals 1
    .param p0, "useActivity"    # Z

    .prologue
    .line 367
    sget-object v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;

    iput-boolean p0, v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->isUseActivityTrack:Z

    .line 368
    return-void
.end method

.method private postServerException(Lorg/json/JSONArray;)V
    .locals 10
    .param p1, "exceptions"    # Lorg/json/JSONArray;

    .prologue
    const/4 v9, 0x0

    .line 163
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v6, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/kingsoft/email/statistics/URLMap;->getPushExceptionUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, "url":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 169
    .local v2, "exceptionInfo":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v6, "channel"

    iget-object v7, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v7}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppChannelName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string/jumbo v6, "sysVersion"

    iget-object v7, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v7}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getSystemApi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string/jumbo v6, "appVersion"

    iget-object v7, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v7}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppVersionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string/jumbo v6, "language"

    iget-object v7, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v7}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getSystemLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string/jumbo v6, "resolution"

    iget-object v7, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v7}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getDevicePixel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string/jumbo v6, "deviceName"

    iget-object v7, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v7}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    iget-object v6, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v6}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getDeviceIMEI()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v6}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "deviceid":Ljava/lang/String;
    :goto_1
    const-string/jumbo v6, "imei"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string/jumbo v6, "appId"

    iget-object v7, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v7}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string/jumbo v6, "exceptionList"

    invoke-virtual {v2, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    sget-boolean v6, Lcom/kingsoft/email/statistics/KingsoftAgent;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 193
    const-string/jumbo v6, "KingsoftAgent"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 196
    :cond_2
    invoke-static {}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->getIntance()Lcom/kingsoft/email/statistics/KingSoftHttpUtils;

    move-result-object v3

    .line 197
    .local v3, "httpUtils":Lcom/kingsoft/email/statistics/KingSoftHttpUtils;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->connected(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "res":Ljava/lang/String;
    invoke-static {v4}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->isErrRes(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 199
    sget-boolean v6, Lcom/kingsoft/email/statistics/KingsoftAgent;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 200
    const-string/jumbo v6, "KingsoftAgent"

    const-string/jumbo v7, "report exception successed"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 202
    :cond_3
    sget-boolean v6, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->TEST:Z

    if-eqz v6, :cond_0

    .line 203
    iget-object v6, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/kingsoft/email/statistics/KingsoftAgent$4;

    invoke-direct {v7, p0}, Lcom/kingsoft/email/statistics/KingsoftAgent$4;-><init>(Lcom/kingsoft/email/statistics/KingsoftAgent;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 181
    .end local v0    # "deviceid":Ljava/lang/String;
    .end local v3    # "httpUtils":Lcom/kingsoft/email/statistics/KingSoftHttpUtils;
    .end local v4    # "res":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mAppDeviceInfo:Lcom/kingsoft/email/statistics/AppDeviceInfo;

    invoke-virtual {v6}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getDeviceIMEI()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method

.method public static pushUserAccountSetupData(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 324
    new-instance v0, Lcom/kingsoft/email/statistics/KingsoftAgent$5;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/statistics/KingsoftAgent$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent$5;->start()V

    .line 360
    return-void
.end method

.method private declared-synchronized putEvent(Lcom/kingsoft/email/statistics/Info;)V
    .locals 4
    .param p1, "info"    # Lcom/kingsoft/email/statistics/Info;

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    sget-wide v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->lastStartTime:J

    .line 107
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 110
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/kingsoft/email/statistics/Info;->time:Ljava/lang/String;

    .line 111
    iget-object v2, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v2, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v3, Lcom/kingsoft/email/statistics/KingsoftAgent;->TOP:I

    if-le v2, v3, :cond_1

    .line 113
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/statistics/KingsoftAgent;->flushEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_1
    monitor-exit p0

    return-void

    .line 106
    .end local v0    # "time":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized putUserEvent(Lcom/kingsoft/email/statistics/Info;)V
    .locals 4
    .param p1, "info"    # Lcom/kingsoft/email/statistics/Info;

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    sget-wide v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->lastStartTime:J

    .line 119
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 122
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/kingsoft/email/statistics/Info;->time:Ljava/lang/String;

    .line 123
    iget-object v2, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->userInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v2, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->userInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v3, Lcom/kingsoft/email/statistics/KingsoftAgent;->TOP:I

    if-le v2, v3, :cond_1

    .line 125
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/statistics/KingsoftAgent;->flushUserEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_1
    monitor-exit p0

    return-void

    .line 118
    .end local v0    # "time":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static setSessionContinueMillis(J)V
    .locals 1
    .param p0, "interval"    # J

    .prologue
    .line 363
    sget-object v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;

    iput-wide p0, v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInterval:J

    .line 364
    return-void
.end method


# virtual methods
.method declared-synchronized flushEvent(Z)V
    .locals 2
    .param p1, "report"    # Z

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mEvents:Ljava/util/ArrayList;

    .line 150
    .local v0, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/statistics/Info;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mEvents:Ljava/util/ArrayList;

    .line 151
    new-instance v1, Lcom/kingsoft/email/statistics/KingsoftAgent$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/kingsoft/email/statistics/KingsoftAgent$3;-><init>(Lcom/kingsoft/email/statistics/KingsoftAgent;Ljava/util/ArrayList;Z)V

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/KingsoftAgent$3;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 149
    .end local v0    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/statistics/Info;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized flushUserEvent(Z)V
    .locals 2
    .param p1, "report"    # Z

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->userInfos:Ljava/util/ArrayList;

    .line 131
    .local v0, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/statistics/Info;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->userInfos:Ljava/util/ArrayList;

    .line 132
    new-instance v1, Lcom/kingsoft/email/statistics/KingsoftAgent$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/kingsoft/email/statistics/KingsoftAgent$2;-><init>(Lcom/kingsoft/email/statistics/KingsoftAgent;Ljava/util/ArrayList;Z)V

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/KingsoftAgent$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 130
    .end local v0    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/statistics/Info;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public ifOpenActivityDurationTrack()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->isUseActivityTrack:Z

    return v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 91
    iget-boolean v2, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->hasInit:Z

    if-eqz v2, :cond_0

    .line 102
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->hasInit:Z

    .line 95
    iget-object v2, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->instance(Landroid/content/Context;)V

    .line 97
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 99
    .local v0, "h":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;

    iget-object v2, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 101
    .local v1, "handler":Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
.end method

.method public isWifiAvailable()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 254
    iget-object v4, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 257
    .local v0, "connectMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 259
    .local v1, "mWiFiNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 262
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 260
    goto :goto_0

    :cond_1
    move v2, v3

    .line 262
    goto :goto_0
.end method

.method onAppExit()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 530
    .local v0, "now":J
    sget-wide v4, Lcom/kingsoft/email/statistics/KingsoftAgent;->lastStartTime:J

    sub-long v4, v0, v4

    sget-object v6, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;

    iget-wide v6, v6, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInterval:J

    sub-long v2, v4, v6

    .line 531
    .local v2, "residenceTime":J
    const-string/jumbo v4, "EXIT"

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v8, v6}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;ZILjava/lang/String;)V

    .line 533
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/kingsoft/email/statistics/KingsoftAgent;->lastStartTime:J

    .line 534
    sget-object v4, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInstance:Lcom/kingsoft/email/statistics/KingsoftAgent;

    invoke-virtual {v4, v8}, Lcom/kingsoft/email/statistics/KingsoftAgent;->flushEvent(Z)V

    .line 535
    return-void
.end method

.method onAppStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/kingsoft/email/statistics/KingsoftAgent;->lastStartTime:J

    .line 506
    new-instance v0, Lcom/kingsoft/email/statistics/KingsoftAgent$6;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/statistics/KingsoftAgent$6;-><init>(Lcom/kingsoft/email/statistics/KingsoftAgent;)V

    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent$6;->start()V

    .line 525
    const-string/jumbo v0, "START"

    const-string/jumbo v1, "1"

    invoke-static {v0, v2, v2, v1}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;ZILjava/lang/String;)V

    .line 526
    return-void
.end method

.method public removeExitMessage()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mExitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public sendExitMessage()V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mExitRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/kingsoft/email/statistics/KingsoftAgent;->mInterval:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    return-void
.end method
