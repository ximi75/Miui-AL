.class public Lcom/kingsoft/mail/chat/ChatFillView;
.super Landroid/view/View;
.source "ChatFillView.java"


# instance fields
.field private ROUND_RECT_ANGLE:I

.field private mClipRt:Landroid/graphics/Rect;

.field private mHeadIconHeight:I

.field private mHeadPaddingLeft:I

.field private mIsSendFromMyself:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/chat/ChatFillView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/chat/ChatFillView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x1

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/16 v0, 0x14

    iput v0, p0, Lcom/kingsoft/mail/chat/ChatFillView;->ROUND_RECT_ANGLE:I

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mClipRt:Landroid/graphics/Rect;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mPath:Landroid/graphics/Path;

    .line 45
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatFillView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mHeadIconHeight:I

    .line 46
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatFillView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mHeadPaddingLeft:I

    .line 47
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatFillView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatFillView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/chat/ChatFillView;->ROUND_RECT_ANGLE:I

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/kingsoft/mail/chat/ChatFillView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 53
    return-void
.end method


# virtual methods
.method public calcLinePoint(I)V
    .locals 16
    .param p1, "radius"    # I

    .prologue
    .line 134
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingsoft/mail/chat/ChatFillView;->mClipRt:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/kingsoft/mail/chat/ChatFillView;->mHeadPaddingLeft:I

    add-int/2addr v8, v9

    int-to-float v4, v8

    .line 135
    .local v4, "startX":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingsoft/mail/chat/ChatFillView;->mClipRt:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/kingsoft/mail/chat/ChatFillView;->mHeadIconHeight:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v5, v8

    .line 136
    .local v5, "startY":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingsoft/mail/chat/ChatFillView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 137
    const/16 v3, 0xb4

    .line 138
    .local v3, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 139
    add-int/lit8 v8, v2, 0x1

    mul-int/lit16 v8, v8, 0xb4

    div-int/2addr v8, v3

    int-to-float v1, v8

    .line 140
    .local v1, "angle":F
    move/from16 v0, p1

    int-to-double v8, v0

    move/from16 v0, p1

    int-to-double v10, v0

    const/high16 v12, 0x43340000

    div-float v12, v1, v12

    float-to-double v12, v12

    const-wide v14, 0x400921fb54442d18L

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v8, v8

    add-float v6, v4, v8

    .line 141
    .local v6, "x":F
    move/from16 v0, p1

    int-to-double v8, v0

    const/high16 v10, 0x43340000

    div-float v10, v1, v10

    float-to-double v10, v10

    const-wide v12, 0x400921fb54442d18L

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v8, v8

    sub-float v7, v5, v8

    .line 142
    .local v7, "y":F
    const/16 v8, 0x5a

    if-lt v2, v8, :cond_0

    .line 143
    move/from16 v0, p1

    int-to-float v8, v0

    add-float/2addr v8, v4

    float-to-double v8, v8

    move/from16 v0, p1

    int-to-double v10, v0

    const/high16 v12, 0x43340000

    div-float v12, v1, v12

    float-to-double v12, v12

    const-wide v14, 0x400921fb54442d18L

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v6, v8

    .line 145
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingsoft/mail/chat/ChatFillView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "angle":F
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatFillView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b009e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 60
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatFillView;->getLeft()I

    move-result v4

    .line 61
    .local v4, "left":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatFillView;->getTop()I

    move-result v8

    .line 62
    .local v8, "top":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatFillView;->getRight()I

    move-result v7

    .line 63
    .local v7, "right":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatFillView;->getBottom()I

    move-result v0

    .line 98
    .local v0, "bottom":I
    iget-object v9, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mClipRt:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lez v9, :cond_0

    iget-object v9, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mClipRt:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-gtz v9, :cond_1

    .line 99
    :cond_0
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v4, v8, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v10, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 127
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 104
    new-instance v2, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mClipRt:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mHeadIconHeight:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    invoke-direct {v2, v4, v9, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 105
    .local v2, "contentRt":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 106
    new-instance v5, Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mClipRt:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mClipRt:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget v11, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mHeadIconHeight:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mClipRt:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    iget-object v12, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mClipRt:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    invoke-direct {v5, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 107
    .local v5, "rect":Landroid/graphics/RectF;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 108
    .local v6, "rectPaint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 110
    iget v9, p0, Lcom/kingsoft/mail/chat/ChatFillView;->ROUND_RECT_ANGLE:I

    int-to-float v9, v9

    iget v10, p0, Lcom/kingsoft/mail/chat/ChatFillView;->ROUND_RECT_ANGLE:I

    int-to-float v10, v10

    invoke-virtual {p1, v5, v9, v10, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 111
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 115
    new-instance v3, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mClipRt:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mHeadIconHeight:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    invoke-direct {v3, v4, v8, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 116
    .local v3, "headClipRt":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 117
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 118
    .local v1, "circlePaint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 120
    iget-boolean v9, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mIsSendFromMyself:Z

    if-eqz v9, :cond_2

    .line 121
    iget-object v9, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mClipRt:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget v10, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mHeadIconHeight:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mHeadPaddingLeft:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mClipRt:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget v11, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mHeadIconHeight:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mHeadIconHeight:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {p1, v9, v10, v11, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 125
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 123
    :cond_2
    iget-object v9, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mClipRt:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget v10, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mHeadIconHeight:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget v10, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mHeadPaddingLeft:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mClipRt:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget v11, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mHeadIconHeight:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mHeadIconHeight:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {p1, v9, v10, v11, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public setClipRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rt"    # Landroid/graphics/Rect;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mClipRt:Landroid/graphics/Rect;

    .line 151
    return-void
.end method

.method public setIsSendFromMyself(Z)V
    .locals 0
    .param p1, "isSendFromMyself"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/kingsoft/mail/chat/ChatFillView;->mIsSendFromMyself:Z

    .line 155
    return-void
.end method
