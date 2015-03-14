.class Lcom/kingsoft/mail/chat/ChatViewController$14$1;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/chat/ChatViewController$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/chat/ChatViewController$14;

.field final synthetic val$headHeight:I

.field final synthetic val$isSendFromMyself:Z

.field final synthetic val$listRt:Landroid/graphics/Rect;

.field final synthetic val$rt:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController$14;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V
    .locals 0

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$14;

    iput-object p2, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$rt:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$listRt:Landroid/graphics/Rect;

    iput p4, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$headHeight:I

    iput-boolean p5, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$isSendFromMyself:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1253
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$14;

    iget-object v3, v3, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$14;

    iget v4, v4, Lcom/kingsoft/mail/chat/ChatViewController$14;->val$position:I

    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$14;

    iget-object v5, v5, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1254
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    .line 1255
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$14;

    iget-object v3, v3, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$14;

    iget-object v4, v4, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1257
    :cond_0
    if-nez v2, :cond_1

    .line 1282
    :goto_0
    return-void

    .line 1260
    :cond_1
    const v3, 0x7f0c0105

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1261
    .local v1, "contentView":Landroid/view/View;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1262
    .local v0, "childViewRt":Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1264
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$rt:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1265
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$rt:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1271
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$rt:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$listRt:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$headHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1272
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$rt:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$rt:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$headHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 1274
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$14;

    iget-boolean v3, v3, Lcom/kingsoft/mail/chat/ChatViewController$14;->val$tabletUi:Z

    if-eqz v3, :cond_2

    .line 1275
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$rt:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$rt:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$listRt:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1276
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$rt:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$rt:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$listRt:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1278
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$14;

    iget-object v3, v3, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatFillView;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$rt:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/chat/ChatFillView;->setClipRect(Landroid/graphics/Rect;)V

    .line 1279
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$14;

    iget-object v3, v3, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatFillView;

    move-result-object v3

    iget-boolean v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->val$isSendFromMyself:Z

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/chat/ChatFillView;->setIsSendFromMyself(Z)V

    .line 1280
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$14$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$14;

    iget-object v3, v3, Lcom/kingsoft/mail/chat/ChatViewController$14;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatFillView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/ChatFillView;->invalidate()V

    goto/16 :goto_0
.end method
