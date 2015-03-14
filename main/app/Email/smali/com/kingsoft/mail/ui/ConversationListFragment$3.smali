.class Lcom/kingsoft/mail/ui/ConversationListFragment$3;
.super Lcom/kingsoft/mail/providers/FolderObserver;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationListFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$3;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-direct {p0}, Lcom/kingsoft/mail/providers/FolderObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 2
    .param p1, "newFolder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$3;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->onFolderUpdated(Lcom/kingsoft/mail/providers/Folder;)V

    .line 389
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$3;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    # getter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->isInitMenuBar:Z
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$600(Lcom/kingsoft/mail/ui/ConversationListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$3;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 391
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$3;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    const/4 v1, 0x1

    # setter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->isInitMenuBar:Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$602(Lcom/kingsoft/mail/ui/ConversationListFragment;Z)Z

    .line 393
    :cond_0
    return-void
.end method
