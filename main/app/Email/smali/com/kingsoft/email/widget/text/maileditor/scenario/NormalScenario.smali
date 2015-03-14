.class public Lcom/kingsoft/email/widget/text/maileditor/scenario/NormalScenario;
.super Lcom/kingsoft/email/widget/text/uilogic/scenario/ScenarioBase;
.source "NormalScenario.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/kingsoft/email/widget/text/uilogic/scenario/ScenarioBase;-><init>()V

    .line 12
    new-instance v0, Lcom/kingsoft/email/widget/text/maileditor/image/ImageEditor;

    invoke-direct {v0}, Lcom/kingsoft/email/widget/text/maileditor/image/ImageEditor;-><init>()V

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/widget/text/maileditor/scenario/NormalScenario;->installEditor(Lcom/kingsoft/email/widget/text/uilogic/editor/IEditor;)V

    .line 13
    return-void
.end method
