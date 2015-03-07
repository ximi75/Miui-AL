.class public Lcom/kingsoft/mail/browse/MessageWebView;
.super Landroid/webkit/WebView;
.source "MessageWebView.java"

# interfaces
.implements Lcom/kingsoft/mail/browse/MessageScrollView$Touchable;


# static fields
.field private static DEFAULT_HEIGHT:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_RESIZE_INTERVAL:I = 0x12c

.field private static final MIN_RESIZE_INTERVAL:I = 0xc8

.field private static sMainThreadHandler:Landroid/os/Handler;


# instance fields
.field private final mClock:Lcom/kingsoft/mail/utils/Clock;

.field private mContext:Landroid/content/Context;

.field private mIgnoreNext:Z

.field private mInitHeight:I

.field private mLastSizeChangeTime:J

.field private mRealHeight:I

.field private mRealWidth:I

.field private mScreenOrientation:I

.field private final mThrottle:Lcom/kingsoft/mail/utils/Throttle;

.field private mTouched:Z

.field private mZoom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/MessageWebView;->LOG_TAG:Ljava/lang/String;

    .line 46
    const/16 v0, 0x258

    sput v0, Lcom/kingsoft/mail/browse/MessageWebView;->DEFAULT_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/MessageWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mContext:Landroid/content/Context;

    .line 72
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mScreenOrientation:I

    .line 73
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageWebView;->resetDefaultHeight()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    sget-object v0, Lcom/kingsoft/mail/utils/Clock;->INSTANCE:Lcom/kingsoft/mail/utils/Clock;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mClock:Lcom/kingsoft/mail/utils/Clock;

    .line 51
    new-instance v0, Lcom/kingsoft/mail/utils/Throttle;

    const-string/jumbo v1, "MessageWebView"

    new-instance v2, Lcom/kingsoft/mail/browse/MessageWebView$1;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/browse/MessageWebView$1;-><init>(Lcom/kingsoft/mail/browse/MessageWebView;)V

    invoke-static {}, Lcom/kingsoft/mail/browse/MessageWebView;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc8

    const/16 v5, 0x12c

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/utils/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mThrottle:Lcom/kingsoft/mail/utils/Throttle;

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mLastSizeChangeTime:J

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mScreenOrientation:I

    .line 78
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mContext:Landroid/content/Context;

    .line 79
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mScreenOrientation:I

    .line 80
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageWebView;->resetDefaultHeight()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/browse/MessageWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/MessageWebView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageWebView;->performSizeChangeDelayed()V

    return-void
.end method

.method public static getMainThreadHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/kingsoft/mail/browse/MessageWebView;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kingsoft/mail/browse/MessageWebView;->sMainThreadHandler:Landroid/os/Handler;

    .line 196
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/browse/MessageWebView;->sMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private performSizeChange(II)V
    .locals 2
    .param p1, "ow"    # I
    .param p2, "oh"    # I

    .prologue
    .line 178
    iget v0, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mRealWidth:I

    iget v1, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mRealHeight:I

    invoke-super {p0, v0, v1, p1, p2}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 179
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mClock:Lcom/kingsoft/mail/utils/Clock;

    invoke-virtual {v0}, Lcom/kingsoft/mail/utils/Clock;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mLastSizeChangeTime:J

    .line 180
    return-void
.end method

.method private performSizeChangeDelayed()V
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mIgnoreNext:Z

    .line 184
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageWebView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageWebView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/mail/browse/MessageWebView;->performSizeChange(II)V

    .line 185
    return-void
.end method

.method private resetDefaultHeight()V
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mScreenOrientation:I

    if-nez v0, :cond_0

    .line 85
    const/16 v0, 0x12c

    sput v0, Lcom/kingsoft/mail/browse/MessageWebView;->DEFAULT_HEIGHT:I

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    const/16 v0, 0x258

    sput v0, Lcom/kingsoft/mail/browse/MessageWebView;->DEFAULT_HEIGHT:I

    goto :goto_0
.end method


# virtual methods
.method public clearTouched()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mTouched:Z

    .line 99
    return-void
.end method

.method public onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, -0x2

    .line 102
    const v4, 0x1fffffff

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 103
    .local v1, "mExpandSpec":I
    invoke-super {p0, p1, v1}, Landroid/webkit/WebView;->onMeasure(II)V

    .line 105
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageWebView;->getMeasuredHeight()I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 107
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/browse/MessageWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 110
    .local v3, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 112
    .local v0, "heightSize":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageWebView;->screenOrientationChanged()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mZoom:Z

    if-eqz v4, :cond_1

    :cond_0
    iget v4, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mInitHeight:I

    if-nez v4, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageWebView;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mInitHeight:I

    .line 116
    :cond_1
    iget v4, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mInitHeight:I

    if-eqz v4, :cond_3

    .line 117
    iget v4, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mInitHeight:I

    sget v5, Lcom/kingsoft/mail/browse/MessageWebView;->DEFAULT_HEIGHT:I

    if-ge v4, v5, :cond_2

    sget v4, Lcom/kingsoft/mail/browse/MessageWebView;->DEFAULT_HEIGHT:I

    :goto_0
    iput v4, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mInitHeight:I

    .line 118
    iget v4, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mInitHeight:I

    invoke-virtual {p0, v3, v4}, Lcom/kingsoft/mail/browse/MessageWebView;->setMeasuredDimension(II)V

    .line 123
    :goto_1
    return-void

    .line 117
    :cond_2
    iget v4, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mInitHeight:I

    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {p0, v3, v0}, Lcom/kingsoft/mail/browse/MessageWebView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .prologue
    const/4 v3, 0x0

    .line 153
    iput p1, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mRealWidth:I

    .line 154
    iput p2, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mRealHeight:I

    .line 155
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mClock:Lcom/kingsoft/mail/utils/Clock;

    invoke-virtual {v4}, Lcom/kingsoft/mail/utils/Clock;->getTime()J

    move-result-wide v0

    .line 156
    .local v0, "now":J
    iget-wide v4, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mLastSizeChangeTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    const/4 v2, 0x1

    .line 160
    .local v2, "recentlySized":Z
    :goto_0
    iget-boolean v4, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mIgnoreNext:Z

    if-eqz v4, :cond_1

    .line 161
    iput-boolean v3, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mIgnoreNext:Z

    .line 162
    if-eqz v2, :cond_1

    .line 163
    sget-object v4, Lcom/kingsoft/mail/browse/MessageWebView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Suppressing size change in MessageWebView"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 175
    :goto_1
    return-void

    .end local v2    # "recentlySized":Z
    :cond_0
    move v2, v3

    .line 156
    goto :goto_0

    .line 168
    .restart local v2    # "recentlySized":Z
    :cond_1
    if-eqz v2, :cond_2

    .line 169
    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mThrottle:Lcom/kingsoft/mail/utils/Throttle;

    invoke-virtual {v3}, Lcom/kingsoft/mail/utils/Throttle;->onEvent()V

    goto :goto_1

    .line 173
    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/kingsoft/mail/browse/MessageWebView;->performSizeChange(II)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 140
    iput-boolean v6, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mTouched:Z

    .line 141
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 142
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v6, :cond_0

    .line 143
    iput-boolean v6, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mZoom:Z

    .line 146
    :cond_0
    const-string/jumbo v1, "MsgScroller"

    const-string/jumbo v2, "OUT WebView.onTouch, returning handled=%s ev=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p1, v3, v6

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    return v0
.end method

.method public screenOrientationChanged()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mScreenOrientation:I

    if-eq v1, v2, :cond_0

    .line 130
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mScreenOrientation:I

    .line 131
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageWebView;->resetDefaultHeight()V

    .line 132
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public wasTouched()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageWebView;->mTouched:Z

    return v0
.end method
