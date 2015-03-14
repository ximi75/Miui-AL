.class public Lcom/kingsoft/email/widget/text/uilogic/event/EventPool;
.super Ljava/lang/Object;
.source "EventPool.java"


# instance fields
.field private mSize:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public getEvent()Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public returnEvent(Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;->recycle()V

    .line 20
    return-void
.end method

.method public setPoolSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/kingsoft/email/widget/text/uilogic/event/EventPool;->mSize:I

    .line 24
    return-void
.end method
