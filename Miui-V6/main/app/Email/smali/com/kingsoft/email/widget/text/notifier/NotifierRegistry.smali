.class public Lcom/kingsoft/email/widget/text/notifier/NotifierRegistry;
.super Ljava/lang/Object;
.source "NotifierRegistry.java"

# interfaces
.implements Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;


# instance fields
.field private mEventBus:Lcom/google/common/eventbus/EventBus;

.field private mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

.field private mNotifiers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/kingsoft/email/widget/text/notifier/Notifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/widget/text/MailEditor;)V
    .locals 2
    .param p1, "mailEditor"    # Lcom/kingsoft/email/widget/text/MailEditor;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/notifier/NotifierRegistry;->mNotifiers:Ljava/util/HashMap;

    .line 12
    new-instance v0, Lcom/google/common/eventbus/EventBus;

    const-class v1, Lcom/kingsoft/email/widget/text/notifier/NotifierRegistry;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/notifier/NotifierRegistry;->mEventBus:Lcom/google/common/eventbus/EventBus;

    .line 15
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/notifier/NotifierRegistry;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    .line 16
    return-void
.end method


# virtual methods
.method public getEventBus()Lcom/google/common/eventbus/EventBus;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/notifier/NotifierRegistry;->mEventBus:Lcom/google/common/eventbus/EventBus;

    return-object v0
.end method

.method public getMailEditor()Lcom/kingsoft/email/widget/text/MailEditor;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/notifier/NotifierRegistry;->mMailEditor:Lcom/kingsoft/email/widget/text/MailEditor;

    return-object v0
.end method

.method public getNotifier(Ljava/lang/Class;)Lcom/kingsoft/email/widget/text/notifier/Notifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/kingsoft/email/widget/text/notifier/Notifier;"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "actionType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/notifier/NotifierRegistry;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/widget/text/notifier/Notifier;

    return-object v0
.end method

.method public notifyState(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "notifierType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/widget/text/notifier/NotifierRegistry;->getNotifier(Ljava/lang/Class;)Lcom/kingsoft/email/widget/text/notifier/Notifier;

    move-result-object v0

    .line 50
    .local v0, "notifier":Lcom/kingsoft/email/widget/text/notifier/Notifier;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/notifier/Notifier;->notifyState()V

    .line 53
    :cond_0
    return-void
.end method

.method public register(Lcom/kingsoft/email/widget/text/notifier/Notifier;)V
    .locals 2
    .param p1, "notifier"    # Lcom/kingsoft/email/widget/text/notifier/Notifier;

    .prologue
    .line 35
    invoke-virtual {p1, p0}, Lcom/kingsoft/email/widget/text/notifier/Notifier;->setNotifierRegistry(Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;)V

    .line 36
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/notifier/NotifierRegistry;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public unregister(Lcom/kingsoft/email/widget/text/notifier/Notifier;)V
    .locals 3
    .param p1, "notifier"    # Lcom/kingsoft/email/widget/text/notifier/Notifier;

    .prologue
    .line 41
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/notifier/NotifierRegistry;->mNotifiers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/widget/text/notifier/Notifier;

    .line 42
    .local v0, "removed":Lcom/kingsoft/email/widget/text/notifier/Notifier;
    if-eqz v0, :cond_0

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/notifier/Notifier;->setNotifierRegistry(Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;)V

    .line 45
    :cond_0
    return-void
.end method
