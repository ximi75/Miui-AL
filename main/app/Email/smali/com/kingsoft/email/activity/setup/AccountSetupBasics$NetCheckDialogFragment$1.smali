.class Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NetCheckDialogFragment$1;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NetCheckDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NetCheckDialogFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NetCheckDialogFragment;)V
    .locals 0

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NetCheckDialogFragment$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NetCheckDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NetCheckDialogFragment$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NetCheckDialogFragment;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NetCheckDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 1497
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NetCheckDialogFragment$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NetCheckDialogFragment;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NetCheckDialogFragment;->dismiss()V

    .line 1498
    return-void
.end method
