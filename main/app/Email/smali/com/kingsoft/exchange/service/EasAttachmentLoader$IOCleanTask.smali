.class Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleanTask;
.super Ljava/lang/Object;
.source "EasAttachmentLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/service/EasAttachmentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IOCleanTask"
.end annotation


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mResponse:Lcom/kingsoft/exchange/EasResponse;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/kingsoft/exchange/EasResponse;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "resp"    # Lcom/kingsoft/exchange/EasResponse;

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p1, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleanTask;->mInputStream:Ljava/io/InputStream;

    .line 377
    iput-object p2, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleanTask;->mResponse:Lcom/kingsoft/exchange/EasResponse;

    .line 378
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 382
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleanTask;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleanTask;->mResponse:Lcom/kingsoft/exchange/EasResponse;

    if-eqz v1, :cond_0

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleanTask;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$IOCleanTask;->mResponse:Lcom/kingsoft/exchange/EasResponse;

    invoke-virtual {v1}, Lcom/kingsoft/exchange/EasResponse;->close()V

    .line 391
    :cond_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
