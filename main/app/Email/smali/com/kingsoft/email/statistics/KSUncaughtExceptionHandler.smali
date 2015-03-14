.class public Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "KSUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final CRASH_REPORTER_EXTENSION:Ljava/lang/String; = ".er"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mDeviceCrashInfo:Ljava/util/Properties;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    .line 27
    iput-object p1, p0, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 29
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getTheAppDeviceInfo(Landroid/content/Context;)Lcom/kingsoft/email/statistics/AppDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;->version:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static getCrashReportFiles(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 79
    .local v0, "filesDir":Ljava/io/File;
    new-instance v1, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler$1;

    invoke-direct {v1}, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler$1;-><init>()V

    .line 84
    .local v1, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string/jumbo v0, "KSUncaughtExceptionHandler"

    const-string/jumbo v1, "no handler"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 92
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 93
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private saveCrashInfoToFile(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 14
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v9, 0x0

    const/4 v13, 0x0

    .line 39
    iget-object v10, p0, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    const-string/jumbo v11, "exceptType"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v10, p0, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;->version:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 41
    iget-object v10, p0, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    const-string/jumbo v11, "version"

    iget-object v12, p0, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;->version:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 44
    .local v3, "info":Ljava/io/Writer;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 45
    .local v4, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 47
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "result":Ljava/lang/String;
    const-string/jumbo v10, "CloseGuard"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v2, v9

    .line 74
    :goto_1
    return-object v2

    .line 58
    :cond_2
    iget-object v10, p0, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    const-string/jumbo v11, "stacktrace"

    invoke-virtual {v10, v11, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 61
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 62
    .local v6, "timestamp":J
    iget-object v10, p0, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    const-string/jumbo v11, "exceptTime"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "crash-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".er"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "fileName":Ljava/lang/String;
    iget-object v10, p0, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {v10, v2, v11}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 66
    .local v8, "trace":Ljava/io/FileOutputStream;
    iget-object v10, p0, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v8, v11}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 68
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 70
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v6    # "timestamp":J
    .end local v8    # "trace":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v10, ".er"

    const-string/jumbo v11, "un create file"

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 72
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v9

    .line 74
    goto :goto_1
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    invoke-direct {p0, p2}, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;->saveCrashInfoToFile(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/email/statistics/KSUncaughtExceptionHandler;->handleException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method
