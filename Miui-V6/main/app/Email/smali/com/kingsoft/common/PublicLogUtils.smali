.class public Lcom/kingsoft/common/PublicLogUtils;
.super Ljava/lang/Object;
.source "PublicLogUtils.java"


# static fields
.field private static SERVICE_ERR:Ljava/lang/String;

.field private static SERVICE_ERR_SWITCH:Z

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "SERVICE_ERR"

    sput-object v0, Lcom/kingsoft/common/PublicLogUtils;->SERVICE_ERR:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "SERVICE_ERR    "

    sput-object v0, Lcom/kingsoft/common/PublicLogUtils;->TAG:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingsoft/common/PublicLogUtils;->SERVICE_ERR_SWITCH:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ServiceErrLog(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 18
    :try_start_0
    sget-boolean v0, Lcom/kingsoft/common/PublicLogUtils;->SERVICE_ERR_SWITCH:Z

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/kingsoft/common/PublicLogUtils;->SERVICE_ERR:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kingsoft/common/PublicLogUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/kingsoft/common/PublicLogUtils;->saveCrashInfoToFile(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :cond_0
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static saveCrashInfoToFile(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 27
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 28
    .local v2, "info":Ljava/io/Writer;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 29
    .local v3, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 31
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 38
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v2    # "info":Ljava/io/Writer;
    .end local v3    # "printWriter":Ljava/io/PrintWriter;
    :goto_1
    return-object v4

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, ""

    goto :goto_1
.end method
