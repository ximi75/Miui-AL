.class Lcom/kingsoft/emailcommon/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;
.super Ljava/io/FilterInputStream;
.source "BinaryTempFileBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/emailcommon/internet/BinaryTempFileBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BinaryTempFileBodyInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/emailcommon/internet/BinaryTempFileBody;


# direct methods
.method public constructor <init>(Lcom/kingsoft/emailcommon/internet/BinaryTempFileBody;Ljava/io/InputStream;)V
    .locals 0
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/kingsoft/emailcommon/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->this$0:Lcom/kingsoft/emailcommon/internet/BinaryTempFileBody;

    .line 82
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 83
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 88
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->this$0:Lcom/kingsoft/emailcommon/internet/BinaryTempFileBody;

    # getter for: Lcom/kingsoft/emailcommon/internet/BinaryTempFileBody;->mFile:Ljava/io/File;
    invoke-static {v0}, Lcom/kingsoft/emailcommon/internet/BinaryTempFileBody;->access$000(Lcom/kingsoft/emailcommon/internet/BinaryTempFileBody;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 89
    return-void
.end method