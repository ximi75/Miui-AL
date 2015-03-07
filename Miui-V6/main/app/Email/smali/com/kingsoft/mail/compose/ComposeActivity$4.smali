.class Lcom/kingsoft/mail/compose/ComposeActivity$4;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 1721
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$4;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "b"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1724
    if-eqz p2, :cond_1

    .line 1725
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$4;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;
    invoke-static {v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$100(Lcom/kingsoft/mail/compose/ComposeActivity;)Lcom/kingsoft/mail/compose/CcBccView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/CcBccView;->isBccVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1726
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$4;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # invokes: Lcom/kingsoft/mail/compose/ComposeActivity;->showCcBccViews()V
    invoke-static {v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$200(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    .line 1732
    :cond_0
    :goto_0
    return-void

    .line 1728
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$4;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;
    invoke-static {v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$300(Lcom/kingsoft/mail/compose/ComposeActivity;)Lcom/kingsoft/ex/chips/RecipientEditTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$4;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;
    invoke-static {v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$300(Lcom/kingsoft/mail/compose/ComposeActivity;)Lcom/kingsoft/ex/chips/RecipientEditTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$4;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mCcBccView:Lcom/kingsoft/mail/compose/CcBccView;
    invoke-static {v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$100(Lcom/kingsoft/mail/compose/ComposeActivity;)Lcom/kingsoft/mail/compose/CcBccView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/kingsoft/mail/compose/CcBccView;->show(ZZZ)V

    goto :goto_0
.end method
