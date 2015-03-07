.class Lcom/kingsoft/mail/chat/ChatViewController$10$2;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/chat/ChatViewController$10;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/chat/ChatViewController$10;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController$10;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$10$2;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 539
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$10$2;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$10;

    iget-object v1, v1, Lcom/kingsoft/mail/chat/ChatViewController$10;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # invokes: Lcom/kingsoft/mail/chat/ChatViewController;->getFocusIndex()I
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1800(Lcom/kingsoft/mail/chat/ChatViewController;)I

    move-result v0

    .line 540
    .local v0, "position":I
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$10$2;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$10;

    iget-object v1, v1, Lcom/kingsoft/mail/chat/ChatViewController$10;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/chat/ChatViewController;->updateReplyInputBoxHint(I)V

    .line 541
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$10$2;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$10;

    iget-object v1, v1, Lcom/kingsoft/mail/chat/ChatViewController$10;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    const/4 v2, 0x1

    # invokes: Lcom/kingsoft/mail/chat/ChatViewController;->smoothScrollToPosition(IZ)V
    invoke-static {v1, v0, v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1000(Lcom/kingsoft/mail/chat/ChatViewController;IZ)V

    .line 542
    return-void
.end method
