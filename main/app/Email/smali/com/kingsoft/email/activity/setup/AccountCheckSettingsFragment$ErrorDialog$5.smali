.class Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$5;
.super Ljava/lang/Object;
.source "AccountCheckSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

.field final synthetic val$target:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)V
    .locals 0

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$5;->this$1:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$5;->val$target:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$5;->this$1:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->dismiss()V

    .line 1202
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$5;->val$target:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->onErrorDialogEditButton()V

    .line 1203
    return-void
.end method
