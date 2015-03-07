.class Lcom/kingsoft/mail/chat/ChatViewController$9$1;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/chat/ChatViewController$9;->onSizeChanged(IIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/chat/ChatViewController$9;

.field final synthetic val$h:I


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController$9;I)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$9$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$9;

    iput p2, p0, Lcom/kingsoft/mail/chat/ChatViewController$9$1;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 494
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$9$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$9;

    iget-object v3, v3, Lcom/kingsoft/mail/chat/ChatViewController$9;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1500(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->getMeasuredHeight()I

    move-result v2

    .line 495
    .local v2, "quickReplyBarHeight":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 496
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 497
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$9$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$9;

    iget-object v3, v3, Lcom/kingsoft/mail/chat/ChatViewController$9;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatFillView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/kingsoft/mail/chat/ChatFillView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$9$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$9;

    iget-object v3, v3, Lcom/kingsoft/mail/chat/ChatViewController$9;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 499
    .local v0, "minHeight":I
    iget v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$9$1;->val$h:I

    if-ne v3, v0, :cond_0

    .line 500
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$9$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$9;

    iget-object v3, v3, Lcom/kingsoft/mail/chat/ChatViewController$9;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 502
    :cond_0
    return-void
.end method
