.class Lcom/kingsoft/mail/chat/ChatViewController$9;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/QuickReplyEditText$OnEditTextSizeChangedListener;


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
    .line 485
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$9;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(IIII)Z
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 489
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$9;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatFillView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$9;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatFillView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatFillView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$9;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mKeyboardVisible:Z
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1400(Lcom/kingsoft/mail/chat/ChatViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$9;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/kingsoft/mail/chat/ChatViewController$9$1;

    invoke-direct {v1, p0, p2}, Lcom/kingsoft/mail/chat/ChatViewController$9$1;-><init>(Lcom/kingsoft/mail/chat/ChatViewController$9;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 507
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
