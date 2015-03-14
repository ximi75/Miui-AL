.class Lcom/kingsoft/email/activity/ChangePWAlertActivity$3;
.super Ljava/lang/Object;
.source "ChangePWAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/ChangePWAlertActivity;->popPWDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/ChangePWAlertActivity;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/ChangePWAlertActivity;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$3;->this$0:Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 250
    iget-object v0, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$3;->this$0:Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    iget-object v1, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$3;->this$0:Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    # getter for: Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->access$100(Lcom/kingsoft/email/activity/ChangePWAlertActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mPassword:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->access$002(Lcom/kingsoft/email/activity/ChangePWAlertActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$3;->this$0:Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    # getter for: Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mPassword:Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->access$000(Lcom/kingsoft/email/activity/ChangePWAlertActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 252
    iget-object v0, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$3;->this$0:Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    iget-object v1, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$3;->this$0:Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    const v2, 0x7f1002bd

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 253
    iget-object v0, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$3;->this$0:Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    # invokes: Lcom/kingsoft/email/activity/ChangePWAlertActivity;->setDialogCloseable(ZLandroid/content/DialogInterface;)V
    invoke-static {v0, v3, p1}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->access$200(Lcom/kingsoft/email/activity/ChangePWAlertActivity;ZLandroid/content/DialogInterface;)V

    .line 258
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$3;->this$0:Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    # invokes: Lcom/kingsoft/email/activity/ChangePWAlertActivity;->setDialogCloseable(ZLandroid/content/DialogInterface;)V
    invoke-static {v0, v2, p1}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->access$200(Lcom/kingsoft/email/activity/ChangePWAlertActivity;ZLandroid/content/DialogInterface;)V

    .line 256
    iget-object v0, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$3;->this$0:Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    iget-object v1, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$3;->this$0:Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    # getter for: Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v1}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->access$300(Lcom/kingsoft/email/activity/ChangePWAlertActivity;)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->checkLogin(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_0
.end method
