.class Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;
.super Landroid/os/Handler;
.source "SecureConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PagerChangeHandler"
.end annotation


# instance fields
.field private mFragment:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 476
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreFragment()Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;->mFragment:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 487
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 488
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;->mFragment:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;->mFragment:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    # invokes: Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->loadMessage()V
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->access$500(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;)V

    .line 491
    :cond_0
    return-void
.end method

.method public setSecFragment(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .prologue
    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;->mFragment:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .line 480
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;->mFragment:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .line 481
    return-void
.end method
