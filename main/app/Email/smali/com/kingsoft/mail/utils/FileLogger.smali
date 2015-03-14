.class public Lcom/kingsoft/mail/utils/FileLogger;
.super Ljava/lang/Object;
.source "FileLogger.java"


# static fields
.field private static LOGGER:Lcom/kingsoft/mail/utils/FileLogger;

.field public static LOG_FILE_NAME:Ljava/lang/String;

.field private static sLogWriter:Ljava/io/FileWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/kingsoft/mail/utils/FileLogger;->LOGGER:Lcom/kingsoft/mail/utils/FileLogger;

    .line 16
    sput-object v0, Lcom/kingsoft/mail/utils/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/emaillog.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/utils/FileLogger;->LOG_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    sget-object v1, Lcom/kingsoft/mail/utils/FileLogger;->LOG_FILE_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/kingsoft/mail/utils/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized close()V
    .locals 2

    .prologue
    .line 34
    const-class v1, Lcom/kingsoft/mail/utils/FileLogger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingsoft/mail/utils/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 36
    :try_start_1
    sget-object v0, Lcom/kingsoft/mail/utils/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/kingsoft/mail/utils/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :cond_0
    monitor-exit v1

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 37
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized getLogger()Lcom/kingsoft/mail/utils/FileLogger;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/kingsoft/mail/utils/FileLogger;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/kingsoft/mail/utils/FileLogger;

    invoke-direct {v0}, Lcom/kingsoft/mail/utils/FileLogger;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/utils/FileLogger;->LOGGER:Lcom/kingsoft/mail/utils/FileLogger;

    .line 22
    sget-object v0, Lcom/kingsoft/mail/utils/FileLogger;->LOGGER:Lcom/kingsoft/mail/utils/FileLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized log(Ljava/lang/Exception;)V
    .locals 4
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 45
    const-class v2, Lcom/kingsoft/mail/utils/FileLogger;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/kingsoft/mail/utils/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    if-eqz v1, :cond_0

    .line 46
    const-string/jumbo v1, "Exception"

    const-string/jumbo v3, "Stack trace follows..."

    invoke-static {v1, v3}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Lcom/kingsoft/mail/utils/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 48
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 49
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v0    # "pw":Ljava/io/PrintWriter;
    :cond_0
    monitor-exit v2

    return-void

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0xa

    .line 55
    const-class v9, Lcom/kingsoft/mail/utils/FileLogger;

    monitor-enter v9

    :try_start_0
    sget-object v8, Lcom/kingsoft/mail/utils/FileLogger;->LOGGER:Lcom/kingsoft/mail/utils/FileLogger;

    if-nez v8, :cond_0

    .line 56
    new-instance v8, Lcom/kingsoft/mail/utils/FileLogger;

    invoke-direct {v8}, Lcom/kingsoft/mail/utils/FileLogger;-><init>()V

    sput-object v8, Lcom/kingsoft/mail/utils/FileLogger;->LOGGER:Lcom/kingsoft/mail/utils/FileLogger;

    .line 57
    const-string/jumbo v8, "Logger"

    const-string/jumbo v10, "\r\n\r\n --- New Log ---"

    invoke-static {v8, v10}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    sget-object v8, Lcom/kingsoft/mail/utils/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    if-eqz v8, :cond_4

    .line 61
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 62
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v3

    .line 63
    .local v3, "hr":I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v4

    .line 64
    .local v4, "min":I
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v7

    .line 67
    .local v7, "sec":I
    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v8, 0x100

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 68
    .local v6, "sb":Ljava/lang/StringBuffer;
    const/16 v8, 0x5b

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 70
    const/16 v8, 0x3a

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    if-ge v4, v11, :cond_1

    .line 72
    const/16 v8, 0x30

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    :cond_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 74
    const/16 v8, 0x3a

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    if-ge v7, v11, :cond_2

    .line 76
    const/16 v8, 0x30

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 78
    :cond_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 79
    const-string/jumbo v8, "] "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    if-eqz p0, :cond_3

    .line 81
    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string/jumbo v8, "| "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_3
    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string/jumbo v8, "\r\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 88
    .local v5, "s":Ljava/lang/String;
    :try_start_1
    sget-object v8, Lcom/kingsoft/mail/utils/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    invoke-virtual {v8, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 89
    sget-object v8, Lcom/kingsoft/mail/utils/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    invoke-virtual {v8}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .end local v0    # "d":Ljava/util/Date;
    .end local v3    # "hr":I
    .end local v4    # "min":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local v7    # "sec":I
    :cond_4
    :goto_0
    monitor-exit v9

    return-void

    .line 90
    .restart local v0    # "d":Ljava/util/Date;
    .restart local v3    # "hr":I
    .restart local v4    # "min":I
    .restart local v5    # "s":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    .restart local v7    # "sec":I
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v8, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 94
    sget-object v8, Lcom/kingsoft/mail/utils/FileLogger;->LOGGER:Lcom/kingsoft/mail/utils/FileLogger;

    if-eqz v8, :cond_5

    .line 95
    sget-object v8, Lcom/kingsoft/mail/utils/FileLogger;->LOGGER:Lcom/kingsoft/mail/utils/FileLogger;

    invoke-static {}, Lcom/kingsoft/mail/utils/FileLogger;->close()V

    .line 97
    :cond_5
    new-instance v8, Lcom/kingsoft/mail/utils/FileLogger;

    invoke-direct {v8}, Lcom/kingsoft/mail/utils/FileLogger;-><init>()V

    sput-object v8, Lcom/kingsoft/mail/utils/FileLogger;->LOGGER:Lcom/kingsoft/mail/utils/FileLogger;

    .line 98
    sget-object v8, Lcom/kingsoft/mail/utils/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_4

    .line 100
    :try_start_3
    const-string/jumbo v8, "FileLogger"

    const-string/jumbo v10, "Exception writing log; recreating..."

    invoke-static {v8, v10}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p0, p1}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 102
    :catch_1
    move-exception v2

    .line 104
    .local v2, "e1":Ljava/lang/Exception;
    :try_start_4
    sget-object v8, Lcom/kingsoft/mail/utils/FileLogger;->LOGGER:Lcom/kingsoft/mail/utils/FileLogger;

    invoke-static {}, Lcom/kingsoft/mail/utils/FileLogger;->close()V

    .line 105
    const/4 v8, 0x0

    sput-object v8, Lcom/kingsoft/mail/utils/FileLogger;->LOGGER:Lcom/kingsoft/mail/utils/FileLogger;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 55
    .end local v0    # "d":Ljava/util/Date;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljava/lang/Exception;
    .end local v3    # "hr":I
    .end local v4    # "min":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local v7    # "sec":I
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method
