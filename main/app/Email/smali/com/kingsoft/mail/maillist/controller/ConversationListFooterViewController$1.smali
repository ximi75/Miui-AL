.class Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$1;
.super Ljava/lang/Object;
.source "ConversationListFooterViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->onLoadMoreClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$1;->this$0:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$1;->this$0:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    # getter for: Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mSearchMoreFlag:Z
    invoke-static {v0}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->access$000(Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$1;->this$0:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    # setter for: Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mSearchMoreFlag:Z
    invoke-static {v0, v3}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->access$002(Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;Z)Z

    .line 160
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$1;->this$0:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    # getter for: Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mCursor:Lcom/kingsoft/mail/browse/ConversationCursor;
    invoke-static {v0}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->access$100(Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;)Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$1;->this$0:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$1;->this$0:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    # getter for: Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mCursor:Lcom/kingsoft/mail/browse/ConversationCursor;
    invoke-static {v1}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->access$100(Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;)Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->displayFooterView(Lcom/kingsoft/mail/browse/ConversationCursor;ZZZ)Z

    .line 164
    :cond_0
    return-void
.end method
