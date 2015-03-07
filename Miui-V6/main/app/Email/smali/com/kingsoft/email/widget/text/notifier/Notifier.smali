.class public abstract Lcom/kingsoft/email/widget/text/notifier/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# instance fields
.field private mRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public getMailEditor()Lcom/kingsoft/email/widget/text/MailEditor;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/notifier/Notifier;->mRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/widget/text/notifier/Notifier;->mRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    invoke-interface {v0}, Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;->getMailEditor()Lcom/kingsoft/email/widget/text/MailEditor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRegistry()Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/notifier/Notifier;->mRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    return-object v0
.end method

.method public abstract notifyState()V
.end method

.method public registerListener(Ljava/lang/Object;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/notifier/Notifier;->mRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    invoke-interface {v0}, Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;->getEventBus()Lcom/google/common/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public setNotifierRegistry(Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;)V
    .locals 0
    .param p1, "registry"    # Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/notifier/Notifier;->mRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    .line 19
    return-void
.end method

.method public unregisterListener(Ljava/lang/Object;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/notifier/Notifier;->mRegistry:Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    invoke-interface {v0}, Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;->getEventBus()Lcom/google/common/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 35
    return-void
.end method
