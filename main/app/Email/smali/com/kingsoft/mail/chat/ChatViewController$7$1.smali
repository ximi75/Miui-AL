.class Lcom/kingsoft/mail/chat/ChatViewController$7$1;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/chat/ChatViewController$7;->onClick(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/chat/ChatViewController$7;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController$7;I)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$7$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$7;

    iput p2, p0, Lcom/kingsoft/mail/chat/ChatViewController$7$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$7$1;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$7;

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewController$7;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    iget v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$7$1;->val$position:I

    const/4 v2, 0x1

    # invokes: Lcom/kingsoft/mail/chat/ChatViewController;->smoothScrollToPosition(IZ)V
    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1000(Lcom/kingsoft/mail/chat/ChatViewController;IZ)V

    .line 458
    return-void
.end method
