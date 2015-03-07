.class Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$NoteDialogFragment$1;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$NoteDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$NoteDialogFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$NoteDialogFragment;)V
    .locals 0

    .prologue
    .line 1371
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$NoteDialogFragment$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$NoteDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$NoteDialogFragment$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$NoteDialogFragment;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$NoteDialogFragment;->dismiss()V

    .line 1376
    return-void
.end method
