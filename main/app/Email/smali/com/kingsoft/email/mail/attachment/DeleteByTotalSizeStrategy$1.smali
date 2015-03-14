.class Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy$1;
.super Ljava/lang/Object;
.source "DeleteByTotalSizeStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy;->delete(Ljava/io/File;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy;

.field final synthetic val$dstFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy$1;->this$0:Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy;

    iput-object p2, p0, Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy$1;->val$dstFile:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 44
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/DeleteByTotalSizeStrategy$1;->val$dstFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
