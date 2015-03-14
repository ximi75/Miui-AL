.class public Lcom/kingsoft/email/mail/attachment/ProgressImageView;
.super Landroid/widget/ImageView;
.source "ProgressImageView.java"


# static fields
.field public static final DM_BY_PARENT:I = 0x0

.field public static final DM_BY_X_Y_R:I = 0x1

.field public static final DOWNLOADING:I = 0x2

.field private static final END_ANGLE:I = 0x168

.field public static final FAILED:I = 0x1

.field public static final NOT_SAVED:I = 0x0

.field public static final PAUSED:I = 0x5

.field public static final REDOWNLOADING:I = 0x4

.field public static final SAVED:I = 0x3

.field private static final START_ANGLE:I = 0x10e


# instance fields
.field public final STATE_COLOR_DEFAULT:I

.field public final STATE_COLOR_DOWNLOADING:I

.field public final STATE_COLOR_FAILED:I

.field public final STATE_COLOR_NOT_SAVED:I

.field public final STATE_COLOR_PAUSED:I

.field public final STATE_COLOR_REDOWNLOADING:I

.field public final STATE_COLOR_SAVED:I

.field private mBottomPadding:I

.field private mColor:I

.field private mDownloadState:I

.field private mDrawMode:I

.field private mLeftPadding:I

.field private mPainter:Landroid/graphics/Paint;

.field private mProgress:I

.field private mR:I

.field private mRightPadding:I

.field private mStrokeWidth:I

.field private mTopPadding:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0b005b

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mDrawMode:I

    .line 24
    const/16 v0, 0xa

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mR:I

    .line 26
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mLeftPadding:I

    .line 27
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mTopPadding:I

    .line 28
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mRightPadding:I

    .line 29
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mBottomPadding:I

    .line 38
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_NOT_SAVED:I

    .line 39
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_FAILED:I

    .line 40
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_DOWNLOADING:I

    .line 41
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_SAVED:I

    .line 42
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_REDOWNLOADING:I

    .line 43
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_PAUSED:I

    .line 44
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_NOT_SAVED:I

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_DEFAULT:I

    .line 78
    invoke-direct {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->initPainter()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v2, 0x7f0b005b

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mDrawMode:I

    .line 24
    const/16 v0, 0xa

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mR:I

    .line 26
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mLeftPadding:I

    .line 27
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mTopPadding:I

    .line 28
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mRightPadding:I

    .line 29
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mBottomPadding:I

    .line 38
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_NOT_SAVED:I

    .line 39
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_FAILED:I

    .line 40
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_DOWNLOADING:I

    .line 41
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_SAVED:I

    .line 42
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_REDOWNLOADING:I

    .line 43
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_PAUSED:I

    .line 44
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_NOT_SAVED:I

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_DEFAULT:I

    .line 58
    invoke-direct {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->initPainter()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v2, 0x7f0b005b

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mDrawMode:I

    .line 24
    const/16 v0, 0xa

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mR:I

    .line 26
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mLeftPadding:I

    .line 27
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mTopPadding:I

    .line 28
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mRightPadding:I

    .line 29
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mBottomPadding:I

    .line 38
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_NOT_SAVED:I

    .line 39
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_FAILED:I

    .line 40
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_DOWNLOADING:I

    .line 41
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_SAVED:I

    .line 42
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_REDOWNLOADING:I

    .line 43
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_PAUSED:I

    .line 44
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_NOT_SAVED:I

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_DEFAULT:I

    .line 52
    invoke-direct {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->initPainter()V

    .line 53
    return-void
.end method

.method private draw(III)Landroid/graphics/RectF;
    .locals 9
    .param p1, "strokeWidth"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 199
    const/4 v1, 0x0

    .local v1, "left":I
    const/4 v3, 0x0

    .local v3, "top":I
    const/4 v2, 0x0

    .local v2, "right":I
    const/4 v0, 0x0

    .line 201
    .local v0, "bottom":I
    if-gt p2, p3, :cond_0

    .line 202
    iget v4, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mLeftPadding:I

    add-int/2addr v4, p1

    add-int/lit8 v1, v4, 0x0

    .line 203
    iget v4, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mTopPadding:I

    add-int/2addr v4, p1

    sub-int v5, p3, p2

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 204
    sub-int v4, p2, p1

    iget v5, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mRightPadding:I

    sub-int v2, v4, v5

    .line 205
    sub-int v4, p3, p2

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p3, v4

    sub-int/2addr v4, p1

    iget v5, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mBottomPadding:I

    sub-int v0, v4, v5

    .line 215
    :goto_0
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v3

    int-to-float v7, v2

    int-to-float v8, v0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4

    .line 209
    :cond_0
    iget v4, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mLeftPadding:I

    sub-int v5, p2, p3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int v1, v4, p1

    .line 210
    iget v4, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mTopPadding:I

    add-int/lit8 v4, v4, 0x0

    add-int v3, v4, p1

    .line 211
    sub-int v4, p2, p3

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    sub-int/2addr v4, p1

    iget v5, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mRightPadding:I

    sub-int v2, v4, v5

    .line 212
    sub-int v4, p3, p1

    iget v5, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mBottomPadding:I

    sub-int v0, v4, v5

    goto :goto_0
.end method

.method private draw(IIII)Landroid/graphics/RectF;
    .locals 9
    .param p1, "stokeWidth"    # I
    .param p2, "r"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 227
    const/4 v1, 0x0

    .local v1, "left":I
    const/4 v3, 0x0

    .local v3, "top":I
    const/4 v2, 0x0

    .local v2, "right":I
    const/4 v0, 0x0

    .line 229
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getWidth()I

    move-result v4

    div-int/lit8 p3, v4, 0x2

    .line 230
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getHeight()I

    move-result v4

    div-int/lit8 p4, v4, 0x2

    .line 232
    sub-int v4, p3, p2

    sub-int v1, v4, p1

    .line 233
    sub-int v4, p4, p2

    sub-int v3, v4, p1

    .line 234
    add-int v4, p3, p2

    add-int v2, v4, p1

    .line 235
    add-int v4, p4, p2

    add-int v0, v4, p1

    .line 237
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v3

    int-to-float v7, v2

    int-to-float v8, v0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method private initPainter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mStrokeWidth:I

    .line 64
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_DEFAULT:I

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mColor:I

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mPainter:Landroid/graphics/Paint;

    .line 67
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mPainter:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mPainter:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mPainter:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mPainter:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mPainter:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 72
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mPainter:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 73
    return-void
.end method

.method private restore(I)V
    .locals 2
    .param p1, "downloadState"    # I

    .prologue
    .line 162
    packed-switch p1, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 164
    :pswitch_0
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mPainter:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_NOT_SAVED:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mPainter:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_FAILED:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mPainter:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_DOWNLOADING:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 173
    :pswitch_3
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mPainter:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_SAVED:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 176
    :pswitch_4
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mPainter:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_REDOWNLOADING:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 179
    :pswitch_5
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mPainter:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->STATE_COLOR_PAUSED:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mColor:I

    return v0
.end method

.method public getDownloadState()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mDownloadState:I

    return v0
.end method

.method public getDrawMode()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mDrawMode:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mProgress:I

    return v0
.end method

.method public getStokeWidth()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mStrokeWidth:I

    return v0
.end method

.method public init(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "r"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mX:I

    .line 101
    iput p2, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mY:I

    .line 102
    iput p3, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mR:I

    .line 103
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 128
    const/4 v1, 0x0

    .line 131
    .local v1, "rect":Landroid/graphics/RectF;
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mDrawMode:I

    if-nez v0, :cond_1

    .line 132
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mStrokeWidth:I

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->draw(III)Landroid/graphics/RectF;

    move-result-object v1

    .line 140
    :cond_0
    :goto_0
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mDownloadState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 155
    :goto_1
    :pswitch_0
    monitor-exit p0

    return-void

    .line 134
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mDrawMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 135
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mStrokeWidth:I

    iget v2, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mR:I

    iget v3, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mX:I

    iget v4, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mY:I

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->draw(IIII)Landroid/graphics/RectF;

    move-result-object v1

    goto :goto_0

    .line 142
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->restore(I)V

    .line 143
    const/high16 v2, 0x43870000

    const/high16 v3, 0x43b40000

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mPainter:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 126
    .end local v1    # "rect":Landroid/graphics/RectF;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 146
    .restart local v1    # "rect":Landroid/graphics/RectF;
    :pswitch_2
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->restore(I)V

    .line 147
    const/high16 v2, 0x43870000

    const/high16 v3, 0x43b40000

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mPainter:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 148
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->restore(I)V

    .line 149
    const/high16 v2, 0x43870000

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->getProgress()I

    move-result v0

    int-to-double v3, v0

    const-wide/high16 v5, 0x4059000000000000L

    div-double/2addr v3, v5

    const-wide v5, 0x4076800000000000L

    mul-double/2addr v3, v5

    double-to-float v3, v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mPainter:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mColor:I

    .line 83
    return-void
.end method

.method public setDownloadState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mDownloadState:I

    .line 107
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->invalidate()V

    .line 108
    return-void
.end method

.method public setDrawMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 115
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    iput p1, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mDrawMode:I

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mProgress:I

    .line 188
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->invalidate()V

    .line 189
    return-void
.end method

.method public setStokeWidth(I)V
    .locals 2
    .param p1, "stokeWidth"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mStrokeWidth:I

    .line 96
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/ProgressImageView;->mPainter:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    return-void
.end method
