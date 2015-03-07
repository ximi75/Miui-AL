.class public Lcom/kingsoft/email/widget/text/uilogic/event/EventSource;
.super Ljava/lang/Object;
.source "EventSource.java"


# instance fields
.field private mEventPool:Lcom/kingsoft/email/widget/text/uilogic/event/EventPool;

.field private mUIP:Lcom/kingsoft/email/widget/text/uilogic/IUserIntentParser;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/widget/text/uilogic/IUserIntentParser;)V
    .locals 1
    .param p1, "uip"    # Lcom/kingsoft/email/widget/text/uilogic/IUserIntentParser;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/kingsoft/email/widget/text/uilogic/event/EventPool;

    invoke-direct {v0}, Lcom/kingsoft/email/widget/text/uilogic/event/EventPool;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/uilogic/event/EventSource;->mEventPool:Lcom/kingsoft/email/widget/text/uilogic/event/EventPool;

    .line 15
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/uilogic/event/EventSource;->mUIP:Lcom/kingsoft/email/widget/text/uilogic/IUserIntentParser;

    .line 16
    return-void
.end method


# virtual methods
.method public onRequest(Lcom/kingsoft/email/widget/text/uilogic/IRequest;)Z
    .locals 2
    .param p1, "request"    # Lcom/kingsoft/email/widget/text/uilogic/IRequest;

    .prologue
    .line 27
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/uilogic/event/EventSource;->mEventPool:Lcom/kingsoft/email/widget/text/uilogic/event/EventPool;

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/uilogic/event/EventPool;->getEvent()Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;

    move-result-object v0

    .line 28
    .local v0, "uipEvent":Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;
    invoke-virtual {v0, p1}, Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;->setRequest(Lcom/kingsoft/email/widget/text/uilogic/IRequest;)V

    .line 29
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/uilogic/event/EventSource;->mUIP:Lcom/kingsoft/email/widget/text/uilogic/IUserIntentParser;

    invoke-interface {v1, v0}, Lcom/kingsoft/email/widget/text/uilogic/IUserIntentParser;->flowInto(Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;)V

    .line 31
    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;->isHandled()Z

    move-result v1

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 19
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/uilogic/event/EventSource;->mEventPool:Lcom/kingsoft/email/widget/text/uilogic/event/EventPool;

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/uilogic/event/EventPool;->getEvent()Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;

    move-result-object v0

    .line 20
    .local v0, "uipEvent":Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;
    invoke-virtual {v0, p1}, Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;->setMotionEvent(Landroid/view/MotionEvent;)V

    .line 21
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/uilogic/event/EventSource;->mUIP:Lcom/kingsoft/email/widget/text/uilogic/IUserIntentParser;

    invoke-interface {v1, v0}, Lcom/kingsoft/email/widget/text/uilogic/IUserIntentParser;->flowInto(Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;)V

    .line 23
    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;->isHandled()Z

    move-result v1

    return v1
.end method
