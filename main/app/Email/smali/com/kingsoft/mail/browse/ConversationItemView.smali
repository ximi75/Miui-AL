.class public Lcom/kingsoft/mail/browse/ConversationItemView;
.super Landroid/view/View;
.source "ConversationItemView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/kingsoft/mail/browse/ToggleableItem;
.implements Lcom/kingsoft/mail/ui/DividedImageCanvas$InvalidateCallback;
.implements Lcom/kingsoft/mail/ui/SwipeableItemView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;,
        Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;,
        Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;,
        Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;
    }
.end annotation


# static fields
.field private static ATTACHMENT:Landroid/graphics/Bitmap; = null

.field private static CHECK:Landroid/graphics/Bitmap; = null

.field private static IMPORTANT_ONLY_TO_ME:Landroid/graphics/Bitmap; = null

.field private static IMPORTANT_TO_ME_AND_OTHERS:Landroid/graphics/Bitmap; = null

.field private static IMPORTANT_TO_OTHERS:Landroid/graphics/Bitmap; = null

.field private static final LOG_TAG:Ljava/lang/String;

.field private static MARK_STAR:Landroid/graphics/Bitmap; = null

.field private static final MAX_MERGED_COUNT:I = 0x63

.field private static final MAX_MERGED_COUNT_DISPLAY:Ljava/lang/String; = "99+"

.field private static final MAX_SUBJECT_LENGTH:I = 0x64

.field public static MERGED_COUNT_BACKGROUND:Landroid/graphics/Bitmap; = null

.field public static MERGED_COUNT_BACKGROUND_LARGE:Landroid/graphics/Bitmap; = null

.field private static ONLY_TO_ME:Landroid/graphics/Bitmap; = null

.field private static final PERF_LAYOUT_ITERATIONS:I = 0x32

.field private static final PERF_TAG_CALCULATE_COORDINATES:Ljava/lang/String; = "CCHV.coordinates"

.field private static final PERF_TAG_CALCULATE_FOLDERS:Ljava/lang/String; = "CCHV.folders"

.field private static final PERF_TAG_CALCULATE_SENDER_SUBJECT:Ljava/lang/String; = "CCHV.sendersubj"

.field private static final PERF_TAG_CALCULATE_TEXTS_BITMAPS:Ljava/lang/String; = "CCHV.txtsbmps"

.field private static final PERF_TAG_LAYOUT:Ljava/lang/String; = "CCHV.layout"

.field private static PLACEHOLDER:Landroid/graphics/drawable/Drawable;

.field private static PROGRESS_BAR:Landroid/graphics/drawable/Drawable;

.field private static RIGHT_EDGE_TABLET:Landroid/graphics/drawable/Drawable;

.field private static STAR_OFF:Landroid/graphics/Bitmap;

.field private static STAR_ON:Landroid/graphics/Bitmap;

.field private static STATE_CALENDAR_INVITE:Landroid/graphics/Bitmap;

.field private static STATE_FORWARDED:Landroid/graphics/Bitmap;

.field private static STATE_REPLIED:Landroid/graphics/Bitmap;

.field private static STATE_REPLIED_AND_FORWARDED:Landroid/graphics/Bitmap;

.field private static TO_ME_AND_OTHERS:Landroid/graphics/Bitmap;

.field private static UNCHECK:Landroid/graphics/Bitmap;

.field private static UNKOWN_HEADER_ICON:Landroid/graphics/Bitmap;

.field private static UNREAD_MARK:Landroid/graphics/Bitmap;

.field private static VISIBLE_CONVERSATION_CARET:Landroid/graphics/Bitmap;

.field private static sCabAnimationDuration:I

.field private static final sCheckBackgroundPaint:Landroid/graphics/Paint;

.field private static sContactPhotoManager:Lcom/kingsoft/mail/photomanager/ContactPhotoManager;

.field private static sDateTextColor:I

.field private static sElidedPaddingToken:Ljava/lang/String;

.field private static sFoldersLeftPadding:I

.field private static final sFoldersPaint:Landroid/text/TextPaint;

.field private static sHorizontalAnimationDuration:I

.field private static sLayoutCount:I

.field private static sOverflowCountMax:I

.field private static final sPaint:Landroid/text/TextPaint;

.field private static sScrollSlop:I

.field private static sSenderImageTouchSlop:I

.field private static sSenderTextSpan:Landroid/text/style/TextAppearanceSpan;

.field private static sSendersSplitToken:Ljava/lang/String;

.field private static sSendersTextColorRead:I

.field private static sSendersTextColorUnread:I

.field private static sShrinkAnimationDuration:I

.field private static sSlideAnimationDuration:I

.field private static sSnippetTextSpan:Landroid/text/style/TextAppearanceSpan;

.field private static sStarTouchSlop:I

.field private static sSubjectTextSpan:Landroid/text/style/TextAppearanceSpan;

.field private static sTimer:Lcom/kingsoft/mail/perf/Timer;

.field private static sendersUnreadMarkMarginRight:I


# instance fields
.field private final SENDER_NAME_DEL_COUNT:I

.field private final SUSPENSION_POINTS:Ljava/lang/String;

.field private displayedSnippetStringBuilder:Landroid/text/Spannable;

.field private displayedSubjectStringBuilder:Landroid/text/Spannable;

.field private isDragCancelled:Z

.field private mAccount:Ljava/lang/String;

.field private mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

.field private mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

.field private mAnimatedHeightFraction:F

.field private mAttachmentPreviewsEnabled:Z

.field private mAttachmentX:I

.field private final mAttachmentsView:Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;

.field private mBackgroundOverrideResId:I

.field private final mBackgrounds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mCheckMatrix:Landroid/graphics/Matrix;

.field private mColorBlockX:I

.field private mConfig:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

.field private final mContactImagesHolder:Lcom/kingsoft/mail/ui/DividedImageCanvas;

.field private final mContext:Landroid/content/Context;

.field private mConversationItemAreaClickListener:Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;

.field private mConversationItemUnreadAnimation:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

.field private mConversationListListener:Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;

.field mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mDateX:I

.field private mDisplayedFolder:Lcom/kingsoft/mail/providers/Folder;

.field private mDownEvent:Z

.field private mForwardStateX:I

.field private mGadgetMode:I

.field public mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

.field private mInSelectionMode:Z

.field private mInfoIconX:I

.field private final mIsExpansiveTablet:Z

.field private mLastSelectedId:J

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private final mListCollapsible:Z

.field private mMergedCountX:I

.field private mPaperclipX:I

.field private mParallaxDirectionAlternative:Z

.field private mParallaxSpeedAlternative:Z

.field private mPhotoBitmap:Landroid/graphics/Bitmap;

.field private final mPhotoFlipAnimator:Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;

.field private final mPhotoFlipMatrix:Landroid/graphics/Matrix;

.field private mPhotoRect:Landroid/graphics/Rect;

.field private mPostionType:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

.field private mPreviousMode:I

.field private mReplyStateX:I

.field private mSearchParams:Ljava/lang/String;

.field private mSelected:Z

.field private mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

.field private final mSendersTextView:Landroid/widget/TextView;

.field private mSendersWidth:I

.field private final mSnippetTextView:Landroid/widget/TextView;

.field private mStarEnabled:Z

.field private final mSubjectTextView:Landroid/widget/TextView;

.field private mSwipeEnabled:Z

.field private final mTabletDevice:Z

.field private mViewWidth:I

.field private markStarX:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 123
    const/4 v0, 0x0

    sput v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sLayoutCount:I

    .line 138
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->LOG_TAG:Ljava/lang/String;

    .line 189
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    .line 190
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sFoldersPaint:Landroid/text/TextPaint;

    .line 191
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sCheckBackgroundPaint:Landroid/graphics/Paint;

    .line 337
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 338
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sFoldersPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 340
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sCheckBackgroundPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 341
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 507
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 140
    const-string/jumbo v0, "..."

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->SUSPENSION_POINTS:Ljava/lang/String;

    .line 141
    const/4 v0, 0x5

    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->SENDER_NAME_DEL_COUNT:I

    .line 194
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mBackgrounds:Landroid/util/SparseArray;

    .line 197
    iput v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mViewWidth:I

    .line 231
    iput-boolean v8, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelected:Z

    .line 239
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAnimatedHeightFraction:F

    .line 265
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPhotoFlipMatrix:Landroid/graphics/Matrix;

    .line 266
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCheckMatrix:Landroid/graphics/Matrix;

    .line 278
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mLastSelectedId:J

    .line 281
    iput v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mBackgroundOverrideResId:I

    .line 283
    iput-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPhotoBitmap:Landroid/graphics/Bitmap;

    .line 284
    iput-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPhotoRect:Landroid/graphics/Rect;

    .line 290
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;->first:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPostionType:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    .line 334
    iput-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemAreaClickListener:Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;

    .line 508
    const-string/jumbo v0, "CIVC constructor"

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0, v9}, Lcom/kingsoft/mail/browse/ConversationItemView;->setClickable(Z)V

    .line 510
    invoke-virtual {p0, v9}, Lcom/kingsoft/mail/browse/ConversationItemView;->setLongClickable(Z)V

    .line 511
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    .line 512
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 513
    .local v7, "res":Landroid/content/res/Resources;
    invoke-static {v7}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mTabletDevice:Z

    .line 514
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mTabletDevice:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0a0019

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mIsExpansiveTablet:Z

    .line 516
    const v0, 0x7f0a000d

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mListCollapsible:Z

    .line 518
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->STAR_OFF:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 519
    const v0, 0x7f020206

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->UNKOWN_HEADER_ICON:Landroid/graphics/Bitmap;

    .line 522
    const v0, 0x7f020187

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->STAR_OFF:Landroid/graphics/Bitmap;

    .line 524
    const v0, 0x7f020188

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->STAR_ON:Landroid/graphics/Bitmap;

    .line 527
    const v0, 0x7f02019a

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->MARK_STAR:Landroid/graphics/Bitmap;

    .line 530
    const v0, 0x7f0200e8

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->CHECK:Landroid/graphics/Bitmap;

    .line 532
    const v0, 0x7f0200e7

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->UNCHECK:Landroid/graphics/Bitmap;

    .line 535
    const v0, 0x7f020181

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->ATTACHMENT:Landroid/graphics/Bitmap;

    .line 538
    const v0, 0x7f0201c1

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->UNREAD_MARK:Landroid/graphics/Bitmap;

    .line 542
    const v0, 0x7f0201b2

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->MERGED_COUNT_BACKGROUND:Landroid/graphics/Bitmap;

    .line 547
    const v0, 0x7f0201b3

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->MERGED_COUNT_BACKGROUND_LARGE:Landroid/graphics/Bitmap;

    .line 551
    const v0, 0x7f020193

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->ONLY_TO_ME:Landroid/graphics/Bitmap;

    .line 553
    const v0, 0x7f020196

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->TO_ME_AND_OTHERS:Landroid/graphics/Bitmap;

    .line 555
    const v0, 0x7f020194

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->IMPORTANT_ONLY_TO_ME:Landroid/graphics/Bitmap;

    .line 557
    const v0, 0x7f020197

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->IMPORTANT_TO_ME_AND_OTHERS:Landroid/graphics/Bitmap;

    .line 559
    const v0, 0x7f020195

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->IMPORTANT_TO_OTHERS:Landroid/graphics/Bitmap;

    .line 561
    const v0, 0x7f020186

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->STATE_REPLIED:Landroid/graphics/Bitmap;

    .line 563
    const v0, 0x7f020183

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->STATE_FORWARDED:Landroid/graphics/Bitmap;

    .line 565
    const v0, 0x7f020185

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->STATE_REPLIED_AND_FORWARDED:Landroid/graphics/Bitmap;

    .line 567
    const v0, 0x7f020184

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->STATE_CALENDAR_INVITE:Landroid/graphics/Bitmap;

    .line 569
    const v0, 0x7f0200f4

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->VISIBLE_CONVERSATION_CARET:Landroid/graphics/Bitmap;

    .line 571
    const v0, 0x7f0201cb

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->RIGHT_EDGE_TABLET:Landroid/graphics/drawable/Drawable;

    .line 572
    const v0, 0x7f020182

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->PLACEHOLDER:Landroid/graphics/drawable/Drawable;

    .line 573
    const v0, 0x7f0201ec

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->PROGRESS_BAR:Landroid/graphics/drawable/Drawable;

    .line 576
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f110077

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sSenderTextSpan:Landroid/text/style/TextAppearanceSpan;

    .line 579
    const v0, 0x7f0b008f

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sSendersTextColorRead:I

    .line 581
    const v0, 0x7f0b0091

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sSendersTextColorUnread:I

    .line 584
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f110083

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sSubjectTextSpan:Landroid/text/style/TextAppearanceSpan;

    .line 586
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f110081

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sSnippetTextSpan:Landroid/text/style/TextAppearanceSpan;

    .line 589
    const v0, 0x7f0d011d

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sStarTouchSlop:I

    .line 590
    const v0, 0x7f0d010a

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sSenderImageTouchSlop:I

    .line 592
    const v0, 0x7f0e003a

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sShrinkAnimationDuration:I

    .line 594
    const v0, 0x7f0e003b

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sSlideAnimationDuration:I

    .line 596
    const v0, 0x7f0e0029

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sHorizontalAnimationDuration:I

    .line 599
    const v0, 0x7f100373

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sSendersSplitToken:Ljava/lang/String;

    .line 600
    const v0, 0x7f100198

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sElidedPaddingToken:Ljava/lang/String;

    .line 601
    const v0, 0x7f0e003d

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sScrollSlop:I

    .line 602
    const v0, 0x7f0d00c8

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sFoldersLeftPadding:I

    .line 604
    invoke-static {p1}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/kingsoft/mail/photomanager/ContactPhotoManager;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sContactPhotoManager:Lcom/kingsoft/mail/photomanager/ContactPhotoManager;

    .line 606
    const v0, 0x7f0e0004

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sOverflowCountMax:I

    .line 607
    const v0, 0x7f0e0011

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sCabAnimationDuration:I

    .line 609
    const v0, 0x7f0d0147

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sendersUnreadMarkMarginRight:I

    .line 613
    :cond_0
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationItemView$1;

    const-string/jumbo v2, "photoFlipFraction"

    const/4 v3, 0x0

    const/high16 v4, 0x40000000

    sget v1, Lcom/kingsoft/mail/browse/ConversationItemView;->sCabAnimationDuration:I

    int-to-long v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/mail/browse/ConversationItemView$1;-><init>(Lcom/kingsoft/mail/browse/ConversationItemView;Ljava/lang/String;FFJ)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPhotoFlipAnimator:Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;

    .line 632
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersTextView:Landroid/widget/TextView;

    .line 633
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 635
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSubjectTextView:Landroid/widget/TextView;

    .line 636
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSubjectTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 637
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 638
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 639
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSnippetTextView:Landroid/widget/TextView;

    .line 640
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSnippetTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 641
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSnippetTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 642
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSnippetTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 644
    new-instance v0, Lcom/kingsoft/mail/ui/DividedImageCanvas;

    new-instance v1, Lcom/kingsoft/mail/browse/ConversationItemView$2;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/browse/ConversationItemView$2;-><init>(Lcom/kingsoft/mail/browse/ConversationItemView;)V

    invoke-direct {v0, p1, v1}, Lcom/kingsoft/mail/ui/DividedImageCanvas;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/ui/DividedImageCanvas$InvalidateCallback;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContactImagesHolder:Lcom/kingsoft/mail/ui/DividedImageCanvas;

    .line 661
    new-instance v0, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;

    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView;->PLACEHOLDER:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/kingsoft/mail/browse/ConversationItemView;->PROGRESS_BAR:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v7, v1, v2}, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentsView:Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;

    .line 663
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentsView:Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 665
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 666
    return-void

    :cond_1
    move v0, v8

    .line 514
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/browse/ConversationItemView;)Lcom/kingsoft/mail/ui/DividedImageCanvas;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationItemView;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContactImagesHolder:Lcom/kingsoft/mail/ui/DividedImageCanvas;

    return-object v0
.end method

.method static synthetic access$100()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$302(Lcom/kingsoft/mail/browse/ConversationItemView;J)J
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationItemView;
    .param p1, "x1"    # J

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mLastSelectedId:J

    return-wide p1
.end method

.method private beginDragMode()Z
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 2931
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mLastTouchX:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mLastTouchY:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    if-nez v0, :cond_1

    :cond_0
    move v0, v13

    .line 2966
    :goto_0
    return v0

    .line 2936
    :cond_1
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelected:Z

    if-nez v0, :cond_2

    .line 2937
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->toggleSelectedState()Z

    .line 2942
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->size()I

    move-result v3

    .line 2943
    .local v3, "count":I
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0015

    invoke-static {v0, v1, v3}, Lcom/kingsoft/mail/utils/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v8

    .line 2946
    .local v8, "description":Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/mail/providers/Conversation;->MOVE_CONVERSATIONS_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v7

    .line 2948
    .local v7, "data":Landroid/content/ClipData;
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/mail/providers/Conversation;

    .line 2949
    .local v6, "conversation":Lcom/kingsoft/mail/providers/Conversation;
    new-instance v0, Landroid/content/ClipData$Item;

    iget v1, v6, Lcom/kingsoft/mail/providers/Conversation;->position:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_1

    .line 2952
    .end local v6    # "conversation":Lcom/kingsoft/mail/providers/Conversation;
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getWidth()I

    move-result v12

    .line 2953
    .local v12, "width":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getHeight()I

    move-result v9

    .line 2954
    .local v9, "height":I
    if-ltz v12, :cond_4

    if-gez v9, :cond_5

    :cond_4
    move v11, v14

    .line 2955
    .local v11, "isDimensionNegative":Z
    :goto_2
    if-eqz v11, :cond_6

    .line 2956
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "ConversationItemView: dimension is negative: width=%d, height=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v14

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v13

    .line 2958
    goto :goto_0

    .end local v11    # "isDimensionNegative":Z
    :cond_5
    move v11, v13

    .line 2954
    goto :goto_2

    .line 2960
    .restart local v11    # "isDimensionNegative":Z
    :cond_6
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->startDragMode()V

    .line 2962
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;

    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mLastTouchX:I

    iget v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mLastTouchY:I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;-><init>(Lcom/kingsoft/mail/browse/ConversationItemView;Landroid/view/View;III)V

    const/4 v1, 0x0

    invoke-virtual {p0, v7, v0, v1, v13}, Lcom/kingsoft/mail/browse/ConversationItemView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move v0, v14

    .line 2966
    goto/16 :goto_0
.end method

.method private bind(Lcom/kingsoft/mail/browse/ConversationItemViewModel;Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;Lcom/kingsoft/mail/ui/ConversationSelectionSet;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;IZZZZZLcom/kingsoft/mail/ui/AnimatedAdapter;ILandroid/graphics/Bitmap;Z)V
    .locals 13
    .param p1, "header"    # Lcom/kingsoft/mail/browse/ConversationItemViewModel;
    .param p2, "activity"    # Lcom/kingsoft/mail/ui/ControllableActivity;
    .param p3, "conversationListListener"    # Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;
    .param p4, "conversationItemAreaClickListener"    # Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;
    .param p5, "set"    # Lcom/kingsoft/mail/ui/ConversationSelectionSet;
    .param p6, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p7, "account"    # Ljava/lang/String;
    .param p8, "checkboxOrSenderImage"    # I
    .param p9, "showAttachmentPreviews"    # Z
    .param p10, "parallaxSpeedAlternative"    # Z
    .param p11, "parallaxDirectionAlternative"    # Z
    .param p12, "swipeEnabled"    # Z
    .param p13, "priorityArrowEnabled"    # Z
    .param p14, "adapter"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;
    .param p15, "backgroundOverrideResId"    # I
    .param p16, "photoBitmap"    # Landroid/graphics/Bitmap;
    .param p17, "isStarEnabled"    # Z

    .prologue
    .line 710
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAccount:Ljava/lang/String;

    .line 711
    move/from16 v0, p15

    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mBackgroundOverrideResId:I

    .line 712
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPhotoBitmap:Landroid/graphics/Bitmap;

    .line 714
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemAreaClickListener:Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;

    .line 716
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    if-eqz v9, :cond_5

    .line 720
    iget-object v9, p1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v9, v9, Lcom/kingsoft/mail/providers/Conversation;->id:J

    iget-object v11, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v11, v11, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v11, v11, Lcom/kingsoft/mail/providers/Conversation;->id:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v9, v9, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderNames:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v9, v9, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderNames:Ljava/util/ArrayList;

    iget-object v10, p1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderNames:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 723
    :cond_0
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContactImagesHolder:Lcom/kingsoft/mail/ui/DividedImageCanvas;

    invoke-virtual {v9}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->getDivisionIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 725
    .local v1, "divisionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 726
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContactImagesHolder:Lcom/kingsoft/mail/ui/DividedImageCanvas;

    invoke-virtual {v9}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->reset()V

    .line 727
    const/4 v6, 0x0

    .local v6, "pos":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 728
    sget-object v9, Lcom/kingsoft/mail/browse/ConversationItemView;->sContactPhotoManager:Lcom/kingsoft/mail/photomanager/ContactPhotoManager;

    iget-object v10, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContactImagesHolder:Lcom/kingsoft/mail/ui/DividedImageCanvas;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v6, v11}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;->generateHash(Lcom/kingsoft/mail/ui/ImageCanvas;ILjava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;->removePhoto(I)V

    .line 727
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 737
    .end local v1    # "divisionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "pos":I
    :cond_1
    iget-object v9, p1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v9, v9, Lcom/kingsoft/mail/providers/Conversation;->id:J

    iget-object v11, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v11, v11, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v11, v11, Lcom/kingsoft/mail/providers/Conversation;->id:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    iget-object v9, p1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget v9, v9, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewsCount:I

    iget-object v10, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v10, v10, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget v10, v10, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewsCount:I

    if-ne v9, v10, :cond_2

    iget-object v9, p1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v9}, Lcom/kingsoft/mail/providers/Conversation;->getAttachmentPreviewUris()Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v10, v10, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v10}, Lcom/kingsoft/mail/providers/Conversation;->getAttachmentPreviewUris()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 744
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentsView:Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;

    invoke-virtual {v9}, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->getCount()I

    move-result v4

    .local v4, "len":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 745
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentsView:Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;

    invoke-virtual {v9, v2}, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->getOrCreateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;

    invoke-virtual {v9}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->unbind()V

    .line 744
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 749
    :cond_3
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentsView:Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->setCount(I)V

    .line 752
    .end local v2    # "i":I
    .end local v4    # "len":I
    :cond_4
    iget-object v9, p1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v9, v9, Lcom/kingsoft/mail/providers/Conversation;->id:J

    iget-object v11, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v11, v11, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v11, v11, Lcom/kingsoft/mail/providers/Conversation;->id:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 754
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPhotoFlipAnimator:Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;

    invoke-virtual {v9}, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->stopAnimation()V

    .line 758
    :cond_5
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    .line 759
    iput-object p2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    .line 760
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationListListener:Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;

    .line 761
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    .line 762
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDisplayedFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 763
    if-eqz p6, :cond_b

    if-eqz p17, :cond_b

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mStarEnabled:Z

    .line 764
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSwipeEnabled:Z

    .line 765
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .line 766
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    if-eqz v9, :cond_6

    .line 767
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentsView:Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;

    iget-object v10, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v10}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getBitmapCache()Lcom/kingsoft/bitmap/BitmapCache;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->setBitmapCache(Lcom/kingsoft/bitmap/BitmapCache;)V

    .line 768
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentsView:Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;

    iget-object v10, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v10}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getDecodeAggregator()Lcom/kingsoft/bitmap/DecodeAggregator;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->setDecodeAggregator(Lcom/kingsoft/bitmap/DecodeAggregator;)V

    .line 773
    :cond_6
    const/4 v9, 0x1

    move/from16 v0, p8

    if-ne v0, v9, :cond_c

    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemAreaClickListener:Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemAreaClickListener:Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;

    invoke-interface {v9}, Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;->getCurrentConversationListMode()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_c

    .line 777
    const/4 v9, 0x1

    iput v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mGadgetMode:I

    .line 781
    :goto_3
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemUnreadAnimation:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    if-eqz v9, :cond_7

    .line 782
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemUnreadAnimation:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    iget v10, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mGadgetMode:I

    invoke-virtual {v9, v10}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->setGadgetMode(I)V

    .line 784
    :cond_7
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentPreviewsEnabled:Z

    .line 785
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mParallaxSpeedAlternative:Z

    .line 786
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mParallaxDirectionAlternative:Z

    .line 807
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v9, v9, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->dateOverrideText:Ljava/lang/CharSequence;

    if-nez v9, :cond_e

    .line 809
    const-string/jumbo v7, ""

    .line 810
    .local v7, "tmp":Ljava/lang/String;
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v9, v9, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v9, v9, Lcom/kingsoft/mail/providers/Conversation;->dateMs:J

    invoke-static {v9, v10}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 812
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v9, v9, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v9, v9, Lcom/kingsoft/mail/providers/Conversation;->dateMs:J

    const/16 v11, 0xc

    invoke-static {v9, v10, v11}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v7

    .line 819
    :goto_4
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    const-string/jumbo v10, " "

    const-string/jumbo v11, ""

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->dateText:Ljava/lang/CharSequence;

    .line 824
    .end local v7    # "tmp":Ljava/lang/String;
    :goto_5
    new-instance v9, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    invoke-direct {v9}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;-><init>()V

    iget v10, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mGadgetMode:I

    invoke-virtual {v9, v10}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->withGadget(I)Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    move-result-object v9

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getAttachmentPreviewsMode()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->withAttachmentPreviews(I)Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    move-result-object v9

    iput-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConfig:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    .line 827
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v9, v9, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget v9, v9, Lcom/kingsoft/mail/providers/Conversation;->color:I

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAccount:Ljava/lang/String;

    iget-object v10, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100220

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 830
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConfig:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    invoke-virtual {v9}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->showColorBlock()Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    .line 833
    :cond_8
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    .line 835
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v9, v9, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget v5, v9, Lcom/kingsoft/mail/providers/Conversation;->personalLevel:I

    .line 836
    .local v5, "personalLevel":I
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v9, v9, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget v9, v9, Lcom/kingsoft/mail/providers/Conversation;->priority:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    const/4 v3, 0x1

    .line 837
    .local v3, "isImportant":Z
    :goto_6
    if-eqz v3, :cond_10

    if-eqz p13, :cond_10

    const/4 v8, 0x1

    .line 840
    .local v8, "useImportantMarkers":Z
    :goto_7
    const/4 v9, 0x2

    if-ne v5, v9, :cond_12

    .line 841
    iget-object v10, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    if-eqz v8, :cond_11

    sget-object v9, Lcom/kingsoft/mail/browse/ConversationItemView;->IMPORTANT_ONLY_TO_ME:Landroid/graphics/Bitmap;

    :goto_8
    iput-object v9, v10, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    .line 850
    :cond_9
    :goto_9
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v9, v9, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_a

    .line 851
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConfig:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    invoke-virtual {v9}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->showPersonalIndicator()Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    .line 854
    :cond_a
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentsView:Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->setOverflowText(Ljava/lang/String;)V

    .line 856
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->setContentDescription()V

    .line 857
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->requestLayout()V

    .line 858
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getSearchParams()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSearchParams:Ljava/lang/String;

    .line 859
    return-void

    .line 763
    .end local v3    # "isImportant":Z
    .end local v5    # "personalLevel":I
    .end local v8    # "useImportantMarkers":Z
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 779
    :cond_c
    const/4 v9, 0x0

    iput v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mGadgetMode:I

    goto/16 :goto_3

    .line 816
    .restart local v7    # "tmp":Ljava/lang/String;
    :cond_d
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v10, v10, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v10, v10, Lcom/kingsoft/mail/providers/Conversation;->dateMs:J

    invoke-static {v9, v10, v11}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 821
    .end local v7    # "tmp":Ljava/lang/String;
    :cond_e
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v10, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v10, v10, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->dateOverrideText:Ljava/lang/CharSequence;

    iput-object v10, v9, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->dateText:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 836
    .restart local v5    # "personalLevel":I
    :cond_f
    const/4 v3, 0x0

    goto :goto_6

    .line 837
    .restart local v3    # "isImportant":Z
    :cond_10
    const/4 v8, 0x0

    goto :goto_7

    .line 841
    .restart local v8    # "useImportantMarkers":Z
    :cond_11
    sget-object v9, Lcom/kingsoft/mail/browse/ConversationItemView;->ONLY_TO_ME:Landroid/graphics/Bitmap;

    goto :goto_8

    .line 843
    :cond_12
    const/4 v9, 0x1

    if-ne v5, v9, :cond_14

    .line 844
    iget-object v10, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    if-eqz v8, :cond_13

    sget-object v9, Lcom/kingsoft/mail/browse/ConversationItemView;->IMPORTANT_TO_ME_AND_OTHERS:Landroid/graphics/Bitmap;

    :goto_a
    iput-object v9, v10, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    goto :goto_9

    :cond_13
    sget-object v9, Lcom/kingsoft/mail/browse/ConversationItemView;->TO_ME_AND_OTHERS:Landroid/graphics/Bitmap;

    goto :goto_a

    .line 846
    :cond_14
    if-eqz v8, :cond_9

    .line 847
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    sget-object v10, Lcom/kingsoft/mail/browse/ConversationItemView;->IMPORTANT_TO_OTHERS:Landroid/graphics/Bitmap;

    iput-object v10, v9, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    goto :goto_9
.end method

.method private calcRemovedCount()I
    .locals 8

    .prologue
    .line 1351
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSendersString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 1352
    .local v2, "len":I
    const/4 v0, 0x1

    .line 1353
    .local v0, "count":I
    add-int/lit8 v1, v2, -0x1

    .line 1354
    .local v1, "last":I
    const/4 v3, 0x0

    .line 1355
    .local v3, "total":F
    :goto_0
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesWidth:I

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_0

    if-lt v1, v0, :cond_0

    .line 1356
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v6, v6, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSendersString:Landroid/text/SpannableStringBuilder;

    sub-int v7, v1, v0

    invoke-virtual {v6, v7, v1}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/kingsoft/mail/browse/ConversationItemView;->getMeasuredTextWidth(Landroid/widget/TextView;Ljava/lang/String;)F

    move-result v4

    .line 1359
    .local v4, "width":F
    add-float/2addr v3, v4

    .line 1360
    add-int/lit8 v0, v0, 0x1

    .line 1361
    goto :goto_0

    .line 1363
    .end local v4    # "width":F
    :cond_0
    return v0
.end method

.method private calculateCoordinates()V
    .locals 21

    .prologue
    .line 1479
    const-string/jumbo v1, "CCHV.coordinates"

    invoke-static {v1}, Lcom/kingsoft/mail/browse/ConversationItemView;->startTimer(Ljava/lang/String;)V

    .line 1483
    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->dateFontSize:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1484
    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1486
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->infoIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 1487
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->infoIconXEnd:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->infoIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mInfoIconX:I

    .line 1492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->dateXEnd:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->datePaddingLeft:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    sget-object v3, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->dateText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->dateText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    sub-int v1, v2, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDateX:I

    .line 1523
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDateX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->datePaddingLeft:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPaperclipX:I

    .line 1532
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v1, v1, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    if-eqz v1, :cond_6

    .line 1533
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPaperclipX:I

    sget-object v2, Lcom/kingsoft/mail/browse/ConversationItemView;->MARK_STAR:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->datePaddingLeft:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPaperclipX:I

    .line 1534
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPaperclipX:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mForwardStateX:I

    .line 1539
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->paperclip:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    .line 1540
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPaperclipX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->paperclip:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->datePaddingLeft:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPaperclipX:I

    .line 1541
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPaperclipX:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentX:I

    .line 1558
    :goto_3
    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountFontSize:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1559
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v11

    .line 1560
    .local v11, "font":Landroid/graphics/Typeface;
    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v11}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1561
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getMergedCount()I

    move-result v1

    const/16 v2, 0x63

    if-le v1, v2, :cond_8

    const-string/jumbo v14, "99+"

    .line 1562
    .local v14, "mergedCountText":Ljava/lang/String;
    :goto_4
    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v15, v1

    .line 1563
    .local v15, "mergedCountTextWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountBackgroundX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountBackgroundWidth:I

    sub-int/2addr v2, v15

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mMergedCountX:I

    .line 1565
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->isWide()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1568
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersWidth:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersWidth:I

    .line 1584
    :goto_5
    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersFontSize:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1585
    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1587
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSenders:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 1588
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->ellipsizeStyledSenders()I

    .line 1589
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->layoutSenders()V

    .line 1617
    :goto_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersWidth:I

    if-gez v1, :cond_0

    .line 1618
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersWidth:I

    .line 1621
    :cond_0
    const-string/jumbo v1, "CCHV.coordinates"

    invoke-static {v1}, Lcom/kingsoft/mail/browse/ConversationItemView;->pauseTimer(Ljava/lang/String;)V

    .line 1622
    return-void

    .line 1492
    .end local v11    # "font":Landroid/graphics/Typeface;
    .end local v14    # "mergedCountText":Ljava/lang/String;
    .end local v15    # "mergedCountTextWidth":I
    :cond_1
    const-string/jumbo v1, ""

    goto/16 :goto_0

    .line 1505
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->infoIconXEnd:I

    sget-object v3, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->dateText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->dateText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    sub-int v1, v2, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDateX:I

    .line 1512
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1513
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDateX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->checkWidth:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDateX:I

    .line 1514
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->colorBlockX:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mColorBlockX:I

    .line 1521
    :goto_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDateX:I

    sget-object v2, Lcom/kingsoft/mail/browse/ConversationItemView;->MARK_STAR:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->datePaddingLeft:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->markStarX:I

    goto/16 :goto_1

    .line 1505
    :cond_4
    const-string/jumbo v1, ""

    goto :goto_7

    .line 1518
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->colorBlockX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->checkWidth:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mColorBlockX:I

    goto :goto_8

    .line 1536
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mForwardStateX:I

    goto/16 :goto_2

    .line 1544
    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentX:I

    goto/16 :goto_3

    .line 1561
    .restart local v11    # "font":Landroid/graphics/Typeface;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getMergedCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_4

    .line 1580
    .restart local v14    # "mergedCountText":Ljava/lang/String;
    .restart local v15    # "mergedCountTextWidth":I
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPaperclipX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->datePaddingLeft:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersX:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersWidth:I

    goto/16 :goto_5

    .line 1592
    :cond_a
    const/16 v19, 0x0

    .line 1593
    .local v19, "totalWidth":I
    const/4 v10, 0x0

    .line 1594
    .local v10, "fixedWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;

    .line 1595
    .local v16, "senderFragment":Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->style:Landroid/text/style/CharacterStyle;

    move-object/from16 v18, v0

    .line 1596
    .local v18, "style":Landroid/text/style/CharacterStyle;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->start:I

    move/from16 v17, v0

    .line 1597
    .local v17, "start":I
    move-object/from16 v0, v16

    iget v9, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->end:I

    .line 1598
    .local v9, "end":I
    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 1599
    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sendersText:Ljava/lang/String;

    move/from16 v0, v17

    invoke-virtual {v1, v2, v0, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, v16

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->width:I

    .line 1601
    move-object/from16 v0, v16

    iget-boolean v13, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->isFixed:Z

    .line 1602
    .local v13, "isFixed":Z
    if-eqz v13, :cond_b

    .line 1603
    move-object/from16 v0, v16

    iget v1, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->width:I

    add-int/2addr v10, v1

    .line 1605
    :cond_b
    move-object/from16 v0, v16

    iget v1, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->width:I

    add-int v19, v19, v1

    .line 1606
    goto :goto_9

    .line 1608
    .end local v9    # "end":I
    .end local v13    # "isFixed":Z
    .end local v16    # "senderFragment":Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;
    .end local v17    # "start":I
    .end local v18    # "style":Landroid/text/style/CharacterStyle;
    :cond_c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersWidth:I

    if-gez v1, :cond_d

    .line 1609
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersWidth:I

    .line 1611
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/kingsoft/mail/browse/ConversationItemView;->ellipsize(I)I

    move-result v19

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    move-object/from16 v20, v0

    new-instance v1, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sendersDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v3, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersWidth:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, v20

    iput-object v1, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sendersDisplayLayout:Landroid/text/StaticLayout;

    goto/16 :goto_6
.end method

.method private calculateTextsAndBitmaps()V
    .locals 17

    .prologue
    .line 1045
    const-string/jumbo v2, "CCHV.txtsbmps"

    invoke-static {v2}, Lcom/kingsoft/mail/browse/ConversationItemView;->startTimer(Ljava/lang/String;)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    if-eqz v2, :cond_0

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->contains(Lcom/kingsoft/mail/providers/Conversation;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelected:Z

    .line 1050
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelected:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/browse/ConversationItemView;->setSelected(Z)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mGadgetMode:I

    iput v3, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->gadgetMode:I

    .line 1053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-boolean v12, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->unread:Z

    .line 1054
    .local v12, "isUnread":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/kingsoft/mail/browse/ConversationItemView;->updateUnreadMark(Z)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v3, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sendersDisplayText:Landroid/text/SpannableStringBuilder;

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSendersString:Landroid/text/SpannableStringBuilder;

    .line 1059
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Conversation;->numDrafts()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v3, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->hasDraftMessage:Z

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-boolean v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->preserveSendersText:Z

    if-eqz v2, :cond_6

    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sendersText:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v3, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sendersDisplayText:Landroid/text/SpannableStringBuilder;

    .line 1067
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->loadSenderImages()V

    .line 1128
    :cond_1
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->isAttachmentPreviewsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1129
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->loadAttachmentPreviews()V

    .line 1133
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->paperclip:Landroid/graphics/Bitmap;

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v2, v2, Lcom/kingsoft/mail/providers/Conversation;->hasAttachments:Z

    if-eqz v2, :cond_3

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    sget-object v3, Lcom/kingsoft/mail/browse/ConversationItemView;->ATTACHMENT:Landroid/graphics/Bitmap;

    iput-object v3, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->paperclip:Landroid/graphics/Bitmap;

    .line 1138
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getMergedCount()I

    move-result v2

    const/16 v5, 0x63

    if-le v2, v5, :cond_d

    sget-object v2, Lcom/kingsoft/mail/browse/ConversationItemView;->MERGED_COUNT_BACKGROUND_LARGE:Landroid/graphics/Bitmap;

    :goto_2
    iput-object v2, v3, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->mergedCountBackground:Landroid/graphics/Bitmap;

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->isLayoutValid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1141
    const-string/jumbo v2, "CCHV.txtsbmps"

    invoke-static {v2}, Lcom/kingsoft/mail/browse/ConversationItemView;->pauseTimer(Ljava/lang/String;)V

    .line 1157
    :cond_4
    return-void

    .line 1059
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 1068
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    if-eqz v2, :cond_a

    .line 1070
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1071
    .local v1, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    const/4 v5, 0x1

    invoke-static {v1, v3, v5}, Lcom/kingsoft/mail/browse/SendersView;->createMessageInfo(Landroid/content/Context;Lcom/kingsoft/mail/providers/Conversation;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    iput-object v3, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->messageInfoString:Landroid/text/SpannableStringBuilder;

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getMode()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v3, v3, Lcom/kingsoft/mail/providers/Conversation;->hasAttachments:Z

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getSendersLength(Landroid/content/Context;IZ)I

    move-result v4

    .line 1076
    .local v4, "maxChars":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderEmails:Ljava/util/ArrayList;

    .line 1077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderNames:Ljava/util/ArrayList;

    .line 1078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSenders:Ljava/util/ArrayList;

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v3, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->mAccountEmail:Ljava/lang/StringBuffer;

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDisplayedFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDisplayedFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Folder;->isDraft()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDisplayedFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Folder;->isSent()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDisplayedFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1085
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->messageInfoString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSenders:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v6, v6, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderNames:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v7, v7, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderEmails:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAccount:Ljava/lang/String;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v10, v10, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->mAccountEmail:Ljava/lang/StringBuffer;

    invoke-static/range {v1 .. v10}, Lcom/kingsoft/mail/browse/SendersView;->format4Receiver(Landroid/content/Context;Lcom/kingsoft/mail/providers/ConversationInfo;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/StringBuffer;)V

    .line 1098
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderEmails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-boolean v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->hasDraftMessage:Z

    if-eqz v2, :cond_8

    .line 1100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderEmails:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderNames:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->loadSenderImages()V

    goto/16 :goto_1

    .line 1092
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->messageInfoString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSenders:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v6, v6, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderNames:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v7, v7, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderEmails:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAccount:Ljava/lang/String;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v10, v10, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->mAccountEmail:Ljava/lang/StringBuffer;

    invoke-static/range {v1 .. v10}, Lcom/kingsoft/mail/browse/SendersView;->format4MergeSenders(Landroid/content/Context;Lcom/kingsoft/mail/providers/ConversationInfo;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/StringBuffer;)V

    goto :goto_3

    .line 1108
    .end local v1    # "context":Landroid/content/Context;
    .end local v4    # "maxChars":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/kingsoft/mail/browse/SendersView;->formatSenders(Lcom/kingsoft/mail/browse/ConversationItemViewModel;Landroid/content/Context;Z)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Conversation;->senders:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderEmails:Ljava/util/ArrayList;

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderNames:Ljava/util/ArrayList;

    .line 1113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Conversation;->senders:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v16

    .line 1115
    .local v16, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    move-object/from16 v0, v16

    array-length v2, v0

    if-ge v11, v2, :cond_c

    .line 1116
    aget-object v15, v16, v11

    .line 1117
    .local v15, "token":Landroid/text/util/Rfc822Token;
    invoke-virtual {v15}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/providers/Address;->decodeAddressName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1119
    .local v14, "senderName":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v13

    .line 1120
    .local v13, "senderAddress":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderEmails:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderNames:Ljava/util/ArrayList;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .end local v14    # "senderName":Ljava/lang/String;
    :goto_5
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .restart local v14    # "senderName":Ljava/lang/String;
    :cond_b
    move-object v14, v13

    .line 1121
    goto :goto_5

    .line 1124
    .end local v13    # "senderAddress":Ljava/lang/String;
    .end local v14    # "senderName":Ljava/lang/String;
    .end local v15    # "token":Landroid/text/util/Rfc822Token;
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->loadSenderImages()V

    goto/16 :goto_1

    .line 1138
    .end local v11    # "i":I
    .end local v16    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_d
    sget-object v2, Lcom/kingsoft/mail/browse/ConversationItemView;->MERGED_COUNT_BACKGROUND:Landroid/graphics/Bitmap;

    goto/16 :goto_2
.end method

.method private canFitFragment(III)Z
    .locals 4
    .param p1, "width"    # I
    .param p2, "line"    # I
    .param p3, "fixedWidth"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1471
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersLineCount:I

    if-ne p2, v2, :cond_2

    .line 1472
    add-int v2, p1, p3

    iget v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersWidth:I

    if-gt v2, v3, :cond_1

    .line 1474
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1472
    goto :goto_0

    .line 1474
    :cond_2
    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersWidth:I

    if-le p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static copyStyles([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;
    .locals 4
    .param p0, "spans"    # [Landroid/text/style/CharacterStyle;
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 1732
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1733
    .local v0, "s":Landroid/text/SpannableString;
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    .line 1734
    aget-object v1, p0, v3

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1736
    :cond_0
    return-object v0
.end method

.method private createHeightAnimation(ZI)Landroid/animation/ObjectAnimator;
    .locals 6
    .param p1, "show"    # Z
    .param p2, "animationDuration"    # I

    .prologue
    const/high16 v0, 0x3f800000

    const/4 v3, 0x0

    .line 2902
    if-eqz p1, :cond_0

    move v2, v3

    .line 2903
    .local v2, "start":F
    :goto_0
    if-eqz p1, :cond_1

    .line 2904
    .local v0, "end":F
    :goto_1
    const-string/jumbo v3, "animatedHeightFraction"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2906
    .local v1, "height":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40000000

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2907
    int-to-long v3, p2

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2908
    return-object v1

    .end local v0    # "end":F
    .end local v1    # "height":Landroid/animation/ObjectAnimator;
    .end local v2    # "start":F
    :cond_0
    move v2, v0

    .line 2902
    goto :goto_0

    .restart local v2    # "start":F
    :cond_1
    move v0, v3

    .line 2903
    goto :goto_1
.end method

.method private createScaleXAnimation(ZZILandroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 8
    .param p1, "toLeft"    # Z
    .param p2, "enterWindow"    # Z
    .param p3, "animationDuration"    # I
    .param p4, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2858
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/SwipeableListView;

    .line 2860
    .local v0, "parent":Lcom/kingsoft/mail/ui/SwipeableListView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getMeasuredWidth()I

    move-result v3

    .line 2861
    .local v3, "width":I
    :goto_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const/4 v4, -0x1

    :goto_1
    mul-int/2addr v4, v3

    int-to-float v2, v4

    .line 2862
    .local v2, "start":F
    :goto_2
    const-string/jumbo v4, "translationX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    aput v2, v7, v6

    aput v2, v7, v5

    invoke-static {p4, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2864
    .local v1, "slide":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2865
    int-to-long v4, p3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2866
    return-object v1

    .end local v1    # "slide":Landroid/animation/ObjectAnimator;
    .end local v2    # "start":F
    .end local v3    # "width":I
    :cond_0
    move v3, v6

    .line 2860
    goto :goto_0

    .restart local v3    # "width":I
    :cond_1
    move v4, v5

    .line 2861
    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float v2, v4, v7

    goto :goto_2
.end method

.method private createSnippet(Z)V
    .locals 5
    .param p1, "isUnread"    # Z

    .prologue
    .line 1419
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->snippetWidth:I

    .line 1420
    .local v1, "snippetWidth":I
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v0, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->snippetHeight:I

    .line 1421
    .local v0, "snippetHeight":I
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSnippetTextView:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1424
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSnippetTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->snippetFontSize:F

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1427
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1428
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSnippetTextView:Landroid/widget/TextView;

    invoke-static {v2, v1, v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->layoutViewExactly(Landroid/view/View;II)V

    .line 1432
    :goto_0
    return-void

    .line 1430
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSnippetTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->checkWidth:I

    add-int/2addr v3, v1

    invoke-static {v2, v3, v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->layoutViewExactly(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private createSubject(Z)V
    .locals 5
    .param p1, "isUnread"    # Z

    .prologue
    .line 1438
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectWidth:I

    .line 1439
    .local v1, "subjectWidth":I
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v0, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectHeight:I

    .line 1440
    .local v0, "subjectHeight":I
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSubjectTextView:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1443
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSubjectTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectFontSize:F

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1446
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1447
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSubjectTextView:Landroid/widget/TextView;

    invoke-static {v2, v1, v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->layoutViewExactly(Landroid/view/View;II)V

    .line 1453
    :goto_0
    return-void

    .line 1449
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSubjectTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->checkWidth:I

    add-int/2addr v3, v1

    invoke-static {v2, v3, v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->layoutViewExactly(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private createTranslateXAnimation(ZZI)Landroid/animation/ObjectAnimator;
    .locals 9
    .param p1, "toLeft"    # Z
    .param p2, "enterWindow"    # Z
    .param p3, "animationDuration"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v6, -0x1

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 2889
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/SwipeableListView;

    .line 2891
    .local v1, "parent":Lcom/kingsoft/mail/ui/SwipeableListView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->getMeasuredWidth()I

    move-result v4

    .line 2892
    .local v4, "width":I
    :goto_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    move v5, v6

    :goto_1
    mul-int/2addr v5, v4

    int-to-float v3, v5

    .line 2893
    .local v3, "start":F
    :goto_2
    if-eqz p2, :cond_3

    .line 2894
    .local v0, "end":F
    :goto_3
    const-string/jumbo v5, "translationX"

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v3, v6, v8

    aput v0, v6, v7

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2896
    .local v2, "slide":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x40000000

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2897
    int-to-long v5, p3

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2898
    return-object v2

    .end local v0    # "end":F
    .end local v2    # "slide":Landroid/animation/ObjectAnimator;
    .end local v3    # "start":F
    .end local v4    # "width":I
    :cond_0
    move v4, v8

    .line 2891
    goto :goto_0

    .restart local v4    # "width":I
    :cond_1
    move v5, v7

    .line 2892
    goto :goto_1

    :cond_2
    move v3, v0

    goto :goto_2

    .line 2893
    .restart local v3    # "start":F
    :cond_3
    if-eqz p1, :cond_4

    :goto_4
    mul-int v5, v4, v6

    int-to-float v0, v5

    goto :goto_3

    :cond_4
    move v6, v7

    goto :goto_4
.end method

.method private createTranslateXAnimation(ZZILandroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 9
    .param p1, "toLeft"    # Z
    .param p2, "enterWindow"    # Z
    .param p3, "animationDuration"    # I
    .param p4, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v6, -0x1

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 2870
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/SwipeableListView;

    .line 2872
    .local v1, "parent":Lcom/kingsoft/mail/ui/SwipeableListView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->getMeasuredWidth()I

    move-result v4

    .line 2873
    .local v4, "width":I
    :goto_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    move v5, v6

    :goto_1
    mul-int/2addr v5, v4

    int-to-float v3, v5

    .line 2874
    .local v3, "start":F
    :goto_2
    if-eqz p2, :cond_3

    .line 2875
    .local v0, "end":F
    :goto_3
    const-string/jumbo v5, "translationX"

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v3, v6, v8

    aput v0, v6, v7

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2877
    .local v2, "slide":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x40000000

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2878
    int-to-long v5, p3

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2879
    return-object v2

    .end local v0    # "end":F
    .end local v2    # "slide":Landroid/animation/ObjectAnimator;
    .end local v3    # "start":F
    .end local v4    # "width":I
    :cond_0
    move v4, v8

    .line 2872
    goto :goto_0

    .restart local v4    # "width":I
    :cond_1
    move v5, v7

    .line 2873
    goto :goto_1

    :cond_2
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v3, v0, v5

    goto :goto_2

    .line 2874
    .restart local v3    # "start":F
    :cond_3
    if-eqz p1, :cond_4

    :goto_4
    mul-int v5, v4, v6

    int-to-float v0, v5

    goto :goto_3

    :cond_4
    move v6, v7

    goto :goto_4
.end method

.method private drawAttachmentPreviews(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2065
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsX:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsY:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2069
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 2070
    .local v2, "listView":Landroid/view/View;
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->unwrap()Landroid/view/View;

    move-result-object v1

    .line 2071
    .local v1, "listItemView":Landroid/view/View;
    iget-boolean v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mParallaxDirectionAlternative:Z

    if-eqz v3, :cond_0

    .line 2072
    const/high16 v3, 0x3f800000

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v0, v3, v4

    .line 2083
    .local v0, "fraction":F
    :goto_0
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentsView:Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;

    invoke-virtual {v3, v0}, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->setParallaxFraction(F)V

    .line 2084
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentsView:Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;

    invoke-virtual {v3, p1}, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2085
    return-void

    .line 2075
    .end local v0    # "fraction":F
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float v0, v3, v4

    .restart local v0    # "fraction":F
    goto :goto_0
.end method

.method private drawCheckbox(Landroid/graphics/Canvas;Z)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "isContactVisible"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2051
    const/4 v0, 0x0

    .line 2053
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->isInConversationSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2054
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->CHECK:Landroid/graphics/Bitmap;

    .line 2059
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->checkX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->checkY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2061
    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2062
    return-void

    .line 2056
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->UNCHECK:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private drawContactImageArea(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2038
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationItemView;->drawContactImages(Landroid/graphics/Canvas;)V

    .line 2039
    return-void
.end method

.method private drawContactImages(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2042
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesX:I

    int-to-float v0, v2

    .line 2043
    .local v0, "x":F
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesY:I

    int-to-float v1, v2

    .line 2045
    .local v1, "y":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2047
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContactImagesHolder:Lcom/kingsoft/mail/ui/DividedImageCanvas;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPhotoFlipMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, v3}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 2048
    return-void
.end method

.method private drawItemViewBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 2111
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget-object v0, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->itemViewBackgroud:Landroid/graphics/drawable/Drawable;

    .line 2112
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2113
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2114
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2115
    return-void
.end method

.method private drawMergedCount(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2231
    sget-object v2, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 2232
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->mergedCountBackground:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountBackgroundX:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountBackgroundY:I

    int-to-float v4, v4

    sget-object v5, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2236
    sget-object v2, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountFontSize:F

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2238
    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 2239
    .local v0, "font":Landroid/graphics/Typeface;
    sget-object v2, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2240
    sget-object v2, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountTextColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 2241
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getMergedCount()I

    move-result v2

    const/16 v3, 0x63

    if-le v2, v3, :cond_0

    const-string/jumbo v1, "99+"

    .line 2242
    .local v1, "mergedCountText":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mMergedCountX:I

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->mergedCountYBaseline:I

    sget-object v4, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/kingsoft/mail/browse/ConversationItemView;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IILandroid/text/TextPaint;)V

    .line 2243
    return-void

    .line 2241
    .end local v1    # "mergedCountText":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getMergedCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private drawSenders(Landroid/graphics/Canvas;Z)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "sendersUnreadMarkVisible"    # Z

    .prologue
    const/16 v12, 0x21

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2280
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v7, v7, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSendersString:Landroid/text/SpannableStringBuilder;

    if-eqz v7, :cond_1

    .line 2282
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v7, v7, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSendersString:Landroid/text/SpannableStringBuilder;

    sget-object v8, Lcom/kingsoft/mail/browse/ConversationItemView;->sSenderTextSpan:Landroid/text/style/TextAppearanceSpan;

    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget v9, v9, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledMessageInfoStringOffset:I

    invoke-virtual {v7, v8, v10, v9, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2285
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v8, v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSendersString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/kingsoft/mail/browse/ConversationItemView;->isSenderNameTooLong(Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v1

    .line 2288
    .local v1, "isTooLong":Z
    if-eqz v1, :cond_6

    .line 2289
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v7, v7, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSendersString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 2290
    .local v2, "len":I
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v8, v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSendersString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/kingsoft/mail/browse/ConversationItemView;->getMeasuredTextWidth(Landroid/widget/TextView;Ljava/lang/String;)F

    move-result v6

    .line 2293
    .local v6, "width":F
    const/4 v0, 0x0

    .line 2295
    .local v0, "displayName":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x5

    .line 2296
    .local v4, "removedCount":I
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->isShowSenderImage()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2298
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->calcRemovedCount()I

    move-result v4

    .line 2301
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .end local v0    # "displayName":Landroid/text/SpannableStringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v8, v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSendersString:Landroid/text/SpannableStringBuilder;

    sub-int v9, v2, v4

    invoke-virtual {v8, v10, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2305
    .restart local v0    # "displayName":Landroid/text/SpannableStringBuilder;
    sget-object v7, Lcom/kingsoft/mail/browse/ConversationItemView;->sSenderTextSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v7, v10, v8, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2308
    sget-object v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2309
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v7, v7, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSendersString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2310
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    invoke-static {v7, v0, v3, v8, v11}, Lcom/kingsoft/mail/browse/ConversationItemView;->highlightFilterString(Landroid/content/Context;Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2311
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2329
    .end local v0    # "displayName":Landroid/text/SpannableStringBuilder;
    .end local v1    # "isTooLong":Z
    .end local v2    # "len":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "removedCount":I
    .end local v6    # "width":F
    :cond_1
    :goto_0
    const/4 v5, 0x0

    .line 2330
    .local v5, "senderXAnimationFraction":I
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemUnreadAnimation:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    if-eqz v7, :cond_4

    .line 2331
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemUnreadAnimation:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->getSenderXAnimationFraction()I

    move-result v5

    .line 2332
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemUnreadAnimation:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->isAnimationRunning()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-boolean v7, v7, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->unread:Z

    if-nez v7, :cond_3

    :cond_2
    iget v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mGadgetMode:I

    if-nez v7, :cond_4

    .line 2333
    :cond_3
    sget v5, Lcom/kingsoft/mail/browse/ConversationItemView;->sendersUnreadMarkMarginRight:I

    .line 2336
    :cond_4
    if-eqz p2, :cond_8

    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v7, v7, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersX:I

    add-int/2addr v7, v5

    int-to-float v7, v7

    :goto_1
    iget-object v8, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v8, v8, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersY:I

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2337
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersTextView:Landroid/widget/TextView;

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 2338
    return-void

    .line 2313
    .end local v5    # "senderXAnimationFraction":I
    .restart local v0    # "displayName":Landroid/text/SpannableStringBuilder;
    .restart local v1    # "isTooLong":Z
    .restart local v2    # "len":I
    .restart local v4    # "removedCount":I
    .restart local v6    # "width":F
    :cond_5
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2317
    .end local v0    # "displayName":Landroid/text/SpannableStringBuilder;
    .end local v2    # "len":I
    .end local v4    # "removedCount":I
    .end local v6    # "width":F
    :cond_6
    sget-object v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 2318
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v7, v7, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSendersString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2319
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v8, v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSendersString:Landroid/text/SpannableStringBuilder;

    sget-object v9, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    invoke-static {v7, v8, v3, v9, v11}, Lcom/kingsoft/mail/browse/ConversationItemView;->highlightFilterString(Landroid/content/Context;Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2320
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v8, v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSendersString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2322
    .end local v3    # "name":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v8, v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSendersString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2336
    .end local v1    # "isTooLong":Z
    .restart local v5    # "senderXAnimationFraction":I
    :cond_8
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v7, v7, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersUnreadMarkX:I

    add-int/2addr v7, v5

    int-to-float v7, v7

    goto :goto_1
.end method

.method private drawSnippet(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v7, 0x7f100126

    const/4 v4, 0x0

    .line 2119
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->snippetX:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v6, v6, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->snippetY:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2121
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v2

    .line 2131
    .local v2, "snippet":Ljava/lang/String;
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget v0, v5, Lcom/kingsoft/mail/providers/Conversation;->flagLoaded:I

    .line 2132
    .local v0, "flagLoaded":I
    const/4 v5, 0x5

    if-ne v0, v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2134
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/mail/preferences/MailPrefs;->isHeaderOnly()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2135
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2147
    :goto_0
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget v1, v5, Lcom/kingsoft/mail/providers/Conversation;->messageSize:I

    .line 2148
    .local v1, "messageSize":I
    if-lez v1, :cond_0

    .line 2149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v1

    invoke-static {v6, v7}, Lcom/kingsoft/emailcommon/utility/Utility;->bytes2kb(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2154
    .end local v1    # "messageSize":I
    :cond_0
    new-instance v5, Landroid/text/SpannableString;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, v7, v2}, Lcom/kingsoft/mail/providers/Conversation;->getSubjectAndSnippetForDisplay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->displayedSnippetStringBuilder:Landroid/text/Spannable;

    .line 2157
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 2158
    .local v3, "snippetTextLength":I
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2159
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->displayedSnippetStringBuilder:Landroid/text/Spannable;

    sget-object v6, Lcom/kingsoft/mail/browse/ConversationItemView;->sSnippetTextSpan:Landroid/text/style/TextAppearanceSpan;

    const/16 v7, 0x21

    invoke-interface {v5, v6, v4, v3, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2164
    :cond_1
    sget-object v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2165
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->displayedSnippetStringBuilder:Landroid/text/Spannable;

    sget-object v6, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v4, v5, v2, v6, v7}, Lcom/kingsoft/mail/browse/ConversationItemView;->highlightFilterString(Landroid/content/Context;Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2166
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSnippetTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->displayedSnippetStringBuilder:Landroid/text/Spannable;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2170
    :goto_2
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSnippetTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 2171
    return-void

    .line 2138
    .end local v3    # "snippetTextLength":I
    :cond_2
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDisplayedFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Folder;->isSyncInProgress()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2139
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100268

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2142
    :cond_3
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    move v3, v4

    .line 2157
    goto :goto_1

    .line 2168
    .restart local v3    # "snippetTextLength":I
    :cond_5
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSnippetTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->displayedSnippetStringBuilder:Landroid/text/Spannable;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private drawSubject(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v6, 0x64

    const/4 v3, 0x0

    .line 2174
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectX:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectY:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2175
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/kingsoft/mail/browse/ConversationItemView;->filterTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2176
    .local v1, "subject":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2177
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100293

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2185
    :cond_0
    :goto_0
    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v1, v6}, Lcom/kingsoft/mail/providers/Conversation;->getSubjectAndSnippetForDisplay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->displayedSubjectStringBuilder:Landroid/text/Spannable;

    .line 2192
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2193
    .local v2, "subjectTextLength":I
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2194
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->displayedSubjectStringBuilder:Landroid/text/Spannable;

    sget-object v5, Lcom/kingsoft/mail/browse/ConversationItemView;->sSubjectTextSpan:Landroid/text/style/TextAppearanceSpan;

    const/16 v6, 0x21

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2198
    :cond_1
    sget-object v3, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2199
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->displayedSubjectStringBuilder:Landroid/text/Spannable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2200
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->displayedSubjectStringBuilder:Landroid/text/Spannable;

    sget-object v5, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v3, v4, v0, v5, v6}, Lcom/kingsoft/mail/browse/ConversationItemView;->highlightFilterString(Landroid/content/Context;Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2201
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSubjectTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->displayedSubjectStringBuilder:Landroid/text/Spannable;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2205
    .end local v0    # "name":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSubjectTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 2206
    return-void

    .line 2178
    .end local v2    # "subjectTextLength":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 2179
    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move v2, v3

    .line 2192
    goto :goto_1

    .line 2203
    .restart local v2    # "subjectTextLength":I
    :cond_4
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSubjectTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->displayedSubjectStringBuilder:Landroid/text/Spannable;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private static drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IILandroid/text/TextPaint;)V
    .locals 7
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 2346
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, p2

    int-to-float v5, p3

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 2347
    return-void
.end method

.method private drawUnreadMark(Landroid/graphics/Canvas;Z)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "sendersUnreadMarkVisible"    # Z

    .prologue
    .line 2248
    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersUnreadMarkY:I

    .line 2249
    .local v2, "unreadMarkY":I
    :goto_0
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-boolean v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->unread:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mGadgetMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2250
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersUnreadMarkY:I

    .line 2252
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemUnreadAnimation:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    if-nez v4, :cond_2

    .line 2275
    :goto_1
    return-void

    .line 2248
    .end local v2    # "unreadMarkY":I
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->unreadMarkY:I

    goto :goto_0

    .line 2255
    .restart local v2    # "unreadMarkY":I
    :cond_2
    const/4 v0, 0x0

    .line 2256
    .local v0, "alphaAnimationFraction":I
    const/4 v1, 0x0

    .line 2257
    .local v1, "sizeAnimationFraction":F
    const/4 v3, 0x0

    .line 2258
    .local v3, "xAnimationFraction":I
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemUnreadAnimation:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->isAnimationRunning()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2259
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemUnreadAnimation:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->getAlphaAnimationFraction()I

    move-result v0

    .line 2260
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemUnreadAnimation:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->getSizeAnimationFraction()F

    move-result v1

    .line 2261
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemUnreadAnimation:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->getxAnimationFraction()I

    move-result v3

    .line 2263
    :cond_3
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-boolean v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->unread:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->isDragCancelled:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mGadgetMode:I

    if-nez v4, :cond_7

    .line 2264
    :cond_4
    const/16 v0, 0xff

    .line 2265
    const/high16 v1, 0x3f800000

    .line 2266
    if-eqz p2, :cond_6

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersUnreadMarkX:I

    .line 2271
    :cond_5
    :goto_2
    sget-object v4, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 2272
    int-to-float v4, v3

    int-to-float v5, v2

    invoke-virtual {p1, v1, v1, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2274
    sget-object v4, Lcom/kingsoft/mail/browse/ConversationItemView;->UNREAD_MARK:Landroid/graphics/Bitmap;

    int-to-float v5, v3

    int-to-float v6, v2

    sget-object v7, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 2266
    :cond_6
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->unreadMarkX:I

    goto :goto_2

    .line 2267
    :cond_7
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-boolean v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->unread:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->isDragCancelled:Z

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mGadgetMode:I

    if-nez v4, :cond_5

    .line 2268
    :cond_8
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private ellipsize(I)I
    .locals 18
    .param p1, "fixedWidth"    # I

    .prologue
    .line 1740
    const/4 v12, 0x0

    .line 1741
    .local v12, "totalWidth":I
    const/4 v2, 0x1

    .line 1742
    .local v2, "currentLine":I
    const/4 v3, 0x0

    .line 1743
    .local v3, "ellipsize":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v14, v14, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;

    .line 1744
    .local v8, "senderFragment":Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;
    iget-object v11, v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->style:Landroid/text/style/CharacterStyle;

    .line 1745
    .local v11, "style":Landroid/text/style/CharacterStyle;
    iget v10, v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->start:I

    .line 1746
    .local v10, "start":I
    iget v4, v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->end:I

    .line 1747
    .local v4, "end":I
    iget v13, v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->width:I

    .line 1748
    .local v13, "width":I
    iget-boolean v7, v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->isFixed:Z

    .line 1749
    .local v7, "isFixed":Z
    sget-object v14, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v14}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 1752
    if-eqz v3, :cond_0

    if-nez v7, :cond_0

    .line 1753
    const/4 v14, 0x0

    iput-boolean v14, v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->shouldDisplay:Z

    goto :goto_0

    .line 1758
    :cond_0
    const/4 v14, 0x0

    iput-object v14, v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->ellipsizedText:Ljava/lang/String;

    .line 1759
    if-eqz v7, :cond_1

    .line 1760
    sub-int p1, p1, v13

    .line 1762
    :cond_1
    add-int v14, v12, v13

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v2, v1}, Lcom/kingsoft/mail/browse/ConversationItemView;->canFitFragment(III)Z

    move-result v14

    if-nez v14, :cond_4

    .line 1765
    if-nez v12, :cond_5

    .line 1766
    const/4 v3, 0x1

    .line 1782
    :cond_2
    :goto_1
    if-eqz v3, :cond_4

    .line 1783
    move-object/from16 v0, p0

    iget v14, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersWidth:I

    sub-int v13, v14, v12

    .line 1786
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v14, v14, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersLineCount:I

    if-ne v2, v14, :cond_3

    .line 1787
    sub-int v13, v13, p1

    .line 1789
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v14, v14, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sendersText:Ljava/lang/String;

    invoke-virtual {v14, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    int-to-float v0, v13

    move/from16 v16, v0

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static/range {v14 .. v17}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->ellipsizedText:Ljava/lang/String;

    .line 1792
    sget-object v14, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    iget-object v15, v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->ellipsizedText:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-int v13, v14

    .line 1796
    :cond_4
    const/4 v14, 0x1

    iput-boolean v14, v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->shouldDisplay:Z

    .line 1797
    add-int/2addr v12, v13

    .line 1800
    iget-object v14, v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->ellipsizedText:Ljava/lang/String;

    if-eqz v14, :cond_7

    .line 1801
    iget-object v5, v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->ellipsizedText:Ljava/lang/String;

    .line 1805
    .local v5, "fragmentDisplayText":Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v14, v14, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sendersDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v14}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 1806
    .local v9, "spanStart":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v14, v14, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sendersDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v14, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1807
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v14, v14, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sendersDisplayText:Landroid/text/SpannableStringBuilder;

    iget-object v15, v8, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;->style:Landroid/text/style/CharacterStyle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sendersDisplayText:Landroid/text/SpannableStringBuilder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v16

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v9, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 1769
    .end local v5    # "fragmentDisplayText":Ljava/lang/CharSequence;
    .end local v9    # "spanStart":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v14, v14, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersLineCount:I

    if-ge v2, v14, :cond_6

    .line 1770
    add-int/lit8 v2, v2, 0x1

    .line 1771
    const/4 v12, 0x0

    .line 1774
    add-int v14, v12, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersWidth:I

    if-le v14, v15, :cond_2

    .line 1775
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1778
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1803
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v14, v14, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sendersText:Ljava/lang/String;

    invoke-virtual {v14, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "fragmentDisplayText":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1811
    .end local v4    # "end":I
    .end local v5    # "fragmentDisplayText":Ljava/lang/CharSequence;
    .end local v7    # "isFixed":Z
    .end local v8    # "senderFragment":Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;
    .end local v10    # "start":I
    .end local v11    # "style":Landroid/text/style/CharacterStyle;
    .end local v13    # "width":I
    :cond_8
    return v12
.end method

.method private ellipsizeStyledSenders()I
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1643
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1644
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    const/4 v10, 0x0

    .line 1645
    .local v10, "totalWidth":F
    const/4 v1, 0x0

    .line 1647
    .local v1, "ellipsize":Z
    iget-object v12, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v5, v12, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->messageInfoString:Landroid/text/SpannableStringBuilder;

    .line 1648
    .local v5, "messageInfoString":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 1649
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const-class v13, Landroid/text/style/CharacterStyle;

    invoke-virtual {v5, v14, v12, v13}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/CharacterStyle;

    .line 1653
    .local v9, "spans":[Landroid/text/style/CharacterStyle;
    array-length v12, v9

    if-lez v12, :cond_0

    .line 1654
    aget-object v12, v9, v14

    sget-object v13, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v12, v13}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 1657
    :cond_0
    sget-object v12, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1659
    .local v6, "messageInfoWidth":F
    add-float/2addr v10, v6

    .line 1661
    .end local v6    # "messageInfoWidth":F
    .end local v9    # "spans":[Landroid/text/style/CharacterStyle;
    :cond_1
    const/4 v7, 0x0

    .line 1663
    .local v7, "prevSender":Landroid/text/SpannableString;
    iget-object v12, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v12, v12, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSenders:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/SpannableString;

    .line 1666
    .local v8, "sender":Landroid/text/SpannableString;
    if-eqz v8, :cond_2

    .line 1670
    if-eqz v1, :cond_4

    .line 1724
    .end local v8    # "sender":Landroid/text/SpannableString;
    :cond_3
    iget-object v12, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    iput v13, v12, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledMessageInfoStringOffset:I

    .line 1725
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1726
    iget-object v12, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iput-object v0, v12, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSendersString:Landroid/text/SpannableStringBuilder;

    .line 1727
    float-to-int v12, v10

    return v12

    .line 1673
    .restart local v8    # "sender":Landroid/text/SpannableString;
    :cond_4
    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v12

    const-class v13, Landroid/text/style/CharacterStyle;

    invoke-virtual {v8, v14, v12, v13}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/CharacterStyle;

    .line 1676
    .restart local v9    # "spans":[Landroid/text/style/CharacterStyle;
    array-length v12, v9

    if-lez v12, :cond_5

    .line 1677
    aget-object v12, v9, v14

    sget-object v13, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v12, v13}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 1681
    :cond_5
    sget-object v12, Lcom/kingsoft/mail/browse/SendersView;->sElidedString:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1682
    move-object v7, v8

    .line 1683
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/kingsoft/mail/browse/ConversationItemView;->sElidedPaddingToken:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/kingsoft/mail/browse/ConversationItemView;->sElidedPaddingToken:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/kingsoft/mail/browse/ConversationItemView;->copyStyles([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v8

    .line 1693
    :goto_1
    array-length v12, v9

    if-lez v12, :cond_6

    .line 1694
    aget-object v12, v9, v14

    sget-object v13, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v12, v13}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 1699
    :cond_6
    sget-object v12, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-int v12, v12

    int-to-float v11, v12

    .line 1700
    .local v11, "width":F
    add-float v12, v11, v10

    iget v13, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersWidth:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_a

    .line 1703
    const/4 v1, 0x1

    .line 1704
    iget v12, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersWidth:I

    int-to-float v12, v12

    sub-float v11, v12, v10

    .line 1705
    sget-object v12, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v8, v12, v11, v13}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/kingsoft/mail/browse/ConversationItemView;->copyStyles([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v2

    .line 1707
    .local v2, "ellipsizedText":Landroid/text/SpannableString;
    sget-object v12, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-int v12, v12

    int-to-float v11, v12

    .line 1711
    :goto_2
    add-float/2addr v10, v11

    .line 1714
    if-eqz v2, :cond_b

    .line 1715
    move-object v3, v2

    .line 1722
    .local v3, "fragmentDisplayText":Ljava/lang/CharSequence;
    :goto_3
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 1685
    .end local v2    # "ellipsizedText":Landroid/text/SpannableString;
    .end local v3    # "fragmentDisplayText":Ljava/lang/CharSequence;
    .end local v11    # "width":F
    :cond_7
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_9

    if-eqz v7, :cond_8

    sget-object v12, Lcom/kingsoft/mail/browse/SendersView;->sElidedString:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 1688
    :cond_8
    move-object v7, v8

    .line 1689
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/kingsoft/mail/browse/ConversationItemView;->sSendersSplitToken:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/kingsoft/mail/browse/ConversationItemView;->copyStyles([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v8

    goto :goto_1

    .line 1691
    :cond_9
    move-object v7, v8

    goto :goto_1

    .line 1709
    .restart local v11    # "width":F
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "ellipsizedText":Landroid/text/SpannableString;
    goto :goto_2

    .line 1717
    :cond_b
    move-object v3, v8

    .restart local v3    # "fragmentDisplayText":Ljava/lang/CharSequence;
    goto :goto_3
.end method

.method public static ensurePhotoManager()V
    .locals 1

    .prologue
    .line 357
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sContactPhotoManager:Lcom/kingsoft/mail/photomanager/ContactPhotoManager;

    if-eqz v0, :cond_0

    .line 358
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sContactPhotoManager:Lcom/kingsoft/mail/photomanager/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;->resume()V

    .line 360
    :cond_0
    return-void
.end method

.method private filterTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1820
    move-object v2, p1

    .line 1821
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1001b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1823
    .local v1, "formatString":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_0

    .line 1824
    const/16 v4, 0x5d

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1825
    .local v0, "end":I
    if-lez v0, :cond_0

    .line 1826
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1827
    .local v3, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x7

    invoke-static {v3, v5}, Lcom/kingsoft/mail/utils/Utils;->ellipsize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1831
    .end local v0    # "end":I
    .end local v3    # "tag":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private getAttachmentPreviewsMode()I
    .locals 1

    .prologue
    .line 1177
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->isAttachmentPreviewsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1178
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v0, v0, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 1181
    :goto_0
    return v0

    .line 1178
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getListView()Landroid/widget/ListView;
    .locals 3

    .prologue
    .line 2729
    const/4 v0, 0x0

    .line 2730
    .local v0, "v":Lcom/kingsoft/mail/ui/SwipeableListView;
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->unwrap()Landroid/view/View;

    move-result-object v1

    .line 2731
    .local v1, "wrapper":Landroid/view/View;
    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    if-eqz v2, :cond_2

    .line 2732
    check-cast v1, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    .end local v1    # "wrapper":Landroid/view/View;
    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .end local v0    # "v":Lcom/kingsoft/mail/ui/SwipeableListView;
    check-cast v0, Lcom/kingsoft/mail/ui/SwipeableListView;

    .line 2741
    .restart local v0    # "v":Lcom/kingsoft/mail/ui/SwipeableListView;
    :cond_0
    if-nez v0, :cond_1

    .line 2742
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getListView()Lcom/kingsoft/mail/ui/SwipeableListView;

    move-result-object v0

    :cond_1
    move-object v2, v0

    .line 2744
    :goto_0
    return-object v2

    .line 2734
    .restart local v1    # "wrapper":Landroid/view/View;
    :cond_2
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 2735
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ListView;

    if-eqz v2, :cond_3

    .line 2736
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    goto :goto_0

    .line 2738
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    goto :goto_0
.end method

.method private getMeasuredTextWidth(Landroid/widget/TextView;Ljava/lang/String;)F
    .locals 2
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1410
    const/4 v1, 0x0

    .line 1411
    .local v1, "textWidth":F
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1412
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1414
    return v1
.end method

.method private getMergedCount()I
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->mergeCount:I

    return v0
.end method

.method private getMessageFromConversation(Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/browse/ConversationMessage;
    .locals 13
    .param p1, "mConversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    const/4 v5, 0x0

    .line 2089
    const/4 v9, 0x0

    .line 2090
    .local v9, "mess":Lcom/kingsoft/mail/browse/ConversationMessage;
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/kingsoft/mail/providers/Conversation;->messageListUri:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-wide v11, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2094
    .local v7, "cursor":Landroid/database/Cursor;
    new-instance v6, Lcom/kingsoft/mail/browse/MessageCursor;

    invoke-direct {v6, v7}, Lcom/kingsoft/mail/browse/MessageCursor;-><init>(Landroid/database/Cursor;)V

    .line 2095
    .local v6, "cur":Lcom/kingsoft/mail/browse/MessageCursor;
    if-eqz v6, :cond_1

    .line 2097
    :try_start_0
    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/MessageCursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2098
    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/MessageCursor;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 2104
    :cond_0
    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/MessageCursor;->close()V

    :cond_1
    move-object v5, v9

    .line 2107
    :goto_0
    return-object v5

    .line 2100
    :catch_0
    move-exception v8

    .line 2101
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2104
    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/MessageCursor;->close()V

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/MessageCursor;->close()V

    throw v0
.end method

.method private getOverflowCount()I
    .locals 2

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget v0, v0, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewsCount:I

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Conversation;->getAttachmentPreviewUris()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getParallaxSpeedMultiplier()F
    .locals 1

    .prologue
    .line 1186
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mParallaxSpeedAlternative:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000000

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3fc00000

    goto :goto_0
.end method

.method private getStarBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v0, v0, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->STAR_ON:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->STAR_OFF:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static highlightFilterString(Landroid/content/Context;Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sbSpan"    # Landroid/text/Spannable;
    .param p2, "strs"    # Ljava/lang/String;
    .param p3, "strSearchFilter"    # Ljava/lang/String;
    .param p4, "charCase"    # Z

    .prologue
    .line 3192
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3219
    :cond_0
    return-void

    .line 3195
    :cond_1
    const/4 v2, 0x0

    .line 3196
    .local v2, "stsNew":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3197
    .local v1, "strSearchFilterNew":Ljava/lang/String;
    if-eqz p4, :cond_2

    .line 3198
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 3199
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 3204
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3207
    const/4 v0, -0x1

    .line 3209
    .local v0, "iStart":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 3210
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const/16 v3, 0x1e

    if-gt v0, v3, :cond_0

    .line 3211
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0068

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    const/16 v5, 0x21

    invoke-interface {p1, v3, v0, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 3201
    .end local v0    # "iStart":I
    :cond_2
    move-object v2, p2

    .line 3202
    move-object v1, p3

    goto :goto_0
.end method

.method private isAttachmentPreviewsEnabled()Z
    .locals 1

    .prologue
    .line 1167
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentPreviewsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Conversation;->getAttachmentPreviewUris()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isContains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/String;

    .prologue
    .line 3222
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 3223
    .local v0, "x":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 3224
    .local v1, "y":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method private isSearchMode()Z
    .locals 2

    .prologue
    .line 3171
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    instance-of v1, v1, Lcom/kingsoft/email2/ui/MailActivityEmail;

    if-eqz v1, :cond_0

    .line 3172
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    check-cast v1, Lcom/kingsoft/email2/ui/MailActivityEmail;

    invoke-virtual {v1}, Lcom/kingsoft/email2/ui/MailActivityEmail;->getAccountController()Lcom/kingsoft/mail/ui/AccountController;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/AbstractActivityController;

    .line 3173
    .local v0, "control":Lcom/kingsoft/mail/ui/AbstractActivityController;
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/kingsoft/mail/ui/ViewMode;->isSearchMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3174
    const/4 v1, 0x1

    .line 3177
    .end local v0    # "control":Lcom/kingsoft/mail/ui/AbstractActivityController;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSenderNameTooLong(Landroid/widget/TextView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1387
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1406
    :cond_0
    :goto_0
    return v3

    .line 1391
    :cond_1
    const/4 v0, 0x0

    .line 1392
    .local v0, "nameWidth":F
    const/4 v2, 0x0

    .line 1393
    .local v2, "threhold":F
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 1394
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 1398
    iget-boolean v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mInSelectionMode:Z

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->isShowSenderImage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1400
    :cond_2
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersWidth:I

    int-to-float v2, v4

    .line 1406
    :goto_1
    cmpl-float v4, v0, v2

    if-lez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 1403
    :cond_3
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersWidth:I

    int-to-float v2, v4

    goto :goto_1
.end method

.method private isShowSenderImage()Z
    .locals 3

    .prologue
    .line 1372
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v0

    .line 1373
    .local v0, "mMailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    invoke-virtual {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getShowSenderImages()Z

    move-result v1

    .line 1375
    .local v1, "showSenderImage":Z
    return v1
.end method

.method private isTouchInContactPhoto(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x1

    .line 2493
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesX:I

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesWidth:I

    add-int/2addr v3, v4

    sget v4, Lcom/kingsoft/mail/browse/ConversationItemView;->sSenderImageTouchSlop:I

    add-int v1, v3, v4

    .line 2499
    .local v1, "threshold":I
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2501
    :cond_0
    const/4 v0, 0x0

    .line 2507
    .local v0, "extra":F
    :goto_0
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->gadgetMode:I

    if-ne v3, v2, :cond_3

    int-to-float v3, v1

    add-float/2addr v3, v0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_3

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->isAttachmentPreviewsEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsY:I

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_3

    :cond_1
    :goto_1
    return v2

    .line 2503
    .end local v0    # "extra":F
    :cond_2
    const/high16 v3, 0x41800000

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .restart local v0    # "extra":F
    goto :goto_0

    .line 2507
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isTouchInInfoIcon(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 2513
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->infoIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 2517
    :cond_0
    return v1
.end method

.method private judgePostionType()V
    .locals 7

    .prologue
    .line 881
    const/4 v2, -0x1

    .line 882
    .local v2, "pos":I
    sget-object v3, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;->middle:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    iput-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPostionType:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    .line 883
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 884
    .local v1, "list":Landroid/widget/ListView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v3, v1, Lcom/kingsoft/mail/ui/SwipeableListView;

    if-eqz v3, :cond_0

    .line 887
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 888
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v3, v2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->positionIsFirstConversation(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 889
    sget-object v3, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;->first:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    iput-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPostionType:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ConversationItemView"

    const-string/jumbo v4, "judgePostionType"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private layoutSenders()V
    .locals 5

    .prologue
    .line 1331
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->styledSendersString:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    .line 1332
    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersWidth:I

    .line 1333
    .local v1, "w":I
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v0, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersHeight:I

    .line 1334
    .local v0, "h":I
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersTextView:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1335
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersLineCount:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1336
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersFontSize:F

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1338
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSendersTextView:Landroid/widget/TextView;

    invoke-static {v2, v1, v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->layoutViewExactly(Landroid/view/View;II)V

    .line 1341
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_0
    return-void
.end method

.method private static layoutViewExactly(Landroid/view/View;II)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v2, 0x0

    .line 1326
    invoke-static {p1}, Lcom/kingsoft/mail/browse/ConversationItemView;->makeExactSpecForSize(I)I

    move-result v0

    invoke-static {p2}, Lcom/kingsoft/mail/browse/ConversationItemView;->makeExactSpecForSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1327
    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 1328
    return-void
.end method

.method private loadAttachmentPreviews()V
    .locals 18

    .prologue
    .line 1230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v13, v13, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsWidth:I

    if-lez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v13, v13, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsHeight:I

    if-gtz v13, :cond_1

    .line 1232
    :cond_0
    sget-object v13, Lcom/kingsoft/mail/browse/ConversationItemView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Attachment preview width(%d) or height(%d) is 0 for mode: (%d,%d)."

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsWidth:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsHeight:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getMode()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getAttachmentPreviewsMode()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1319
    :goto_0
    return-void

    .line 1240
    :cond_1
    const-string/jumbo v13, "attachment previews"

    invoke-static {v13}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 1242
    const-string/jumbo v13, "Setup load attachment previews"

    invoke-static {v13}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 1244
    sget-object v13, Lcom/kingsoft/mail/browse/ConversationItemView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "loadAttachmentPreviews: Loading attachment previews for conversation %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1250
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v13, v13, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v13}, Lcom/kingsoft/mail/providers/Conversation;->getAttachmentPreviewUris()Ljava/util/ArrayList;

    move-result-object v2

    .line 1252
    .local v2, "attachmentUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v13, v13, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget v10, v13, Lcom/kingsoft/mail/providers/Conversation;->attachmentPreviewStates:I

    .line 1253
    .local v10, "previewStates":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1255
    .local v5, "displayCount":I
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 1257
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentsView:Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    invoke-virtual {v13, v14}, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->setCoordinates(Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentsView:Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;

    invoke-virtual {v13, v5}, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->setCount(I)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v13, v13, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsDecodeHeight:I

    int-to-float v13, v13

    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getParallaxSpeedMultiplier()F

    move-result v14

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1276
    .local v4, "decodeHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentsView:Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsHeight:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->setBounds(IIII)V

    .line 1279
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_5

    .line 1280
    const-string/jumbo v13, "setup single attachment preview"

    invoke-static {v13}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1284
    .local v12, "uri":Ljava/lang/String;
    sget-object v13, Lcom/kingsoft/mail/browse/ConversationItemView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "loadAttachmentPreviews: state [BEST, SIMPLE] is [%s, %s] for %s "

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v10, v7, v0}, Lcom/kingsoft/mail/providers/Attachment;->getPreviewState(III)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v10, v7, v0}, Lcom/kingsoft/mail/providers/Attachment;->getPreviewState(III)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v12, v15, v16

    invoke-static {v13, v14, v15}, Lcom/kingsoft/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1291
    const/4 v3, -0x1

    .line 1293
    .local v3, "bestAvailableRendition":I
    sget-object v1, Lcom/kingsoft/mail/providers/UIProvider$AttachmentRendition;->PREFERRED_RENDITIONS:[I

    .local v1, "arr$":[I
    array-length v9, v1

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v9, :cond_2

    aget v11, v1, v8

    .line 1294
    .local v11, "rendition":I
    invoke-static {v10, v7, v11}, Lcom/kingsoft/mail/providers/Attachment;->getPreviewState(III)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1295
    move v3, v11

    .line 1300
    .end local v11    # "rendition":I
    :cond_2
    sget-object v13, Lcom/kingsoft/mail/browse/ConversationItemView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "creating/setting drawable region in CIV=%s canvas=%s rend=%s uri=%s"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p0, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentsView:Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    aput-object v12, v15, v16

    invoke-static {v13, v14, v15}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1304
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentsView:Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;

    invoke-virtual {v13, v7}, Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;->getOrCreateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;

    .line 1306
    .local v6, "drawable":Lcom/kingsoft/mail/bitmap/AttachmentDrawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v13, v13, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsWidth:I

    invoke-virtual {v6, v13, v4}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->setDecodeDimensions(II)V

    .line 1308
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getParallaxSpeedMultiplier()F

    move-result v13

    invoke-virtual {v6, v13}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->setParallaxSpeedMultiplier(F)V

    .line 1309
    const/4 v13, -0x1

    if-eq v3, v13, :cond_4

    .line 1310
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v6, v13, v12, v3}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->bind(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1315
    :goto_3
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 1279
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 1293
    .end local v6    # "drawable":Lcom/kingsoft/mail/bitmap/AttachmentDrawable;
    .restart local v11    # "rendition":I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1312
    .end local v11    # "rendition":I
    .restart local v6    # "drawable":Lcom/kingsoft/mail/bitmap/AttachmentDrawable;
    :cond_4
    invoke-virtual {v6}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->showStaticPlaceholder()V

    goto :goto_3

    .line 1318
    .end local v1    # "arr$":[I
    .end local v3    # "bestAvailableRendition":I
    .end local v6    # "drawable":Lcom/kingsoft/mail/bitmap/AttachmentDrawable;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v12    # "uri":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    goto/16 :goto_0
.end method

.method private loadSenderImages()V
    .locals 11

    .prologue
    const/4 v8, 0x4

    const/4 v10, 0x1

    .line 1194
    iget v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mGadgetMode:I

    if-ne v5, v10, :cond_1

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderEmails:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderEmails:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1197
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesWidth:I

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesHeight:I

    if-gtz v5, :cond_2

    .line 1199
    :cond_0
    sget-object v5, Lcom/kingsoft/mail/browse/ConversationItemView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Contact image width(%d) or height(%d) is 0 for mode: (%d)."

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v9, v9, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    iget-object v8, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v8, v8, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesHeight:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    invoke-virtual {v9}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->getMode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1227
    :cond_1
    return-void

    .line 1208
    :cond_2
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderEmails:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1209
    .local v4, "size":I
    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1210
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_3

    if-ge v1, v4, :cond_3

    .line 1211
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v6, v6, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderEmails:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->getIdentifierKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1215
    :cond_3
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContactImagesHolder:Lcom/kingsoft/mail/ui/DividedImageCanvas;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v6, v6, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesWidth:I

    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v7, v7, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesHeight:I

    invoke-virtual {v5, v6, v7}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->setDimensions(II)V

    .line 1217
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContactImagesHolder:Lcom/kingsoft/mail/ui/DividedImageCanvas;

    invoke-virtual {v5, v2}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->setDivisionIds(Ljava/util/List;)V

    .line 1219
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_1

    if-ge v1, v4, :cond_1

    .line 1220
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderEmails:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1221
    .local v0, "emailAddress":Ljava/lang/String;
    new-instance v3, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->displayableSenderNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v5, v0, v1}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1223
    .local v3, "photoIdentifier":Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;
    sget-object v5, Lcom/kingsoft/mail/browse/ConversationItemView;->sContactPhotoManager:Lcom/kingsoft/mail/photomanager/ContactPhotoManager;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContactImagesHolder:Lcom/kingsoft/mail/ui/DividedImageCanvas;

    invoke-virtual {v5, v3, v6}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;->loadThumbnail(Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/kingsoft/mail/ui/ImageCanvas;)V

    .line 1219
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static makeExactSpecForSize(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 1322
    const/high16 v0, 0x40000000

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private onTouchEventNoSwipe(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 2582
    const-string/jumbo v4, "on touch event no swipe"

    invoke-static {v4}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 2583
    const/4 v0, 0x0

    .line 2585
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 2586
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 2587
    .local v2, "y":I
    iput v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mLastTouchX:I

    .line 2588
    iput v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mLastTouchY:I

    .line 2589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 2634
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v0, :cond_1

    .line 2635
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2638
    :cond_1
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 2639
    return v0

    .line 2591
    :pswitch_1
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lcom/kingsoft/mail/browse/ConversationItemView;->isTouchInContactPhoto(FF)Z

    move-result v3

    if-nez v3, :cond_2

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lcom/kingsoft/mail/browse/ConversationItemView;->isTouchInInfoIcon(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2592
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDownEvent:Z

    .line 2593
    const/4 v0, 0x1

    goto :goto_0

    .line 2598
    :pswitch_2
    iput-boolean v6, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDownEvent:Z

    goto :goto_0

    .line 2602
    :pswitch_3
    iget-boolean v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDownEvent:Z

    if-eqz v4, :cond_0

    .line 2603
    int-to-float v4, v1

    int-to-float v5, v2

    invoke-direct {p0, v4, v5}, Lcom/kingsoft/mail/browse/ConversationItemView;->isTouchInContactPhoto(FF)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2605
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2607
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->toggleSelectedState()Z

    .line 2628
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 2629
    iput-boolean v6, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDownEvent:Z

    goto :goto_0

    .line 2610
    :cond_4
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemAreaClickListener:Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;

    if-eqz v4, :cond_6

    .line 2611
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemAreaClickListener:Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    if-nez v5, :cond_5

    :goto_2
    invoke-interface {v4, v3, p0}, Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;->onHeadPicClicked(Lcom/kingsoft/mail/providers/Conversation;Landroid/view/View;)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    goto :goto_2

    .line 2615
    :cond_6
    sget-object v3, Lcom/kingsoft/mail/browse/ConversationItemView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "if you want to disable personal list,close R.bool.use_personal_mail_list in constant.xml"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 2621
    :cond_7
    int-to-float v4, v1

    int-to-float v5, v2

    invoke-direct {p0, v4, v5}, Lcom/kingsoft/mail/browse/ConversationItemView;->isTouchInInfoIcon(FF)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2622
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemAreaClickListener:Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;

    if-eqz v4, :cond_3

    .line 2623
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemAreaClickListener:Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    if-nez v5, :cond_8

    :goto_3
    invoke-interface {v4, v3}, Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;->onInfoIconClicked(Lcom/kingsoft/mail/providers/Conversation;)V

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    goto :goto_3

    .line 2589
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static pauseTimer(Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 911
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sTimer:Lcom/kingsoft/mail/perf/Timer;

    if-eqz v0, :cond_0

    .line 912
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sTimer:Lcom/kingsoft/mail/perf/Timer;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/perf/Timer;->pause(Ljava/lang/String;)V

    .line 914
    :cond_0
    return-void
.end method

.method private setContentDescription()V
    .locals 2

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->resetContentDescription()V

    .line 1020
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->getContentDescription(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1022
    :cond_0
    return-void
.end method

.method public static setScrollStateChanged(I)V
    .locals 2
    .param p0, "scrollState"    # I

    .prologue
    .line 344
    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView;->sContactPhotoManager:Lcom/kingsoft/mail/photomanager/ContactPhotoManager;

    if-nez v1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 347
    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    .line 349
    .local v0, "flinging":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 350
    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView;->sContactPhotoManager:Lcom/kingsoft/mail/photomanager/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;->pause()V

    goto :goto_0

    .line 347
    .end local v0    # "flinging":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 352
    .restart local v0    # "flinging":Z
    :cond_2
    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView;->sContactPhotoManager:Lcom/kingsoft/mail/photomanager/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;->resume()V

    goto :goto_0
.end method

.method private showActivatedText()Z
    .locals 1

    .prologue
    .line 1467
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mTabletDevice:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mListCollapsible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static startTimer(Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 905
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sTimer:Lcom/kingsoft/mail/perf/Timer;

    if-eqz v0, :cond_0

    .line 906
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sTimer:Lcom/kingsoft/mail/perf/Timer;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/perf/Timer;->start(Ljava/lang/String;)V

    .line 908
    :cond_0
    return-void
.end method

.method private toggleSelectedState(Ljava/lang/String;)Z
    .locals 10
    .param p1, "sourceOpt"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 2396
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    if-eqz v1, :cond_7

    .line 2398
    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelected:Z

    if-nez v1, :cond_0

    move v0, v9

    :cond_0
    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelected:Z

    .line 2399
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelected:Z

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->setSelected(Z)V

    .line 2400
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v6, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    .line 2403
    .local v6, "conv":Lcom/kingsoft/mail/providers/Conversation;
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getListView()Landroid/widget/ListView;

    move-result-object v8

    check-cast v8, Lcom/kingsoft/mail/ui/SwipeableListView;

    .line 2406
    .local v8, "listView":Lcom/kingsoft/mail/ui/SwipeableListView;
    :try_start_0
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelected:Z

    if-eqz v0, :cond_3

    if-eqz v8, :cond_3

    invoke-virtual {v8, p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    :goto_0
    iput v0, v6, Lcom/kingsoft/mail/providers/Conversation;->position:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2413
    :goto_1
    const/4 v7, 0x0

    .line 2414
    .local v7, "isFirstIn":Z
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2415
    if-eqz p1, :cond_4

    move-object v2, p1

    .line 2417
    .local v2, "source":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const-string/jumbo v1, "enter_cab_mode"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2419
    const/4 v7, 0x1

    .line 2422
    .end local v2    # "source":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v0, v6}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->toggle(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 2430
    if-eqz v7, :cond_5

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mGadgetMode:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mGadgetMode:I

    if-ne v0, v9, :cond_5

    .line 2432
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 2459
    .end local v6    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    .end local v7    # "isFirstIn":Z
    .end local v8    # "listView":Lcom/kingsoft/mail/ui/SwipeableListView;
    :goto_3
    return v9

    .line 2406
    .restart local v6    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    .restart local v8    # "listView":Lcom/kingsoft/mail/ui/SwipeableListView;
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 2415
    .restart local v7    # "isFirstIn":Z
    :cond_4
    const-string/jumbo v2, "checkbox"

    goto :goto_2

    .line 2436
    :cond_5
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2437
    invoke-virtual {v8, v9}, Lcom/kingsoft/mail/ui/SwipeableListView;->commitDestructiveActions(Z)V

    .line 2454
    :cond_6
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->requestLayout()V

    goto :goto_3

    .end local v6    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    .end local v7    # "isFirstIn":Z
    .end local v8    # "listView":Lcom/kingsoft/mail/ui/SwipeableListView;
    :cond_7
    move v9, v0

    .line 2459
    goto :goto_3

    .line 2408
    .restart local v6    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    .restart local v8    # "listView":Lcom/kingsoft/mail/ui/SwipeableListView;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private unwrap()Landroid/view/View;
    .locals 2

    .prologue
    .line 2720
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2721
    .local v0, "vp":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 2722
    :cond_0
    const/4 v0, 0x0

    .line 2724
    .end local v0    # "vp":Landroid/view/ViewParent;
    :goto_0
    return-object v0

    .restart local v0    # "vp":Landroid/view/ViewParent;
    :cond_1
    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method private updateUnreadMark(Z)V
    .locals 1
    .param p1, "isUnread"    # Z

    .prologue
    .line 2358
    const v0, 0x7f020133

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->setBackgroundResource(I)V

    .line 2359
    return-void
.end method


# virtual methods
.method public ToDBC(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 2215
    if-nez p1, :cond_0

    .line 2216
    const/4 v2, 0x0

    .line 2226
    :goto_0
    return-object v2

    .line 2217
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2218
    .local v0, "c":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 2219
    aget-char v2, v0, v1

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_2

    .line 2220
    const/16 v2, 0x20

    aput-char v2, v0, v1

    .line 2218
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2223
    :cond_2
    aget-char v2, v0, v1

    const v3, 0xff00

    if-le v2, v3, :cond_1

    aget-char v2, v0, v1

    const v3, 0xff5f

    if-ge v2, v3, :cond_1

    .line 2224
    aget-char v2, v0, v1

    const v3, 0xfee0

    sub-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_2

    .line 2226
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public addInConversationSet()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->toggle(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 306
    return-void
.end method

.method public bind(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;Lcom/kingsoft/mail/ui/ConversationSelectionSet;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;IZZZZZLcom/kingsoft/mail/ui/AnimatedAdapter;Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;Z)V
    .locals 20
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "activity"    # Lcom/kingsoft/mail/ui/ControllableActivity;
    .param p3, "conversationListListener"    # Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;
    .param p4, "set"    # Lcom/kingsoft/mail/ui/ConversationSelectionSet;
    .param p5, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p6, "account"    # Ljava/lang/String;
    .param p7, "checkboxOrSenderImage"    # I
    .param p8, "showAttachmentPreviews"    # Z
    .param p9, "parallaxSpeedAlternative"    # Z
    .param p10, "parallaxDirectionAlternative"    # Z
    .param p11, "swipeEnabled"    # Z
    .param p12, "priorityArrowEnabled"    # Z
    .param p13, "adapter"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;
    .param p14, "conversationItemAreaClickListener"    # Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;
    .param p15, "isStarEnabled"    # Z

    .prologue
    .line 685
    const-string/jumbo v2, "CIVC.bind"

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 686
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->forConversation(Ljava/lang/String;Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    move-result-object v3

    const/16 v17, -0x1

    const/16 v18, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p14

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v19, p15

    invoke-direct/range {v2 .. v19}, Lcom/kingsoft/mail/browse/ConversationItemView;->bind(Lcom/kingsoft/mail/browse/ConversationItemViewModel;Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;Lcom/kingsoft/mail/ui/ConversationSelectionSet;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;IZZZZZLcom/kingsoft/mail/ui/AnimatedAdapter;ILandroid/graphics/Bitmap;Z)V

    .line 694
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 695
    return-void
.end method

.method public canChildBeDismissed()Z
    .locals 1

    .prologue
    .line 2554
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createDestroyWithSwipeAnimation(Z)Landroid/animation/Animator;
    .locals 7
    .param p1, "swipe"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2823
    const/4 v0, 0x0

    .line 2824
    .local v0, "animationDuration":I
    if-eqz p1, :cond_0

    .line 2825
    sget v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sSlideAnimationDuration:I

    .line 2829
    :goto_0
    invoke-direct {p0, v6, v5, v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->createTranslateXAnimation(ZZI)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2830
    .local v2, "slide":Landroid/animation/ObjectAnimator;
    invoke-direct {p0, v5, v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->createHeightAnimation(ZI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2831
    .local v1, "height":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2832
    .local v3, "transitionSet":Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_1

    .line 2833
    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v5

    aput-object v1, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2836
    :goto_1
    return-object v3

    .line 2827
    .end local v1    # "height":Landroid/animation/ObjectAnimator;
    .end local v2    # "slide":Landroid/animation/ObjectAnimator;
    .end local v3    # "transitionSet":Landroid/animation/AnimatorSet;
    :cond_0
    sget v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sShrinkAnimationDuration:I

    goto :goto_0

    .line 2835
    .restart local v1    # "height":Landroid/animation/ObjectAnimator;
    .restart local v2    # "slide":Landroid/animation/ObjectAnimator;
    .restart local v3    # "transitionSet":Landroid/animation/AnimatorSet;
    :cond_1
    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v5

    aput-object v1, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_1
.end method

.method public createDestroyWithSwipeAnimation(ZLandroid/view/View;)Landroid/animation/Animator;
    .locals 9
    .param p1, "swipe"    # Z
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2840
    const/4 v0, 0x0

    .line 2841
    .local v0, "animationDuration":I
    if-eqz p1, :cond_0

    .line 2842
    sget v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sSlideAnimationDuration:I

    .line 2846
    :goto_0
    invoke-direct {p0, v7, v6, v0, p2}, Lcom/kingsoft/mail/browse/ConversationItemView;->createTranslateXAnimation(ZZILandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2847
    .local v3, "slide":Landroid/animation/ObjectAnimator;
    invoke-direct {p0, v7, v6, v0, p2}, Lcom/kingsoft/mail/browse/ConversationItemView;->createScaleXAnimation(ZZILandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2848
    .local v2, "redColor":Landroid/animation/ObjectAnimator;
    invoke-direct {p0, v6, v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->createHeightAnimation(ZI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2849
    .local v1, "height":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2850
    .local v4, "transitionSet":Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_1

    .line 2851
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v3, v5, v6

    aput-object v2, v5, v7

    aput-object v1, v5, v8

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2854
    :goto_1
    return-object v4

    .line 2844
    .end local v1    # "height":Landroid/animation/ObjectAnimator;
    .end local v2    # "redColor":Landroid/animation/ObjectAnimator;
    .end local v3    # "slide":Landroid/animation/ObjectAnimator;
    .end local v4    # "transitionSet":Landroid/animation/AnimatorSet;
    :cond_0
    sget v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sShrinkAnimationDuration:I

    goto :goto_0

    .line 2853
    .restart local v1    # "height":Landroid/animation/ObjectAnimator;
    .restart local v2    # "redColor":Landroid/animation/ObjectAnimator;
    .restart local v3    # "slide":Landroid/animation/ObjectAnimator;
    .restart local v4    # "transitionSet":Landroid/animation/AnimatorSet;
    :cond_1
    new-array v5, v8, [Landroid/animation/Animator;

    aput-object v3, v5, v6

    aput-object v1, v5, v7

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_1
.end method

.method public createRestoreAnimation(Z)Landroid/animation/Animator;
    .locals 3
    .param p1, "enterWindow"    # Z

    .prologue
    .line 2799
    const/4 v1, 0x0

    sget v2, Lcom/kingsoft/mail/browse/ConversationItemView;->sHorizontalAnimationDuration:I

    invoke-direct {p0, v1, p1, v2}, Lcom/kingsoft/mail/browse/ConversationItemView;->createTranslateXAnimation(ZZI)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2800
    .local v0, "restoreAnimator":Landroid/animation/ObjectAnimator;
    return-object v0
.end method

.method public createSwipeUndoAnimation()Landroid/animation/Animator;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2791
    sget v1, Lcom/kingsoft/mail/browse/ConversationItemView;->sHorizontalAnimationDuration:I

    invoke-direct {p0, v2, v2, v1}, Lcom/kingsoft/mail/browse/ConversationItemView;->createTranslateXAnimation(ZZI)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2792
    .local v0, "undoAnimator":Landroid/animation/ObjectAnimator;
    return-object v0
.end method

.method public createUndoAnimation()Landroid/animation/Animator;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2808
    sget v3, Lcom/kingsoft/mail/browse/ConversationItemView;->sShrinkAnimationDuration:I

    invoke-direct {p0, v5, v3}, Lcom/kingsoft/mail/browse/ConversationItemView;->createHeightAnimation(ZI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2809
    .local v1, "height":Landroid/animation/ObjectAnimator;
    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2810
    .local v0, "fade":Landroid/animation/Animator;
    sget v3, Lcom/kingsoft/mail/browse/ConversationItemView;->sShrinkAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 2811
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40000000

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2812
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2813
    .local v2, "transitionSet":Landroid/animation/AnimatorSet;
    new-array v3, v6, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2814
    new-instance v3, Lcom/kingsoft/mail/utils/HardwareLayerEnabler;

    invoke-direct {v3, p0}, Lcom/kingsoft/mail/utils/HardwareLayerEnabler;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2815
    return-object v2

    .line 2809
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method public dismiss(Z)V
    .locals 4
    .param p1, "moveLeft"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2560
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/SwipeableListView;

    .line 2561
    .local v0, "listView":Lcom/kingsoft/mail/ui/SwipeableListView;
    if-eqz v0, :cond_1

    .line 2563
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2566
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v1, p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->dismissChild(Lcom/kingsoft/mail/browse/ConversationItemView;)V

    .line 2578
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->isDragCancelled:Z

    .line 2579
    return-void

    .line 2570
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v1, v1, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    if-nez v1, :cond_3

    .line 2571
    const-string/jumbo v1, "A17"

    invoke-static {v1}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 2574
    :cond_3
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/SwipeableListView;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v2, v2, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v1, p0, v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->markRead(Lcom/kingsoft/mail/browse/ConversationItemView;Z)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public enterCab(Z)V
    .locals 2
    .param p1, "isEnter"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2463
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPhotoFlipAnimator:Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->setIsShowOrHide(Z)V

    .line 2464
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPhotoFlipAnimator:Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->startAnimation(Z)V

    .line 2465
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPhotoFlipAnimator:Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->invalidateArea()V

    .line 2466
    return-void

    .line 2464
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3166
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getConversation()Lcom/kingsoft/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    return-object v0
.end method

.method public getHeader()Lcom/kingsoft/mail/browse/ConversationItemViewModel;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    return-object v0
.end method

.method public getMinAllowScrollDistance()F
    .locals 1

    .prologue
    .line 3031
    sget v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sScrollSlop:I

    int-to-float v0, v0

    return v0
.end method

.method public getSearchParams()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3183
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    instance-of v1, v1, Lcom/kingsoft/email2/ui/MailActivityEmail;

    if-eqz v1, :cond_0

    .line 3184
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    check-cast v1, Lcom/kingsoft/email2/ui/MailActivityEmail;

    invoke-virtual {v1}, Lcom/kingsoft/email2/ui/MailActivityEmail;->getAccountController()Lcom/kingsoft/mail/ui/AccountController;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/AbstractActivityController;

    .line 3185
    .local v0, "control":Lcom/kingsoft/mail/ui/AbstractActivityController;
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getSearchFilter()Ljava/lang/String;

    move-result-object v1

    .line 3187
    .end local v0    # "control":Lcom/kingsoft/mail/ui/AbstractActivityController;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectionMode()Z
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    const/4 v0, 0x1

    .line 974
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSwipeableView()Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;
    .locals 1

    .prologue
    .line 2923
    invoke-static {p0}, Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;->from(Landroid/view/View;)Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v0

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 863
    const/4 v0, 0x0

    .line 864
    .local v0, "handled":Z
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    if-eqz v2, :cond_0

    .line 865
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentsView:Lcom/kingsoft/mail/bitmap/AttachmentGridDrawable;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 866
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 867
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsX:I

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsY:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 869
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/kingsoft/mail/browse/ConversationItemView;->invalidate(IIII)V

    .line 871
    const/4 v0, 0x1

    .line 874
    .end local v1    # "r":Landroid/graphics/Rect;
    :cond_0
    if-nez v0, :cond_1

    .line 875
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 877
    :cond_1
    return-void
.end method

.method public isInConversationSet()Z
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->contains(Lcom/kingsoft/mail/providers/Conversation;)Z

    move-result v0

    return v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 2977
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2982
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2979
    :pswitch_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->stopDragMode()V

    .line 2980
    const/4 v0, 0x1

    goto :goto_0

    .line 2977
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/4 v12, 0x0

    const/high16 v13, -0x1000000

    const/4 v11, 0x1

    .line 1858
    const-string/jumbo v0, "CIVC.draw"

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 1866
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1867
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationItemView;->drawItemViewBackground(Landroid/graphics/Canvas;)V

    .line 1868
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1870
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->judgePostionType()V

    .line 1871
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0050

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 1874
    .local v7, "lineColor":I
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPostionType:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    sget-object v2, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;->first:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->hasSpecialViews()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1876
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 1877
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    sget-object v5, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1882
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v13}, Landroid/text/TextPaint;->setColor(I)V

    .line 1883
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mGadgetMode:I

    if-ne v0, v11, :cond_1

    .line 1884
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1885
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationItemView;->drawContactImageArea(Landroid/graphics/Canvas;)V

    .line 1886
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1889
    :cond_1
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v13}, Landroid/text/TextPaint;->setColor(I)V

    .line 1890
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1891
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1892
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mGadgetMode:I

    if-ne v0, v11, :cond_c

    move v0, v11

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->drawCheckbox(Landroid/graphics/Canvas;Z)V

    .line 1893
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1896
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-boolean v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->unread:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mGadgetMode:I

    if-ne v0, v11, :cond_d

    move v8, v11

    .line 1898
    .local v8, "sendersUnreadMarkVisible":Z
    :goto_1
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->isDragCancelled:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mGadgetMode:I

    if-ne v0, v11, :cond_4

    .line 1899
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-boolean v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->unread:Z

    if-nez v0, :cond_3

    .line 1900
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemUnreadAnimation:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mGadgetMode:I

    if-ne v1, v11, :cond_e

    :goto_2
    invoke-virtual {v0, v11}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->startXReadAnimation(Z)V

    .line 1903
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-boolean v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->unread:Z

    if-eqz v0, :cond_4

    .line 1904
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemUnreadAnimation:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    invoke-virtual {v0, v8}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->startXUnReadAnimation(Z)V

    .line 1908
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1909
    invoke-direct {p0, p1, v8}, Lcom/kingsoft/mail/browse/ConversationItemView;->drawUnreadMark(Landroid/graphics/Canvas;Z)V

    .line 1910
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1913
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-boolean v6, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->unread:Z

    .line 1915
    .local v6, "isUnread":Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1916
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sendersDisplayLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_10

    .line 1917
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersFontSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1918
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-static {v6}, Lcom/kingsoft/mail/browse/SendersView;->getTypeface(Z)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1919
    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    if-eqz v6, :cond_f

    sget v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sSendersTextColorUnread:I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1921
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersX:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersY:I

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sendersDisplayLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1923
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sendersDisplayLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1927
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1930
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1931
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1932
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationItemView;->drawSubject(Landroid/graphics/Canvas;)V

    .line 1933
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1936
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1937
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1938
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationItemView;->drawSnippet(Landroid/graphics/Canvas;)V

    .line 1939
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1942
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConfig:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->isColorBlockVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1943
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sFoldersPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget v1, v1, Lcom/kingsoft/mail/providers/Conversation;->color:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1944
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sFoldersPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1945
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mColorBlockX:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->colorBlockY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mColorBlockX:I

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->colorBlockWidth:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->colorBlockY:I

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->colorBlockHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Lcom/kingsoft/mail/browse/ConversationItemView;->sFoldersPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1952
    :cond_5
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->infoIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 1953
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->infoIcon:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mInfoIconX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->infoIconY:I

    int-to-float v2, v2

    sget-object v3, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1958
    :cond_6
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->dateFontSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1959
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->dateTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1960
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->dateText:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDateX:I

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->dateYBaseline:I

    sget-object v3, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/kingsoft/mail/browse/ConversationItemView;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IILandroid/text/TextPaint;)V

    .line 1964
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->paperclip:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 1967
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v13}, Landroid/text/TextPaint;->setColor(I)V

    .line 1968
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->paperclip:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAttachmentX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->paperclipY:I

    int-to-float v2, v2

    sget-object v3, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1980
    :cond_7
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v0, v0, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    if-eqz v0, :cond_8

    .line 1981
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v13}, Landroid/text/TextPaint;->setColor(I)V

    .line 1982
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1983
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->MARK_STAR:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->markStarX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->paperclipY:I

    int-to-float v2, v2

    sget-object v3, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1985
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1989
    :cond_8
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->isAttachmentPreviewsEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1990
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1991
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v13}, Landroid/text/TextPaint;->setColor(I)V

    .line 1992
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationItemView;->drawAttachmentPreviews(Landroid/graphics/Canvas;)V

    .line 1993
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1996
    :cond_9
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v13}, Landroid/text/TextPaint;->setColor(I)V

    .line 1997
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2007
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConfig:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->isPersonalIndicatorVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2008
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->personalLevelBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->personalIndicatorX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->personalIndicatorY:I

    int-to-float v2, v2

    sget-object v3, Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2012
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2015
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mTabletDevice:Z

    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mListCollapsible:Z

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConfig:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->getViewMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/Utils;->getDisplayListRightEdgeEffect(ZZI)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2017
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->RIGHT_EDGE_TABLET:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getWidth()I

    move-result v1

    sget-object v2, Lcom/kingsoft/mail/browse/ConversationItemView;->RIGHT_EDGE_TABLET:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2020
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->RIGHT_EDGE_TABLET:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2022
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2024
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getWidth()I

    move-result v0

    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView;->VISIBLE_CONVERSATION_CARET:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v9, v0, v1

    .line 2026
    .local v9, "x":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getHeight()I

    move-result v0

    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView;->VISIBLE_CONVERSATION_CARET:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v10, v0, 0x2

    .line 2028
    .local v10, "y":I
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->VISIBLE_CONVERSATION_CARET:Landroid/graphics/Bitmap;

    int-to-float v1, v9

    int-to-float v2, v10

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2031
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_b
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 2032
    return-void

    .end local v6    # "isUnread":Z
    .end local v8    # "sendersUnreadMarkVisible":Z
    :cond_c
    move v0, v12

    .line 1892
    goto/16 :goto_0

    :cond_d
    move v8, v12

    .line 1896
    goto/16 :goto_1

    .restart local v8    # "sendersUnreadMarkVisible":Z
    :cond_e
    move v11, v12

    .line 1900
    goto/16 :goto_2

    .line 1919
    .restart local v6    # "isUnread":Z
    :cond_f
    sget v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sSendersTextColorRead:I

    goto/16 :goto_3

    .line 1925
    :cond_10
    invoke-direct {p0, p1, v8}, Lcom/kingsoft/mail/browse/ConversationItemView;->drawSenders(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_4
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 982
    const-string/jumbo v0, "CCHV.layout"

    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->startTimer(Ljava/lang/String;)V

    .line 983
    const-string/jumbo v0, "CIVC.layout"

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 985
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mInSelectionMode:Z

    .line 988
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 990
    const-string/jumbo v0, "text and bitmaps"

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 991
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->calculateTextsAndBitmaps()V

    .line 992
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 994
    const-string/jumbo v0, "coordinates"

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 995
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->calculateCoordinates()V

    .line 996
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 999
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-boolean v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->unread:Z

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->createSubject(Z)V

    .line 1001
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-boolean v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->unread:Z

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->createSnippet(Z)V

    .line 1003
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->isLayoutValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1004
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->setContentDescription()V

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->validate()V

    .line 1008
    const-string/jumbo v0, "CCHV.layout"

    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->pauseTimer(Ljava/lang/String;)V

    .line 1009
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sTimer:Lcom/kingsoft/mail/perf/Timer;

    if-eqz v0, :cond_1

    sget v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sLayoutCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sLayoutCount:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1

    .line 1010
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sTimer:Lcom/kingsoft/mail/perf/Timer;

    invoke-virtual {v0}, Lcom/kingsoft/mail/perf/Timer;->dumpResults()V

    .line 1011
    new-instance v0, Lcom/kingsoft/mail/perf/Timer;

    invoke-direct {v0}, Lcom/kingsoft/mail/perf/Timer;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sTimer:Lcom/kingsoft/mail/perf/Timer;

    .line 1012
    const/4 v0, 0x0

    sput v0, Lcom/kingsoft/mail/browse/ConversationItemView;->sLayoutCount:I

    .line 1014
    :cond_1
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 1015
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x0

    .line 918
    const-string/jumbo v4, "CIVC.measure"

    invoke-static {v4}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 919
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 920
    .local v3, "wSize":I
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPreviousMode:I

    .line 921
    .local v0, "currentMode":I
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    if-eqz v4, :cond_0

    .line 922
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v4}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    .line 924
    :cond_0
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mViewWidth:I

    if-ne v3, v4, :cond_1

    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPreviousMode:I

    if-eq v4, v0, :cond_2

    .line 925
    :cond_1
    iput v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mViewWidth:I

    .line 926
    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPreviousMode:I

    .line 928
    :cond_2
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mViewWidth:I

    iput v5, v4, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->viewWidth:I

    .line 930
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConfig:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    invoke-virtual {v4, v3}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->updateWidth(I)Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->setViewMode(I)Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    .line 932
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 933
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    const v5, 0x7f0d011c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v4, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->standardScaledDimen:I

    .line 937
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mGadgetMode:I

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSelectedConversationSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 940
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConfig:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->withGadget(I)Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    .line 945
    :goto_0
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    if-nez v4, :cond_6

    .line 946
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConfig:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    new-instance v6, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;

    invoke-direct {v6}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;-><init>()V

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->forConfig(Landroid/content/Context;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;)Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    .line 953
    :goto_1
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPhotoBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 954
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesWidth:I

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v6, v6, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesHeight:I

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPhotoRect:Landroid/graphics/Rect;

    .line 958
    :cond_3
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAnimatedHeightFraction:F

    const/high16 v5, 0x3f800000

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAnimatedHeightFraction:F

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v5, v5, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->height:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 961
    .local v1, "h":I
    :goto_2
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConfig:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->getWidth()I

    move-result v4

    invoke-virtual {p0, v4, v1}, Lcom/kingsoft/mail/browse/ConversationItemView;->setMeasuredDimension(II)V

    .line 963
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemUnreadAnimation:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    if-nez v4, :cond_4

    .line 964
    new-instance v4, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/kingsoft/mail/browse/ConversationItemView;->UNREAD_MARK:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    invoke-direct {v4, v5, p0, v6, v7}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/ConversationItemView;ILcom/kingsoft/mail/browse/ConversationItemViewCoordinates;)V

    iput-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemUnreadAnimation:Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    .line 965
    :cond_4
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 966
    return-void

    .line 942
    .end local v1    # "h":I
    :cond_5
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConfig:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    iget v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mGadgetMode:I

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;->withGadget(I)Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    goto :goto_0

    .line 949
    :cond_6
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConfig:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getCoordinatesCache()Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->forConfig(Landroid/content/Context;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$Config;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;)Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    goto :goto_1

    .line 958
    :cond_7
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->height:I

    goto :goto_2
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->isAttachmentPreviewsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1850
    :cond_0
    :goto_0
    return-void

    .line 1843
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsX:I

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsY:I

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsX:I

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsWidth:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsY:I

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsHeight:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kingsoft/mail/browse/ConversationItemView;->invalidate(IIII)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1854
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 2647
    const-string/jumbo v5, "on touch event"

    invoke-static {v5}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 2648
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 2649
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 2650
    .local v2, "y":I
    iput v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mLastTouchX:I

    .line 2651
    iput v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mLastTouchY:I

    .line 2652
    iget-boolean v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mSwipeEnabled:Z

    if-nez v5, :cond_0

    .line 2653
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 2654
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationItemView;->onTouchEventNoSwipe(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2698
    :goto_0
    return v0

    .line 2656
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 2692
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2693
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_8

    .line 2694
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    move v0, v4

    .line 2695
    goto :goto_0

    .line 2658
    .end local v0    # "handled":Z
    :pswitch_0
    int-to-float v3, v1

    int-to-float v5, v2

    invoke-direct {p0, v3, v5}, Lcom/kingsoft/mail/browse/ConversationItemView;->isTouchInContactPhoto(FF)Z

    move-result v3

    if-nez v3, :cond_2

    int-to-float v3, v1

    int-to-float v5, v2

    invoke-direct {p0, v3, v5}, Lcom/kingsoft/mail/browse/ConversationItemView;->isTouchInInfoIcon(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2659
    :cond_2
    iput-boolean v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDownEvent:Z

    .line 2660
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    move v0, v4

    .line 2661
    goto :goto_0

    .line 2665
    :pswitch_1
    iget-boolean v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDownEvent:Z

    if-eqz v5, :cond_1

    .line 2666
    int-to-float v5, v1

    int-to-float v6, v2

    invoke-direct {p0, v5, v6}, Lcom/kingsoft/mail/browse/ConversationItemView;->isTouchInContactPhoto(FF)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2668
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 2669
    iput-boolean v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDownEvent:Z

    .line 2670
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemAreaClickListener:Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;

    if-eqz v5, :cond_3

    .line 2671
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemAreaClickListener:Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    if-nez v6, :cond_4

    :goto_1
    invoke-interface {v5, v3, p0}, Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;->onHeadPicClicked(Lcom/kingsoft/mail/providers/Conversation;Landroid/view/View;)V

    .line 2675
    :cond_3
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    move v0, v4

    .line 2676
    goto :goto_0

    .line 2671
    :cond_4
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    goto :goto_1

    .line 2677
    :cond_5
    int-to-float v5, v1

    int-to-float v6, v2

    invoke-direct {p0, v5, v6}, Lcom/kingsoft/mail/browse/ConversationItemView;->isTouchInInfoIcon(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2679
    iput-boolean v7, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mDownEvent:Z

    .line 2680
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemAreaClickListener:Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;

    if-eqz v5, :cond_6

    .line 2681
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mConversationItemAreaClickListener:Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    if-nez v6, :cond_7

    :goto_2
    invoke-interface {v5, v3}, Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;->onInfoIconClicked(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 2685
    :cond_6
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    move v0, v4

    .line 2686
    goto :goto_0

    .line 2681
    :cond_7
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    goto :goto_2

    .line 2697
    .restart local v0    # "handled":Z
    :cond_8
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    goto :goto_0

    .line 2656
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public performClick()Z
    .locals 6

    .prologue
    .line 2703
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 2705
    .local v0, "handled":Z
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 2706
    .local v1, "list":Landroid/widget/ListView;
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2708
    instance-of v3, v1, Lcom/kingsoft/mail/ui/SwipeableListView;

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 2709
    check-cast v3, Lcom/kingsoft/mail/ui/SwipeableListView;

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v3, p0, v4}, Lcom/kingsoft/mail/ui/SwipeableListView;->findConversation(Lcom/kingsoft/mail/browse/ConversationItemView;Lcom/kingsoft/mail/providers/Conversation;)I

    move-result v2

    .line 2711
    .local v2, "pos":I
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v3, v3, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-virtual {v1, p0, v2, v3, v4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 2716
    .end local v2    # "pos":I
    :cond_0
    :goto_0
    return v0

    .line 2713
    :cond_1
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v4, v4, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-virtual {v1, p0, v3, v4, v5}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000

    .line 2752
    const-string/jumbo v0, "reset"

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 2753
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/browse/ConversationItemView;->setAlpha(F)V

    .line 2754
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->setTranslationX(F)V

    .line 2755
    iput v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAnimatedHeightFraction:F

    .line 2756
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 2757
    return-void
.end method

.method public setAnimatedHeightFraction(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 2917
    iput p1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAnimatedHeightFraction:F

    .line 2918
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->requestLayout()V

    .line 2919
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 1026
    const-string/jumbo v1, "set background resource"

    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 1027
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1029
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1041
    :cond_0
    :goto_0
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 1042
    return-void

    .line 1031
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mBackgrounds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 1032
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    .line 1033
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1034
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mBackgrounds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1036
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 1038
    invoke-super {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setDragCancelled(Z)V
    .locals 0
    .param p1, "isDragCancelled"    # Z

    .prologue
    .line 2912
    iput-boolean p1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->isDragCancelled:Z

    .line 2913
    return-void
.end method

.method public setPhotoFlipFraction(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 3162
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mPhotoFlipAnimator:Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->setValue(F)V

    .line 3163
    return-void
.end method

.method public setTranslationX(F)V
    .locals 6
    .param p1, "translationX"    # F

    .prologue
    .line 2762
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 2769
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2770
    .local v0, "parent":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2771
    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "CIV.setTranslationX null ConversationItemView parent x=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2777
    :cond_0
    instance-of v1, v0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    if-eqz v1, :cond_1

    .line 2778
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_2

    .line 2784
    :cond_1
    :goto_0
    return-void

    .line 2781
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public showEnterCabAnimation(Z)V
    .locals 4
    .param p1, "isEnter"    # Z

    .prologue
    .line 2378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2380
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2381
    .local v1, "it":Landroid/view/View;
    instance-of v3, v1, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 2383
    check-cast v2, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    .line 2384
    .local v2, "item":Lcom/kingsoft/mail/browse/SwipeableConversationItemView;
    invoke-virtual {v2, p1}, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->startCabAnimation(Z)V

    .line 2378
    .end local v2    # "item":Lcom/kingsoft/mail/browse/SwipeableConversationItemView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2387
    .end local v1    # "it":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public toggleMarkStar()V
    .locals 6

    .prologue
    .line 2475
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v2, v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v1, v1, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    .line 2477
    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->markStarX:I

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->paperclipY:I

    iget v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->markStarX:I

    sget-object v4, Lcom/kingsoft/mail/browse/ConversationItemView;->MARK_STAR:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->paperclipY:I

    sget-object v5, Lcom/kingsoft/mail/browse/ConversationItemView;->MARK_STAR:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/kingsoft/mail/browse/ConversationItemView;->postInvalidate(IIII)V

    .line 2480
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/ConversationCursor;

    .line 2481
    .local v0, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    if-eqz v0, :cond_0

    .line 2483
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    const-string/jumbo v2, "starred"

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v3, v3, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingsoft/mail/browse/ConversationCursor;->updateBoolean(Lcom/kingsoft/mail/providers/Conversation;Ljava/lang/String;Z)I

    .line 2487
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView;->mAccount:Ljava/lang/String;

    const-string/jumbo v2, "A10"

    invoke-static {v1, v2}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onUserEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2488
    return-void

    .line 2475
    .end local v0    # "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toggleSelectedState()Z
    .locals 1

    .prologue
    .line 2391
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->toggleSelectedState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toggleSelectedStateOrBeginDrag()Z
    .locals 1

    .prologue
    .line 2372
    const-string/jumbo v0, "long_press"

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/ConversationItemView;->toggleSelectedState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
