.class public Lcom/kingsoft/mail/ui/DividedImageCanvas;
.super Ljava/lang/Object;
.source "DividedImageCanvas.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/ImageCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/DividedImageCanvas$InvalidateCallback;
    }
.end annotation


# static fields
.field public static final MAX_DIVISIONS:I = 0x4

.field private static final sClearPaint:Landroid/graphics/Paint;

.field private static final sDest:Landroid/graphics/Rect;

.field private static sDividerColor:I

.field private static sDividerLineWidth:I

.field private static final sPaint:Landroid/graphics/Paint;

.field private static final sSrc:Landroid/graphics/Rect;


# instance fields
.field private mBitmapValid:Z

.field private final mCallback:Lcom/kingsoft/mail/ui/DividedImageCanvas$InvalidateCallback;

.field private mCanvas:Landroid/graphics/Canvas;

.field private final mContext:Landroid/content/Context;

.field private mDividedBitmap:Landroid/graphics/Bitmap;

.field private final mDivisionImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mDivisionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGeneration:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sPaint:Landroid/graphics/Paint;

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sClearPaint:Landroid/graphics/Paint;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sSrc:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sDest:Landroid/graphics/Rect;

    .line 75
    const/4 v0, -0x1

    sput v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sDividerLineWidth:I

    .line 79
    sget-object v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sClearPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kingsoft/mail/ui/DividedImageCanvas$InvalidateCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/kingsoft/mail/ui/DividedImageCanvas$InvalidateCallback;

    .prologue
    const/4 v1, 0x4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {v1}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mBitmapValid:Z

    .line 83
    iput-object p1, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mCallback:Lcom/kingsoft/mail/ui/DividedImageCanvas$InvalidateCallback;

    .line 85
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->setupDividerLines()V

    .line 86
    return-void
.end method

.method private addOrClearDivisionImage(Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 17
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "key"    # Ljava/lang/Object;

    .prologue
    .line 243
    const-string/jumbo v2, "add or clear division image"

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->transformKeyToDivisionId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 245
    .local v15, "pos":Ljava/lang/Integer;
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_3

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 247
    const/4 v14, 0x0

    .line 248
    .local v14, "complete":Z
    move-object/from16 v0, p0

    iget v6, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mWidth:I

    .line 249
    .local v6, "width":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mHeight:I

    .line 251
    .local v7, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v16

    .line 252
    .local v16, "size":I
    packed-switch v16, :pswitch_data_0

    .line 303
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 317
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->isPartialBitmapComplete()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_1
    const/4 v14, 0x1

    .line 320
    :goto_1
    if-eqz v14, :cond_2

    .line 322
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->drawVerticalDivider(II)V

    .line 323
    const/4 v2, 0x0

    div-int/lit8 v3, v7, 0x2

    div-int/lit8 v4, v7, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v4}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->drawHorizontalDivider(IIII)V

    .line 328
    :cond_2
    :goto_2
    :pswitch_0
    if-eqz v14, :cond_3

    .line 329
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mBitmapValid:Z

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mCallback:Lcom/kingsoft/mail/ui/DividedImageCanvas$InvalidateCallback;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/DividedImageCanvas$InvalidateCallback;->invalidate()V

    .line 331
    const/16 p1, 0x0

    .line 334
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v14    # "complete":Z
    .end local v16    # "size":I
    :cond_3
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 335
    return-void

    .line 258
    .restart local v6    # "width":I
    .restart local v7    # "height":I
    .restart local v14    # "complete":Z
    .restart local v16    # "size":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    .line 259
    const/4 v14, 0x1

    .line 260
    goto :goto_2

    .line 263
    :pswitch_2
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 271
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->isPartialBitmapComplete()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v14, 0x1

    .line 273
    :goto_4
    if-eqz v14, :cond_2

    .line 275
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->drawVerticalDivider(II)V

    goto :goto_2

    .line 265
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    const/4 v11, 0x0

    div-int/lit8 v12, v6, 0x2

    move-object/from16 v8, p0

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    goto :goto_3

    .line 268
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    div-int/lit8 v4, v6, 0x2

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    goto :goto_3

    .line 271
    :cond_6
    const/4 v14, 0x0

    goto :goto_4

    .line 282
    :pswitch_5
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_3

    .line 293
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->isPartialBitmapComplete()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const/4 v14, 0x1

    .line 295
    :goto_6
    if-eqz v14, :cond_2

    .line 297
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->drawVerticalDivider(II)V

    .line 298
    div-int/lit8 v2, v6, 0x2

    div-int/lit8 v3, v7, 0x2

    div-int/lit8 v4, v7, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v4}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->drawHorizontalDivider(IIII)V

    goto/16 :goto_2

    .line 284
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    const/4 v11, 0x0

    div-int/lit8 v12, v6, 0x2

    move-object/from16 v8, p0

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    goto :goto_5

    .line 287
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    div-int/lit8 v10, v6, 0x2

    const/4 v11, 0x0

    div-int/lit8 v13, v7, 0x2

    move-object/from16 v8, p0

    move v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    goto :goto_5

    .line 290
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    div-int/lit8 v4, v6, 0x2

    div-int/lit8 v5, v7, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    goto :goto_5

    .line 293
    :cond_9
    const/4 v14, 0x0

    goto :goto_6

    .line 305
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    const/4 v11, 0x0

    div-int/lit8 v12, v6, 0x2

    div-int/lit8 v13, v7, 0x2

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    goto/16 :goto_0

    .line 308
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    div-int/lit8 v10, v6, 0x2

    const/4 v11, 0x0

    div-int/lit8 v13, v7, 0x2

    move-object/from16 v8, p0

    move v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    goto/16 :goto_0

    .line 311
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    div-int/lit8 v11, v7, 0x2

    div-int/lit8 v12, v6, 0x2

    move-object/from16 v8, p0

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    goto/16 :goto_0

    .line 314
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    div-int/lit8 v4, v6, 0x2

    div-int/lit8 v5, v7, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Bitmap;IIII)V

    goto/16 :goto_0

    .line 317
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 303
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 263
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 282
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private draw(Landroid/graphics/Bitmap;IIII)V
    .locals 9
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 147
    if-eqz p1, :cond_1

    .line 149
    const/4 v8, 0x0

    .line 150
    .local v8, "srcTop":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 151
    .local v7, "srcBottom":I
    sub-int v6, p5, p3

    .line 152
    .local v6, "destHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v1, p5, p3

    if-le v0, v1, :cond_0

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v6, 0x2

    sub-int v8, v0, v1

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v6, 0x2

    add-int v7, v0, v1

    .line 159
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sSrc:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 160
    sget-object v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sDest:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 161
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mCanvas:Landroid/graphics/Canvas;

    sget-object v1, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sDest:Landroid/graphics/Rect;

    sget-object v2, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sClearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 163
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mCanvas:Landroid/graphics/Canvas;

    sget-object v1, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sSrc:Landroid/graphics/Rect;

    sget-object v2, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sDest:Landroid/graphics/Rect;

    sget-object v3, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 168
    .end local v6    # "destHeight":I
    .end local v7    # "srcBottom":I
    .end local v8    # "srcTop":I
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    sget-object v5, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sClearPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private setupDividerLines()V
    .locals 3

    .prologue
    .line 343
    sget v1, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sDividerLineWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 345
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d0126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sDividerLineWidth:I

    .line 347
    const v1, 0x7f0b009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sDividerColor:I

    .line 349
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private static setupPaint()V
    .locals 2

    .prologue
    .line 352
    sget-object v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sPaint:Landroid/graphics/Paint;

    sget v1, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sDividerLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 353
    sget-object v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sPaint:Landroid/graphics/Paint;

    sget v1, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sDividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    return-void
.end method


# virtual methods
.method public addDivisionImage(Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "key"    # Ljava/lang/Object;

    .prologue
    .line 234
    if-eqz p1, :cond_0

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->addOrClearDivisionImage(Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 237
    :cond_0
    return-void
.end method

.method public clearDivisionImage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->addOrClearDivisionImage(Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDividedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mBitmapValid:Z

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDividedBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 382
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDividedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mBitmapValid:Z

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDividedBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 391
    :cond_0
    return-void
.end method

.method protected drawHorizontalDivider(IIII)V
    .locals 6
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .prologue
    .line 363
    invoke-static {}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->setupPaint()V

    .line 364
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    sget-object v5, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 365
    return-void
.end method

.method public drawImage(Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "key"    # Ljava/lang/Object;

    .prologue
    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->addDivisionImage(Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 226
    return-void
.end method

.method protected drawVerticalDivider(II)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 357
    div-int/lit8 v6, p1, 0x2

    .local v6, "x1":I
    const/4 v8, 0x0

    .local v8, "y1":I
    div-int/lit8 v7, p1, 0x2

    .local v7, "x2":I
    move v9, p2

    .line 358
    .local v9, "y2":I
    invoke-static {}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->setupPaint()V

    .line 359
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v1, v6

    int-to-float v2, v8

    int-to-float v3, v7

    int-to-float v4, v9

    sget-object v5, Lcom/kingsoft/mail/ui/DividedImageCanvas;->sPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 360
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDesiredDimensions(Ljava/lang/Object;Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "outDim"    # Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    .prologue
    .line 178
    const-string/jumbo v5, "get desired dimensions"

    invoke-static {v5}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 179
    const/4 v4, 0x0

    .local v4, "w":I
    const/4 v0, 0x0

    .line 180
    .local v0, "h":I
    const/4 v2, 0x0

    .line 181
    .local v2, "scale":F
    iget-object v5, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->transformKeyToDivisionId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 182
    .local v1, "pos":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_0

    .line 183
    iget-object v5, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v3

    .line 184
    .local v3, "size":I
    packed-switch v3, :pswitch_data_0

    .line 217
    .end local v3    # "size":I
    :cond_0
    :goto_0
    :pswitch_0
    iput v4, p2, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    .line 218
    iput v0, p2, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    .line 219
    const/high16 v5, 0x3f400000

    iput v5, p2, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->scale:F

    .line 220
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 221
    return-void

    .line 188
    .restart local v3    # "size":I
    :pswitch_1
    iget v4, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mWidth:I

    .line 189
    iget v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mHeight:I

    .line 190
    const/high16 v2, 0x3f800000

    .line 191
    goto :goto_0

    .line 193
    :pswitch_2
    iget v5, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mWidth:I

    div-int/lit8 v4, v5, 0x2

    .line 194
    iget v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mHeight:I

    .line 195
    const/high16 v2, 0x3f000000

    .line 196
    goto :goto_0

    .line 198
    :pswitch_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 205
    iget v5, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mWidth:I

    div-int/lit8 v4, v5, 0x2

    .line 206
    iget v5, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mHeight:I

    div-int/lit8 v0, v5, 0x2

    .line 207
    const/high16 v2, 0x3e800000

    .line 209
    goto :goto_0

    .line 200
    :pswitch_4
    iget v5, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mWidth:I

    div-int/lit8 v4, v5, 0x2

    .line 201
    iget v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mHeight:I

    .line 202
    const/high16 v2, 0x3f000000

    .line 203
    goto :goto_0

    .line 211
    :pswitch_5
    iget v5, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mWidth:I

    div-int/lit8 v4, v5, 0x2

    .line 212
    iget v5, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mHeight:I

    div-int/lit8 v0, v5, 0x2

    .line 213
    const/high16 v2, 0x3e800000

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 198
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public getDivisionCount()I
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getDivisionIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGeneration()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mGeneration:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mWidth:I

    return v0
.end method

.method public hasImageFor(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 338
    iget-object v1, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->transformKeyToDivisionId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 339
    .local v0, "pos":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isPartialBitmapComplete()Z
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDividedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mBitmapValid:Z

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 399
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 400
    iget v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mGeneration:I

    .line 401
    return-void
.end method

.method public setDimensions(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 414
    const-string/jumbo v1, "set dimensions"

    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 415
    iget v1, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mWidth:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mHeight:I

    if-ne v1, p2, :cond_0

    .line 416
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 431
    :goto_0
    return-void

    .line 420
    :cond_0
    iput p1, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mWidth:I

    .line 421
    iput p2, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mHeight:I

    .line 423
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDividedBitmap:Landroid/graphics/Bitmap;

    .line 424
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDividedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mCanvas:Landroid/graphics/Canvas;

    .line 426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->getDivisionCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 429
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mBitmapValid:Z

    .line 430
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    goto :goto_0
.end method

.method public setDivisionIds(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_0

    .line 118
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "too many divisionIds: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->getDivisionCount()I

    move-result v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    const/4 v4, 0x1

    .line 122
    .local v4, "needClear":Z
    :goto_0
    if-nez v4, :cond_2

    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 124
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->transformKeyToDivisionId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "divisionId":Ljava/lang/String;
    iget-object v5, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v1, :cond_4

    .line 127
    :cond_1
    const/4 v4, 0x1

    .line 133
    .end local v0    # "divisionId":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    if-eqz v4, :cond_5

    .line 134
    iget-object v5, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 135
    iget-object v5, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 136
    const/4 v1, 0x0

    .line 137
    .restart local v1    # "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 138
    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->transformKeyToDivisionId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .restart local v0    # "divisionId":Ljava/lang/String;
    iget-object v5, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v5, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v1, v1, 0x1

    .line 142
    goto :goto_2

    .line 121
    .end local v0    # "divisionId":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "needClear":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 123
    .restart local v0    # "divisionId":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v4    # "needClear":Z
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    .end local v0    # "divisionId":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string/jumbo v1, " mDivisionMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v1, " mDivisionImages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mDivisionImages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    const-string/jumbo v1, " mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v1, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string/jumbo v1, " mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lcom/kingsoft/mail/ui/DividedImageCanvas;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected transformKeyToDivisionId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
