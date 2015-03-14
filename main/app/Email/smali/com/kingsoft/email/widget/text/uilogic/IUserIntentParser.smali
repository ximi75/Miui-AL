.class public interface abstract Lcom/kingsoft/email/widget/text/uilogic/IUserIntentParser;
.super Ljava/lang/Object;
.source "IUserIntentParser.java"


# virtual methods
.method public abstract flowInto(Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;)V
.end method

.method public abstract getCurrentScenario()Lcom/kingsoft/email/widget/text/uilogic/scenario/IScenario;
.end method

.method public abstract getEventSource()Lcom/kingsoft/email/widget/text/uilogic/event/EventSource;
.end method

.method public abstract installScenario(Lcom/kingsoft/email/widget/text/uilogic/scenario/IScenario;)V
.end method

.method public abstract removeScenario(Lcom/kingsoft/email/widget/text/uilogic/scenario/IScenario;)Lcom/kingsoft/email/widget/text/uilogic/scenario/IScenario;
.end method

.method public abstract setCurrentScenario(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ScenarioType::",
            "Lcom/kingsoft/email/widget/text/uilogic/scenario/IScenario;",
            ">(",
            "Ljava/lang/Class",
            "<TScenarioType;>;)V"
        }
    .end annotation
.end method
