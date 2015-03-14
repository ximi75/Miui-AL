.class public abstract Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;
.super Ljava/lang/Object;
.source "State.java"


# instance fields
.field protected final mRecognitionFlow:Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;)V
    .locals 0
    .param p1, "recognitionFlow"    # Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;->mRecognitionFlow:Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;

    .line 15
    return-void
.end method


# virtual methods
.method public onEnter()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onEvent(Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;

    .prologue
    .line 19
    return-void
.end method

.method public onLeave()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
