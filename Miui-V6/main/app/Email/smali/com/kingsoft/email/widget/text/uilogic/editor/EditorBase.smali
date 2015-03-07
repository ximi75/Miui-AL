.class public abstract Lcom/kingsoft/email/widget/text/uilogic/editor/EditorBase;
.super Ljava/lang/Object;
.source "EditorBase.java"

# interfaces
.implements Lcom/kingsoft/email/widget/text/uilogic/editor/IEditor;


# instance fields
.field private mInterceptorOpChain:Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizerChain;

.field private mLocalOpChain:Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizerChain;

.field private mSelectionOpChain:Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizerChain;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizerChain;

    invoke-direct {v0}, Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizerChain;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/EditorBase;->mLocalOpChain:Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizerChain;

    .line 11
    new-instance v0, Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizerChain;

    invoke-direct {v0}, Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizerChain;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/EditorBase;->mInterceptorOpChain:Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizerChain;

    .line 12
    new-instance v0, Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizerChain;

    invoke-direct {v0}, Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizerChain;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/EditorBase;->mSelectionOpChain:Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizerChain;

    return-void
.end method


# virtual methods
.method public active()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public activeSubEditor(Lcom/kingsoft/email/widget/text/uilogic/editor/IEditor;)V
    .locals 0
    .param p1, "editor"    # Lcom/kingsoft/email/widget/text/uilogic/editor/IEditor;

    .prologue
    .line 63
    return-void
.end method

.method public deactive()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public flowInto(Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/widget/text/uilogic/editor/EditorBase;->flowIntoLocal(Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/widget/text/uilogic/editor/EditorBase;->flowIntoInterceptor(Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/widget/text/uilogic/editor/EditorBase;->flowIntoSelection(Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;)V

    .line 19
    return-void
.end method

.method protected flowIntoInterceptor(Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;

    .prologue
    .line 25
    return-void
.end method

.method protected flowIntoLocal(Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;

    .prologue
    .line 22
    return-void
.end method

.method protected flowIntoSelection(Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;

    .prologue
    .line 28
    return-void
.end method

.method public installRecognizer(Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizer;)V
    .locals 0
    .param p1, "recognizer"    # Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizer;

    .prologue
    .line 33
    return-void
.end method

.method public installSubEditor(Lcom/kingsoft/email/widget/text/uilogic/editor/IEditor;)V
    .locals 0
    .param p1, "editor"    # Lcom/kingsoft/email/widget/text/uilogic/editor/IEditor;

    .prologue
    .line 43
    return-void
.end method

.method public removeRecognizer(Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizer;)Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizer;
    .locals 1
    .param p1, "recognizer"    # Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizer;

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeSubEditor(Lcom/kingsoft/email/widget/text/uilogic/editor/IEditor;)Lcom/kingsoft/email/widget/text/uilogic/editor/IEditor;
    .locals 1
    .param p1, "editor"    # Lcom/kingsoft/email/widget/text/uilogic/editor/IEditor;

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method
