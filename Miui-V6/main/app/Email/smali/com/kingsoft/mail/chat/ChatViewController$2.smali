.class Lcom/kingsoft/mail/chat/ChatViewController$2;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IInputBoxHintUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/chat/ChatViewController;->initQuickReplyBar()V
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
    .line 265
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$2;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateInputBoxHint()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$2;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$2;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$2;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$2;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/chat/ChatViewController;->updateReplyInputBoxHint(I)V

    .line 271
    :cond_0
    return-void
.end method
