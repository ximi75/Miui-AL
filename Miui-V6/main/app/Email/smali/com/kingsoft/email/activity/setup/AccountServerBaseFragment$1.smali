.class Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$1;
.super Ljava/lang/Object;
.source "AccountServerBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->makeTextViewUneditable(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$1;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$1;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 241
    if-eqz p2, :cond_0

    .line 243
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    iget-object v1, v1, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 245
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 246
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$1;->val$view:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$1;->val$errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 250
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$1;->val$view:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
