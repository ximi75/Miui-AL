.class Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog$5;
.super Ljava/lang/Object;
.source "AccountCheckSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;)V
    .locals 0

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog$5;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog$5;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->dismiss()V

    .line 1353
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog$5;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->onErrorDialogEditButton()V

    .line 1354
    return-void
.end method
