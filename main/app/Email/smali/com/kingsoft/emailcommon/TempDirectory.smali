.class public Lcom/kingsoft/emailcommon/TempDirectory;
.super Ljava/lang/Object;
.source "TempDirectory.java"


# static fields
.field private static sTempDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/emailcommon/TempDirectory;->sTempDirectory:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTempDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/kingsoft/emailcommon/TempDirectory;->sTempDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "TempDirectory not set.  If in a unit test, call Email.setTempDirectory(context) in setUp()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    sget-object v0, Lcom/kingsoft/emailcommon/TempDirectory;->sTempDirectory:Ljava/io/File;

    return-object v0
.end method

.method public static setTempDirectory(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/emailcommon/TempDirectory;->sTempDirectory:Ljava/io/File;

    .line 32
    return-void
.end method
