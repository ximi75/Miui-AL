.class public Lcom/kingsoft/mail/ui/AttachmentTile;
.super Landroid/widget/RelativeLayout;
.source "AttachmentTile.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/AttachmentTile$1;,
        Lcom/kingsoft/mail/ui/AttachmentTile$AttachmentPreviewCache;,
        Lcom/kingsoft/mail/ui/AttachmentTile$AttachmentPreview;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final skinnyThresholdRatio:F = 0.5f


# instance fields
.field protected mAttachment:Lcom/kingsoft/mail/providers/Attachment;

.field private mAttachmentPreviewCache:Lcom/kingsoft/mail/ui/AttachmentTile$AttachmentPreviewCache;

.field private mAttachmentSizeText:Ljava/lang/String;

.field private mDefaultIcon:Landroid/widget/ImageView;

.field private mDefaultThumbnailSet:Z

.field private mDisplayType:Ljava/lang/String;

.field private mIcon:Landroid/widget/ImageView;

.field private mSubtitle:Landroid/widget/TextView;

.field private mThumbnailTask:Lcom/kingsoft/mail/ui/ThumbnailLoadTask;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/AttachmentTile;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/AttachmentTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mDefaultThumbnailSet:Z

    .line 80
    return-void
.end method

.method public static isTiledAttachment(Lcom/kingsoft/mail/providers/Attachment;)Z
    .locals 1
    .param p0, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/ex/photo/util/ImageUtils;->isImageMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateSubtitleText()V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mAttachmentSizeText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mDisplayType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 144
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mDisplayType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method


# virtual methods
.method public bitmapSetToDefault()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mDefaultThumbnailSet:Z

    return v0
.end method

.method public getResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailHeight()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getThumbnailWidth()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 86
    const v0, 0x7f0c0129

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/AttachmentTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mTitle:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0c012a

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/AttachmentTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mSubtitle:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0c00eb

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/AttachmentTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    .line 89
    const v0, 0x7f0c00ec

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/AttachmentTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mDefaultIcon:Landroid/widget/ImageView;

    .line 90
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 94
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 96
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mThumbnailTask:Lcom/kingsoft/mail/ui/ThumbnailLoadTask;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->setupThumbnailPreview(Lcom/kingsoft/mail/ui/ThumbnailLoadTask;Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;Lcom/kingsoft/mail/providers/Attachment;Lcom/kingsoft/mail/providers/Attachment;)V

    .line 97
    return-void
.end method

.method public render(Lcom/kingsoft/mail/providers/Attachment;Landroid/net/Uri;ILcom/kingsoft/mail/ui/AttachmentTile$AttachmentPreviewCache;Z)V
    .locals 7
    .param p1, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;
    .param p2, "attachmentsListUri"    # Landroid/net/Uri;
    .param p3, "index"    # I
    .param p4, "attachmentPreviewCache"    # Lcom/kingsoft/mail/ui/AttachmentTile$AttachmentPreviewCache;
    .param p5, "loaderResult"    # Z

    .prologue
    const/4 v6, 0x4

    .line 106
    if-nez p1, :cond_0

    .line 107
    invoke-virtual {p0, v6}, Lcom/kingsoft/mail/ui/AttachmentTile;->setVisibility(I)V

    .line 136
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    .line 112
    .local v0, "prevAttachment":Lcom/kingsoft/mail/providers/Attachment;
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    .line 113
    iput-object p4, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mAttachmentPreviewCache:Lcom/kingsoft/mail/ui/AttachmentTile$AttachmentPreviewCache;

    .line 115
    sget-object v1, Lcom/kingsoft/mail/ui/AttachmentTile;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "got attachment list row: name=%s state/dest=%d/%d dled=%d contentUri=%s MIME=%s flags=%d"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Lcom/kingsoft/mail/providers/Attachment;->state:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p1, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p1, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p1, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    aput-object v4, v3, v6

    const/4 v4, 0x5

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget v5, p1, Lcom/kingsoft/mail/providers/Attachment;->flags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    iget v1, p1, Lcom/kingsoft/mail/providers/Attachment;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_4

    .line 122
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f10020e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 128
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget v1, p1, Lcom/kingsoft/mail/providers/Attachment;->size:I

    iget v2, v0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    if-eq v1, v2, :cond_3

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mAttachmentSizeText:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AttachmentTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/kingsoft/mail/utils/AttachmentUtils;->getDisplayType(Landroid/content/Context;Lcom/kingsoft/mail/providers/Attachment;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mDisplayType:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AttachmentTile;->updateSubtitleText()V

    .line 135
    :cond_3
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mThumbnailTask:Lcom/kingsoft/mail/ui/ThumbnailLoadTask;

    invoke-static {v1, p0, p1, v0}, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->setupThumbnailPreview(Lcom/kingsoft/mail/ui/ThumbnailLoadTask;Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;Lcom/kingsoft/mail/providers/Attachment;Lcom/kingsoft/mail/providers/Attachment;)V

    goto :goto_0

    .line 123
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    :cond_5
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 14
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x1

    const/high16 v13, 0x3f000000

    const/4 v9, 0x0

    .line 163
    if-nez p1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v10, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mDefaultIcon:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AttachmentTile;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0008

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 171
    .local v2, "maxSize":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 172
    .local v7, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 173
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AttachmentTile;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v10, v7

    div-int/lit16 v5, v10, 0xa0

    .line 175
    .local v5, "scaledWidth":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AttachmentTile;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v10, v0

    div-int/lit16 v4, v10, 0xa0

    .line 178
    .local v4, "scaledHeight":I
    int-to-float v10, v7

    int-to-float v11, v0

    div-float/2addr v10, v11

    int-to-float v11, v0

    int-to-float v12, v7

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 180
    .local v3, "ratio":F
    if-ge v7, v2, :cond_1

    iget-object v10, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getWidth()I

    move-result v10

    if-ge v5, v10, :cond_1

    if-ge v0, v2, :cond_1

    iget-object v10, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getHeight()I

    move-result v10

    if-lt v4, v10, :cond_3

    :cond_1
    move v1, v8

    .line 182
    .local v1, "large":Z
    :goto_1
    cmpg-float v10, v3, v13

    if-gez v10, :cond_4

    int-to-float v10, v5

    iget-object v11, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v13

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_2

    int-to-float v10, v4

    iget-object v11, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v13

    cmpl-float v10, v10, v11

    if-gez v10, :cond_4

    :cond_2
    move v6, v8

    .line 189
    .local v6, "skinny":Z
    :goto_2
    sget-object v10, Lcom/kingsoft/mail/ui/AttachmentTile;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v11, "scaledWidth: %d, scaledHeight: %d, large: %b, skinny: %b"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    const/4 v8, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v8

    const/4 v8, 0x3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 192
    if-eqz v1, :cond_6

    .line 194
    if-eqz v6, :cond_5

    .line 197
    iget-object v8, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 208
    :goto_3
    iget-object v8, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    iget-object v8, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mAttachmentPreviewCache:Lcom/kingsoft/mail/ui/AttachmentTile$AttachmentPreviewCache;

    iget-object v10, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-interface {v8, v10, p1}, Lcom/kingsoft/mail/ui/AttachmentTile$AttachmentPreviewCache;->set(Lcom/kingsoft/mail/providers/Attachment;Landroid/graphics/Bitmap;)V

    .line 210
    iput-boolean v9, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mDefaultThumbnailSet:Z

    goto/16 :goto_0

    .end local v1    # "large":Z
    .end local v6    # "skinny":Z
    :cond_3
    move v1, v9

    .line 180
    goto :goto_1

    .restart local v1    # "large":Z
    :cond_4
    move v6, v9

    .line 182
    goto :goto_2

    .line 201
    .restart local v6    # "skinny":Z
    :cond_5
    iget-object v8, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3

    .line 205
    :cond_6
    iget-object v8, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mIcon:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3
.end method

.method public setThumbnailToDefault()V
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mAttachmentPreviewCache:Lcom/kingsoft/mail/ui/AttachmentTile$AttachmentPreviewCache;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mAttachment:Lcom/kingsoft/mail/providers/Attachment;

    invoke-interface {v1, v2}, Lcom/kingsoft/mail/ui/AttachmentTile$AttachmentPreviewCache;->get(Lcom/kingsoft/mail/providers/Attachment;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    .local v0, "cachedPreview":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/AttachmentTile;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mDefaultIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/AttachmentTile;->mDefaultThumbnailSet:Z

    goto :goto_0
.end method

.method public thumbnailLoadFailed()V
    .locals 0

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AttachmentTile;->setThumbnailToDefault()V

    .line 280
    return-void
.end method
