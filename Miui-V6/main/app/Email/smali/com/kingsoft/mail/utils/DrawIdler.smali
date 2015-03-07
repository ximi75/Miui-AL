.class public Lcom/kingsoft/mail/utils/DrawIdler;
.super Ljava/lang/Object;
.source "DrawIdler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/utils/DrawIdler$1;,
        Lcom/kingsoft/mail/utils/DrawIdler$IdleReader;,
        Lcom/kingsoft/mail/utils/DrawIdler$IdleListener;
    }
.end annotation


# static fields
.field private static final IDLE_WINDOW_MS:I = 0x64

.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_IDLE:I


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mIdleReader:Lcom/kingsoft/mail/utils/DrawIdler$IdleReader;

.field private mListener:Lcom/kingsoft/mail/utils/DrawIdler$IdleListener;

.field private mRoot:Landroid/view/View;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mState:I

    .line 25
    new-instance v0, Lcom/kingsoft/mail/utils/DrawIdler$IdleReader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/utils/DrawIdler$IdleReader;-><init>(Lcom/kingsoft/mail/utils/DrawIdler;Lcom/kingsoft/mail/utils/DrawIdler$1;)V

    iput-object v0, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mIdleReader:Lcom/kingsoft/mail/utils/DrawIdler$IdleReader;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/utils/DrawIdler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/utils/DrawIdler;
    .param p1, "x1"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/utils/DrawIdler;->setState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/utils/DrawIdler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/utils/DrawIdler;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private setState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 58
    iget v0, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mState:I

    if-ne v0, p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iput p1, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mState:I

    .line 62
    iget-object v0, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mListener:Lcom/kingsoft/mail/utils/DrawIdler$IdleListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mListener:Lcom/kingsoft/mail/utils/DrawIdler$IdleListener;

    invoke-interface {v0, p0, p1}, Lcom/kingsoft/mail/utils/DrawIdler$IdleListener;->onStateChanged(Lcom/kingsoft/mail/utils/DrawIdler;I)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentState()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mState:I

    return v0
.end method

.method public setListener(Lcom/kingsoft/mail/utils/DrawIdler$IdleListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/kingsoft/mail/utils/DrawIdler$IdleListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mListener:Lcom/kingsoft/mail/utils/DrawIdler$IdleListener;

    .line 34
    iget-object v0, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mListener:Lcom/kingsoft/mail/utils/DrawIdler$IdleListener;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mListener:Lcom/kingsoft/mail/utils/DrawIdler$IdleListener;

    iget v1, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mState:I

    invoke-interface {v0, p0, v1}, Lcom/kingsoft/mail/utils/DrawIdler$IdleListener;->onStateChanged(Lcom/kingsoft/mail/utils/DrawIdler;I)V

    .line 37
    :cond_0
    return-void
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mRoot:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mIdleReader:Lcom/kingsoft/mail/utils/DrawIdler$IdleReader;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 46
    :cond_2
    iput-object p1, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mRoot:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/utils/DrawIdler;->mIdleReader:Lcom/kingsoft/mail/utils/DrawIdler$IdleReader;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
