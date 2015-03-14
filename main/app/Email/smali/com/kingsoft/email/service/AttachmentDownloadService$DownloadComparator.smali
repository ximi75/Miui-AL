.class Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadComparator;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;)I
    .locals 6
    .param p1, "req1"    # Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    .param p2, "req2"    # Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 392
    iget v2, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    iget v3, p2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    if-eq v2, v3, :cond_1

    .line 393
    iget v2, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    iget v3, p2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    if-ge v2, v3, :cond_0

    .line 401
    .local v0, "res":I
    :goto_0
    return v0

    .end local v0    # "res":I
    :cond_0
    move v0, v1

    .line 393
    goto :goto_0

    .line 395
    :cond_1
    iget-wide v2, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    iget-wide v4, p2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 396
    const/4 v0, 0x0

    .restart local v0    # "res":I
    goto :goto_0

    .line 398
    .end local v0    # "res":I
    :cond_2
    iget-wide v2, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    iget-wide v4, p2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .restart local v0    # "res":I
    :goto_1
    goto :goto_0

    .end local v0    # "res":I
    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 388
    check-cast p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadComparator;->compare(Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;)I

    move-result v0

    return v0
.end method
