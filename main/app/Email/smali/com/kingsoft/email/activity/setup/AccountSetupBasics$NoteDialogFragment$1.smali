.class Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment$1;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment;)V
    .locals 0

    .prologue
    .line 1349
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1353
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1354
    .local v0, "a":Landroid/app/Activity;
    instance-of v1, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    if-eqz v1, :cond_0

    .line 1355
    check-cast v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    .end local v0    # "a":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    .line 1358
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->dismiss()V

    .line 1359
    return-void
.end method
