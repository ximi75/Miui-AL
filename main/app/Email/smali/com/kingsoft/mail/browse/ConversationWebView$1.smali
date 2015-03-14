.class Lcom/kingsoft/mail/browse/ConversationWebView$1;
.super Ljava/lang/Object;
.source "ConversationWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationWebView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/ConversationWebView;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationWebView$1;->this$0:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationWebView$1;->this$0:Lcom/kingsoft/mail/browse/ConversationWebView;

    const/4 v1, 0x0

    # setter for: Lcom/kingsoft/mail/browse/ConversationWebView;->mUseSoftwareLayer:Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/browse/ConversationWebView;->access$002(Lcom/kingsoft/mail/browse/ConversationWebView;Z)Z

    .line 56
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationWebView$1;->this$0:Lcom/kingsoft/mail/browse/ConversationWebView;

    # invokes: Lcom/kingsoft/mail/browse/ConversationWebView;->destroyBitmap()V
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationWebView;->access$100(Lcom/kingsoft/mail/browse/ConversationWebView;)V

    .line 57
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationWebView$1;->this$0:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationWebView;->invalidate()V

    .line 58
    return-void
.end method
