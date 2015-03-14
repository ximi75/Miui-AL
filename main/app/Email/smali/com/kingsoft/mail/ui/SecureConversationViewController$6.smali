.class Lcom/kingsoft/mail/ui/SecureConversationViewController$6;
.super Ljava/lang/Object;
.source "SecureConversationViewController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/SecureConversationViewController;->quickReply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

.field final synthetic val$source:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$6;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$6;->val$source:[Ljava/lang/String;

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
    .line 1462
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$6;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 1463
    .local v0, "pos":I
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$6;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1464
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$6;->val$source:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$6;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1466
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$6;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$6;->val$source:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 1467
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$6;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->ad:Lcom/kingsoft/mail/compose/AnswerDialog;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$2200(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/compose/AnswerDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1468
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$6;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->ad:Lcom/kingsoft/mail/compose/AnswerDialog;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$2200(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/compose/AnswerDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/compose/AnswerDialog;->dismiss()V

    .line 1469
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$6;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    const/4 v3, 0x0

    # setter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->ad:Lcom/kingsoft/mail/compose/AnswerDialog;
    invoke-static {v2, v3}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$2202(Lcom/kingsoft/mail/ui/SecureConversationViewController;Lcom/kingsoft/mail/compose/AnswerDialog;)Lcom/kingsoft/mail/compose/AnswerDialog;

    .line 1471
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$6;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    new-instance v3, Lcom/kingsoft/mail/ui/SecureConversationViewController$6$1;

    invoke-direct {v3, p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController$6$1;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewController$6;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1483
    return-void
.end method
