.class public Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;
.super Ljava/lang/Object;
.source "UIPEvent.java"


# static fields
.field public static final TYPE_KEYBOARD:I = 0x2

.field public static final TYPE_POINTER:I = 0x1

.field public static final TYPE_REQUEST:I = 0x0

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private mEventType:I

.field private mIsHandled:Z

.field private mMotionEvent:Landroid/view/MotionEvent;

.field private mRequest:Lcom/kingsoft/email/widget/text/uilogic/IRequest;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;->mEventType:I

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;->mIsHandled:Z

    .line 23
    return-void
.end method


# virtual methods
.method public getMotionEvent()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;->mMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getRequest()Lcom/kingsoft/email/widget/text/uilogic/IRequest;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;->mRequest:Lcom/kingsoft/email/widget/text/uilogic/IRequest;

    return-object v0
.end method

.method public isHandled()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;->mIsHandled:Z

    return v0
.end method

.method recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;->mEventType:I

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;->mIsHandled:Z

    .line 28
    iput-object v1, p0, Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;->mMotionEvent:Landroid/view/MotionEvent;

    .line 29
    iput-object v1, p0, Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;->mRequest:Lcom/kingsoft/email/widget/text/uilogic/IRequest;

    .line 30
    return-void
.end method

.method public setHandled(Z)V
    .locals 0
    .param p1, "handled"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;->mIsHandled:Z

    .line 38
    return-void
.end method

.method public setMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;->mMotionEvent:Landroid/view/MotionEvent;

    .line 46
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;->mEventType:I

    .line 47
    return-void

    .line 46
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setRequest(Lcom/kingsoft/email/widget/text/uilogic/IRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/kingsoft/email/widget/text/uilogic/IRequest;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;->mRequest:Lcom/kingsoft/email/widget/text/uilogic/IRequest;

    .line 55
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/kingsoft/email/widget/text/uilogic/event/UIPEvent;->mEventType:I

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
