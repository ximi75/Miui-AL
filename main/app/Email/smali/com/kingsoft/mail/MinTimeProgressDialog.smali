.class public Lcom/kingsoft/mail/MinTimeProgressDialog;
.super Lmiui/app/ProgressDialog;
.source "MinTimeProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# static fields
.field private static sMinDelay:I

.field private static sMinShowTime:I


# instance fields
.field private final mDelayedDismiss:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mMinShowTime:I

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const v0, 0x7f11005b

    invoke-direct {p0, p1, v0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mMinShowTime:I

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mStartTime:J

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mDismissed:Z

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/kingsoft/mail/MinTimeProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/MinTimeProgressDialog$1;-><init>(Lcom/kingsoft/mail/MinTimeProgressDialog;)V

    iput-object v0, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mDelayedDismiss:Ljava/lang/Runnable;

    .line 53
    new-instance v0, Lcom/kingsoft/mail/MinTimeProgressDialog$2;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/MinTimeProgressDialog$2;-><init>(Lcom/kingsoft/mail/MinTimeProgressDialog;)V

    iput-object v0, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mDelayedShow:Ljava/lang/Runnable;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/kingsoft/mail/MinTimeProgressDialog;->sMinShowTime:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/kingsoft/mail/MinTimeProgressDialog;->sMinDelay:I

    .line 68
    sget v0, Lcom/kingsoft/mail/MinTimeProgressDialog;->sMinShowTime:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mMinShowTime:I

    .line 70
    return-void
.end method

.method static synthetic access$001(Lcom/kingsoft/mail/MinTimeProgressDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/MinTimeProgressDialog;

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/MinTimeProgressDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/MinTimeProgressDialog;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mDismissed:Z

    return v0
.end method

.method static synthetic access$201(Lcom/kingsoft/mail/MinTimeProgressDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/MinTimeProgressDialog;

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/kingsoft/mail/MinTimeProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 120
    new-instance v0, Lcom/kingsoft/mail/MinTimeProgressDialog;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/MinTimeProgressDialog;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, "dialog":Lcom/kingsoft/mail/MinTimeProgressDialog;
    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/MinTimeProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v0, p2}, Lcom/kingsoft/mail/MinTimeProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v0, p3}, Lcom/kingsoft/mail/MinTimeProgressDialog;->setIndeterminate(Z)V

    .line 124
    invoke-virtual {v0, p4}, Lcom/kingsoft/mail/MinTimeProgressDialog;->setCancelable(Z)V

    .line 125
    invoke-virtual {v0, p5}, Lcom/kingsoft/mail/MinTimeProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 126
    invoke-virtual {v0, v0}, Lcom/kingsoft/mail/MinTimeProgressDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 127
    invoke-virtual {v0}, Lcom/kingsoft/mail/MinTimeProgressDialog;->show()V

    .line 129
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 6

    .prologue
    .line 74
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mDismissed:Z

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mStartTime:J

    sub-long v0, v2, v4

    .line 76
    .local v0, "diff":J
    iget v2, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mMinShowTime:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 81
    :cond_0
    invoke-super {p0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mDelayedDismiss:Ljava/lang/Runnable;

    iget v4, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mMinShowTime:I

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public dismiss(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mDismissed:Z

    .line 95
    invoke-super {p0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/MinTimeProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mStartTime:J

    .line 111
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mDismissed:Z

    .line 104
    iget-object v0, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingsoft/mail/MinTimeProgressDialog;->mDelayedShow:Ljava/lang/Runnable;

    sget v2, Lcom/kingsoft/mail/MinTimeProgressDialog;->sMinDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    return-void
.end method
