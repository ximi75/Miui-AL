.class Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$2;
.super Ljava/lang/Object;
.source "AttachmentDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->downloadAllWithPrompt(J)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;J)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;

    iput-wide p2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$2;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$2;->val$messageId:J

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/AttachmentUtils;->downloadAttachmentImmediately(Landroid/content/Context;J)V

    .line 93
    return-void
.end method
