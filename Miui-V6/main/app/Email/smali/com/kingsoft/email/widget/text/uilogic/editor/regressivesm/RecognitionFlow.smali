.class public Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;
.super Ljava/lang/Object;
.source "RecognitionFlow.java"


# instance fields
.field private mCurrentIndex:I

.field private final mRecognizer:Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizer;

.field private mStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizer;)V
    .locals 3
    .param p1, "recognizer"    # Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizer;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mStates:Ljava/util/ArrayList;

    .line 15
    const/4 v2, 0x0

    iput v2, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mCurrentIndex:I

    .line 18
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mRecognizer:Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizer;

    .line 19
    new-instance v1, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/StartState;

    invoke-direct {v1, p0}, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/StartState;-><init>(Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;)V

    .line 20
    .local v1, "startState":Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/StartState;
    new-instance v0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/EndState;

    invoke-direct {v0, p0, p1}, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/EndState;-><init>(Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizer;)V

    .line 21
    .local v0, "endState":Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/EndState;
    return-void
.end method


# virtual methods
.method public flowInto(Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mStates:Ljava/util/ArrayList;

    iget v1, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;

    invoke-virtual {v0, p1}, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;->onEvent(Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;)V

    .line 29
    return-void
.end method

.method public getRecognizer()Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizer;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mRecognizer:Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizer;

    return-object v0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 50
    const/4 v2, 0x0

    iput v2, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mCurrentIndex:I

    .line 52
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;

    .line 53
    .local v1, "state":Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;
    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;->reset()V

    goto :goto_0

    .line 55
    .end local v1    # "state":Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;
    :cond_0
    return-void
.end method

.method public transitToEnd(Z)V
    .locals 2
    .param p1, "isRecognized"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mStates:Ljava/util/ArrayList;

    iget v1, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;->onLeave()V

    .line 45
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mCurrentIndex:I

    .line 46
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mStates:Ljava/util/ArrayList;

    iget v1, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;->onEnter()V

    .line 47
    return-void
.end method

.method public transitToNext()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mStates:Ljava/util/ArrayList;

    iget v1, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;->onLeave()V

    .line 39
    iget v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mCurrentIndex:I

    .line 40
    return-void
.end method

.method public transitToSelf()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mStates:Ljava/util/ArrayList;

    iget v1, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;->onLeave()V

    .line 33
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mStates:Ljava/util/ArrayList;

    iget v1, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/RecognitionFlow;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/uilogic/editor/regressivesm/State;->onEnter()V

    .line 34
    return-void
.end method
