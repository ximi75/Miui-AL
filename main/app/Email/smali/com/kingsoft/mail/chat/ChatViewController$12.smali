.class Lcom/kingsoft/mail/chat/ChatViewController$12;
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
    .line 1073
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$12;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1078
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1079
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1100
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 1083
    :pswitch_1
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$12;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mLastMotionY:I
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$3000(Lcom/kingsoft/mail/chat/ChatViewController;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1084
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$12;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    # setter for: Lcom/kingsoft/mail/chat/ChatViewController;->mLastMotionY:I
    invoke-static {v2, v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$3002(Lcom/kingsoft/mail/chat/ChatViewController;I)I

    .line 1086
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$12;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mLastMotionY:I
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$3000(Lcom/kingsoft/mail/chat/ChatViewController;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 1087
    .local v1, "deltaY":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$12;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mTouchSlop:I
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$3100(Lcom/kingsoft/mail/chat/ChatViewController;)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 1088
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$12;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatFillView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$12;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatFillView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/chat/ChatFillView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1089
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$12;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # invokes: Lcom/kingsoft/mail/chat/ChatViewController;->hideFillLayout()V
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1100(Lcom/kingsoft/mail/chat/ChatViewController;)V

    .line 1090
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$12;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1500(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->showQuickReply()V

    goto :goto_0

    .line 1096
    .end local v1    # "deltaY":I
    :pswitch_2
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$12;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # setter for: Lcom/kingsoft/mail/chat/ChatViewController;->mLastMotionY:I
    invoke-static {v2, v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$3002(Lcom/kingsoft/mail/chat/ChatViewController;I)I

    goto :goto_0

    .line 1079
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
