.class Lcom/kingsoft/mail/ui/ConversationListFragment$1;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/ConversationListFragment;
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
    .line 169
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$1;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerSlide(FI)V
    .locals 0
    .param p1, "openRatio"    # F
    .param p2, "offsetPixels"    # I

    .prologue
    .line 186
    return-void
.end method

.method public onDrawerStateChange(II)V
    .locals 3
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 173
    if-ne v2, p2, :cond_0

    const/16 v0, 0x8

    if-ne v0, p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$1;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    # setter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->mMenuClosing:Z
    invoke-static {v0, v2}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$002(Lcom/kingsoft/mail/ui/ConversationListFragment;Z)Z

    .line 182
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$1;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    # getter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->mCursorChanged:Z
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$100(Lcom/kingsoft/mail/ui/ConversationListFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$1;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$1;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$1;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$1;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->onConversationListStatusUpdated()V

    .line 178
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$1;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    # setter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->mCursorChanged:Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$102(Lcom/kingsoft/mail/ui/ConversationListFragment;Z)Z

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$1;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    # setter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->mMenuClosing:Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$002(Lcom/kingsoft/mail/ui/ConversationListFragment;Z)Z

    goto :goto_0
.end method
