.class public Lcom/kingsoft/email/widget/text/notifier/ParStyleNotifier;
.super Lcom/kingsoft/email/widget/text/notifier/Notifier;
.source "ParStyleNotifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/kingsoft/email/widget/text/notifier/Notifier;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public notifyState()V
    .locals 4

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/notifier/ParStyleNotifier;->getMailEditor()Lcom/kingsoft/email/widget/text/MailEditor;

    move-result-object v2

    sget-object v3, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->PARA:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/widget/text/MailEditor;->getSelectionIntersectedStyles(Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;)Ljava/util/Map;

    move-result-object v1

    .line 18
    .local v1, "styles":Ljava/util/Map;, "Ljava/util/Map<Lcom/kingsoft/email/widget/text/IStyleable$StyleType;Lcom/kingsoft/email/widget/text/Style;>;"
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/notifier/ParStyleNotifier;->getMailEditor()Lcom/kingsoft/email/widget/text/MailEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/email/widget/text/MailEditor;->getShouldAppliedStyles()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 20
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/notifier/ParStyleNotifier;->getMailEditor()Lcom/kingsoft/email/widget/text/MailEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/email/widget/text/MailEditor;->getShouldRemovedStyles()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 21
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kingsoft/email/widget/text/Style;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/widget/text/Style;

    invoke-virtual {v2}, Lcom/kingsoft/email/widget/text/Style;->getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/notifier/ParStyleNotifier;->getRegistry()Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;

    move-result-object v2

    invoke-interface {v2}, Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;->getEventBus()Lcom/google/common/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/kingsoft/email/widget/text/notifier/ParStyleNotifierEvent;

    invoke-direct {v3, v1}, Lcom/kingsoft/email/widget/text/notifier/ParStyleNotifierEvent;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/google/common/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 26
    return-void
.end method
