.class Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;
.super Ljava/lang/Object;
.source "AttachmentActionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/AttachmentActionHandler;->startDownloadingAttachmentAlertDialog(Ljava/lang/Long;ILcom/kingsoft/mail/providers/Attachment;IIIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

.field final synthetic val$additionalPriority:I

.field final synthetic val$attachment:Lcom/kingsoft/mail/providers/Attachment;

.field final synthetic val$attachmentSize:I

.field final synthetic val$delayDownload:Z

.field final synthetic val$destination:I

.field final synthetic val$isShowDownloadingDialog:Z

.field final synthetic val$lAttachmentId:Ljava/lang/Long;

.field final synthetic val$rendition:I


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/AttachmentActionHandler;IZLjava/lang/Long;Lcom/kingsoft/mail/providers/Attachment;IIIZ)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;->this$0:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    iput p2, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;->val$attachmentSize:I

    iput-boolean p3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;->val$isShowDownloadingDialog:Z

    iput-object p4, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;->val$lAttachmentId:Ljava/lang/Long;

    iput-object p5, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;->val$attachment:Lcom/kingsoft/mail/providers/Attachment;

    iput p6, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;->val$destination:I

    iput p7, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;->val$rendition:I

    iput p8, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;->val$additionalPriority:I

    iput-boolean p9, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;->val$delayDownload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 207
    iget v0, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;->val$attachmentSize:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->isEligibleForDownloadExternal(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;->this$0:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    # getter for: Lcom/kingsoft/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->access$000(Lcom/kingsoft/mail/browse/AttachmentActionHandler;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100175

    invoke-static {v0, v1}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 219
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;->val$isShowDownloadingDialog:Z

    if-eqz v0, :cond_1

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;->this$0:Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;->val$lAttachmentId:Ljava/lang/Long;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;->val$attachment:Lcom/kingsoft/mail/providers/Attachment;

    iget v3, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;->val$destination:I

    iget v4, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;->val$rendition:I

    iget v5, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;->val$additionalPriority:I

    iget-boolean v6, p0, Lcom/kingsoft/mail/browse/AttachmentActionHandler$2;->val$delayDownload:Z

    # invokes: Lcom/kingsoft/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(Ljava/lang/Long;Lcom/kingsoft/mail/providers/Attachment;IIIZ)V
    invoke-static/range {v0 .. v6}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->access$100(Lcom/kingsoft/mail/browse/AttachmentActionHandler;Ljava/lang/Long;Lcom/kingsoft/mail/providers/Attachment;IIIZ)V

    .line 218
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
