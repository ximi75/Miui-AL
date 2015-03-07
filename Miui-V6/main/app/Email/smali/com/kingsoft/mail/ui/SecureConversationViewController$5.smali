.class Lcom/kingsoft/mail/ui/SecureConversationViewController$5;
.super Ljava/lang/Object;
.source "SecureConversationViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/SecureConversationViewController;->renderMessage(Lcom/kingsoft/mail/browse/ConversationMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field account:Lcom/kingsoft/mail/providers/Account;

.field final method:Ljava/lang/String;

.field final synthetic this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V
    .locals 1

    .prologue
    .line 766
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$5;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$5;->account:Lcom/kingsoft/mail/providers/Account;

    .line 768
    const-string/jumbo v0, "send_message"

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$5;->method:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 772
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$5;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$400(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v1

    .line 773
    .local v1, "mPreferences":Lcom/kingsoft/email/Preferences;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$5;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$1900(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 774
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Lcom/kingsoft/email/Preferences;->getConfirmSend()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 775
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$5;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$400(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f100137

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f100107

    new-instance v4, Lcom/kingsoft/mail/ui/SecureConversationViewController$5$2;

    invoke-direct {v4, p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController$5$2;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewController$5;)V

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f10036e

    new-instance v4, Lcom/kingsoft/mail/ui/SecureConversationViewController$5$1;

    invoke-direct {v4, p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController$5$1;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewController$5;)V

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/AlertDialog;->show()V

    .line 798
    :goto_0
    return-void

    .line 796
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$5;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # invokes: Lcom/kingsoft/mail/ui/SecureConversationViewController;->quickReplyMail()V
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$2000(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V

    goto :goto_0
.end method
