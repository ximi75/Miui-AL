.class Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$3;
.super Ljava/lang/Object;
.source "AttachmentDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->cancelWithPrompt(Lcom/kingsoft/mail/providers/Attachment;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;

.field final synthetic val$attachment:Lcom/kingsoft/mail/providers/Attachment;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;Lcom/kingsoft/mail/providers/Attachment;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$3;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;

    iput-object p2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$3;->val$attachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$3;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$3;->val$attachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-static {v0, v1}, Lcom/kingsoft/mail/utils/AttachmentUtils;->cancelDownloadNow(Landroid/content/Context;Lcom/kingsoft/mail/providers/Attachment;)V

    .line 112
    return-void
.end method
