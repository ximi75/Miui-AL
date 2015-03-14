.class Lcom/kingsoft/mail/chat/ChatViewController$19;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/chat/ChatViewController;->initializeActionBar(Landroid/app/ActionBar;Lcom/kingsoft/mail/ui/ControllableActivity;)Lcom/kingsoft/mail/ui/MailActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/chat/ChatViewController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController;)V
    .locals 0

    .prologue
    .line 1759
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$19;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$19;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Folder;->isUnreadFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1763
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$19;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1003ac

    invoke-static {v0, v1}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 1770
    :cond_0
    :goto_0
    return-void

    .line 1766
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$19;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->chatViewReady:Z
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$700(Lcom/kingsoft/mail/chat/ChatViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$19;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$3300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/AbstractActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->transitionBackToMergeListMode()V

    .line 1768
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$19;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/preferences/MailPrefs;->setShowChatView(Z)V

    goto :goto_0
.end method
