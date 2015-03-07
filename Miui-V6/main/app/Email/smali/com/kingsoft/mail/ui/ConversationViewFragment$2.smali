.class Lcom/kingsoft/mail/ui/ConversationViewFragment$2;
.super Lcom/kingsoft/mail/ui/FragmentRunnable;
.source "ConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/ConversationViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Landroid/app/Fragment;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$2;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-direct {p0, p2, p3}, Lcom/kingsoft/mail/ui/FragmentRunnable;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public go()V
    .locals 5

    .prologue
    .line 195
    # getter for: Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onProgressDismiss go() - isUserVisible() = %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$2;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->isUserVisible()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 196
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$2;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->isUserVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$2;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->onConversationSeen()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$2;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationWebView;->onRenderComplete()V

    .line 200
    return-void
.end method
