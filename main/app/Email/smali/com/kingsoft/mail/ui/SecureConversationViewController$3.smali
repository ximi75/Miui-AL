.class Lcom/kingsoft/mail/ui/SecureConversationViewController$3;
.super Ljava/lang/Object;
.source "SecureConversationViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/SecureConversationViewController;->renderMessage(Lcom/kingsoft/mail/browse/ConversationMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$3;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 654
    const/4 v0, 0x0

    .line 655
    .local v0, "isMove":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 671
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$3;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->downX:F
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$700(Lcom/kingsoft/mail/ui/SecureConversationViewController;)F

    move-result v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$3;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->upX:F
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$900(Lcom/kingsoft/mail/ui/SecureConversationViewController;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$3;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->downY:F
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$800(Lcom/kingsoft/mail/ui/SecureConversationViewController;)F

    move-result v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$3;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->upY:F
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$1000(Lcom/kingsoft/mail/ui/SecureConversationViewController;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 672
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$3;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$400(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$3;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$200(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/browse/MessageWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/MessageWebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 675
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$3;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 677
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 657
    :pswitch_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$3;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    # setter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->downX:F
    invoke-static {v1, v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$702(Lcom/kingsoft/mail/ui/SecureConversationViewController;F)F

    .line 658
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$3;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    # setter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->downY:F
    invoke-static {v1, v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$802(Lcom/kingsoft/mail/ui/SecureConversationViewController;F)F

    .line 659
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$3;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$000(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/widget/GridView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$3;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$000(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$3;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$000(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/widget/GridView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 664
    :pswitch_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$3;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    # setter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->upX:F
    invoke-static {v1, v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$902(Lcom/kingsoft/mail/ui/SecureConversationViewController;F)F

    .line 665
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$3;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    # setter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->upY:F
    invoke-static {v1, v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$1002(Lcom/kingsoft/mail/ui/SecureConversationViewController;F)F

    goto/16 :goto_0

    .line 668
    :pswitch_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 655
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
