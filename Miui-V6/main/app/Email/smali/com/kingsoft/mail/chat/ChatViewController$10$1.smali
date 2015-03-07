.class Lcom/kingsoft/mail/chat/ChatViewController$10$1;
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
    .line 527
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$10$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$10$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$10;

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewController$10;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1500(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->showQuickReply()V

    .line 531
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$10$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$10;

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewController$10;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # invokes: Lcom/kingsoft/mail/chat/ChatViewController;->hideFillLayout()V
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1100(Lcom/kingsoft/mail/chat/ChatViewController;)V

    .line 532
    return-void
.end method
