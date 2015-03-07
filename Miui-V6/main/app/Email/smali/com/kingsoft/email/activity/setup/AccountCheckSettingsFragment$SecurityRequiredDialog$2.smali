.class Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog$2;
.super Ljava/lang/Object;
.source "AccountCheckSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;

.field final synthetic val$target:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)V
    .locals 0

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;

    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog$2;->val$target:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;->dismiss()V

    .line 1427
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog$2;->val$target:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    const/4 v1, 0x1

    # invokes: Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->onSecurityRequiredDialogResultOk(Z)V
    invoke-static {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->access$800(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;Z)V

    .line 1428
    return-void
.end method
