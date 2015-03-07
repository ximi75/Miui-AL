.class public Lcom/kingsoft/email/service/EmailServiceStub$MessageRetrievalListenerBridge;
.super Ljava/lang/Object;
.source "EmailServiceStub.java"

# interfaces
.implements Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/service/EmailServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageRetrievalListenerBridge"
.end annotation


# instance fields
.field private final mAttachmentId:J

.field private final mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

.field private final mMessageId:J

.field final synthetic this$0:Lcom/kingsoft/email/service/EmailServiceStub;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/service/EmailServiceStub;JJLcom/android/emailcommon/service/IEmailServiceCallback;)V
    .locals 0
    .param p2, "messageId"    # J
    .param p4, "attachmentId"    # J
    .param p6, "callback"    # Lcom/android/emailcommon/service/IEmailServiceCallback;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/kingsoft/email/service/EmailServiceStub$MessageRetrievalListenerBridge;->this$0:Lcom/kingsoft/email/service/EmailServiceStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-wide p2, p0, Lcom/kingsoft/email/service/EmailServiceStub$MessageRetrievalListenerBridge;->mMessageId:J

    .line 375
    iput-wide p4, p0, Lcom/kingsoft/email/service/EmailServiceStub$MessageRetrievalListenerBridge;->mAttachmentId:J

    .line 376
    iput-object p6, p0, Lcom/kingsoft/email/service/EmailServiceStub$MessageRetrievalListenerBridge;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    .line 377
    return-void
.end method


# virtual methods
.method public loadAttachmentStatus(II)V
    .locals 7
    .param p1, "status"    # I
    .param p2, "progress"    # I

    .prologue
    .line 382
    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    .line 383
    :try_start_0
    iget-wide v0, p0, Lcom/kingsoft/email/service/EmailServiceStub$MessageRetrievalListenerBridge;->mAttachmentId:J

    invoke-static {v0, v1}, Lcom/kingsoft/email/service/AttachmentDownloadService;->cancelQueuedAttachment(J)Z

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/service/EmailServiceStub$MessageRetrievalListenerBridge;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    iget-wide v1, p0, Lcom/kingsoft/email/service/EmailServiceStub$MessageRetrievalListenerBridge;->mMessageId:J

    iget-wide v3, p0, Lcom/kingsoft/email/service/EmailServiceStub$MessageRetrievalListenerBridge;->mAttachmentId:J

    move v5, p1

    move v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public messageRetrieved(Lcom/kingsoft/emailcommon/mail/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/kingsoft/emailcommon/mail/Message;

    .prologue
    .line 395
    return-void
.end method
