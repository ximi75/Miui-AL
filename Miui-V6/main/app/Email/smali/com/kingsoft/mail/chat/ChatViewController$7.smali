.class Lcom/kingsoft/mail/chat/ChatViewController$7;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IMoreBtnListener;


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
    .line 442
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$7;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    .line 446
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$7;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->chatViewReady:Z
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$700(Lcom/kingsoft/mail/chat/ChatViewController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 465
    :goto_0
    return-void

    .line 449
    :cond_0
    if-eqz p1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$7;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    const/4 v2, 0x2

    # setter for: Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarFrom:I
    invoke-static {v1, v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$802(Lcom/kingsoft/mail/chat/ChatViewController;I)I

    .line 451
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$7;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 452
    .local v0, "position":I
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$7;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->setFocusIndex(I)V

    .line 453
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$7;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/kingsoft/mail/chat/ChatViewController$7$1;

    invoke-direct {v2, p0, v0}, Lcom/kingsoft/mail/chat/ChatViewController$7$1;-><init>(Lcom/kingsoft/mail/chat/ChatViewController$7;I)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 462
    .end local v0    # "position":I
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$7;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # invokes: Lcom/kingsoft/mail/chat/ChatViewController;->hideFillLayout()V
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1100(Lcom/kingsoft/mail/chat/ChatViewController;)V

    .line 463
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$7;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->setFocusIndex(I)V

    goto :goto_0
.end method
