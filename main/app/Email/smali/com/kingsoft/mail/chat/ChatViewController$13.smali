.class Lcom/kingsoft/mail/chat/ChatViewController$13;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 1124
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$13;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1128
    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatViewController$13;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;
    invoke-static {v5}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1500(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->isMoreOpVisiable()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatViewController$13;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mKeyboardVisible:Z
    invoke-static {v5}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1400(Lcom/kingsoft/mail/chat/ChatViewController;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1129
    :cond_0
    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatViewController$13;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;
    invoke-static {v5}, Lcom/kingsoft/mail/chat/ChatViewController;->access$200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->setFocusIndex(I)V

    .line 1130
    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatViewController$13;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1131
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1132
    .local v3, "screenWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1134
    .local v1, "fillViewHeight":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1135
    .local v2, "rt":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1136
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$13;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1500(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->showQuickReply()V

    .line 1137
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$13;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # invokes: Lcom/kingsoft/mail/chat/ChatViewController;->hideFillLayout()V
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1100(Lcom/kingsoft/mail/chat/ChatViewController;)V

    .line 1138
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$13;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mKeyboardVisible:Z
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1400(Lcom/kingsoft/mail/chat/ChatViewController;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1139
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$13;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # invokes: Lcom/kingsoft/mail/chat/ChatViewController;->hideSoftKeyboard()V
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$3200(Lcom/kingsoft/mail/chat/ChatViewController;)V

    .line 1141
    :cond_1
    const/4 v4, 0x1

    .line 1145
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v1    # "fillViewHeight":I
    .end local v2    # "rt":Landroid/graphics/Rect;
    .end local v3    # "screenWidth":I
    :cond_2
    return v4
.end method
