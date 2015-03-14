.class public Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;
.super Ljava/lang/Object;
.source "ConversationItemViewCoordinates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;,
        Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;
    }
.end annotation


# static fields
.field static final ATTACHMENT_PREVIEW_NONE:I = 0x0

.field static final ATTACHMENT_PREVIEW_READ:I = 0x2

.field static final ATTACHMENT_PREVIEW_UNREAD:I = 0x1

.field private static COLOR_BLOCK_HEIGHT:I = 0x0

.field private static COLOR_BLOCK_WIDTH:I = 0x0

.field static final GADGET_CHECKBOX:I = 0x2

.field static final GADGET_CONTACT_PHOTO:I = 0x1

.field static final GADGET_MYCHECKBOX:I = 0x3

.field static final GADGET_NONE:I = 0x0

.field static final MODE_COUNT:I = 0x2

.field static final NORMAL_MODE:I = 0x1

.field static final WIDE_MODE:I


# instance fields
.field public final attachmentPreviewsDecodeHeight:I

.field final attachmentPreviewsHeight:I

.field final attachmentPreviewsWidth:I

.field public final attachmentPreviewsX:I

.field public final attachmentPreviewsY:I

.field final checkWidth:I

.field final checkX:I

.field final checkY:I

.field final colorBlockHeight:I

.field final colorBlockWidth:I

.field final colorBlockX:I

.field final colorBlockY:I

.field final contactImagesHeight:I

.field final contactImagesWidth:I

.field final contactImagesX:I

.field final contactImagesY:I

.field final dateFontSize:F

.field final datePaddingLeft:I

.field final dateTextColor:I

.field final dateXEnd:I

.field final dateY:I

.field final dateYBaseline:I

.field final foldersFontSize:F

.field final foldersHeight:I

.field final foldersTextBottomPadding:I

.field final foldersTypeface:Landroid/graphics/Typeface;

.field final foldersX:I

.field final foldersXEnd:I

.field final foldersY:I

.field final height:I

.field final infoIconXEnd:I

.field final infoIconY:I

.field final itemViewBackgroud:Landroid/graphics/drawable/Drawable;

.field final listViewBackgroundColor:I

.field private final mFolderCellWidth:I

.field private final mFolderMinimumWidth:I

.field private final mMinListWidthForWide:I

.field private final mMinListWidthIsSpacious:I

.field private final mMode:I

.field final mergedCountBackgroundHeight:I

.field final mergedCountBackgroundWidth:I

.field final mergedCountBackgroundX:I

.field final mergedCountBackgroundY:I

.field final mergedCountFontSize:F

.field final mergedCountTextColor:I

.field final mergedCountYBaseline:I

.field public final overflowDiameter:I

.field public final overflowFontSize:F

.field public final overflowTypeface:Landroid/graphics/Typeface;

.field public final overflowXEnd:I

.field public final overflowYEnd:I

.field final paperclipPaddingLeft:I

.field final paperclipY:I

.field final personalIndicatorX:I

.field final personalIndicatorY:I

.field public final placeholderHeight:I

.field public final placeholderWidth:I

.field final placeholderY:I

.field public final progressBarHeight:I

.field public final progressBarWidth:I

.field final progressBarY:I

.field final sendersFontSize:F

.field final sendersHeight:I

.field final sendersLineCount:I

.field final sendersLineHeight:I

.field final sendersUnreadMarkX:I

.field final sendersUnreadMarkY:I

.field final sendersWidth:I

.field final sendersX:I

.field final sendersY:I

.field final snippetFontSize:F

.field final snippetHeight:I

.field final snippetLineCount:I

.field final snippetWidth:I

.field final snippetX:I

.field final snippetY:I

.field final subjectFontSize:F

.field final subjectHeight:I

.field final subjectLineCount:I

.field final subjectWidth:I

.field final subjectX:I

.field final subjectY:I

.field final unreadMarkX:I

.field final unreadMarkY:I

.field final x:I

.field final y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 70
    sput v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->COLOR_BLOCK_WIDTH:I

    .line 71
    sput v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->COLOR_BLOCK_HEIGHT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;)V
    .locals 40
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;
    .param p3, "cache"    # Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;

    .prologue
    .line 341
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const-string/jumbo v36, "CIV coordinates constructor"

    invoke-static/range {v36 .. v36}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 344
    .local v25, "res":Landroid/content/res/Resources;
    const v36, 0x7f0d00b8

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mFolderCellWidth:I

    .line 345
    const v36, 0x7f0d00cb

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mMinListWidthForWide:I

    .line 346
    const v36, 0x7f0d00cc

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mMinListWidthIsSpacious:I

    .line 348
    const v36, 0x7f0d00c4

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mFolderMinimumWidth:I

    .line 349
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->calculateMode(Landroid/content/res/Resources;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mMode:I

    .line 351
    const v14, 0x7f04005f

    .line 352
    .local v14, "layoutId":I
    const v36, 0x7f04005f

    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->getGadgetMode()I

    move-result v37

    mul-int/lit8 v37, v37, 0x4

    add-int v17, v36, v37

    .line 353
    .local v17, "newLayoutID":I
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->getView(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/view/ViewGroup;

    .line 354
    .local v34, "view":Landroid/view/ViewGroup;
    if-nez v34, :cond_0

    .line 355
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v36

    const v37, 0x7f04005f

    const/16 v38, 0x0

    invoke-virtual/range {v36 .. v38}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v34

    .end local v34    # "view":Landroid/view/ViewGroup;
    check-cast v34, Landroid/view/ViewGroup;

    .line 356
    .restart local v34    # "view":Landroid/view/ViewGroup;
    move-object/from16 v0, p3

    move/from16 v1, v17

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->put(ILandroid/view/View;)V

    .line 359
    :cond_0
    invoke-static/range {v34 .. v34}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->x:I

    .line 360
    invoke-static/range {v34 .. v34}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->y:I

    .line 361
    invoke-virtual/range {v34 .. v34}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->itemViewBackgroud:Landroid/graphics/drawable/Drawable;

    .line 362
    const v36, 0x7f0b009c

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->listViewBackgroundColor:I

    .line 366
    const v36, 0x7f0c0167

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 367
    .local v5, "attachmentPreviews":Landroid/view/View;
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->getAttachmentPreviewMode()I

    move-result v36

    if-eqz v36, :cond_2

    .line 368
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .line 369
    .local v21, "params":Landroid/view/ViewGroup$LayoutParams;
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->getAttachmentPreviewMode()I

    move-result v36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getAttachmentPreviewsHeight(Landroid/content/Context;I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 371
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    .end local v21    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    const/16 v36, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getAttachmentPreviewsHeight(Landroid/content/Context;I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsDecodeHeight:I

    .line 378
    const v36, 0x7f0c017c

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 379
    .local v11, "folders":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->areFoldersVisible()Z

    move-result v36

    if-eqz v36, :cond_3

    const/16 v36, 0x0

    :goto_1
    move/from16 v0, v36

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    const v36, 0x7f0c017b

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 384
    .local v6, "attachmentPreviewsBottomMargin":Landroid/view/View;
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->getAttachmentPreviewMode()I

    move-result v36

    if-eqz v36, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->areFoldersVisible()Z

    move-result v36

    if-eqz v36, :cond_4

    const/4 v15, 0x1

    .line 386
    .local v15, "marginVisible":Z
    :goto_2
    if-eqz v15, :cond_5

    const/16 v36, 0x0

    :goto_3
    move/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 388
    const v36, 0x7f0c0028

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 390
    .local v9, "contactImagesView":Landroid/view/View;
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->getGadgetMode()I

    move-result v36

    packed-switch v36, :pswitch_data_0

    .line 402
    const/16 v36, 0x8

    move/from16 v0, v36

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 403
    const/4 v9, 0x0

    .line 412
    :goto_4
    const v36, 0x7f0c0178

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 413
    .local v22, "personalIndicator":Landroid/view/View;
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->isPersonalIndicatorVisible()Z

    move-result v36

    if-eqz v36, :cond_6

    const/16 v36, 0x0

    :goto_5
    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->getWidth()I

    move-result v36

    const/high16 v37, 0x40000000

    invoke-static/range {v36 .. v37}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v35

    .line 418
    .local v35, "widthSpec":I
    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v36 .. v37}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 420
    .local v12, "heightSpec":I
    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v0, v1, v12}, Landroid/view/ViewGroup;->measure(II)V

    .line 421
    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-virtual/range {v34 .. v34}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v38

    invoke-virtual/range {v34 .. v34}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v39

    move-object/from16 v0, v34

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 428
    if-eqz v9, :cond_7

    .line 429
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesWidth:I

    .line 430
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesHeight:I

    .line 431
    invoke-static {v9}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesX:I

    .line 432
    invoke-static {v9}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesY:I

    .line 437
    :goto_6
    const v36, 0x7f0c0170

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 438
    .local v7, "check":Landroid/view/View;
    invoke-static {v7}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->checkX:I

    .line 439
    invoke-static {v7}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->checkY:I

    .line 440
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->checkWidth:I

    .line 442
    const v36, 0x7f0c0179

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 443
    .local v16, "mergedCountBackground":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->isShowMergeCount()Z

    move-result v36

    if-eqz v36, :cond_a

    .line 445
    const/16 v36, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    sget-object v36, Lcom/kingsoft/mail/browse/ConversationItemView;->MERGED_COUNT_BACKGROUND:Landroid/graphics/Bitmap;

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    sget-object v37, Lcom/kingsoft/mail/browse/ConversationItemView;->MERGED_COUNT_BACKGROUND_LARGE:Landroid/graphics/Bitmap;

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v37

    sub-int v18, v36, v37

    .line 449
    .local v18, "offset":I
    invoke-static/range {v16 .. v16}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v36

    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->isMergeCountLarge()Z

    move-result v37

    if-eqz v37, :cond_8

    .end local v18    # "offset":I
    :goto_7
    add-int v36, v36, v18

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountBackgroundX:I

    .line 450
    invoke-static/range {v16 .. v16}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountBackgroundY:I

    .line 451
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->isMergeCountLarge()Z

    move-result v36

    if-eqz v36, :cond_9

    sget-object v36, Lcom/kingsoft/mail/browse/ConversationItemView;->MERGED_COUNT_BACKGROUND_LARGE:Landroid/graphics/Bitmap;

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    :goto_8
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountBackgroundWidth:I

    .line 452
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getHeight()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountBackgroundHeight:I

    .line 459
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountBackgroundY:I

    move/from16 v36, v0

    invoke-static/range {v16 .. v16}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getLatinTopAdjustment(Landroid/widget/TextView;)I

    move-result v37

    add-int v36, v36, v37

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getBaseline()I

    move-result v37

    add-int v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountYBaseline:I

    .line 460
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountTextColor:I

    .line 461
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getTextSize()F

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountFontSize:F

    .line 463
    const v36, 0x7f0c016f

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/ImageView;

    .line 464
    .local v33, "unreadMark":Landroid/widget/ImageView;
    const v36, 0x7f0c0172

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 465
    .local v28, "sendersUnreadMark":Landroid/widget/ImageView;
    invoke-static/range {v33 .. v33}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->unreadMarkX:I

    .line 466
    invoke-static/range {v33 .. v33}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->unreadMarkY:I

    .line 467
    invoke-static/range {v28 .. v28}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersUnreadMarkX:I

    .line 468
    invoke-static/range {v28 .. v28}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersUnreadMarkY:I

    .line 470
    const v36, 0x7f0c0173

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 471
    .local v26, "senders":Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getLatinTopAdjustment(Landroid/widget/TextView;)I

    move-result v27

    .line 472
    .local v27, "sendersTopAdjust":I
    invoke-static/range {v26 .. v26}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersX:I

    .line 473
    invoke-static/range {v26 .. v26}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v36

    add-int v36, v36, v27

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersY:I

    .line 474
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getWidth()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersWidth:I

    .line 475
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getHeight()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersHeight:I

    .line 476
    invoke-static/range {v26 .. v26}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getLineCount(Landroid/widget/TextView;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersLineCount:I

    .line 477
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getLineHeight()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersLineHeight:I

    .line 478
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getTextSize()F

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersFontSize:F

    .line 480
    const v36, 0x7f0c0157

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 481
    .local v31, "subject":Landroid/widget/TextView;
    invoke-static/range {v31 .. v31}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getLatinTopAdjustment(Landroid/widget/TextView;)I

    move-result v32

    .line 482
    .local v32, "subjectTopAdjust":I
    invoke-static/range {v31 .. v31}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectX:I

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->isWide()Z

    move-result v36

    if-eqz v36, :cond_b

    .line 484
    invoke-static/range {v31 .. v31}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v36

    add-int v36, v36, v32

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectY:I

    .line 490
    :goto_a
    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getHeight()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectHeight:I

    .line 491
    invoke-static/range {v31 .. v31}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getLineCount(Landroid/widget/TextView;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectLineCount:I

    .line 492
    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getTextSize()F

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectFontSize:F

    .line 494
    const v36, 0x7f0c017a

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 495
    .local v29, "snippet":Landroid/widget/TextView;
    invoke-static/range {v29 .. v29}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getLatinTopAdjustment(Landroid/widget/TextView;)I

    move-result v30

    .line 496
    .local v30, "snippetTopAdjust":I
    invoke-static/range {v29 .. v29}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->snippetX:I

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->isWide()Z

    move-result v36

    if-eqz v36, :cond_c

    .line 498
    invoke-static/range {v29 .. v29}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v36

    add-int v36, v36, v30

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->snippetY:I

    .line 502
    :goto_b
    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getWidth()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->snippetWidth:I

    .line 503
    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getHeight()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->snippetHeight:I

    .line 504
    invoke-static/range {v29 .. v29}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getLineCount(Landroid/widget/TextView;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->snippetLineCount:I

    .line 505
    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getTextSize()F

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->snippetFontSize:F

    .line 508
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->areFoldersVisible()Z

    move-result v36

    if-eqz v36, :cond_e

    .line 510
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectX:I

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->foldersX:I

    .line 511
    invoke-static {v11}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v36

    invoke-virtual {v11}, Landroid/widget/TextView;->getWidth()I

    move-result v37

    add-int v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->foldersXEnd:I

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->isWide()Z

    move-result v36

    if-eqz v36, :cond_d

    .line 513
    invoke-static {v11}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->foldersY:I

    .line 517
    :goto_c
    invoke-virtual {v11}, Landroid/widget/TextView;->getHeight()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->foldersHeight:I

    .line 518
    invoke-virtual {v11}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->foldersTypeface:Landroid/graphics/Typeface;

    .line 519
    const v36, 0x7f0d00c9

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->foldersTextBottomPadding:I

    .line 521
    invoke-virtual {v11}, Landroid/widget/TextView;->getTextSize()F

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->foldersFontSize:F

    .line 532
    :goto_d
    const v36, 0x7f0c0118

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 533
    .local v8, "colorBlock":Landroid/view/View;
    if-eqz v8, :cond_f

    .line 534
    invoke-static {v8}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->colorBlockX:I

    .line 535
    invoke-static {v8}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->colorBlockY:I

    .line 536
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->colorBlockWidth:I

    .line 537
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->colorBlockHeight:I

    .line 559
    :goto_e
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->isPersonalIndicatorVisible()Z

    move-result v36

    if-eqz v36, :cond_10

    .line 560
    invoke-static/range {v22 .. v22}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->personalIndicatorX:I

    .line 561
    invoke-static/range {v22 .. v22}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->personalIndicatorY:I

    .line 566
    :goto_f
    const v36, 0x7f0c0174

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 567
    .local v13, "infoIcon":Landroid/view/View;
    invoke-static {v13}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v36

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v37

    add-int v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->infoIconXEnd:I

    .line 568
    invoke-static {v13}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->infoIconY:I

    .line 570
    const v36, 0x7f0c0175

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 571
    .local v10, "date":Landroid/widget/TextView;
    invoke-static {v10}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getX(Landroid/view/View;)I

    move-result v36

    invoke-virtual {v10}, Landroid/widget/TextView;->getWidth()I

    move-result v37

    add-int v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->dateXEnd:I

    .line 572
    invoke-static {v10}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->dateY:I

    .line 573
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->datePaddingLeft:I

    .line 574
    invoke-virtual {v10}, Landroid/widget/TextView;->getTextSize()F

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->dateFontSize:F

    .line 575
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->dateY:I

    move/from16 v36, v0

    invoke-static {v10}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getLatinTopAdjustment(Landroid/widget/TextView;)I

    move-result v37

    add-int v36, v36, v37

    invoke-virtual {v10}, Landroid/widget/TextView;->getBaseline()I

    move-result v37

    add-int v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->dateYBaseline:I

    .line 576
    invoke-virtual {v10}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->dateTextColor:I

    .line 578
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->isShowMergeCount()Z

    move-result v36

    if-eqz v36, :cond_11

    .line 580
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountBackgroundX:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectX:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectWidth:I

    .line 586
    :goto_10
    const v36, 0x7f0c0177

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 587
    .local v20, "paperclip":Landroid/view/View;
    invoke-static/range {v20 .. v20}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->paperclipY:I

    .line 588
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingLeft()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->paperclipPaddingLeft:I

    .line 590
    if-eqz v5, :cond_12

    .line 591
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectX:I

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsX:I

    .line 592
    invoke-static {v5}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v36

    add-int v36, v36, v27

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsY:I

    .line 593
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectWidth:I

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsWidth:I

    .line 594
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsHeight:I

    .line 597
    const v36, 0x7f0c0168

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 598
    .local v19, "overflow":Landroid/widget/TextView;
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout$LayoutParams;

    .line 600
    .local v21, "params":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsX:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsWidth:I

    move/from16 v37, v0

    add-int v36, v36, v37

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->overflowXEnd:I

    .line 601
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsY:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsHeight:I

    move/from16 v37, v0

    add-int v36, v36, v37

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->overflowYEnd:I

    .line 602
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getWidth()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->overflowDiameter:I

    .line 603
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getTextSize()F

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->overflowFontSize:F

    .line 604
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->overflowTypeface:Landroid/graphics/Typeface;

    .line 606
    const v36, 0x7f0c0169

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 607
    .local v23, "placeholder":Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->placeholderWidth:I

    .line 608
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getHeight()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->placeholderHeight:I

    .line 609
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsY:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsHeight:I

    move/from16 v37, v0

    div-int/lit8 v37, v37, 0x2

    add-int v36, v36, v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->placeholderHeight:I

    move/from16 v37, v0

    div-int/lit8 v37, v37, 0x2

    sub-int v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->placeholderY:I

    .line 612
    const v36, 0x7f0c016a

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 613
    .local v24, "progressBar":Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->progressBarWidth:I

    .line 614
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getHeight()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->progressBarHeight:I

    .line 615
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsY:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsHeight:I

    move/from16 v37, v0

    div-int/lit8 v37, v37, 0x2

    add-int v36, v36, v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->progressBarHeight:I

    move/from16 v37, v0

    div-int/lit8 v37, v37, 0x2

    sub-int v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->progressBarY:I

    .line 635
    .end local v19    # "overflow":Landroid/widget/TextView;
    .end local v21    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v23    # "placeholder":Landroid/view/View;
    .end local v24    # "progressBar":Landroid/view/View;
    :goto_11
    invoke-virtual/range {v34 .. v34}, Landroid/view/ViewGroup;->getHeight()I

    move-result v36

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->isWide()Z

    move-result v37

    if-eqz v37, :cond_1

    const/16 v27, 0x0

    .end local v27    # "sendersTopAdjust":I
    :cond_1
    add-int v36, v36, v27

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->height:I

    .line 636
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 637
    return-void

    .line 373
    .end local v6    # "attachmentPreviewsBottomMargin":Landroid/view/View;
    .end local v7    # "check":Landroid/view/View;
    .end local v8    # "colorBlock":Landroid/view/View;
    .end local v9    # "contactImagesView":Landroid/view/View;
    .end local v10    # "date":Landroid/widget/TextView;
    .end local v11    # "folders":Landroid/widget/TextView;
    .end local v12    # "heightSpec":I
    .end local v13    # "infoIcon":Landroid/view/View;
    .end local v15    # "marginVisible":Z
    .end local v16    # "mergedCountBackground":Landroid/widget/TextView;
    .end local v20    # "paperclip":Landroid/view/View;
    .end local v22    # "personalIndicator":Landroid/view/View;
    .end local v26    # "senders":Landroid/widget/TextView;
    .end local v28    # "sendersUnreadMark":Landroid/widget/ImageView;
    .end local v29    # "snippet":Landroid/widget/TextView;
    .end local v30    # "snippetTopAdjust":I
    .end local v31    # "subject":Landroid/widget/TextView;
    .end local v32    # "subjectTopAdjust":I
    .end local v33    # "unreadMark":Landroid/widget/ImageView;
    .end local v35    # "widthSpec":I
    :cond_2
    const/16 v36, 0x8

    move/from16 v0, v36

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 379
    .restart local v11    # "folders":Landroid/widget/TextView;
    :cond_3
    const/16 v36, 0x8

    goto/16 :goto_1

    .line 384
    .restart local v6    # "attachmentPreviewsBottomMargin":Landroid/view/View;
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 386
    .restart local v15    # "marginVisible":Z
    :cond_5
    const/16 v36, 0x8

    goto/16 :goto_3

    .line 392
    .restart local v9    # "contactImagesView":Landroid/view/View;
    :pswitch_0
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 395
    :pswitch_1
    const/16 v36, 0x8

    move/from16 v0, v36

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 396
    const/4 v9, 0x0

    .line 397
    goto/16 :goto_4

    .line 399
    :pswitch_2
    const/16 v36, 0x8

    move/from16 v0, v36

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 413
    .restart local v22    # "personalIndicator":Landroid/view/View;
    :cond_6
    const/16 v36, 0x8

    goto/16 :goto_5

    .line 434
    .restart local v12    # "heightSpec":I
    .restart local v35    # "widthSpec":I
    :cond_7
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesHeight:I

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesWidth:I

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesY:I

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesX:I

    goto/16 :goto_6

    .line 449
    .restart local v7    # "check":Landroid/view/View;
    .restart local v16    # "mergedCountBackground":Landroid/widget/TextView;
    .restart local v18    # "offset":I
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 451
    .end local v18    # "offset":I
    :cond_9
    sget-object v36, Lcom/kingsoft/mail/browse/ConversationItemView;->MERGED_COUNT_BACKGROUND:Landroid/graphics/Bitmap;

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    goto/16 :goto_8

    .line 456
    :cond_a
    const/16 v36, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountBackgroundHeight:I

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountBackgroundWidth:I

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountBackgroundY:I

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountBackgroundX:I

    goto/16 :goto_9

    .line 486
    .restart local v26    # "senders":Landroid/widget/TextView;
    .restart local v27    # "sendersTopAdjust":I
    .restart local v28    # "sendersUnreadMark":Landroid/widget/ImageView;
    .restart local v31    # "subject":Landroid/widget/TextView;
    .restart local v32    # "subjectTopAdjust":I
    .restart local v33    # "unreadMark":Landroid/widget/ImageView;
    :cond_b
    invoke-static/range {v31 .. v31}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v36

    add-int v36, v36, v27

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectY:I

    goto/16 :goto_a

    .line 500
    .restart local v29    # "snippet":Landroid/widget/TextView;
    .restart local v30    # "snippetTopAdjust":I
    :cond_c
    invoke-static/range {v29 .. v29}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v36

    add-int v36, v36, v30

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->snippetY:I

    goto/16 :goto_b

    .line 515
    :cond_d
    invoke-static {v11}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getY(Landroid/view/View;)I

    move-result v36

    add-int v36, v36, v27

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->foldersY:I

    goto/16 :goto_c

    .line 523
    :cond_e
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->foldersX:I

    .line 524
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->foldersXEnd:I

    .line 525
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->foldersY:I

    .line 526
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->foldersHeight:I

    .line 527
    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->foldersTypeface:Landroid/graphics/Typeface;

    .line 528
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->foldersTextBottomPadding:I

    .line 529
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->foldersFontSize:F

    goto/16 :goto_d

    .line 539
    .restart local v8    # "colorBlock":Landroid/view/View;
    :cond_f
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->colorBlockHeight:I

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->colorBlockWidth:I

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->colorBlockY:I

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->colorBlockX:I

    goto/16 :goto_e

    .line 563
    :cond_10
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->personalIndicatorY:I

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->personalIndicatorX:I

    goto/16 :goto_f

    .line 584
    .restart local v10    # "date":Landroid/widget/TextView;
    .restart local v13    # "infoIcon":Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->snippetWidth:I

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectWidth:I

    goto/16 :goto_10

    .line 618
    .restart local v20    # "paperclip":Landroid/view/View;
    :cond_12
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsX:I

    .line 619
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsY:I

    .line 620
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsWidth:I

    .line 621
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsHeight:I

    .line 622
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->overflowXEnd:I

    .line 623
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->overflowYEnd:I

    .line 624
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->overflowDiameter:I

    .line 625
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->overflowFontSize:F

    .line 626
    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->overflowTypeface:Landroid/graphics/Typeface;

    .line 627
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->placeholderY:I

    .line 628
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->placeholderWidth:I

    .line 629
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->placeholderHeight:I

    .line 630
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->progressBarY:I

    .line 631
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->progressBarWidth:I

    .line 632
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->progressBarHeight:I

    goto/16 :goto_11

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private calculateMode(Landroid/content/res/Resources;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;)I
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "config"    # Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    .prologue
    .line 665
    invoke-virtual {p2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->getViewMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 676
    const v0, 0x7f0e0014

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    return v0

    .line 669
    :pswitch_0
    invoke-virtual {p2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mMinListWidthForWide:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 673
    :pswitch_1
    const v0, 0x7f0e0015

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    .line 665
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static displaySendersInline(I)Z
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 761
    packed-switch p0, :pswitch_data_0

    .line 767
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown conversation header view mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :pswitch_0
    const/4 v0, 0x0

    .line 765
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 761
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static forConfig(Landroid/content/Context;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;)Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;
    .param p2, "cache"    # Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;

    .prologue
    .line 777
    # invokes: Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->getCacheKey()I
    invoke-static {p1}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->access$000(Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;)I

    move-result v0

    .line 778
    .local v0, "cacheKey":I
    invoke-virtual {p2, v0}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->getCoordinates(I)Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    move-result-object v1

    .line 779
    .local v1, "coordinates":Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 784
    .end local v1    # "coordinates":Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;
    .local v2, "coordinates":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 782
    .end local v2    # "coordinates":Ljava/lang/Object;
    .restart local v1    # "coordinates":Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;
    :cond_0
    new-instance v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    .end local v1    # "coordinates":Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;
    invoke-direct {v1, p0, p1, p2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;)V

    .line 783
    .restart local v1    # "coordinates":Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;
    invoke-virtual {p2, v0, v1}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->put(ILcom/kingsoft/mail/browse/ConversationItemViewCoordinates;)V

    move-object v2, v1

    .line 784
    .restart local v2    # "coordinates":Ljava/lang/Object;
    goto :goto_0
.end method

.method private getAttachmentPreviewsHeight(Landroid/content/Context;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attachmentPreviewMode"    # I

    .prologue
    .line 682
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 683
    .local v0, "res":Landroid/content/res/Resources;
    packed-switch p2, :pswitch_data_0

    .line 690
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 685
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->isWide()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0d003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    :goto_1
    float-to-int v1, v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0d003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_1

    .line 688
    :pswitch_1
    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    .line 683
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getColorBlockHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 753
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 754
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->COLOR_BLOCK_HEIGHT:I

    if-gtz v1, :cond_0

    .line 755
    const v1, 0x7f0d006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->COLOR_BLOCK_HEIGHT:I

    .line 757
    :cond_0
    sget v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->COLOR_BLOCK_HEIGHT:I

    return v1
.end method

.method public static getColorBlockWidth(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 744
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 745
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->COLOR_BLOCK_WIDTH:I

    if-gtz v1, :cond_0

    .line 746
    const v1, 0x7f0d006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->COLOR_BLOCK_WIDTH:I

    .line 748
    :cond_0
    sget v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->COLOR_BLOCK_WIDTH:I

    return v1
.end method

.method private static getLatinTopAdjustment(Landroid/widget/TextView;)I
    .locals 3
    .param p0, "t"    # Landroid/widget/TextView;

    .prologue
    .line 657
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 658
    .local v0, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private static getLineCount(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 723
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->isRunningJellybeanOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    .line 726
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method public static getSendersLength(Landroid/content/Context;IZ)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "hasAttachments"    # Z

    .prologue
    .line 734
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 735
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz p2, :cond_0

    .line 736
    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    aget v1, v1, p1

    .line 738
    :goto_0
    return v1

    :cond_0
    const v1, 0x7f090024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    aget v1, v1, p1

    goto :goto_0
.end method

.method private static getX(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 698
    const/4 v0, 0x0

    .line 699
    .local v0, "x":I
    :goto_0
    if-eqz p0, :cond_0

    .line 700
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 701
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .restart local p0    # "view":Landroid/view/View;
    goto :goto_0

    .line 703
    :cond_0
    return v0
.end method

.method private static getY(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 710
    const/4 v0, 0x0

    .line 711
    .local v0, "y":I
    :goto_0
    if-eqz p0, :cond_0

    .line 712
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 713
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .restart local p0    # "view":Landroid/view/View;
    goto :goto_0

    .line 715
    :cond_0
    return v0
.end method

.method public static isWideMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 805
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFolderCellWidth()I
    .locals 1

    .prologue
    .line 793
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mFolderCellWidth:I

    return v0
.end method

.method public getFolderMinimumWidth()I
    .locals 1

    .prologue
    .line 801
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mFolderMinimumWidth:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mMode:I

    return v0
.end method

.method public isWide()Z
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
