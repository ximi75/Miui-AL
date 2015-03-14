.class Lcom/kingsoft/email/activity/ChangePWAlertActivity$4;
.super Ljava/lang/Object;
.source "ChangePWAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 262
    iput-object p1, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$4;->this$0:Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$4;->this$0:Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    # getter for: Lcom/kingsoft/email/activity/ChangePWAlertActivity;->isChecking:Z
    invoke-static {v0}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->access$400(Lcom/kingsoft/email/activity/ChangePWAlertActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity$4;->this$0:Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->finish()V

    .line 268
    :cond_0
    return-void
.end method
