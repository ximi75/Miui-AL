.class public Lcom/kingsoft/mail/optimize/battery/SilenceManager;
.super Ljava/lang/Object;
.source "SilenceManager.java"


# static fields
.field public static BUNDLE_FOR_SILENCE_MODE:Ljava/lang/String;

.field private static CONFFIENCE_PERIODIC_TIME:D

.field public static LOGTAG:Ljava/lang/String;

.field private static MIN_SILENCE_PERIODIC_TIME:J

.field private static SECOND_PER_HOUR:J

.field private static SILENCE_MODE:I

.field private static SILENCE_NONE:I

.field private static SILENCE_NORMAL:I

.field private static sSilenceManager:Lcom/kingsoft/mail/optimize/battery/SilenceManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmailSyncAdapterService:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

.field private mLastSettedTime:J

.field private mLastSilenceMode:I

.field private mSilencePeriodicTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-string/jumbo v0, "SilenceManager"

    sput-object v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "SilenceMode"

    sput-object v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->BUNDLE_FOR_SILENCE_MODE:Ljava/lang/String;

    .line 38
    const-wide/16 v0, 0xe10

    sput-wide v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->SECOND_PER_HOUR:J

    .line 39
    const-wide/16 v0, 0x708

    sput-wide v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->MIN_SILENCE_PERIODIC_TIME:J

    .line 40
    const-wide v0, 0x3feccccccccccccdL

    sput-wide v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->CONFFIENCE_PERIODIC_TIME:D

    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->SILENCE_NONE:I

    .line 42
    const/4 v0, 0x1

    sput v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->SILENCE_MODE:I

    .line 43
    const/4 v0, 0x2

    sput v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->SILENCE_NORMAL:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, -0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide v0, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mSilencePeriodicTime:J

    .line 46
    iput-wide v0, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mLastSettedTime:J

    .line 47
    sget v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->SILENCE_NONE:I

    iput v0, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mLastSilenceMode:I

    .line 52
    iput-object p1, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private buildSilenceBundle(Z)Landroid/os/Bundle;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 151
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 152
    .local v0, "extras":Landroid/os/Bundle;
    sget-object v1, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->BUNDLE_FOR_SILENCE_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    return-object v0
.end method

.method private closeSilenceMode()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 371
    iget-object v2, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    sget-object v2, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "begin to closeSilenceMode"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 373
    sget-object v2, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "begin to closeSilenceMode"

    invoke-static {v2, v3}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->buildSilenceBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 378
    .local v0, "extras1":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;->removeSpeicalPeriodicSyncForAllAccounts(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 379
    invoke-direct {p0, v5}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->buildSilenceBundle(Z)Landroid/os/Bundle;

    move-result-object v1

    .line 380
    .local v1, "extras2":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;->removeSpeicalPeriodicSyncForAllAccounts(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 382
    iget v2, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mLastSilenceMode:I

    sget v3, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->SILENCE_NORMAL:I

    if-eq v2, v3, :cond_1

    .line 383
    sget v2, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->SILENCE_NORMAL:I

    iput v2, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mLastSilenceMode:I

    .line 384
    invoke-virtual {p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->restoreAllAccountsPeriod()V

    .line 386
    :cond_1
    iput-wide v6, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mSilencePeriodicTime:J

    .line 387
    iput-wide v6, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mLastSettedTime:J

    .line 388
    return-void
.end method

.method private enterSilenceMode()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 284
    iget-object v3, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    sget-object v3, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v4, "begin to enterSilenceMode"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 286
    sget-object v3, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v4, "begin to enterSilenceMode"

    invoke-static {v3, v4}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    invoke-direct {p0, v7, v7}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->getNextPeriodicTime(ZZ)J

    move-result-wide v1

    .line 292
    .local v1, "silencePeriodic":J
    sget-wide v3, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->MIN_SILENCE_PERIODIC_TIME:J

    cmp-long v3, v1, v3

    if-gtz v3, :cond_2

    .line 293
    iget-object v3, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 294
    sget-object v3, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "silencePeriodic < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->MIN_SILENCE_PERIODIC_TIME:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and exitSilenceMode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 295
    sget-object v3, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "silencePeriodic < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->MIN_SILENCE_PERIODIC_TIME:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and exitSilenceMode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->exitSilenceMode()V

    .line 314
    :goto_0
    return-void

    .line 302
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->removeAllAccountsPeriod()V

    .line 303
    iget-object v3, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 304
    sget-object v3, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enterSilenceMode next periodic = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 305
    sget-object v3, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enterSilenceMode next periodic = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_3
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->buildSilenceBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 310
    .local v0, "extras":Landroid/os/Bundle;
    iput-wide v1, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mSilencePeriodicTime:J

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mLastSettedTime:J

    .line 312
    sget v3, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->SILENCE_MODE:I

    iput v3, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mLastSilenceMode:I

    .line 313
    iget-object v3, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2, v0}, Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;->fixSpeicalPeriodicSyncForAllAccounts(Landroid/content/Context;JLandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private exitSilenceMode()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 326
    iget-object v4, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    sget-object v4, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v5, "begin to exitSilenceMode"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 328
    sget-object v4, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v5, "begin to exitSilenceMode"

    invoke-static {v4, v5}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v1

    .line 332
    .local v1, "prefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    invoke-virtual {v1}, Lcom/kingsoft/mail/preferences/MailPrefs;->getIsSilencePeriodEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 333
    invoke-direct {p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->closeSilenceMode()V

    .line 363
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-direct {p0, v8, v8}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->getNextPeriodicTime(ZZ)J

    move-result-wide v2

    .line 340
    .local v2, "silencePeriodic":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_3

    .line 341
    iget-object v4, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 342
    sget-object v4, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v5, "silencePeriodic < 0 and enterSilenceMode"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 343
    sget-object v4, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v5, "silencePeriodic < 0 and enterSilenceMode"

    invoke-static {v4, v5}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_2
    invoke-direct {p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->enterSilenceMode()V

    goto :goto_0

    .line 350
    :cond_3
    invoke-direct {p0, v7}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->buildSilenceBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 351
    .local v0, "extras":Landroid/os/Bundle;
    iput-wide v2, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mSilencePeriodicTime:J

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mLastSettedTime:J

    .line 353
    iget-object v4, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 354
    sget-object v4, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mLastSilenceMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mLastSilenceMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " next periodic = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 355
    sget-object v4, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mLastSilenceMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mLastSilenceMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " next periodic = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_4
    iget v4, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mLastSilenceMode:I

    sget v5, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->SILENCE_NORMAL:I

    if-eq v4, v5, :cond_5

    .line 359
    sget v4, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->SILENCE_NORMAL:I

    iput v4, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mLastSilenceMode:I

    .line 360
    invoke-virtual {p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->restoreAllAccountsPeriod()V

    .line 362
    :cond_5
    iget-object v4, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3, v0}, Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;->fixSpeicalPeriodicSyncForAllAccounts(Landroid/content/Context;JLandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const-class v1, Lcom/kingsoft/mail/optimize/battery/SilenceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->sSilenceManager:Lcom/kingsoft/mail/optimize/battery/SilenceManager;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->sSilenceManager:Lcom/kingsoft/mail/optimize/battery/SilenceManager;

    .line 60
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->sSilenceManager:Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNextPeriodicTime(ZZ)J
    .locals 7
    .param p1, "silenceStart"    # Z
    .param p2, "useOrigin"    # Z

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->getSilenceCalendar(Z)Ljava/util/Calendar;

    move-result-object v0

    .line 209
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long v1, v3, v5

    .line 210
    .local v1, "silencePeriodic":J
    iget-object v3, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    sget-object v3, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "origin periodic time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 212
    sget-object v3, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "origin periodic time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    if-nez p2, :cond_1

    sget-wide v3, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->MIN_SILENCE_PERIODIC_TIME:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 215
    long-to-double v3, v1

    sget-wide v5, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->CONFFIENCE_PERIODIC_TIME:D

    mul-double/2addr v3, v5

    double-to-long v1, v3

    .line 218
    :cond_1
    return-wide v1
.end method


# virtual methods
.method public getIsSilencePeriodBlocked()Z
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 76
    iget-object v11, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v5

    .line 77
    .local v5, "prefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    invoke-virtual {v5}, Lcom/kingsoft/mail/preferences/MailPrefs;->getIsSilencePeriodEnabled()Z

    move-result v11

    if-nez v11, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v9

    .line 81
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 82
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 84
    const/16 v11, 0xb

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 85
    .local v3, "hour":I
    const/16 v11, 0xc

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 87
    .local v4, "minute":I
    invoke-virtual {v5}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSilenceTime()I

    move-result v8

    .line 88
    .local v8, "time":I
    shr-int/lit8 v6, v8, 0x18

    .line 89
    .local v6, "startHour":I
    shr-int/lit8 v11, v8, 0x10

    and-int/lit16 v7, v11, 0xff

    .line 90
    .local v7, "startMinute":I
    shr-int/lit8 v11, v8, 0x8

    and-int/lit16 v1, v11, 0xff

    .line 91
    .local v1, "endHour":I
    and-int/lit16 v2, v8, 0xff

    .line 93
    .local v2, "endMinute":I
    iget-object v11, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 94
    const-string/jumbo v11, "Silence Infor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "currentHour = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " currentMinute = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " startHour = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " startMinute = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " endHour = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " endMinute = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_2
    if-gt v6, v1, :cond_3

    if-ne v6, v1, :cond_6

    if-le v7, v2, :cond_6

    .line 105
    :cond_3
    if-gt v3, v6, :cond_5

    if-ne v3, v6, :cond_4

    if-ge v4, v7, :cond_5

    :cond_4
    if-lt v3, v1, :cond_5

    if-ne v3, v1, :cond_0

    if-ge v4, v2, :cond_0

    :cond_5
    move v9, v10

    goto/16 :goto_0

    .line 110
    :cond_6
    if-gt v3, v6, :cond_7

    if-ne v3, v6, :cond_0

    if-lt v4, v7, :cond_0

    :cond_7
    if-lt v3, v1, :cond_8

    if-ne v3, v1, :cond_0

    if-ge v4, v2, :cond_0

    :cond_8
    move v9, v10

    goto/16 :goto_0
.end method

.method public getSilenceCalendar(Z)Ljava/util/Calendar;
    .locals 11
    .param p1, "isGetStartTime"    # Z

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0xb

    .line 122
    iget-object v7, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v3

    .line 123
    .local v3, "prefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 124
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 126
    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 128
    invoke-virtual {v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSilenceTime()I

    move-result v6

    .line 129
    .local v6, "time":I
    shr-int/lit8 v4, v6, 0x18

    .line 130
    .local v4, "startHour":I
    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v5, v7, 0xff

    .line 131
    .local v5, "startMinute":I
    shr-int/lit8 v7, v6, 0x8

    and-int/lit16 v1, v7, 0xff

    .line 132
    .local v1, "endHour":I
    and-int/lit16 v2, v6, 0xff

    .line 134
    .local v2, "endMinute":I
    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {v0, v9, v4}, Ljava/util/Calendar;->set(II)V

    .line 136
    invoke-virtual {v0, v10, v5}, Ljava/util/Calendar;->set(II)V

    .line 143
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 145
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 147
    :cond_0
    return-object v0

    .line 139
    :cond_1
    invoke-virtual {v0, v9, v1}, Ljava/util/Calendar;->set(II)V

    .line 140
    invoke-virtual {v0, v10, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method public declared-synchronized handleSilenceMode(Z)V
    .locals 8
    .param p1, "force"    # Z

    .prologue
    const-wide/16 v5, 0x0

    .line 239
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    sget-object v2, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "begin to handleSilenceMode"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 241
    sget-object v2, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "begin to handleSilenceMode"

    invoke-static {v2, v3}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/emailcommon/provider/Account;->getAllEmailAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 245
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/Account;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 273
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 252
    :cond_2
    :try_start_1
    iget-wide v2, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mSilencePeriodicTime:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_3

    iget-wide v2, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mLastSettedTime:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_3

    if-nez p1, :cond_3

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mLastSettedTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mSilencePeriodicTime:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 254
    iget-object v2, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    sget-object v2, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "doesn\'t reach periodic time"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 256
    sget-object v2, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "doesn\'t reach periodic time"

    invoke-static {v2, v3}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 239
    .end local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/Account;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 262
    .restart local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/Account;>;"
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    sget-object v2, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "from SilenceManager handleSilenceMode"

    invoke-static {v2, v3}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_4
    invoke-virtual {p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->getIsSilencePeriodBlocked()Z

    move-result v1

    .line 267
    .local v1, "silence":Z
    if-eqz v1, :cond_5

    .line 268
    invoke-direct {p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->enterSilenceMode()V

    goto :goto_0

    .line 270
    :cond_5
    if-nez v1, :cond_1

    .line 271
    invoke-direct {p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->exitSilenceMode()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public handleSilenceModeAsync(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 226
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingsoft/mail/optimize/battery/SilenceManager$1;

    invoke-direct {v1, p0, p1}, Lcom/kingsoft/mail/optimize/battery/SilenceManager$1;-><init>(Lcom/kingsoft/mail/optimize/battery/SilenceManager;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 232
    return-void
.end method

.method public isInNormalMode()Z
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mLastSilenceMode:I

    sget v1, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->SILENCE_NORMAL:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->getIsSilencePeriodBlocked()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInSilenceMode()Z
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mLastSilenceMode:I

    sget v1, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->SILENCE_MODE:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->getIsSilencePeriodBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllAccountsPeriod()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "removeAllAccountsPeriod"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 160
    sget-object v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "removeAllAccountsPeriod"

    invoke-static {v0, v1}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/email/service/ImapPushService;->actionShutdown(Landroid/content/Context;)V

    .line 164
    iget-object v0, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mEmailSyncAdapterService:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    sget-object v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "goto stopServiceWithPingTask"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 167
    sget-object v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "goto stopServiceWithPingTask"

    invoke-static {v0, v1}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mEmailSyncAdapterService:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    invoke-virtual {v0}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->stopServiceWithPingTask()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mEmailSyncAdapterService:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;->removePeridicSyncForAllAccounts(Landroid/content/Context;)V

    .line 173
    return-void
.end method

.method public restoreAllAccountsPeriod()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 180
    iget-object v0, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "restoreAllAccountsPeriod"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 182
    sget-object v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "restoreAllAccountsPeriod"

    invoke-static {v0, v1}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/kingsoft/email/service/ImapPushService;->actionStart(Landroid/content/Context;I)V

    .line 185
    iget-object v0, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mEmailSyncAdapterService:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    sget-object v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "goto restartAllPingTask"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 189
    sget-object v0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "goto restartAllPingTask"

    invoke-static {v0, v1}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mEmailSyncAdapterService:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    invoke-virtual {v0}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->restartAllPingTask()V

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;->fixNormalPeriodicSyncForAllAccounts(Landroid/content/Context;)V

    .line 194
    return-void
.end method

.method public setEmailSyncAdapterServer(Lcom/kingsoft/exchange/service/EmailSyncAdapterService;)V
    .locals 0
    .param p1, "service"    # Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->mEmailSyncAdapterService:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    .line 393
    return-void
.end method
