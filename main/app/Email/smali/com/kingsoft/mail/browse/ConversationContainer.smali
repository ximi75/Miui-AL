.class public Lcom/kingsoft/mail/browse/ConversationContainer;
.super Landroid/view/ViewGroup;
.source "ConversationContainer.java"

# interfaces
.implements Lcom/kingsoft/mail/browse/ScrollNotifier$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/ConversationContainer$AdapterObserver;,
        Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;,
        Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;,
        Lcom/kingsoft/mail/browse/ConversationContainer$DetachListener;
    }
.end annotation


# static fields
.field private static final BOTTOM_LAYER_VIEW_IDS:[I

.field private static final SNAP_HEADER_MAX_SCROLL_SPEED:F = 600.0f

.field private static final TAG:Ljava/lang/String; = "ConvLayout"

.field private static final TOP_LAYER_VIEW_IDS:[I


# instance fields
.field private mAccountController:Lcom/kingsoft/mail/browse/ConversationAccountController;

.field private mActivePointerId:I

.field private final mAdapterObserver:Landroid/database/DataSetObserver;

.field private mAdditionalBottomBorder:Landroid/view/View;

.field private mAdditionalBottomBorderAdded:Z

.field private mAdditionalBottomBorderOverlayTop:I

.field private mAttachedOverlaySinceLastDraw:Z

.field private mDisableLayoutTracing:Z

.field private mLastMotionY:F

.field private mMissedPointerDown:Z

.field private final mNonScrollingChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetY:I

.field private mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

.field private mOverlayPositions:[Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;

.field private final mOverlayViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:F

.field private final mScrapViews:Lcom/kingsoft/mail/utils/DequeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingsoft/mail/utils/DequeMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSnapEnabled:Z

.field private mSnapHeader:Lcom/kingsoft/mail/browse/MessageHeaderView;

.field private mSnapIndex:I

.field private mTopMostOverlay:Landroid/view/View;

.field private mTouchInitialized:Z

.field private mTouchIsDown:Z

.field private final mTouchSlop:I

.field private final mVelocityTracker:Lcom/kingsoft/mail/utils/InputSmoother;

.field private mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

.field private mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationContainer;->BOTTOM_LAYER_VIEW_IDS:[I

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0c01d4

    aput v2, v0, v1

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationContainer;->TOP_LAYER_VIEW_IDS:[I

    return-void

    .line 71
    :array_0
    .array-data 4
        0x7f0c01b7
        0x7f0c01cf
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/ConversationContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 243
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mNonScrollingChildren:Ljava/util/List;

    .line 140
    iput-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mTouchIsDown:Z

    .line 151
    new-instance v0, Lcom/kingsoft/mail/utils/DequeMap;

    invoke-direct {v0}, Lcom/kingsoft/mail/utils/DequeMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mScrapViews:Lcom/kingsoft/mail/utils/DequeMap;

    .line 175
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationContainer$AdapterObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/browse/ConversationContainer$AdapterObserver;-><init>(Lcom/kingsoft/mail/browse/ConversationContainer;Lcom/kingsoft/mail/browse/ConversationContainer$1;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdapterObserver:Landroid/database/DataSetObserver;

    .line 245
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayViews:Landroid/util/SparseArray;

    .line 247
    new-instance v0, Lcom/kingsoft/mail/utils/InputSmoother;

    invoke-direct {v0, p1}, Lcom/kingsoft/mail/utils/InputSmoother;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mVelocityTracker:Lcom/kingsoft/mail/utils/InputSmoother;

    .line 249
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mTouchSlop:I

    .line 255
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/browse/ConversationContainer;->setMotionEventSplittingEnabled(Z)V

    .line 256
    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/browse/ConversationContainer;Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationContainer;
    .param p1, "x1"    # Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationContainer;->detachOverlay(Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/browse/ConversationContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationContainer;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationContainer;->onDataSetChanged()V

    return-void
.end method

.method private addOverlayView(I)Landroid/view/View;
    .locals 9
    .param p1, "adapterIndex"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 852
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v3, p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getItemViewType(I)I

    move-result v1

    .line 853
    .local v1, "itemType":I
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mScrapViews:Lcom/kingsoft/mail/utils/DequeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/utils/DequeMap;->poll(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 855
    .local v0, "convertView":Landroid/view/View;
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v3, p1, v0, p0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 856
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayViews:Landroid/util/SparseArray;

    new-instance v4, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;

    invoke-direct {v4, v2, v1}, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;-><init>(Landroid/view/View;I)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 858
    if-ne v0, v2, :cond_0

    .line 859
    const-string/jumbo v3, "ConvLayout"

    const-string/jumbo v4, "want to REUSE scrolled-in view: index=%d obj=%s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v2, v5, v8

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 864
    :goto_0
    invoke-direct {p0, v2}, Lcom/kingsoft/mail/browse/ConversationContainer;->addViewInLayoutWrapper(Landroid/view/View;)V

    .line 866
    return-object v2

    .line 861
    :cond_0
    const-string/jumbo v3, "ConvLayout"

    const-string/jumbo v4, "want to CREATE scrolled-in view: index=%d obj=%s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v2, v5, v8

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private addViewInLayoutWrapper(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 870
    sget-object v1, Lcom/kingsoft/mail/browse/ConversationContainer;->BOTTOM_LAYER_VIEW_IDS:[I

    array-length v0, v1

    .line 871
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/kingsoft/mail/browse/ConversationContainer;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 872
    iput-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAttachedOverlaySinceLastDraw:Z

    .line 873
    return-void
.end method

.method private static calculatePosition(Lcom/kingsoft/mail/browse/ConversationOverlayItem;III)Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;
    .locals 5
    .param p0, "adapterItem"    # Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    .param p1, "withinTop"    # I
    .param p2, "withinBottom"    # I
    .param p3, "forceGravity"    # I

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 597
    const/16 v2, 0x30

    if-ne p3, v2, :cond_0

    move v1, p1

    .line 598
    .local v1, "y":I
    :goto_0
    new-instance v2, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;

    invoke-direct {v2, v1, v1}, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;-><init>(II)V

    .line 607
    .end local v1    # "y":I
    .end local p3    # "forceGravity":I
    :goto_1
    return-object v2

    .restart local p3    # "forceGravity":I
    :cond_0
    move v1, p2

    .line 597
    goto :goto_0

    .line 601
    :cond_1
    if-eqz p3, :cond_2

    .end local p3    # "forceGravity":I
    :goto_2
    and-int/lit8 v0, p3, 0x70

    .line 603
    .local v0, "v":I
    sparse-switch v0, :sswitch_data_0

    .line 609
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported gravity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 601
    .end local v0    # "v":I
    .restart local p3    # "forceGravity":I
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->getGravity()I

    move-result p3

    goto :goto_2

    .line 605
    .end local p3    # "forceGravity":I
    .restart local v0    # "v":I
    :sswitch_0
    new-instance v2, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->getHeight()I

    move-result v3

    sub-int v3, p2, v3

    invoke-direct {v2, v3, p2}, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;-><init>(II)V

    goto :goto_1

    .line 607
    :sswitch_1
    new-instance v2, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->getHeight()I

    move-result v3

    add-int/2addr v3, p1

    invoke-direct {v2, p1, v3}, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;-><init>(II)V

    goto :goto_1

    .line 603
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private clearOverlays()V
    .locals 3

    .prologue
    .line 345
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayViews:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 346
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;

    invoke-direct {p0, v2}, Lcom/kingsoft/mail/browse/ConversationContainer;->detachOverlay(Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;)V

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayViews:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 349
    return-void
.end method

.method private detachOverlay(Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;)V
    .locals 3
    .param p1, "overlay"    # Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;

    .prologue
    .line 683
    iget-object v0, p1, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationContainer;->removeViewInLayout(Landroid/view/View;)V

    .line 684
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mScrapViews:Lcom/kingsoft/mail/utils/DequeMap;

    iget v1, p1, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;->view:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/utils/DequeMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 685
    iget-object v0, p1, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;->view:Landroid/view/View;

    instance-of v0, v0, Lcom/kingsoft/mail/browse/ConversationContainer$DetachListener;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p1, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;->view:Landroid/view/View;

    check-cast v0, Lcom/kingsoft/mail/browse/ConversationContainer$DetachListener;

    invoke-interface {v0}, Lcom/kingsoft/mail/browse/ConversationContainer$DetachListener;->onDetachedFromParent()V

    .line 688
    :cond_0
    return-void
.end method

.method private findNextPushingOverlay(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    .locals 4
    .param p1, "start"    # I

    .prologue
    .line 925
    move v0, p1

    .local v0, "i":I
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getCount()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 926
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v3, v0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getItem(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    move-result-object v2

    .line 927
    .local v2, "next":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->canPushSnapHeader()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 931
    .end local v2    # "next":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    :goto_1
    return-object v2

    .line 925
    .restart local v2    # "next":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 931
    .end local v2    # "next":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private forwardFakeMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "original"    # Landroid/view/MotionEvent;
    .param p2, "newAction"    # I

    .prologue
    .line 371
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 372
    .local v0, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 373
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/browse/ConversationWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 374
    const-string/jumbo v1, "ConvLayout"

    const-string/jumbo v2, "in Container.OnTouch. fake: action=%d x/y=%f/%f pointers=%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 377
    return-void
.end method

.method private getOverlayBottom(I)I
    .locals 1
    .param p1, "spacerIndex"    # I

    .prologue
    .line 775
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayPositions:[Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;->bottom:I

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/ConversationContainer;->webPxToScreenPx(I)I

    move-result v0

    return v0
.end method

.method private getOverlayTop(I)I
    .locals 1
    .param p1, "spacerIndex"    # I

    .prologue
    .line 771
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayPositions:[Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;->top:I

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/ConversationContainer;->webPxToScreenPx(I)I

    move-result v0

    return v0
.end method

.method private isSnapEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 876
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAccountController:Lcom/kingsoft/mail/browse/ConversationAccountController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAccountController:Lcom/kingsoft/mail/browse/ConversationAccountController;

    invoke-interface {v2}, Lcom/kingsoft/mail/browse/ConversationAccountController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAccountController:Lcom/kingsoft/mail/browse/ConversationAccountController;

    invoke-interface {v2}, Lcom/kingsoft/mail/browse/ConversationAccountController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v2

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    if-nez v2, :cond_1

    .line 881
    :cond_0
    :goto_0
    return v1

    .line 880
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAccountController:Lcom/kingsoft/mail/browse/ConversationAccountController;

    invoke-interface {v2}, Lcom/kingsoft/mail/browse/ConversationAccountController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v2

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget v0, v2, Lcom/kingsoft/mail/providers/Settings;->snapHeaders:I

    .line 881
    .local v0, "snap":I
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v1, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private layoutOverlay(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childTop"    # I
    .param p3, "childBottom"    # I

    .prologue
    .line 842
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOffsetY:I

    sub-int v3, p2, v4

    .line 843
    .local v3, "top":I
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOffsetY:I

    sub-int v0, p3, v4

    .line 845
    .local v0, "bottom":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 846
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationContainer;->getPaddingLeft()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v1, v4, v5

    .line 848
    .local v1, "childLeft":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 849
    return-void
.end method

.method private measureOverlayView(Landroid/view/View;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 630
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 631
    .local v3, "p":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v3, :cond_0

    .line 632
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationContainer;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "p":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 635
    .restart local v3    # "p":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationContainer;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationContainer;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 637
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 639
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 640
    const/high16 v4, 0x40000000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 644
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 645
    return-void

    .line 642
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private onDataSetChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 357
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationContainer;->clearOverlays()V

    .line 360
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapHeader:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->unbind()V

    .line 363
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorder:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationContainer;->removeViewInLayout(Landroid/view/View;)V

    .line 364
    iput-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorderAdded:Z

    .line 366
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationContainer;->isSnapEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapEnabled:Z

    .line 367
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOffsetY:I

    invoke-direct {p0, v1, v0}, Lcom/kingsoft/mail/browse/ConversationContainer;->positionOverlays(II)V

    .line 368
    return-void
.end method

.method private onOverlayScrolledOff(ILcom/kingsoft/mail/browse/ConversationContainer$OverlayView;II)V
    .locals 1
    .param p1, "adapterIndex"    # I
    .param p2, "overlay"    # Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;
    .param p3, "overlayTop"    # I
    .param p4, "overlayBottom"    # I

    .prologue
    .line 653
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 655
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationContainer$1;

    invoke-direct {v0, p0, p2}, Lcom/kingsoft/mail/browse/ConversationContainer$1;-><init>(Lcom/kingsoft/mail/browse/ConversationContainer;Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;)V

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationContainer;->post(Ljava/lang/Runnable;)Z

    .line 664
    iget-object v0, p2, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;->view:Landroid/view/View;

    invoke-direct {p0, v0, p3, p4}, Lcom/kingsoft/mail/browse/ConversationContainer;->layoutOverlay(Landroid/view/View;II)V

    .line 665
    return-void
.end method

.method private positionAdditionalBottomBorder()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 560
    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorderOverlayTop:I

    .line 561
    .local v1, "lastBottom":I
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/ConversationWebView;->getContentHeight()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/kingsoft/mail/browse/ConversationContainer;->webPxToScreenPx(I)I

    move-result v0

    .line 562
    .local v0, "containerHeight":I
    sub-int v2, v0, v1

    .line 563
    .local v2, "speculativeHeight":I
    if-lez v2, :cond_3

    .line 564
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorder:Landroid/view/View;

    if-nez v3, :cond_0

    .line 565
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040082

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorder:Landroid/view/View;

    .line 569
    :cond_0
    invoke-direct {p0, v2}, Lcom/kingsoft/mail/browse/ConversationContainer;->setAdditionalBottomBorderHeight(I)V

    .line 571
    iget-boolean v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorderAdded:Z

    if-nez v3, :cond_1

    .line 572
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorder:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/kingsoft/mail/browse/ConversationContainer;->addViewInLayoutWrapper(Landroid/view/View;)V

    .line 573
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorderAdded:Z

    .line 576
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorder:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/kingsoft/mail/browse/ConversationContainer;->measureOverlayView(Landroid/view/View;)V

    .line 577
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorder:Landroid/view/View;

    invoke-direct {p0, v3, v1, v0}, Lcom/kingsoft/mail/browse/ConversationContainer;->layoutOverlay(Landroid/view/View;II)V

    .line 584
    :cond_2
    :goto_0
    return-void

    .line 579
    :cond_3
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorder:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorderAdded:Z

    if-eqz v3, :cond_2

    .line 580
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorder:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/kingsoft/mail/browse/ConversationContainer;->removeViewInLayout(Landroid/view/View;)V

    .line 581
    iput-boolean v5, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorderAdded:Z

    goto :goto_0
.end method

.method private positionOverlay(III)V
    .locals 10
    .param p1, "adapterIndex"    # I
    .param p2, "overlayTopY"    # I
    .param p3, "overlayBottomY"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 785
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;

    .line 786
    .local v2, "overlay":Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v4, p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getItem(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    move-result-object v1

    .line 789
    .local v1, "item":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    invoke-virtual {v1, p2}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->setTop(I)V

    .line 792
    if-eq p2, p3, :cond_5

    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOffsetY:I

    if-le p3, v4, :cond_5

    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOffsetY:I

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationContainer;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_5

    .line 794
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;->view:Landroid/view/View;

    .line 796
    .local v3, "overlayView":Landroid/view/View;
    :goto_0
    if-nez v3, :cond_3

    .line 797
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationContainer;->addOverlayView(I)Landroid/view/View;

    move-result-object v3

    .line 798
    invoke-direct {p0, v3}, Lcom/kingsoft/mail/browse/ConversationContainer;->measureOverlayView(Landroid/view/View;)V

    .line 799
    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->markMeasurementValid()V

    .line 800
    const-string/jumbo v4, "show/measure overlay %d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {p0, v4, v5}, Lcom/kingsoft/mail/browse/ConversationContainer;->traceLayout(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    :cond_0
    :goto_1
    const-string/jumbo v4, "laying out overlay %d with h=%d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-direct {p0, v4, v5}, Lcom/kingsoft/mail/browse/ConversationContainer;->traceLayout(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 813
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v0, p2, v4

    .line 814
    .local v0, "childBottom":I
    invoke-direct {p0, v3, p2, v0}, Lcom/kingsoft/mail/browse/ConversationContainer;->layoutOverlay(Landroid/view/View;II)V

    .line 815
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorderOverlayTop:I

    if-le v0, v4, :cond_4

    .end local v0    # "childBottom":I
    :goto_2
    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorderOverlayTop:I

    .line 829
    .end local v3    # "overlayView":Landroid/view/View;
    .end local p3    # "overlayBottomY":I
    :goto_3
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOffsetY:I

    if-gt p2, v4, :cond_1

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->canPushSnapHeader()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 830
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    .line 831
    iput p1, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapIndex:I

    .line 837
    :cond_1
    :goto_4
    return-void

    .line 794
    .restart local p3    # "overlayBottomY":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 802
    .restart local v3    # "overlayView":Landroid/view/View;
    :cond_3
    const-string/jumbo v4, "move overlay %d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {p0, v4, v5}, Lcom/kingsoft/mail/browse/ConversationContainer;->traceLayout(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 803
    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->isMeasurementValid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 804
    invoke-virtual {v1, v3}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->rebindView(Landroid/view/View;)V

    .line 805
    invoke-direct {p0, v3}, Lcom/kingsoft/mail/browse/ConversationContainer;->measureOverlayView(Landroid/view/View;)V

    .line 806
    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->markMeasurementValid()V

    .line 807
    const-string/jumbo v4, "and (re)measure overlay %d, old/new heights=%d/%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-direct {p0, v4, v5}, Lcom/kingsoft/mail/browse/ConversationContainer;->traceLayout(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 815
    .restart local v0    # "childBottom":I
    :cond_4
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorderOverlayTop:I

    goto :goto_2

    .line 819
    .end local v0    # "childBottom":I
    .end local v3    # "overlayView":Landroid/view/View;
    :cond_5
    if-eqz v2, :cond_6

    .line 820
    const-string/jumbo v4, "hide overlay %d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {p0, v4, v5}, Lcom/kingsoft/mail/browse/ConversationContainer;->traceLayout(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 821
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/kingsoft/mail/browse/ConversationContainer;->onOverlayScrolledOff(ILcom/kingsoft/mail/browse/ConversationContainer$OverlayView;II)V

    .line 825
    :goto_5
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorderOverlayTop:I

    if-le p3, v4, :cond_7

    .end local p3    # "overlayBottomY":I
    :goto_6
    iput p3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorderOverlayTop:I

    goto :goto_3

    .line 823
    .restart local p3    # "overlayBottomY":I
    :cond_6
    const-string/jumbo v4, "ignore non-visible overlay %d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {p0, v4, v5}, Lcom/kingsoft/mail/browse/ConversationContainer;->traceLayout(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 825
    :cond_7
    iget p3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorderOverlayTop:I

    goto :goto_6

    .line 832
    .end local p3    # "overlayBottomY":I
    :cond_8
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapIndex:I

    if-le p1, v4, :cond_1

    .line 833
    iput p1, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapIndex:I

    goto :goto_4
.end method

.method private positionOverlays(II)V
    .locals 18
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 458
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/mail/browse/ConversationContainer;->mOffsetY:I

    .line 467
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/kingsoft/mail/browse/ConversationContainer;->mTouchInitialized:Z

    if-eqz v14, :cond_2

    .line 468
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/browse/ConversationContainer;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v14}, Lcom/kingsoft/mail/browse/ConversationWebView;->getScale()F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/kingsoft/mail/browse/ConversationContainer;->mScale:F

    .line 472
    :cond_0
    :goto_0
    const-string/jumbo v14, "in positionOverlays, raw scale=%f, effective scale=%f"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationContainer;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/mail/browse/ConversationWebView;->getScale()F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationContainer;->mScale:F

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/kingsoft/mail/browse/ConversationContainer;->traceLayout(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayPositions:[Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    if-nez v14, :cond_3

    .line 553
    :cond_1
    :goto_1
    return-void

    .line 469
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/kingsoft/mail/browse/ConversationContainer;->mScale:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_0

    .line 470
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/browse/ConversationContainer;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v14}, Lcom/kingsoft/mail/browse/ConversationWebView;->getInitialScale()F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/kingsoft/mail/browse/ConversationContainer;->mScale:F

    goto :goto_0

    .line 487
    :cond_3
    const-string/jumbo v14, "IN positionOverlays, spacerCount=%d overlayCount=%d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayPositions:[Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getCount()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/kingsoft/mail/browse/ConversationContainer;->traceLayout(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapIndex:I

    .line 491
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorderOverlayTop:I

    .line 493
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v14}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getCount()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    .line 494
    .local v4, "adapterLoopIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayPositions:[Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;

    array-length v14, v14

    add-int/lit8 v12, v14, -0x1

    .line 495
    .local v12, "spacerIndex":I
    :goto_2
    if-ltz v12, :cond_b

    if-ltz v4, :cond_b

    .line 497
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/kingsoft/mail/browse/ConversationContainer;->getOverlayTop(I)I

    move-result v13

    .line 498
    .local v13, "spacerTop":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/kingsoft/mail/browse/ConversationContainer;->getOverlayBottom(I)I

    move-result v11

    .line 505
    .local v11, "spacerBottom":I
    if-nez v12, :cond_5

    .line 506
    const/4 v5, 0x1

    .line 507
    .local v5, "flip":Z
    move v6, v4

    .line 508
    .local v6, "flipOffset":I
    const/16 v7, 0x30

    .line 515
    .local v7, "forceGravity":I
    :goto_3
    if-eqz v5, :cond_6

    sub-int v2, v6, v4

    .line 518
    .local v2, "adapterIndex":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v14, v2}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getItem(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    move-result-object v3

    .line 520
    .local v3, "adapterItem":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    invoke-static {v3, v13, v11, v7}, Lcom/kingsoft/mail/browse/ConversationContainer;->calculatePosition(Lcom/kingsoft/mail/browse/ConversationOverlayItem;III)Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;

    move-result-object v8

    .line 523
    .local v8, "itemPos":Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;
    const-string/jumbo v14, "in loop, spacer=%d overlay=%d t/b=%d/%d (%s)"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    iget v0, v8, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;->top:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    iget v0, v8, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;->bottom:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    aput-object v3, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/kingsoft/mail/browse/ConversationContainer;->traceLayout(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    iget v14, v8, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;->top:I

    iget v15, v8, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;->bottom:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v15}, Lcom/kingsoft/mail/browse/ConversationContainer;->positionOverlay(III)V

    .line 529
    :goto_5
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_4

    .line 530
    if-eqz v5, :cond_7

    sub-int v2, v6, v4

    .line 531
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v14, v2}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getItem(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    move-result-object v3

    .line 532
    if-lez v12, :cond_8

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->isContiguous()Z

    move-result v14

    if-nez v14, :cond_8

    .line 548
    :cond_4
    add-int/lit8 v12, v12, -0x1

    .line 549
    goto :goto_2

    .line 510
    .end local v2    # "adapterIndex":I
    .end local v3    # "adapterItem":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    .end local v5    # "flip":Z
    .end local v6    # "flipOffset":I
    .end local v7    # "forceGravity":I
    .end local v8    # "itemPos":Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;
    :cond_5
    const/4 v5, 0x0

    .line 511
    .restart local v5    # "flip":Z
    const/4 v6, 0x0

    .line 512
    .restart local v6    # "flipOffset":I
    const/4 v7, 0x0

    .restart local v7    # "forceGravity":I
    goto :goto_3

    :cond_6
    move v2, v4

    .line 515
    goto :goto_4

    .restart local v2    # "adapterIndex":I
    .restart local v3    # "adapterItem":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    .restart local v8    # "itemPos":Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;
    :cond_7
    move v2, v4

    .line 530
    goto :goto_6

    .line 539
    :cond_8
    if-eqz v5, :cond_9

    iget v10, v8, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;->bottom:I

    .line 540
    .local v10, "regionTop":I
    :goto_7
    if-eqz v5, :cond_a

    move v9, v11

    .line 541
    .local v9, "regionBottom":I
    :goto_8
    invoke-static {v3, v10, v9, v7}, Lcom/kingsoft/mail/browse/ConversationContainer;->calculatePosition(Lcom/kingsoft/mail/browse/ConversationOverlayItem;III)Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;

    move-result-object v8

    .line 543
    const-string/jumbo v14, "in contig loop, spacer=%d overlay=%d t/b=%d/%d (%s)"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    iget v0, v8, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;->top:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    iget v0, v8, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;->bottom:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    aput-object v3, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/kingsoft/mail/browse/ConversationContainer;->traceLayout(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    iget v14, v8, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;->top:I

    iget v15, v8, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;->bottom:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v15}, Lcom/kingsoft/mail/browse/ConversationContainer;->positionOverlay(III)V

    goto :goto_5

    .end local v9    # "regionBottom":I
    .end local v10    # "regionTop":I
    :cond_9
    move v10, v13

    .line 539
    goto :goto_7

    .line 540
    .restart local v10    # "regionTop":I
    :cond_a
    iget v9, v8, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;->top:I

    goto :goto_8

    .line 551
    .end local v2    # "adapterIndex":I
    .end local v3    # "adapterItem":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    .end local v5    # "flip":Z
    .end local v6    # "flipOffset":I
    .end local v7    # "forceGravity":I
    .end local v8    # "itemPos":Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;
    .end local v10    # "regionTop":I
    .end local v11    # "spacerBottom":I
    .end local v13    # "spacerTop":I
    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/kingsoft/mail/browse/ConversationContainer;->positionSnapHeader(I)V

    .line 552
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationContainer;->positionAdditionalBottomBorder()V

    goto/16 :goto_1
.end method

.method private positionSnapHeader(I)V
    .locals 8
    .param p1, "snapIndex"    # I

    .prologue
    const/4 v7, 0x0

    .line 888
    const/4 v3, 0x0

    .line 889
    .local v3, "snapItem":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    iget-boolean v5, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapEnabled:Z

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    .line 890
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v5, p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getItem(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    move-result-object v0

    .line 891
    .local v0, "item":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->canBecomeSnapHeader()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 892
    move-object v3, v0

    .line 895
    .end local v0    # "item":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    :cond_0
    if-nez v3, :cond_1

    .line 896
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapHeader:Lcom/kingsoft/mail/browse/MessageHeaderView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setVisibility(I)V

    .line 897
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapHeader:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-virtual {v5}, Lcom/kingsoft/mail/browse/MessageHeaderView;->unbind()V

    .line 921
    :goto_0
    return-void

    .line 901
    :cond_1
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapHeader:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-virtual {v3, v5, v7}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->bindView(Landroid/view/View;Z)V

    .line 902
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapHeader:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-virtual {v5, v7}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setVisibility(I)V

    .line 905
    const/4 v2, 0x0

    .line 907
    .local v2, "overlap":I
    add-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5}, Lcom/kingsoft/mail/browse/ConversationContainer;->findNextPushingOverlay(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    move-result-object v1

    .line 908
    .local v1, "next":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    if-eqz v1, :cond_2

    .line 909
    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapHeader:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOffsetY:I

    sub-int/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 912
    if-gez v2, :cond_2

    .line 913
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mVelocityTracker:Lcom/kingsoft/mail/utils/InputSmoother;

    invoke-virtual {v5}, Lcom/kingsoft/mail/utils/InputSmoother;->getSmoothedVelocity()Ljava/lang/Float;

    move-result-object v4

    .line 914
    .local v4, "v":Ljava/lang/Float;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x44160000

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 915
    const/4 v2, 0x0

    .line 920
    .end local v4    # "v":Ljava/lang/Float;
    :cond_2
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapHeader:Lcom/kingsoft/mail/browse/MessageHeaderView;

    int-to-float v6, v2

    invoke-virtual {v5, v6}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setTranslationY(F)V

    goto :goto_0
.end method

.method private setAdditionalBottomBorderHeight(I)V
    .locals 2
    .param p1, "speculativeHeight"    # I

    .prologue
    .line 587
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorder:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 588
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 589
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdditionalBottomBorder:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    return-void
.end method

.method private varargs traceLayout(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 972
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mDisableLayoutTracing:Z

    if-eqz v0, :cond_0

    .line 976
    :goto_0
    return-void

    .line 975
    :cond_0
    const-string/jumbo v0, "ConvLayout"

    invoke-static {v0, p1, p2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private webPxToScreenPx(I)I
    .locals 2
    .param p1, "webPx"    # I

    .prologue
    .line 781
    int-to-float v0, p1

    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public addScrapView(ILandroid/view/View;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 677
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mScrapViews:Lcom/kingsoft/mail/utils/DequeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/kingsoft/mail/utils/DequeMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 678
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 767
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 742
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 744
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAttachedOverlaySinceLastDraw:Z

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mTopMostOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationContainer;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/kingsoft/mail/browse/ConversationContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAttachedOverlaySinceLastDraw:Z

    .line 748
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 752
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 757
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 762
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getOverlayAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    return-object v0
.end method

.method public getOverlayViews()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 940
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 941
    .local v2, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayViews:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 942
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;->view:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 944
    :cond_0
    return-object v2
.end method

.method public getScrapView(I)Landroid/view/View;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 673
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mScrapViews:Lcom/kingsoft/mail/utils/DequeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/utils/DequeMap;->peek(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getSnapHeader()Lcom/kingsoft/mail/browse/MessageHeaderView;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapHeader:Lcom/kingsoft/mail/browse/MessageHeaderView;

    return-object v0
.end method

.method public getViewForItem(Lcom/kingsoft/mail/browse/ConversationOverlayItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    .prologue
    .line 327
    const/4 v4, 0x0

    .line 328
    .local v4, "result":Landroid/view/View;
    const/4 v0, -0x1

    .line 329
    .local v0, "adapterPos":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v5}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getCount()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 330
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v5, v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getItem(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    move-result-object v5

    if-ne v5, p1, :cond_2

    .line 331
    move v0, v1

    .line 335
    :cond_0
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 336
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayViews:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;

    .line 337
    .local v3, "overlay":Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;
    if-eqz v3, :cond_1

    .line 338
    iget-object v4, v3, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;->view:Landroid/view/View;

    .line 341
    .end local v3    # "overlay":Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;
    :cond_1
    return-object v4

    .line 329
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public invalidateSpacerGeometry()V
    .locals 1

    .prologue
    .line 958
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayPositions:[Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;

    .line 959
    return-void
.end method

.method public measureOverlay(Landroid/view/View;)I
    .locals 1
    .param p1, "overlayView"    # Landroid/view/View;

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationContainer;->measureOverlayView(Landroid/view/View;)V

    .line 623
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 260
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 262
    const v4, 0x7f0c01b7

    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/browse/ConversationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/browse/ConversationWebView;

    iput-object v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    .line 263
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v4, p0}, Lcom/kingsoft/mail/browse/ConversationWebView;->addScrollListener(Lcom/kingsoft/mail/browse/ScrollNotifier$ScrollListener;)V

    .line 265
    const v4, 0x7f0c01d4

    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/browse/ConversationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mTopMostOverlay:Landroid/view/View;

    .line 267
    const v4, 0x7f0c01d5

    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/browse/ConversationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/browse/MessageHeaderView;

    iput-object v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapHeader:Lcom/kingsoft/mail/browse/MessageHeaderView;

    .line 268
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapHeader:Lcom/kingsoft/mail/browse/MessageHeaderView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setSnappy(Z)V

    .line 270
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationContainer;->BOTTOM_LAYER_VIEW_IDS:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 271
    .local v2, "id":I
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mNonScrollingChildren:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/browse/ConversationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v2    # "id":I
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationContainer;->TOP_LAYER_VIEW_IDS:[I

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 274
    .restart local v2    # "id":I
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mNonScrollingChildren:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/browse/ConversationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 276
    .end local v2    # "id":I
    :cond_1
    return-void
.end method

.method public onGeometryChange([Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;)V
    .locals 9
    .param p1, "overlayPositions"    # [Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;

    .prologue
    const/4 v8, 0x0

    .line 962
    const-string/jumbo v4, "*** got overlay spacer positions:"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/kingsoft/mail/browse/ConversationContainer;->traceLayout(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 963
    move-object v0, p1

    .local v0, "arr$":[Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 964
    .local v3, "pos":Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;
    const-string/jumbo v4, "top=%d bottom=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v3, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;->top:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget v7, v3, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;->bottom:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/kingsoft/mail/browse/ConversationContainer;->traceLayout(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 963
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 967
    .end local v3    # "pos":Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayPositions:[Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;

    .line 968
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOffsetY:I

    invoke-direct {p0, v8, v4}, Lcom/kingsoft/mail/browse/ConversationContainer;->positionOverlays(II)V

    .line 969
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 385
    iget-boolean v5, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mTouchInitialized:Z

    if-nez v5, :cond_0

    .line 386
    iput-boolean v7, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mTouchInitialized:Z

    .line 390
    :cond_0
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v5}, Lcom/kingsoft/mail/browse/ConversationWebView;->isHandlingTouch()Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 421
    :cond_1
    :goto_0
    return v0

    .line 394
    :cond_2
    const/4 v0, 0x0

    .line 395
    .local v0, "intercept":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 404
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mLastMotionY:F

    .line 405
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mActivePointerId:I

    goto :goto_0

    .line 397
    :pswitch_2
    const-string/jumbo v5, "ConvLayout"

    const-string/jumbo v6, "Container is intercepting non-primary touch!"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 398
    const/4 v0, 0x1

    .line 399
    iput-boolean v7, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mMissedPointerDown:Z

    .line 400
    invoke-virtual {p0, v7}, Lcom/kingsoft/mail/browse/ConversationContainer;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 409
    :pswitch_3
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 410
    .local v1, "pointerIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 411
    .local v2, "y":F
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mLastMotionY:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v3, v4

    .line 412
    .local v3, "yDiff":I
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mTouchSlop:I

    if-le v3, v4, :cond_1

    .line 413
    iput v2, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mLastMotionY:F

    .line 414
    const/4 v0, 0x1

    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 713
    const-string/jumbo v9, "ConvLayout"

    const-string/jumbo v10, "*** IN header container onLayout"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 715
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mNonScrollingChildren:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 716
    .local v7, "nonScrollingChild":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_0

    .line 717
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 718
    .local v8, "w":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 720
    .local v2, "h":I
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 723
    .local v6, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 724
    .local v0, "childLeft":I
    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 725
    .local v1, "childTop":I
    add-int v9, v0, v8

    add-int v10, v1, v2

    invoke-virtual {v7, v0, v1, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 729
    .end local v0    # "childLeft":I
    .end local v1    # "childTop":I
    .end local v2    # "h":I
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "nonScrollingChild":Landroid/view/View;
    .end local v8    # "w":I
    :cond_1
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    if-eqz v9, :cond_2

    .line 732
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v9}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getCount()I

    move-result v5

    .local v5, "len":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 733
    iget-object v9, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v9, v3}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getItem(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->invalidateMeasurement()V

    .line 732
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 737
    .end local v3    # "i":I
    .end local v5    # "len":I
    :cond_2
    const/4 v9, 0x0

    iget v10, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOffsetY:I

    invoke-direct {p0, v9, v10}, Lcom/kingsoft/mail/browse/ConversationContainer;->positionOverlays(II)V

    .line 738
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 692
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 693
    const-string/jumbo v0, "ConvLayout"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    const-string/jumbo v0, "ConvLayout"

    const-string/jumbo v2, "*** IN header container onMeasure spec for w/h=%s/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v0, v2, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mNonScrollingChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 700
    .local v1, "nonScrollingChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 701
    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/browse/ConversationContainer;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_0

    .line 705
    .end local v1    # "nonScrollingChild":Landroid/view/View;
    :cond_2
    iput p1, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mWidthMeasureSpec:I

    .line 709
    return-void
.end method

.method public onNotifierScroll(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 451
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mVelocityTracker:Lcom/kingsoft/mail/utils/InputSmoother;

    invoke-virtual {v0, p2}, Lcom/kingsoft/mail/utils/InputSmoother;->onInput(I)V

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mDisableLayoutTracing:Z

    .line 453
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/browse/ConversationContainer;->positionOverlays(II)V

    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mDisableLayoutTracing:Z

    .line 455
    return-void
.end method

.method public onOverlayModelUpdate(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "affectedAdapterPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 309
    .local v0, "i":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getItem(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    move-result-object v2

    .line 310
    .local v2, "item":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;

    .line 311
    .local v3, "overlay":Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;->view:Landroid/view/View;

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 312
    iget-object v4, v3, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;->view:Landroid/view/View;

    invoke-virtual {v2, v4}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->onModelUpdated(Landroid/view/View;)V

    .line 315
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapIndex:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapHeader:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-virtual {v4, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->isBoundTo(Lcom/kingsoft/mail/browse/ConversationOverlayItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 316
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapHeader:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/MessageHeaderView;->refresh()V

    goto :goto_0

    .line 319
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v2    # "item":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    .end local v3    # "overlay":Lcom/kingsoft/mail/browse/ConversationContainer$OverlayView;
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 428
    .local v0, "action":I
    if-eq v0, v4, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 429
    :cond_0
    iput-boolean v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mTouchIsDown:Z

    .line 442
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v2, p1}, Lcom/kingsoft/mail/browse/ConversationWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 446
    .local v1, "webViewResult":Z
    return v1

    .line 430
    .end local v1    # "webViewResult":Z
    :cond_2
    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mTouchIsDown:Z

    if-nez v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    if-ne v0, v5, :cond_1

    .line 433
    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/kingsoft/mail/browse/ConversationContainer;->forwardFakeMotionEvent(Landroid/view/MotionEvent;I)V

    .line 434
    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mMissedPointerDown:Z

    if-eqz v2, :cond_4

    .line 435
    invoke-direct {p0, p1, v5}, Lcom/kingsoft/mail/browse/ConversationContainer;->forwardFakeMotionEvent(Landroid/view/MotionEvent;I)V

    .line 436
    iput-boolean v3, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mMissedPointerDown:Z

    .line 439
    :cond_4
    iput-boolean v4, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mTouchIsDown:Z

    goto :goto_0
.end method

.method public setAccountController(Lcom/kingsoft/mail/browse/ConversationAccountController;)V
    .locals 1
    .param p1, "controller"    # Lcom/kingsoft/mail/browse/ConversationAccountController;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAccountController:Lcom/kingsoft/mail/browse/ConversationAccountController;

    .line 300
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationContainer;->isSnapEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mSnapEnabled:Z

    .line 301
    return-void
.end method

.method public setOverlayAdapter(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)V
    .locals 2
    .param p1, "a"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 285
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationContainer;->clearOverlays()V

    .line 287
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    .line 288
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mOverlayAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationContainer;->mAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 291
    :cond_1
    return-void
.end method
