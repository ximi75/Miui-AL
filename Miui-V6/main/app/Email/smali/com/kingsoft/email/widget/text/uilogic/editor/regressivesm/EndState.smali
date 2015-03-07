.class public Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/EndState;
.super Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;
.source "EndState.java"


# instance fields
.field private mIsRecognized:Z


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizer;)V
    .locals 1
    .param p1, "recognitionFlow"    # Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;
    .param p2, "recognizer"    # Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizer;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;-><init>(Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/EndState;->mIsRecognized:Z

    .line 14
    return-void
.end method


# virtual methods
.method public isIsRecognized()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/EndState;->mIsRecognized:Z

    return v0
.end method

.method public onEnter()V
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/EndState;->mIsRecognized:Z

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/EndState;->mRecognitionFlow:Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->getRecognizer()Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizer;->onRecognise()V

    .line 29
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/EndState;->mIsRecognized:Z

    .line 34
    return-void
.end method

.method public setIsRecognized(Z)V
    .locals 0
    .param p1, "isRecognized"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/EndState;->mIsRecognized:Z

    .line 22
    return-void
.end method
