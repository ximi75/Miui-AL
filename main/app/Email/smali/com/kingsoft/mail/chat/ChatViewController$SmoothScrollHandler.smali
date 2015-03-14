.class Lcom/kingsoft/mail/chat/ChatViewController$SmoothScrollHandler;
.super Landroid/os/Handler;
.source "ChatViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/ChatViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmoothScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/chat/ChatViewController;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController;)V
    .locals 0

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$SmoothScrollHandler;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController;Lcom/kingsoft/mail/chat/ChatViewController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;
    .param p2, "x1"    # Lcom/kingsoft/mail/chat/ChatViewController$1;

    .prologue
    .line 1105
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/chat/ChatViewController$SmoothScrollHandler;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1109
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1117
    :cond_0
    :goto_0
    return-void

    .line 1111
    :pswitch_0
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$SmoothScrollHandler;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListViewSmoothScroll:Z
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2700(Lcom/kingsoft/mail/chat/ChatViewController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$SmoothScrollHandler;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListViewScrollStateChanged:Z
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2800(Lcom/kingsoft/mail/chat/ChatViewController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1112
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$SmoothScrollHandler;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # invokes: Lcom/kingsoft/mail/chat/ChatViewController;->getFocusIndex()I
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1800(Lcom/kingsoft/mail/chat/ChatViewController;)I

    move-result v0

    .line 1113
    .local v0, "position":I
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$SmoothScrollHandler;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$SmoothScrollHandler;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mKeyboardVisible:Z
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1400(Lcom/kingsoft/mail/chat/ChatViewController;)Z

    move-result v2

    # invokes: Lcom/kingsoft/mail/chat/ChatViewController;->showFillLayout(IZ)V
    invoke-static {v1, v0, v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2900(Lcom/kingsoft/mail/chat/ChatViewController;IZ)V

    goto :goto_0

    .line 1109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
