.class Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3$1;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;)V
    .locals 0

    .prologue
    .line 979
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3$1;->this$2:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 984
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3$1;->this$2:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;

    iget-object v1, v1, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;

    iget-object v1, v1, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1700(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/QuickReplyEditText;->requestFocus()Z

    .line 985
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3$1;->this$2:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;

    iget-object v1, v1, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$3;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;

    iget-object v1, v1, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1700(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/QuickReplyEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 987
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 988
    return-void
.end method
