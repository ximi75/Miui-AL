.class Lcom/kingsoft/mail/chat/ChatViewController$10;
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
    .line 512
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$10;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 516
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$10;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->chatViewReady:Z
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$700(Lcom/kingsoft/mail/chat/ChatViewController;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 544
    :goto_0
    return v2

    .line 519
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$10;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mKeyboardVisible:Z
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1400(Lcom/kingsoft/mail/chat/ChatViewController;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 520
    goto :goto_0

    .line 522
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$10;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1700(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/QuickReplyEditText;->requestFocus()Z

    .line 523
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$10;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1700(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyEditText;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/kingsoft/mail/ui/QuickReplyEditText;->setFocusable(Z)V

    .line 524
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$10;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 525
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    .line 526
    .local v1, "show":Z
    if-eqz v1, :cond_2

    .line 527
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$10;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1700(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyEditText;

    move-result-object v2

    new-instance v4, Lcom/kingsoft/mail/chat/ChatViewController$10$1;

    invoke-direct {v4, p0}, Lcom/kingsoft/mail/chat/ChatViewController$10$1;-><init>(Lcom/kingsoft/mail/chat/ChatViewController$10;)V

    invoke-virtual {v2, v4}, Lcom/kingsoft/mail/ui/QuickReplyEditText;->post(Ljava/lang/Runnable;)Z

    .line 535
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$10;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1700(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyEditText;

    move-result-object v2

    new-instance v4, Lcom/kingsoft/mail/chat/ChatViewController$10$2;

    invoke-direct {v4, p0}, Lcom/kingsoft/mail/chat/ChatViewController$10$2;-><init>(Lcom/kingsoft/mail/chat/ChatViewController$10;)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v2, v4, v5, v6}, Lcom/kingsoft/mail/ui/QuickReplyEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    move v2, v3

    .line 544
    goto :goto_0
.end method
