.class public Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadRequest"
.end annotation


# instance fields
.field final accountId:J

.field final attachmentId:J

.field inProgress:Z

.field lastCallbackTime:J

.field lastProgress:I

.field lastStatusCode:I

.field final messageId:J

.field final priority:I

.field retryCount:J

.field retryStartTime:J

.field startTime:J

.field final time:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    .line 340
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    iput-wide v1, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    .line 341
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 342
    .local v0, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_0

    .line 343
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    iput-wide v1, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    .line 344
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v1, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->messageId:J

    .line 348
    :goto_0
    # invokes: Lcom/kingsoft/email/service/AttachmentDownloadService;->getPriority(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    invoke-static {p2}, Lcom/kingsoft/email/service/AttachmentDownloadService;->access$100(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    .line 350
    return-void

    .line 346
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->messageId:J

    iput-wide v1, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/kingsoft/email/service/AttachmentDownloadService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .param p3, "x2"    # Lcom/kingsoft/email/service/AttachmentDownloadService$1;

    .prologue
    .line 325
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method private constructor <init>(Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;J)V
    .locals 2
    .param p1, "orig"    # Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    .param p2, "newTime"    # J

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    .line 353
    iget v0, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    iput v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    .line 354
    iget-wide v0, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    iput-wide v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    .line 355
    iget-wide v0, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->messageId:J

    iput-wide v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->messageId:J

    .line 356
    iget-wide v0, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    iput-wide v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    .line 357
    iput-wide p2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    .line 358
    iget-boolean v0, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    iput-boolean v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    .line 359
    iget v0, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->lastStatusCode:I

    iput v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->lastStatusCode:I

    .line 360
    iget v0, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->lastProgress:I

    iput v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->lastProgress:I

    .line 361
    iget-wide v0, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    iput-wide v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    .line 362
    iget-wide v0, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->startTime:J

    iput-wide v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->startTime:J

    .line 363
    iget-wide v0, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    iput-wide v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    .line 364
    iget-wide v0, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->retryStartTime:J

    iput-wide v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->retryStartTime:J

    .line 365
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;JLcom/kingsoft/email/service/AttachmentDownloadService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lcom/kingsoft/email/service/AttachmentDownloadService$1;

    .prologue
    .line 325
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;-><init>(Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 378
    instance-of v2, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    if-nez v2, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 379
    check-cast v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    .line 380
    .local v0, "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    iget-wide v2, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    iget-wide v4, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 370
    iget-wide v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    long-to-int v0, v0

    return v0
.end method
