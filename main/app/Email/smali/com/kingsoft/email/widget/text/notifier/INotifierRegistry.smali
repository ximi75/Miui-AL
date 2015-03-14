.class public interface abstract Lcom/kingsoft/email/widget/text/notifier/INotifierRegistry;
.super Ljava/lang/Object;
.source "INotifierRegistry.java"


# virtual methods
.method public abstract getEventBus()Lcom/google/common/eventbus/EventBus;
.end method

.method public abstract getMailEditor()Lcom/kingsoft/email/widget/text/MailEditor;
.end method

.method public abstract getNotifier(Ljava/lang/Class;)Lcom/kingsoft/email/widget/text/notifier/Notifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/kingsoft/email/widget/text/notifier/Notifier;"
        }
    .end annotation
.end method

.method public abstract notifyState(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract register(Lcom/kingsoft/email/widget/text/notifier/Notifier;)V
.end method

.method public abstract unregister(Lcom/kingsoft/email/widget/text/notifier/Notifier;)V
.end method
