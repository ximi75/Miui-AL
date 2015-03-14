.class Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$4;
.super Ljava/lang/Object;
.source "AttachmentDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->createNetworkDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$4;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment$4;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 134
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 135
    return-void
.end method
