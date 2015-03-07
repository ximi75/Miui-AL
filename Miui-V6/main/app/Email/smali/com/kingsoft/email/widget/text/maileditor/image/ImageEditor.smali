.class public Lcom/kingsoft/email/widget/text/maileditor/image/ImageEditor;
.super Lcom/kingsoft/email/widget/text/uilogic/editor/EditorBase;
.source "ImageEditor.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/kingsoft/email/widget/text/uilogic/editor/EditorBase;-><init>()V

    .line 12
    new-instance v0, Lcom/kingsoft/email/widget/text/maileditor/image/SelectionRecognizer;

    invoke-direct {v0}, Lcom/kingsoft/email/widget/text/maileditor/image/SelectionRecognizer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/widget/text/maileditor/image/ImageEditor;->installRecognizer(Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizer;)V

    .line 13
    return-void
.end method
