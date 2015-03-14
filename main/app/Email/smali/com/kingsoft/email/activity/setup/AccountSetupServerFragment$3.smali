.class Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$3;
.super Ljava/lang/Object;
.source "AccountSetupServerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$3;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;

    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$3;->val$dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 255
    :cond_0
    return-void
.end method
