.class Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "DuplicateAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$1;->this$0:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$1;->this$0:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;->dismiss()V

    .line 68
    return-void
.end method
