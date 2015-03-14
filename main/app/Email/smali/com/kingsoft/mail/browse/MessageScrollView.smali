.class public Lcom/kingsoft/mail/browse/MessageScrollView;
.super Landroid/widget/ScrollView;
.source "MessageScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/MessageScrollView$Touchable;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MsgScroller"


# instance fields
.field private mInterceptNormally:Z

.field private mTouchableChild:Lcom/kingsoft/mail/browse/MessageScrollView$Touchable;

.field private mWantToIntercept:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/MessageScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 94
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageScrollView;->mTouchableChild:Lcom/kingsoft/mail/browse/MessageScrollView$Touchable;

    if-eqz v5, :cond_0

    .line 102
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageScrollView;->mTouchableChild:Lcom/kingsoft/mail/browse/MessageScrollView$Touchable;

    invoke-interface {v5}, Lcom/kingsoft/mail/browse/MessageScrollView$Touchable;->clearTouched()V

    .line 104
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 106
    .local v1, "handled":Z
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageScrollView;->mTouchableChild:Lcom/kingsoft/mail/browse/MessageScrollView$Touchable;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageScrollView;->mTouchableChild:Lcom/kingsoft/mail/browse/MessageScrollView$Touchable;

    invoke-interface {v5}, Lcom/kingsoft/mail/browse/MessageScrollView$Touchable;->wasTouched()Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 107
    .local v2, "touchedChild":Z
    :goto_1
    iget-boolean v5, p0, Lcom/kingsoft/mail/browse/MessageScrollView;->mWantToIntercept:Z

    if-eqz v5, :cond_1

    .line 108
    if-eqz v2, :cond_5

    .line 111
    const-string/jumbo v5, "MsgScroller"

    const-string/jumbo v6, "IN extra ScrollView.onTouch, ev=%s"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p1, v7, v4

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/MessageScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 120
    :cond_1
    :goto_2
    if-nez v2, :cond_3

    if-eq v0, v3, :cond_2

    if-nez v0, :cond_3

    .line 122
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageScrollView;->mTouchableChild:Lcom/kingsoft/mail/browse/MessageScrollView$Touchable;

    instance-of v3, v3, Landroid/webkit/WebView;

    if-eqz v3, :cond_3

    .line 128
    :cond_3
    return v1

    .line 96
    .end local v1    # "handled":Z
    .end local v2    # "touchedChild":Z
    :pswitch_0
    const-string/jumbo v5, "MsgScroller"

    const-string/jumbo v6, "IN ScrollView.dispatchTouch, clearing flags"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 97
    iput-boolean v4, p0, Lcom/kingsoft/mail/browse/MessageScrollView;->mWantToIntercept:Z

    .line 98
    iput-boolean v4, p0, Lcom/kingsoft/mail/browse/MessageScrollView;->mInterceptNormally:Z

    goto :goto_0

    .restart local v1    # "handled":Z
    :cond_4
    move v2, v4

    .line 106
    goto :goto_1

    .line 114
    .restart local v2    # "touchedChild":Z
    :cond_5
    iput-boolean v3, p0, Lcom/kingsoft/mail/browse/MessageScrollView;->mInterceptNormally:Z

    .line 115
    iput-boolean v4, p0, Lcom/kingsoft/mail/browse/MessageScrollView;->mWantToIntercept:Z

    goto :goto_2

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/MessageScrollView;->mInterceptNormally:Z

    if-eqz v2, :cond_0

    .line 79
    const-string/jumbo v2, "MsgScroller"

    const-string/jumbo v3, "IN ScrollView.onIntercept, NOW stealing. ev=%s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 88
    :goto_0
    return v0

    .line 81
    :cond_0
    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/MessageScrollView;->mWantToIntercept:Z

    if-eqz v2, :cond_1

    .line 82
    const-string/jumbo v2, "MsgScroller"

    const-string/jumbo v3, "IN ScrollView.onIntercept, already stealing. ev=%s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v2, v3, v0}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 83
    goto :goto_0

    .line 86
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kingsoft/mail/browse/MessageScrollView;->mWantToIntercept:Z

    .line 87
    const-string/jumbo v2, "MsgScroller"

    const-string/jumbo v3, "OUT ScrollView.onIntercept, steal=%s ev=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/kingsoft/mail/browse/MessageScrollView;->mWantToIntercept:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 88
    goto :goto_0
.end method

.method public setInnerScrollableView(Lcom/kingsoft/mail/browse/MessageScrollView$Touchable;)V
    .locals 0
    .param p1, "child"    # Lcom/kingsoft/mail/browse/MessageScrollView$Touchable;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageScrollView;->mTouchableChild:Lcom/kingsoft/mail/browse/MessageScrollView$Touchable;

    .line 74
    return-void
.end method
