.class public Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;
.super Ljava/lang/Object;
.source "EasAttachmentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/service/EasAttachmentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressCallback"
.end annotation


# instance fields
.field private final mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field private final mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/service/IEmailServiceCallback;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/emailcommon/service/IEmailServiceCallback;
    .param p2, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    .line 83
    iput-object p2, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 84
    return-void
.end method

.method static synthetic access$200(Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;)Lcom/android/emailcommon/service/IEmailServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    return-object v0
.end method


# virtual methods
.method public doCallback(II)V
    .locals 7
    .param p1, "status"    # I
    .param p2, "progress"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iget-object v3, p0, Lcom/kingsoft/exchange/service/EasAttachmentLoader$ProgressCallback;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    const/4 v5, 0x1

    move v6, p2

    # invokes: Lcom/kingsoft/exchange/service/EasAttachmentLoader;->doStatusCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V
    invoke-static/range {v0 .. v6}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->access$000(Lcom/android/emailcommon/service/IEmailServiceCallback;JJII)V

    .line 89
    return-void
.end method
