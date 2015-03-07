.class public Lcom/kingsoft/mail/compose/mailEditor/ColorImageButton;
.super Landroid/widget/ImageView;
.source "ColorImageButton.java"


# instance fields
.field private mBackgroundResId:I

.field private mImageResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput v1, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageButton;->mImageResId:I

    .line 20
    iput v1, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageButton;->mBackgroundResId:I

    .line 35
    if-eqz p2, :cond_2

    .line 36
    const-string/jumbo v1, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v2, "src"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "strAttr":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v1, "^[0-9]+$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "@"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "^[0-9]+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    const-string/jumbo v1, "@"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageButton;->mImageResId:I

    .line 41
    :cond_1
    const v1, 0x7f020112

    iput v1, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageButton;->mBackgroundResId:I

    .line 43
    .end local v0    # "strAttr":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000

    .line 48
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageButton;->isSelected()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageButton;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_0
    iget v6, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageButton;->mImageResId:I

    if-lez v6, :cond_6

    iget v6, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageButton;->mBackgroundResId:I

    if-lez v6, :cond_6

    .line 49
    const/4 v3, 0x0

    .line 50
    .local v3, "bpImage":Landroid/graphics/Bitmap;
    if-nez v3, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageButton;->mImageResId:I

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 54
    :cond_1
    const/4 v2, 0x0

    .line 55
    .local v2, "bpBackGround":Landroid/graphics/Bitmap;
    if-nez v2, :cond_2

    .line 56
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageButton;->mBackgroundResId:I

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 59
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 60
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageButton;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float v0, v6, v8

    .line 61
    .local v0, "bgLeft":F
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageButton;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float v1, v6, v8

    .line 62
    .local v1, "bgTop":F
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageButton;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float v4, v6, v8

    .line 63
    .local v4, "left":F
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageButton;->getHeight()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float v5, v6, v8

    .line 65
    .local v5, "top":F
    invoke-virtual {p1, v2, v0, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 66
    invoke-virtual {p1, v3, v4, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 69
    .end local v0    # "bgLeft":F
    .end local v1    # "bgTop":F
    .end local v4    # "left":F
    .end local v5    # "top":F
    :cond_3
    if-eqz v3, :cond_4

    .line 70
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    :cond_4
    if-eqz v2, :cond_5

    .line 74
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 82
    .end local v2    # "bpBackGround":Landroid/graphics/Bitmap;
    .end local v3    # "bpImage":Landroid/graphics/Bitmap;
    :cond_5
    :goto_0
    return-void

    .line 79
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
