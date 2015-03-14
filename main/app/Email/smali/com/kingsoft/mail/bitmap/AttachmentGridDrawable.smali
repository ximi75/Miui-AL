.class public Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;
.super Lcom/kingsoft/mail/bitmap/CompositeDrawable;
.source "AttachmentGridDrawable.java"

# interfaces
.implements Lcom/kingsoft/mail/bitmap/Parallaxable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingsoft/mail/bitmap/CompositeDrawable",
        "<",
        "Lcom/kingsoft/mail/bitmap/AttachmentDrawable;",
        ">;",
        "Lcom/kingsoft/mail/bitmap/Parallaxable;"
    }
.end annotation


# static fields
.field public static final MAX_VISIBLE_ATTACHMENT_COUNT:I = 0x2


# instance fields
.field private mCache:Lcom/kingsoft/bitmap/BitmapCache;

.field private mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

.field private mDecodeAggregator:Lcom/kingsoft/bitmap/DecodeAggregator;

.field private final mOverflowBadgeColor:I

.field private mOverflowText:Ljava/lang/String;

.field private final mOverflowTextColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mParallaxFraction:F

.field private final mPlaceholder:Landroid/graphics/drawable/Drawable;

.field private final mProgress:Landroid/graphics/drawable/Drawable;

.field private final mRect:Landroid/graphics/Rect;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "placeholder"    # Landroid/graphics/drawable/Drawable;
    .param p3, "progress"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 39
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/bitmap/CompositeDrawable;-><init>(I)V

    .line 28
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mParallaxFraction:F

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mRect:Landroid/graphics/Rect;

    .line 40
    iput-object p1, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mResources:Landroid/content/res/Resources;

    .line 41
    iput-object p2, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-object p3, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mProgress:Landroid/graphics/drawable/Drawable;

    .line 43
    const v0, 0x7f0b0014

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mOverflowTextColor:I

    .line 44
    const v0, 0x7f0b0013

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mOverflowBadgeColor:I

    .line 46
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    return-void
.end method

.method private layoutOverflowBadge()V
    .locals 5

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mOverflowText:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->overflowFontSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 79
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->overflowTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 80
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 81
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mOverflowText:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mOverflowText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic createDivisionDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->createDivisionDrawable()Lcom/kingsoft/mail/bitmap/AttachmentDrawable;

    move-result-object v0

    return-object v0
.end method

.method protected createDivisionDrawable()Lcom/kingsoft/mail/bitmap/AttachmentDrawable;
    .locals 7

    .prologue
    .line 51
    new-instance v0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;

    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    iget-object v3, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mDecodeAggregator:Lcom/kingsoft/bitmap/DecodeAggregator;

    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget-object v5, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mProgress:Landroid/graphics/drawable/Drawable;

    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;-><init>(Landroid/content/res/Resources;Lcom/kingsoft/bitmap/BitmapCache;Lcom/kingsoft/bitmap/DecodeAggregator;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 53
    .local v0, "result":Lcom/kingsoft/mail/bitmap/AttachmentDrawable;
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40000000

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mCount:I

    if-ge v0, v4, :cond_0

    .line 87
    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mDrawables:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;

    iget v5, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mParallaxFraction:F

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->setParallaxFraction(F)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lcom/kingsoft/mail/bitmap/CompositeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mOverflowText:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    if-eqz v4, :cond_1

    .line 94
    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->overflowDiameter:I

    int-to-float v4, v4

    div-float v1, v4, v6

    .line 96
    .local v1, "radius":F
    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->overflowXEnd:I

    iget-object v5, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v2, v4, v1

    .line 97
    .local v2, "x":F
    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->overflowYEnd:I

    iget-object v5, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v3, v4, v1

    .line 99
    .local v3, "y":F
    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mOverflowBadgeColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 102
    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mOverflowTextColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mOverflowText:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v5, v3

    iget-object v6, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 105
    .end local v1    # "radius":F
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_1
    return-void
.end method

.method public setBitmapCache(Lcom/kingsoft/bitmap/BitmapCache;)V
    .locals 0
    .param p1, "cache"    # Lcom/kingsoft/bitmap/BitmapCache;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    .line 58
    return-void
.end method

.method public setCoordinates(Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;)V
    .locals 0
    .param p1, "coordinates"    # Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    .line 71
    invoke-direct {p0}, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->layoutOverflowBadge()V

    .line 72
    return-void
.end method

.method public setDecodeAggregator(Lcom/kingsoft/bitmap/DecodeAggregator;)V
    .locals 0
    .param p1, "decodeAggregator"    # Lcom/kingsoft/bitmap/DecodeAggregator;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mDecodeAggregator:Lcom/kingsoft/bitmap/DecodeAggregator;

    .line 62
    return-void
.end method

.method public setOverflowText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mOverflowText:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->layoutOverflowBadge()V

    .line 67
    return-void
.end method

.method public setParallaxFraction(F)V
    .locals 0
    .param p1, "fraction"    # F

    .prologue
    .line 109
    iput p1, p0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->mParallaxFraction:F

    .line 110
    return-void
.end method
