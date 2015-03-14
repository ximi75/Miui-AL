.class public Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizerChain;
.super Ljava/lang/Object;
.source "IRecognizerChain.java"


# instance fields
.field private mORecognizer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/uilogic/editor/IRecognizerChain;->mORecognizer:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public flowInto(Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;

    .prologue
    .line 16
    return-void
.end method
