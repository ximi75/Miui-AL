.class Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$2;
.super Ljava/lang/Object;
.source "AccountSetupServerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;

    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$2;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 230
    packed-switch p2, :pswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 232
    :pswitch_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mImapPathPrefixView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$2;->val$et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 237
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
