.class Lcom/kingsoft/mail/compose/ComposeActivity$6;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/ComposeActivity;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/ComposeActivity;)V
    .locals 0

    .prologue
    .line 1775
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$6;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 1785
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$6;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-object v1, v1, Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyView:Lcom/kingsoft/email/widget/text/MailEditor;

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/MailEditor;->innerGetEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    .line 1786
    .local v0, "currentCountLine":I
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$6;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyLineCount:I
    invoke-static {v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$500(Lcom/kingsoft/mail/compose/ComposeActivity;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$6;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyLineCount:I
    invoke-static {v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$500(Lcom/kingsoft/mail/compose/ComposeActivity;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1787
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$6;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mScrollView:Lcom/kingsoft/mail/compose/ComposeScrollView;
    invoke-static {v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$600(Lcom/kingsoft/mail/compose/ComposeActivity;)Lcom/kingsoft/mail/compose/ComposeScrollView;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x46

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/compose/ComposeScrollView;->scrollBy(II)V

    .line 1789
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$6;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # setter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mBodyLineCount:I
    invoke-static {v1, v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$502(Lcom/kingsoft/mail/compose/ComposeActivity;I)I

    .line 1790
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 1782
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 1778
    return-void
.end method
