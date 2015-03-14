.class Lcom/kingsoft/mail/chat/ChatViewController$11;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/ChatViewController;
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
    .line 1045
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$11;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1050
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1054
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$11;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # setter for: Lcom/kingsoft/mail/chat/ChatViewController;->mScrollState:I
    invoke-static {v1, p2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2502(Lcom/kingsoft/mail/chat/ChatViewController;I)I

    .line 1055
    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mTaskManager:Lcom/kingsoft/mail/chat/DelayedTaskManager;
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2600()Lcom/kingsoft/mail/chat/DelayedTaskManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1056
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 1057
    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mTaskManager:Lcom/kingsoft/mail/chat/DelayedTaskManager;
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2600()Lcom/kingsoft/mail/chat/DelayedTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/DelayedTaskManager;->pause()V

    .line 1062
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$11;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListViewSmoothScroll:Z
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2700(Lcom/kingsoft/mail/chat/ChatViewController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$11;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1500(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->isMoreOpVisiable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1063
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$11;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    const/4 v2, 0x1

    # setter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListViewScrollStateChanged:Z
    invoke-static {v1, v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2802(Lcom/kingsoft/mail/chat/ChatViewController;Z)Z

    .line 1064
    if-nez p2, :cond_1

    .line 1065
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$11;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # invokes: Lcom/kingsoft/mail/chat/ChatViewController;->getFocusIndex()I
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1800(Lcom/kingsoft/mail/chat/ChatViewController;)I

    move-result v0

    .line 1066
    .local v0, "position":I
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$11;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$11;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mKeyboardVisible:Z
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1400(Lcom/kingsoft/mail/chat/ChatViewController;)Z

    move-result v2

    # invokes: Lcom/kingsoft/mail/chat/ChatViewController;->showFillLayout(IZ)V
    invoke-static {v1, v0, v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2900(Lcom/kingsoft/mail/chat/ChatViewController;IZ)V

    .line 1069
    .end local v0    # "position":I
    :cond_1
    return-void

    .line 1059
    :cond_2
    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mTaskManager:Lcom/kingsoft/mail/chat/DelayedTaskManager;
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2600()Lcom/kingsoft/mail/chat/DelayedTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/DelayedTaskManager;->resume()V

    goto :goto_0
.end method
