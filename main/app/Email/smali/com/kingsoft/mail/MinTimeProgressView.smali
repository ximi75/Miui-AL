.class public Lcom/kingsoft/mail/MinTimeProgressView;
.super Landroid/widget/ProgressBar;
.source "MinTimeProgressView.java"


# static fields
.field private static sMinDelay:I

.field private static sMinShowTime:I


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/MinTimeProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const v0, 0x7f11005c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingsoft/mail/MinTimeProgressView;->mStartTime:J

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/MinTimeProgressView;->mHandler:Landroid/os/Handler;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/MinTimeProgressView;->mDismissed:Z

    .line 56
    new-instance v0, Lcom/kingsoft/mail/MinTimeProgressView$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/MinTimeProgressView$1;-><init>(Lcom/kingsoft/mail/MinTimeProgressView;)V

    iput-object v0, p0, Lcom/kingsoft/mail/MinTimeProgressView;->mDelayedHide:Ljava/lang/Runnable;

    .line 63
    new-instance v0, Lcom/kingsoft/mail/MinTimeProgressView$2;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/MinTimeProgressView$2;-><init>(Lcom/kingsoft/mail/MinTimeProgressView;)V

    iput-object v0, p0, Lcom/kingsoft/mail/MinTimeProgressView;->mDelayedShow:Ljava/lang/Runnable;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/kingsoft/mail/MinTimeProgressView;->sMinShowTime:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/kingsoft/mail/MinTimeProgressView;->sMinDelay:I

    .line 54
    return-void
.end method

.method static synthetic access$001(Lcom/kingsoft/mail/MinTimeProgressView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/MinTimeProgressView;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/MinTimeProgressView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/MinTimeProgressView;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/kingsoft/mail/MinTimeProgressView;->mDismissed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/kingsoft/mail/MinTimeProgressView;J)J
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/MinTimeProgressView;
    .param p1, "x1"    # J

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/kingsoft/mail/MinTimeProgressView;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$301(Lcom/kingsoft/mail/MinTimeProgressView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/MinTimeProgressView;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$401(Lcom/kingsoft/mail/MinTimeProgressView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/MinTimeProgressView;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private hide()V
    .locals 6

    .prologue
    .line 74
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kingsoft/mail/MinTimeProgressView;->mDismissed:Z

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kingsoft/mail/MinTimeProgressView;->mStartTime:J

    sub-long v0, v2, v4

    .line 76
    .local v0, "diff":J
    sget v2, Lcom/kingsoft/mail/MinTimeProgressView;->sMinShowTime:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/kingsoft/mail/MinTimeProgressView;->mStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 80
    :cond_0
    const/16 v2, 0x8

    # invokes: Landroid/widget/ProgressBar;->setVisibility(I)V
    invoke-static {p0, v2}, Lcom/kingsoft/mail/MinTimeProgressView;->access$401(Lcom/kingsoft/mail/MinTimeProgressView;I)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/MinTimeProgressView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kingsoft/mail/MinTimeProgressView;->mDelayedHide:Ljava/lang/Runnable;

    sget v4, Lcom/kingsoft/mail/MinTimeProgressView;->sMinShowTime:I

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private show()V
    .locals 4

    .prologue
    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingsoft/mail/MinTimeProgressView;->mStartTime:J

    .line 92
    iget-object v0, p0, Lcom/kingsoft/mail/MinTimeProgressView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingsoft/mail/MinTimeProgressView;->mDelayedShow:Ljava/lang/Runnable;

    sget v2, Lcom/kingsoft/mail/MinTimeProgressView;->sMinDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/MinTimeProgressView;->mDismissed:Z

    .line 100
    sparse-switch p1, :sswitch_data_0

    .line 108
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 110
    :goto_0
    return-void

    .line 102
    :sswitch_0
    invoke-direct {p0}, Lcom/kingsoft/mail/MinTimeProgressView;->show()V

    goto :goto_0

    .line 105
    :sswitch_1
    invoke-direct {p0}, Lcom/kingsoft/mail/MinTimeProgressView;->hide()V

    goto :goto_0

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
