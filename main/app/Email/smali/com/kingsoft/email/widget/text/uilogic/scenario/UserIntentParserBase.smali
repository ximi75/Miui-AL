.class public Lcom/kingsoft/email/widget/text/uilogic/scenario/UserIntentParserBase;
.super Ljava/lang/Object;
.source "UserIntentParserBase.java"

# interfaces
.implements Lcom/kingsoft/email/widget/text/uilogic/IUserIntentParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flowInto(Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;

    .prologue
    .line 34
    return-void
.end method

.method public getCurrentScenario()Lcom/kingsoft/email/widget/text/uilogic/scenario/IScenario;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEventSource()Lcom/kingsoft/email/widget/text/uilogic/event/EventSource;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public installScenario(Lcom/kingsoft/email/widget/text/uilogic/scenario/IScenario;)V
    .locals 0
    .param p1, "scenario"    # Lcom/kingsoft/email/widget/text/uilogic/scenario/IScenario;

    .prologue
    .line 14
    return-void
.end method

.method public removeScenario(Lcom/kingsoft/email/widget/text/uilogic/scenario/IScenario;)Lcom/kingsoft/email/widget/text/uilogic/scenario/IScenario;
    .locals 1
    .param p1, "scenario"    # Lcom/kingsoft/email/widget/text/uilogic/scenario/IScenario;

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCurrentScenario(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ScenarioType::",
            "Lcom/kingsoft/email/widget/text/uilogic/scenario/IScenario;",
            ">(",
            "Ljava/lang/Class",
            "<TScenarioType;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "scenarioClass":Ljava/lang/Class;, "Ljava/lang/Class<TScenarioType;>;"
    return-void
.end method
