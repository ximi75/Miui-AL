.class Lcom/kingsoft/mail/ui/ConversationViewFragment$6;
.super Ljava/lang/Object;
.source "ConversationViewFragment.java"

# interfaces
.implements Lcom/kingsoft/mail/browse/MailWebView$ContentSizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationViewFragment;->ensureContentSizeChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;)V
    .locals 0

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$6;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeightChange(I)V
    .locals 2
    .param p1, "h"    # I

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$6;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    const-string/jumbo v1, "javascript:measurePositions();"

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    .line 1028
    return-void
.end method
