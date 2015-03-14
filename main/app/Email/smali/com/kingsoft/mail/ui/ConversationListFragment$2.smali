.class Lcom/kingsoft/mail/ui/ConversationListFragment$2;
.super Lcom/kingsoft/mail/providers/AccountObserver;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$2;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-direct {p0}, Lcom/kingsoft/mail/providers/AccountObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/kingsoft/mail/providers/Account;)V
    .locals 1
    .param p1, "newAccount"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$2;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    # setter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v0, p1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$202(Lcom/kingsoft/mail/ui/ConversationListFragment;Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Account;

    .line 194
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$2;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    # invokes: Lcom/kingsoft/mail/ui/ConversationListFragment;->setSwipeAction()V
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$300(Lcom/kingsoft/mail/ui/ConversationListFragment;)V

    .line 195
    return-void
.end method
