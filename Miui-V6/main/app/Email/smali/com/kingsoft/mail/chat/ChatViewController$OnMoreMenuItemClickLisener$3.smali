.class Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->quickReply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;

.field final synthetic val$source:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 964
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;

    iput-object p2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;->val$source:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 970
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1700(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/QuickReplyEditText;->getSelectionStart()I

    move-result v0

    .line 971
    .local v0, "pos":I
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1700(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/QuickReplyEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 972
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;->val$source:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1700(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyEditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingsoft/mail/ui/QuickReplyEditText;->setText(Ljava/lang/CharSequence;)V

    .line 974
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1700(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyEditText;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;->val$source:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/QuickReplyEditText;->setSelection(I)V

    .line 975
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQuickReplayDialog:Lcom/kingsoft/mail/compose/AnswerDialog;
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/compose/AnswerDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 976
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQuickReplayDialog:Lcom/kingsoft/mail/compose/AnswerDialog;
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/compose/AnswerDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/compose/AnswerDialog;->dismiss()V

    .line 977
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    const/4 v3, 0x0

    # setter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQuickReplayDialog:Lcom/kingsoft/mail/compose/AnswerDialog;
    invoke-static {v2, v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2202(Lcom/kingsoft/mail/chat/ChatViewController;Lcom/kingsoft/mail/compose/AnswerDialog;)Lcom/kingsoft/mail/compose/AnswerDialog;

    .line 979
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1700(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyEditText;

    move-result-object v2

    new-instance v3, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3$1;

    invoke-direct {v3, p0}, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3$1;-><init>(Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Lcom/kingsoft/mail/ui/QuickReplyEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 991
    return-void
.end method
