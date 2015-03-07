.class Lcom/kingsoft/mail/ui/SecureConversationViewController$6$1;
.super Ljava/lang/Object;
.source "SecureConversationViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/SecureConversationViewController$6;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$6;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/SecureConversationViewController$6;)V
    .locals 0

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$6$1;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1476
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$6$1;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$6;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/SecureConversationViewController$6;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1477
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$6$1;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$6;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/SecureConversationViewController$6;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1479
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1480
    return-void
.end method
