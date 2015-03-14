.class public Lcom/kingsoft/email/widget/text/uilogic/scenario/ScenarioBase;
.super Ljava/lang/Object;
.source "ScenarioBase.java"

# interfaces
.implements Lcom/kingsoft/email/widget/text/uilogic/scenario/IScenario;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activeEditor(Lcom/kingsoft/email/widget/text/uilogic/editor/IEditor;)V
    .locals 0
    .param p1, "ediotr"    # Lcom/kingsoft/email/widget/text/uilogic/editor/IEditor;

    .prologue
    .line 23
    return-void
.end method

.method public flowInto(Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;

    .prologue
    .line 28
    return-void
.end method

.method public installEditor(Lcom/kingsoft/email/widget/text/uilogic/editor/IEditor;)V
    .locals 0
    .param p1, "editor"    # Lcom/kingsoft/email/widget/text/uilogic/editor/IEditor;

    .prologue
    .line 13
    return-void
.end method

.method public removeEditor()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method
