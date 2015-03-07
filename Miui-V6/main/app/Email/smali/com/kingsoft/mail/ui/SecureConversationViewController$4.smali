.class Lcom/kingsoft/mail/ui/SecureConversationViewController$4;
.super Ljava/lang/Object;
.source "SecureConversationViewController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$bba:Lcom/kingsoft/mail/adapter/BottomBarAdapter;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;ZLcom/kingsoft/mail/adapter/BottomBarAdapter;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$4;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iput-boolean p2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$4;->val$enable:Z

    iput-object p3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$4;->val$bba:Lcom/kingsoft/mail/adapter/BottomBarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 726
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 759
    :cond_0
    :goto_0
    const/4 v1, 0x7

    if-ne p3, v1, :cond_1

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$4;->val$enable:Z

    if-eqz v1, :cond_2

    .line 760
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$4;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->moreOp:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$000(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/widget/GridView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 762
    :cond_2
    return-void

    .line 728
    :pswitch_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$4;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # invokes: Lcom/kingsoft/mail/ui/SecureConversationViewController;->reply()V
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$1100(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V

    .line 729
    const-string/jumbo v1, "A09"

    invoke-static {v1}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 732
    :pswitch_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$4;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # invokes: Lcom/kingsoft/mail/ui/SecureConversationViewController;->replyAll()V
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$1200(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V

    .line 733
    const-string/jumbo v1, "A22"

    invoke-static {v1}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 736
    :pswitch_2
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$4;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # invokes: Lcom/kingsoft/mail/ui/SecureConversationViewController;->forward()V
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$1300(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V

    goto :goto_0

    .line 739
    :pswitch_3
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$4;->val$enable:Z

    if-eqz v1, :cond_0

    .line 740
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$4;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # invokes: Lcom/kingsoft/mail/ui/SecureConversationViewController;->moveTo()V
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$1400(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V

    goto :goto_0

    .line 744
    :pswitch_4
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$4;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$300(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationMessage;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v1

    iget-boolean v0, v1, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    .line 745
    .local v0, "stared":Z
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$4;->val$bba:Lcom/kingsoft/mail/adapter/BottomBarAdapter;

    const/4 v3, 0x4

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->refresh(IZ)V

    .line 746
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$4;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # invokes: Lcom/kingsoft/mail/ui/SecureConversationViewController;->star()V
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$1500(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V

    goto :goto_0

    .line 745
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 749
    .end local v0    # "stared":Z
    :pswitch_5
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$4;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # invokes: Lcom/kingsoft/mail/ui/SecureConversationViewController;->unread()V
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$1600(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V

    goto :goto_0

    .line 752
    :pswitch_6
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$4;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # invokes: Lcom/kingsoft/mail/ui/SecureConversationViewController;->quickReply()V
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$1700(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V

    goto :goto_0

    .line 755
    :pswitch_7
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$4;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # invokes: Lcom/kingsoft/mail/ui/SecureConversationViewController;->delete()V
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$1800(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V

    .line 756
    const-string/jumbo v1, "A08"

    invoke-static {v1}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 726
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method
