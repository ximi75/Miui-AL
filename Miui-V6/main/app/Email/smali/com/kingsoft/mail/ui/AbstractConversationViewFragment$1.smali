.class Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$1;
.super Lcom/kingsoft/mail/providers/AccountObserver;
.source "AbstractConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$1;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    invoke-direct {p0}, Lcom/kingsoft/mail/providers/AccountObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/kingsoft/mail/providers/Account;)V
    .locals 3
    .param p1, "newAccount"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$1;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    iget-object v0, v1, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 141
    .local v0, "oldAccount":Lcom/kingsoft/mail/providers/Account;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$1;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    iput-object p1, v1, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 142
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$1;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mWebViewClient:Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$1;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->setAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 143
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$1;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    invoke-virtual {v1, p1, v0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onAccountChanged(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Account;)V

    .line 144
    return-void
.end method
