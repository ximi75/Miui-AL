.class public Lcom/kingsoft/mail/ui/RotationDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "RotationDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/RotationDrawable$FinfishRotationCallBack;
    }
.end annotation


# instance fields
.field private final DEFAULT_DURATION_TIME:F

.field private elapsedTime:F

.field private isRotating:Z

.field private isStopped:Z

.field private mCallback:Lcom/kingsoft/mail/ui/RotationDrawable$FinfishRotationCallBack;

.field private mRotationX:I

.field private mRotationY:I

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;)V

    .line 12
    const/high16 v0, 0x44480000

    iput v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->DEFAULT_DURATION_TIME:F

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->mStartTime:J

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->isRotating:Z

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->isStopped:Z

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->elapsedTime:F

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 12
    const/high16 v0, 0x44480000

    iput v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->DEFAULT_DURATION_TIME:F

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->mStartTime:J

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->isRotating:Z

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->isStopped:Z

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->elapsedTime:F

    .line 72
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/ui/RotationDrawable;->setRotationCenter(II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "is"    # Ljava/io/InputStream;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 12
    const/high16 v0, 0x44480000

    iput v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->DEFAULT_DURATION_TIME:F

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->mStartTime:J

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->isRotating:Z

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->isStopped:Z

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->elapsedTime:F

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 12
    const/high16 v0, 0x44480000

    iput v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->DEFAULT_DURATION_TIME:F

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->mStartTime:J

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->isRotating:Z

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->isStopped:Z

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->elapsedTime:F

    .line 77
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 34
    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->isRotating:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->isStopped:Z

    if-eqz v4, :cond_1

    .line 35
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget v3, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->elapsedTime:F

    .line 38
    .local v3, "mPreElapsedTime":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 39
    .local v0, "mCurrTime":J
    iget-wide v4, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->mStartTime:J

    sub-long v4, v0, v4

    long-to-float v4, v4

    const/high16 v5, 0x44480000

    div-float/2addr v4, v5

    iput v4, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->elapsedTime:F

    .line 40
    iget v4, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->elapsedTime:F

    const/high16 v5, 0x43b40000

    mul-float v2, v4, v5

    .line 42
    .local v2, "mCurrentAngle":F
    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->isStopped:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->elapsedTime:F

    float-to-int v4, v4

    float-to-int v5, v3

    if-le v4, v5, :cond_2

    .line 43
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->isRotating:Z

    .line 44
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 45
    iget-object v4, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->mCallback:Lcom/kingsoft/mail/ui/RotationDrawable$FinfishRotationCallBack;

    if-eqz v4, :cond_0

    .line 46
    iget-object v4, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->mCallback:Lcom/kingsoft/mail/ui/RotationDrawable$FinfishRotationCallBack;

    invoke-interface {v4}, Lcom/kingsoft/mail/ui/RotationDrawable$FinfishRotationCallBack;->notifyFinish()V

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/RotationDrawable;->invalidateSelf()V

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 51
    iget v4, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->mRotationX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->mRotationY:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 52
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 53
    iget v4, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->mRotationX:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->mRotationY:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 54
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public isRotating()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->isRotating:Z

    return v0
.end method

.method public setCallback(Lcom/kingsoft/mail/ui/RotationDrawable$FinfishRotationCallBack;)V
    .locals 0
    .param p1, "c"    # Lcom/kingsoft/mail/ui/RotationDrawable$FinfishRotationCallBack;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->mCallback:Lcom/kingsoft/mail/ui/RotationDrawable$FinfishRotationCallBack;

    .line 26
    return-void
.end method

.method public setRotationCenter(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->mRotationX:I

    .line 62
    iput p2, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->mRotationY:I

    .line 63
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->isRotating:Z

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->mStartTime:J

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->elapsedTime:F

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->isRotating:Z

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->isStopped:Z

    .line 89
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/RotationDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->isStopped:Z

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/RotationDrawable;->isRotating:Z

    .line 95
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/RotationDrawable;->invalidateSelf()V

    .line 96
    return-void
.end method
