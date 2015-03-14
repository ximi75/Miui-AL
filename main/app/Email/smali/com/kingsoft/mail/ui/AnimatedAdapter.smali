.class public Lcom/kingsoft/mail/ui/AnimatedAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "AnimatedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/AnimatedAdapter$Listener;,
        Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;
    }
.end annotation


# static fields
.field private static final BITMAP_CACHE_NON_POOLED_FRACTION:F = 0.1f

.field private static final BITMAP_CACHE_TARGET_SIZE_BYTES:I = 0x0

.field private static final INCREASE_WAIT_COUNT:I = 0x2

.field private static final LAST_DELETING_ITEMS:Ljava/lang/String; = "last_deleting_items"

.field private static final LEAVE_BEHIND_ITEM_DATA:Ljava/lang/String; = "leave_behind_item_data"

.field private static final LEAVE_BEHIND_ITEM_ID:Ljava/lang/String; = "leave_behind_item_id"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TYPE_VIEW_CONVERSATION:I = 0x0

.field private static final TYPE_VIEW_DONT_RECYCLE:I = -0x1

.field private static final TYPE_VIEW_FOOTER:I = 0x1

.field private static sDismissAllLongDelay:I

.field private static sDismissAllShortDelay:I


# instance fields
.field private mAccount:Lcom/kingsoft/mail/providers/Account;

.field private final mAccountListener:Lcom/kingsoft/mail/providers/AccountObserver;

.field private final mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

.field private final mAnimatingViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/kingsoft/mail/browse/SwipeableConversationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private final mBatchConversations:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

.field private final mBitmapCache:Lcom/kingsoft/bitmap/BitmapCache;

.field private final mContext:Landroid/content/Context;

.field private final mConversationListListener:Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;

.field private final mCoordinatesCache:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;

.field private mCountDown:Ljava/lang/Runnable;

.field private final mDecodeAggregator:Lcom/kingsoft/bitmap/DecodeAggregator;

.field private final mDeletingItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFadeLeaveBehindItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/kingsoft/mail/ui/LeaveBehindItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mFleetingViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/ui/ConversationSpecialItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mFolder:Lcom/kingsoft/mail/providers/Folder;

.field private mFooter:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mLastDeletingItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastLeaveBehind:J

.field private final mLeaveBehindItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/kingsoft/mail/ui/LeaveBehindItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

.field private mPendingDestruction:Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;

.field private mPriorityMarkersEnabled:Z

.field private final mRefreshAction:Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;

.field private final mRestoringItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mShowFooter:Z

.field private final mSpecialViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingsoft/mail/ui/ConversationSpecialItemView;",
            ">;"
        }
    .end annotation
.end field

.field private final mSwipeDeletingItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeEnabled:Z

.field private final mSwipeUndoingItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mUndoingItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 84
    sput v0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->sDismissAllShortDelay:I

    .line 85
    sput v0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->sDismissAllLongDelay:I

    .line 263
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/ConversationCursor;Lcom/kingsoft/mail/ui/ConversationSelectionSet;Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;Lcom/kingsoft/mail/ui/SwipeableListView;Ljava/util/List;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;
    .param p3, "batch"    # Lcom/kingsoft/mail/ui/ConversationSelectionSet;
    .param p4, "activity"    # Lcom/kingsoft/mail/ui/ControllableActivity;
    .param p5, "conversationListListener"    # Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;
    .param p6, "listView"    # Lcom/kingsoft/mail/ui/SwipeableListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingsoft/mail/browse/ConversationCursor;",
            "Lcom/kingsoft/mail/ui/ConversationSelectionSet;",
            "Lcom/kingsoft/mail/ui/ControllableActivity;",
            "Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;",
            "Lcom/kingsoft/mail/ui/SwipeableListView;",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/ui/ConversationSpecialItemView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p7, "specialViews":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/ui/ConversationSpecialItemView;>;"
    const/4 v3, -0x1

    sget-object v5, Lcom/kingsoft/mail/providers/UIProvider;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 92
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mDeletingItems:Ljava/util/HashSet;

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    .line 94
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mUndoingItems:Ljava/util/HashSet;

    .line 95
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSwipeDeletingItems:Ljava/util/HashSet;

    .line 96
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSwipeUndoingItems:Ljava/util/HashSet;

    .line 97
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mRestoringItems:Ljava/util/HashSet;

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAnimatingViews:Ljava/util/HashMap;

    .line 100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFadeLeaveBehindItems:Ljava/util/HashMap;

    .line 108
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    .line 121
    new-instance v1, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;-><init>(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 183
    new-instance v1, Lcom/kingsoft/mail/ui/AnimatedAdapter$2;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter$2;-><init>(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mRefreshAction:Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;

    .line 199
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLeaveBehindItems:Ljava/util/HashMap;

    .line 204
    new-instance v1, Lcom/kingsoft/mail/ui/AnimatedAdapter$3;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter$3;-><init>(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAccountListener:Lcom/kingsoft/mail/providers/AccountObserver;

    .line 219
    new-instance v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;

    invoke-direct {v1}, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mCoordinatesCache:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;

    .line 278
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mContext:Landroid/content/Context;

    .line 279
    iput-object p3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mBatchConversations:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    .line 280
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAccountListener:Lcom/kingsoft/mail/providers/AccountObserver;

    invoke-interface/range {p4 .. p4}, Lcom/kingsoft/mail/ui/ControllableActivity;->getAccountController()Lcom/kingsoft/mail/ui/AccountController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/providers/AccountObserver;->initialize(Lcom/kingsoft/mail/ui/AccountController;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->setAccount(Lcom/kingsoft/mail/providers/Account;)Z

    .line 281
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    .line 282
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mConversationListListener:Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;

    .line 283
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mShowFooter:Z

    .line 284
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    .line 286
    new-instance v1, Lcom/kingsoft/bitmap/AltBitmapCache;

    const/4 v2, 0x0

    const v3, 0x3dcccccd

    invoke-direct {v1, v2, v3}, Lcom/kingsoft/bitmap/AltBitmapCache;-><init>(IF)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mBitmapCache:Lcom/kingsoft/bitmap/BitmapCache;

    .line 288
    new-instance v1, Lcom/kingsoft/bitmap/DecodeAggregator;

    invoke-direct {v1}, Lcom/kingsoft/bitmap/DecodeAggregator;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mDecodeAggregator:Lcom/kingsoft/bitmap/DecodeAggregator;

    .line 290
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mHandler:Landroid/os/Handler;

    .line 291
    sget v1, Lcom/kingsoft/mail/ui/AnimatedAdapter;->sDismissAllShortDelay:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 293
    .local v9, "r":Landroid/content/res/Resources;
    const v1, 0x7f0e0020

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/AnimatedAdapter;->sDismissAllShortDelay:I

    .line 294
    const v1, 0x7f0e001f

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/AnimatedAdapter;->sDismissAllLongDelay:I

    .line 296
    .end local v9    # "r":Landroid/content/res/Resources;
    :cond_0
    if-eqz p7, :cond_1

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v0, p7

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFleetingViews:Ljava/util/List;

    .line 302
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFleetingViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    .line 303
    .local v10, "size":I
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v10}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSpecialViews:Landroid/util/SparseArray;

    .line 306
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFleetingViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;

    .line 307
    .local v11, "view":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    invoke-interface {v11, p0}, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;->setAdapter(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V

    goto :goto_1

    .line 299
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "size":I
    .end local v11    # "view":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFleetingViews:Ljava/util/List;

    goto :goto_0

    .line 309
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "size":I
    :cond_2
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->updateSpecialViews()V

    .line 310
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mUndoingItems:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mDeletingItems:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Lcom/kingsoft/mail/providers/Folder;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/kingsoft/mail/ui/AnimatedAdapter;Lcom/kingsoft/mail/providers/Conversation;I)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "x2"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->delete(Lcom/kingsoft/mail/providers/Conversation;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Lcom/kingsoft/mail/ui/SwipeableListView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSwipeDeletingItems:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/ui/AnimatedAdapter;Ljava/lang/Object;Ljava/util/HashSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/util/HashSet;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->updateAnimatingConversationItems(Ljava/lang/Object;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSwipeUndoingItems:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mRestoringItems:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->hasFadeLeaveBehinds()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Lcom/kingsoft/mail/ui/ControllableActivity;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/kingsoft/mail/ui/AnimatedAdapter;Lcom/kingsoft/mail/providers/Account;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->setAccount(Lcom/kingsoft/mail/providers/Account;)Z

    move-result v0

    return v0
.end method

.method private addUndoingItem(J)Z
    .locals 2
    .param p1, "item"    # J

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getConversationCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/mail/browse/ConversationCursor;->getUnderlyingPosition(J)I

    move-result v0

    if-ltz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mUndoingItems:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 367
    const/4 v0, 0x1

    .line 369
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelLeaveBehindFadeInAnimation()V
    .locals 1

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getLastLeaveBehindItem()Lcom/kingsoft/mail/ui/LeaveBehindItem;

    move-result-object v0

    .line 829
    .local v0, "leaveBehind":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->cancelFadeInTextAnimation()V

    .line 832
    :cond_0
    return-void
.end method

.method private delete(Lcom/kingsoft/mail/providers/Conversation;I)V
    .locals 7
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "position"    # I

    .prologue
    const v6, 0x7f0c016d

    const/4 v5, 0x0

    .line 732
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->setSwipeCurrentView(Lcom/kingsoft/mail/ui/SwipeableItemView;)V

    .line 733
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/kingsoft/mail/ui/SwipeableListView;->setConversationID(J)V

    .line 734
    sput-boolean v5, Lcom/kingsoft/mail/ui/SwipeHelper;->draftOpen:Z

    .line 735
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getConversationUpdater()Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-result-object v1

    .line 736
    .local v1, "updater":Lcom/kingsoft/mail/ui/ConversationUpdater;
    invoke-virtual {p0, p2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getPositionOffset(I)I

    move-result v2

    sub-int v2, p2, v2

    iput v2, p1, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 737
    invoke-static {p1}, Lcom/kingsoft/mail/providers/Conversation;->listOf(Lcom/kingsoft/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v0

    .line 738
    .local v0, "con":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    invoke-interface {v1, v6, v0, v5}, Lcom/kingsoft/mail/ui/ConversationUpdater;->getDeferredAction(ILjava/util/Collection;Z)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v6, v0, v2, v3}, Lcom/kingsoft/mail/ui/ConversationUpdater;->delete(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;Z)V

    .line 739
    return-void
.end method

.method private delete(Ljava/util/Collection;Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;Ljava/util/HashSet;)V
    .locals 8
    .param p2, "listener"    # Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    .local p3, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 523
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mUndoingItems:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 525
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/SwipeableListView;->getFirstVisiblePosition()I

    move-result v4

    .line 526
    .local v4, "startPosition":I
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/SwipeableListView;->getLastVisiblePosition()I

    move-result v1

    .line 529
    .local v1, "endPosition":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Conversation;

    .line 530
    .local v0, "c":Lcom/kingsoft/mail/providers/Conversation;
    iget v5, v0, Lcom/kingsoft/mail/providers/Conversation;->position:I

    if-lt v5, v4, :cond_0

    iget v5, v0, Lcom/kingsoft/mail/providers/Conversation;->position:I

    if-gt v5, v1, :cond_0

    .line 532
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v3, "listIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget v5, v0, Lcom/kingsoft/mail/providers/Conversation;->mergeCount:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 535
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    iget-wide v6, v0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-direct {p0, v6, v7}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getMergedItems(J)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 540
    :goto_1
    iget-wide v5, v0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 538
    :cond_1
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    iget-wide v6, v0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 544
    .end local v0    # "c":Lcom/kingsoft/mail/providers/Conversation;
    .end local v3    # "listIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 546
    invoke-interface {p2}, Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;->onListItemsRemoved()V

    .line 550
    :goto_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 551
    return-void

    .line 548
    :cond_3
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->performAndSetNextAction(Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;)V

    goto :goto_2
.end method

.method private getAttachmentPreviewsSetting()Z
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-boolean v0, v0, Lcom/kingsoft/mail/providers/Settings;->convListAttachmentPreviews:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCheckboxSetting()I
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget v0, v0, Lcom/kingsoft/mail/providers/Settings;->convListIcon:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDeletingView(ILcom/kingsoft/mail/providers/Conversation;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "swipe"    # Z

    .prologue
    .line 915
    iput p1, p2, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 916
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAnimatingViews:Ljava/util/HashMap;

    iget-wide v2, p2, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    .line 917
    .local v0, "deletingView":Lcom/kingsoft/mail/browse/SwipeableConversationItemView;
    if-nez v0, :cond_0

    .line 920
    invoke-direct {p0, p1, p3, p2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->newConversationItemView(ILandroid/view/ViewGroup;Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    move-result-object v0

    .line 921
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1, p4}, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->startDeleteAnimation(Landroid/animation/Animator$AnimatorListener;Z)V

    .line 923
    :cond_0
    return-object v0
.end method

.method private getDraftingView(ILcom/kingsoft/mail/providers/Conversation;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "conv"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1371
    iput p1, p2, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 1372
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->getAnimatingViews()Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, p2, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    .line 1373
    .local v0, "undoView":Lcom/kingsoft/mail/browse/SwipeableConversationItemView;
    return-object v0
.end method

.method private getFadeLeaveBehindItem(ILcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/ui/LeaveBehindItem;
    .locals 3
    .param p1, "position"    # I
    .param p2, "target"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 879
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFadeLeaveBehindItems:Ljava/util/HashMap;

    iget-wide v1, p2, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/LeaveBehindItem;

    return-object v0
.end method

.method private getLeaveBehindItem(Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/ui/LeaveBehindItem;
    .locals 3
    .param p1, "target"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLeaveBehindItems:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/LeaveBehindItem;

    return-object v0
.end method

.method private getMarkingView(ILcom/kingsoft/mail/providers/Conversation;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "conv"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "enterWindow"    # Z

    .prologue
    .line 930
    iput p1, p2, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 931
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAnimatingViews:Ljava/util/HashMap;

    iget-wide v2, p2, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    .line 932
    .local v0, "undoView":Lcom/kingsoft/mail/browse/SwipeableConversationItemView;
    if-nez v0, :cond_0

    .line 935
    invoke-direct {p0, p1, p3, p2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->newConversationItemView(ILandroid/view/ViewGroup;Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    move-result-object v0

    .line 936
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1, p4}, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->startRestoreAnimation(Landroid/animation/Animator$AnimatorListener;Z)V

    .line 939
    :cond_0
    return-object v0
.end method

.method private getMergedItems(J)Ljava/util/List;
    .locals 5
    .param p1, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/email/provider/EmailProvider;->getMergedItemCursorsByMessageId(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    .line 505
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 506
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 507
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 508
    .local v1, "idd":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 509
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 513
    .end local v1    # "idd":Ljava/lang/Long;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 515
    :cond_2
    return-object v2
.end method

.method private getParallaxDirectionAlternativeSetting()Z
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getParallaxDirectionAlternative()Z

    move-result v0

    return v0
.end method

.method private getParallaxSpeedAlternativeSetting()Z
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getParallaxSpeedAlternative()Z

    move-result v0

    return v0
.end method

.method private getUndoingView(ILcom/kingsoft/mail/providers/Conversation;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "conv"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "swipe"    # Z

    .prologue
    .line 946
    iput p1, p2, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 947
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAnimatingViews:Ljava/util/HashMap;

    iget-wide v2, p2, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    .line 948
    .local v0, "undoView":Lcom/kingsoft/mail/browse/SwipeableConversationItemView;
    if-nez v0, :cond_0

    .line 951
    invoke-direct {p0, p1, p3, p2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->newConversationItemView(ILandroid/view/ViewGroup;Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    move-result-object v0

    .line 952
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1, p4}, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->startUndoAnimation(Landroid/animation/Animator$AnimatorListener;Z)V

    .line 954
    :cond_0
    return-object v0
.end method

.method private hasFadeLeaveBehinds()Z
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFadeLeaveBehindItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasLeaveBehinds()Z
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLeaveBehindItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDrafting(J)Z
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getDraftingItems()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPositionDeleting(J)Z
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mDeletingItems:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPositionFadeLeaveBehind(Lcom/kingsoft/mail/providers/Conversation;)Z
    .locals 3
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 1035
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->hasFadeLeaveBehinds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFadeLeaveBehindItems:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Conversation;->isMostlyDead()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPositionLeaveBehind(Lcom/kingsoft/mail/providers/Conversation;)Z
    .locals 3
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 1029
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->hasLeaveBehinds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLeaveBehindItems:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Conversation;->isMostlyDead()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPositionRestoring(J)Z
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mRestoringItems:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPositionSwipeDeleting(J)Z
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSwipeDeletingItems:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPositionUndoing(J)Z
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mUndoingItems:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPositionUndoingSwipe(J)Z
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSwipeUndoingItems:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private newConversationItemView(ILandroid/view/ViewGroup;Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/browse/SwipeableConversationItemView;
    .locals 18
    .param p1, "position"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 970
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-super {v0, v1, v4, v2}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    .line 972
    .local v3, "view":Lcom/kingsoft/mail/browse/SwipeableConversationItemView;
    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->reset()V

    .line 973
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mConversationListListener:Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mBatchConversations:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v9, v4, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getCheckboxSetting()I

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getAttachmentPreviewsSetting()Z

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getParallaxSpeedAlternativeSetting()Z

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getParallaxDirectionAlternativeSetting()Z

    move-result v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSwipeEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mPriorityMarkersEnabled:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v4}, Lcom/kingsoft/mail/ui/ControllableActivity;->getConversationItemAreaClickListener()Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;

    move-result-object v17

    move-object/from16 v4, p3

    move-object/from16 v16, p0

    invoke-virtual/range {v3 .. v17}, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->bind(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;Lcom/kingsoft/mail/ui/ConversationSelectionSet;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;IZZZZZLcom/kingsoft/mail/ui/AnimatedAdapter;Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;)V

    .line 977
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAnimatingViews:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget-wide v5, v0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    return-object v3
.end method

.method private performAndSetNextAction(Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;)V
    .locals 1
    .param p1, "next"    # Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mPendingDestruction:Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mPendingDestruction:Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;->onListItemsRemoved()V

    .line 1049
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mPendingDestruction:Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;

    .line 1050
    return-void
.end method

.method private setAccount(Lcom/kingsoft/mail/providers/Account;)Z
    .locals 5
    .param p1, "newAccount"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x4000

    .line 234
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-boolean v2, v2, Lcom/kingsoft/mail/providers/Settings;->priorityArrowsEnabled:Z

    iget-object v3, p1, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-boolean v3, v3, Lcom/kingsoft/mail/providers/Settings;->priorityArrowsEnabled:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v2, v4}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v2

    invoke-virtual {p1, v4}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget v2, v2, Lcom/kingsoft/mail/providers/Settings;->convListIcon:I

    iget-object v3, p1, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget v3, v3, Lcom/kingsoft/mail/providers/Settings;->convListIcon:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-boolean v2, v2, Lcom/kingsoft/mail/providers/Settings;->convListAttachmentPreviews:Z

    iget-object v3, p1, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-boolean v3, v3, Lcom/kingsoft/mail/providers/Settings;->convListAttachmentPreviews:Z

    if-ne v2, v3, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 247
    .local v0, "accountChanged":Z
    :goto_0
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 248
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-boolean v2, v2, Lcom/kingsoft/mail/providers/Settings;->priorityArrowsEnabled:Z

    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mPriorityMarkersEnabled:Z

    .line 249
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v2, v4}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSwipeEnabled:Z

    .line 251
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget v4, v4, Lcom/kingsoft/mail/providers/Settings;->convListIcon:I

    if-ne v4, v1, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/kingsoft/mail/analytics/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-boolean v3, v3, Lcom/kingsoft/mail/providers/Settings;->convListAttachmentPreviews:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/kingsoft/mail/analytics/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v2

    const/4 v3, 0x7

    iget-object v1, p1, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget v1, v1, Lcom/kingsoft/mail/providers/Settings;->replyBehavior:I

    if-nez v1, :cond_2

    const-string/jumbo v1, "reply"

    :goto_2
    invoke-interface {v2, v3, v1}, Lcom/kingsoft/mail/analytics/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 260
    return v0

    .line 244
    .end local v0    # "accountChanged":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "accountChanged":Z
    goto :goto_0

    .line 251
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 255
    :cond_2
    const-string/jumbo v1, "reply_all"

    goto :goto_2
.end method

.method private updateAnimatingConversationItems(Ljava/lang/Object;Ljava/util/HashSet;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1053
    .local p2, "items":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1054
    instance-of v3, p1, Lcom/kingsoft/mail/browse/ConversationItemView;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 1055
    check-cast v2, Lcom/kingsoft/mail/browse/ConversationItemView;

    .line 1056
    .local v2, "target":Lcom/kingsoft/mail/browse/ConversationItemView;
    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationItemView;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v3

    iget-wide v0, v3, Lcom/kingsoft/mail/providers/Conversation;->id:J

    .line 1057
    .local v0, "id":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1058
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAnimatingViews:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1060
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->performAndSetNextAction(Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;)V

    .line 1061
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 1065
    .end local v0    # "id":J
    .end local v2    # "target":Lcom/kingsoft/mail/browse/ConversationItemView;
    :cond_0
    return-void
.end method

.method private updateSpecialViews()V
    .locals 7

    .prologue
    .line 1217
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSpecialViews:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 1221
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFleetingViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;

    .line 1222
    .local v4, "specialView":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getConversationCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;->onUpdate(Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 1224
    invoke-interface {v4}, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;->getShouldDisplayInList()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1226
    invoke-interface {v4}, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;->getPosition()I

    move-result v3

    .line 1231
    .local v3, "position":I
    move-object v1, v4

    .line 1232
    .local v1, "insert":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    :goto_0
    if-eqz v1, :cond_0

    .line 1233
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSpecialViews:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;

    .line 1234
    .local v2, "kickedOut":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSpecialViews:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1235
    move-object v1, v2

    .line 1236
    add-int/lit8 v3, v3, 0x1

    .line 1237
    goto :goto_0

    .line 1240
    .end local v1    # "insert":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    .end local v2    # "kickedOut":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    .end local v3    # "position":I
    .end local v4    # "specialView":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    :cond_1
    return-void
.end method


# virtual methods
.method public addFooter(Landroid/view/View;)V
    .locals 0
    .param p1, "footerView"    # Landroid/view/View;

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFooter:Landroid/view/View;

    .line 1096
    return-void
.end method

.method public addRestoringItem(J)V
    .locals 2
    .param p1, "item"    # J

    .prologue
    .line 373
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mRestoringItems:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 375
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mRefreshAction:Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->performAndSetNextAction(Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;)V

    .line 376
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1070
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 966
    return-void
.end method

.method public cancelDismissCounter()V
    .locals 2

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->cancelLeaveBehindFadeInAnimation()V

    .line 314
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mCountDown:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 315
    return-void
.end method

.method public cancelFadeOutLastLeaveBehindItemText()V
    .locals 1

    .prologue
    .line 1205
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getLastLeaveBehindItem()Lcom/kingsoft/mail/ui/LeaveBehindItem;

    move-result-object v0

    .line 1206
    .local v0, "item":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    if-eqz v0, :cond_0

    .line 1207
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->cancelFadeOutText()V

    .line 1209
    :cond_0
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1266
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1267
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->updateSpecialViews()V

    .line 1268
    return-void
.end method

.method public changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "from"    # [Ljava/lang/String;
    .param p3, "to"    # [I

    .prologue
    .line 1272
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1273
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->updateSpecialViews()V

    .line 1274
    return-void
.end method

.method public cleanup()V
    .locals 3

    .prologue
    .line 1313
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFleetingViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;

    .line 1314
    .local v1, "view":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;->cleanup()V

    goto :goto_0

    .line 1316
    .end local v1    # "view":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    :cond_0
    return-void
.end method

.method public clearLeaveBehind(J)V
    .locals 3
    .param p1, "itemId"    # J

    .prologue
    .line 1103
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->hasLeaveBehinds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLeaveBehindItems:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1104
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLeaveBehindItems:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    :goto_0
    iget-wide v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 1111
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    .line 1113
    :cond_0
    return-void

    .line 1105
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->hasFadeLeaveBehinds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1106
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFadeLeaveBehindItems:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1108
    :cond_2
    sget-object v0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Trying to clear a non-existant leave behind"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public commitLeaveBehindItems(Z)V
    .locals 6
    .param p1, "animate"    # Z

    .prologue
    .line 844
    const/4 v0, 0x0

    .line 845
    .local v0, "changed":Z
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->hasLeaveBehinds()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 846
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLeaveBehindItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/ui/LeaveBehindItem;

    .line 847
    .local v2, "item":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    if-eqz p1, :cond_0

    .line 848
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFadeLeaveBehindItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->getConversationId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 850
    :cond_0
    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->commit()V

    goto :goto_0

    .line 853
    .end local v2    # "item":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    :cond_1
    const/4 v0, 0x1

    .line 854
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    .line 855
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLeaveBehindItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 857
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->hasFadeLeaveBehinds()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p1, :cond_4

    .line 859
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFadeLeaveBehindItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/ui/LeaveBehindItem;

    .line 860
    .restart local v2    # "item":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->commit()V

    goto :goto_1

    .line 862
    .end local v2    # "item":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    :cond_3
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFadeLeaveBehindItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 863
    const/4 v0, 0x1

    .line 865
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 866
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 867
    const/4 v0, 0x1

    .line 869
    :cond_5
    if-eqz v0, :cond_6

    .line 870
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 872
    :cond_6
    return-void
.end method

.method public createConversationItemView(Lcom/kingsoft/mail/browse/SwipeableConversationItemView;Landroid/content/Context;Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/browse/SwipeableConversationItemView;
    .locals 15
    .param p1, "view"    # Lcom/kingsoft/mail/browse/SwipeableConversationItemView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "conv"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 418
    new-instance p1, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    .end local p1    # "view":Lcom/kingsoft/mail/browse/SwipeableConversationItemView;
    invoke-direct/range {p1 .. p2}, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;-><init>(Landroid/content/Context;)V

    .line 420
    .restart local p1    # "view":Lcom/kingsoft/mail/browse/SwipeableConversationItemView;
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mConversationListListener:Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mBatchConversations:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v6, v0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getCheckboxSetting()I

    move-result v7

    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getAttachmentPreviewsSetting()Z

    move-result v8

    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getParallaxSpeedAlternativeSetting()Z

    move-result v9

    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getParallaxDirectionAlternativeSetting()Z

    move-result v10

    iget-boolean v11, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSwipeEnabled:Z

    iget-boolean v12, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mPriorityMarkersEnabled:Z

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getConversationItemAreaClickListener()Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;

    move-result-object v14

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v13, p0

    invoke-virtual/range {v0 .. v14}, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->bind(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;Lcom/kingsoft/mail/ui/ConversationSelectionSet;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;IZZZZZLcom/kingsoft/mail/ui/AnimatedAdapter;Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;)V

    .line 424
    return-object p1
.end method

.method public delete(Ljava/util/Collection;Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mDeletingItems:Ljava/util/HashSet;

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->delete(Ljava/util/Collection;Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;Ljava/util/HashSet;)V

    .line 489
    return-void
.end method

.method public final destroy()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 328
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAccountListener:Lcom/kingsoft/mail/providers/AccountObserver;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/AccountObserver;->unregisterAndDestroy()V

    .line 329
    return-void
.end method

.method public fadeOutLeaveBehindItems()V
    .locals 7

    .prologue
    .line 774
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mCountDown:Ljava/lang/Runnable;

    if-nez v3, :cond_2

    .line 775
    new-instance v3, Lcom/kingsoft/mail/ui/AnimatedAdapter$6;

    invoke-direct {v3, p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter$6;-><init>(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V

    iput-object v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mCountDown:Ljava/lang/Runnable;

    .line 785
    :goto_0
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLeaveBehindItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 787
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/kingsoft/mail/ui/LeaveBehindItem;>;>;"
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 788
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/ui/LeaveBehindItem;

    .line 789
    .local v2, "item":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->getData()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    .line 790
    .local v0, "conv":Lcom/kingsoft/mail/providers/Conversation;
    iget-wide v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    iget-wide v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 791
    :cond_1
    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->cancelFadeInTextAnimation()V

    .line 792
    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->makeInert()V

    goto :goto_1

    .line 782
    .end local v0    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/kingsoft/mail/ui/LeaveBehindItem;>;>;"
    .end local v2    # "item":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mCountDown:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 795
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/kingsoft/mail/ui/LeaveBehindItem;>;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->startDismissCounter()V

    .line 796
    return-void
.end method

.method public fadeOutSpecificLeaveBehindItem(J)V
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 764
    iget-wide v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 765
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    .line 767
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->startFadeOutLeaveBehindItemsAnimations()V

    .line 768
    return-void
.end method

.method public getBitmapCache()Lcom/kingsoft/bitmap/BitmapCache;
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mBitmapCache:Lcom/kingsoft/bitmap/BitmapCache;

    return-object v0
.end method

.method public getConversationCount()I
    .locals 1

    .prologue
    .line 342
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getConversationCursor()Lcom/kingsoft/mail/browse/ConversationCursor;
    .locals 1

    .prologue
    .line 1187
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/ConversationCursor;

    return-object v0
.end method

.method public getCoordinatesCache()Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mCoordinatesCache:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 334
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSpecialViews:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 336
    .local v1, "specialViewCount":I
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v2

    add-int v0, v2, v1

    .line 337
    .local v0, "count":I
    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mShowFooter:Z

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .end local v0    # "count":I
    :cond_0
    return v0
.end method

.method public getDecodeAggregator()Lcom/kingsoft/bitmap/DecodeAggregator;
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mDecodeAggregator:Lcom/kingsoft/bitmap/DecodeAggregator;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1000
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mShowFooter:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFooter:Landroid/view/View;

    .line 1005
    :goto_0
    return-object v0

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSpecialViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1003
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSpecialViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1005
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getPositionOffset(I)I

    move-result v0

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Landroid/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 884
    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mShowFooter:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_0

    .line 885
    const-wide/16 v4, -0x1

    .line 907
    :goto_0
    return-wide v4

    .line 888
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSpecialViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;

    .line 889
    .local v3, "specialView":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    if-eqz v3, :cond_1

    .line 891
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    int-to-long v4, v4

    goto :goto_0

    .line 894
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getPositionOffset(I)I

    move-result v4

    sub-int v2, p1, v4

    .line 900
    .local v2, "cursorPos":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getConversationCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v1

    .line 901
    .local v1, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 902
    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCachedConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    .line 903
    .local v0, "conv":Lcom/kingsoft/mail/providers/Conversation;
    if-eqz v0, :cond_2

    .line 904
    iget-wide v4, v0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    goto :goto_0

    .line 907
    .end local v0    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    :cond_2
    invoke-super {p0, v2}, Landroid/widget/SimpleCursorAdapter;->getItemId(I)J

    move-result-wide v4

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, -0x1

    .line 442
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mShowFooter:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 443
    const/4 v0, 0x1

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 444
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->hasLeaveBehinds()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSpecialViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 456
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastLeaveBehindItem()Lcom/kingsoft/mail/ui/LeaveBehindItem;
    .locals 4

    .prologue
    .line 1194
    iget-wide v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLeaveBehindItems:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/LeaveBehindItem;

    .line 1197
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListView()Lcom/kingsoft/mail/ui/SwipeableListView;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    return-object v0
.end method

.method public getPositionOffset(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 1297
    const/4 v3, 0x0

    .line 1299
    .local v3, "viewsAbove":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSpecialViews:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1300
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSpecialViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1303
    .local v0, "bidPosition":I
    if-gt v0, p1, :cond_0

    .line 1304
    add-int/lit8 v3, v3, 0x1

    .line 1299
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1308
    .end local v0    # "bidPosition":I
    :cond_1
    return v3
.end method

.method public getSpecialViewPosition(Lcom/kingsoft/mail/ui/ConversationSpecialItemView;)I
    .locals 1
    .param p1, "view"    # Lcom/kingsoft/mail/ui/ConversationSpecialItemView;

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSpecialViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 555
    iget-boolean v11, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mShowFooter:Z

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    move/from16 v0, p1

    if-ne v0, v11, :cond_0

    .line 556
    iget-object v8, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFooter:Landroid/view/View;

    .line 728
    :goto_0
    return-object v8

    .line 560
    :cond_0
    iget-object v11, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSpecialViews:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;

    .line 561
    .local v8, "specialView":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    if-eqz v8, :cond_2

    .line 562
    sget-object v11, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 563
    new-instance v8, Landroid/view/View;

    .end local v8    # "specialView":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    iget-object v11, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    check-cast v11, Landroid/app/Activity;

    invoke-direct {v8, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 565
    .restart local v8    # "specialView":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    :cond_1
    invoke-interface {v8}, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;->onGetView()V

    .line 566
    check-cast v8, Landroid/view/View;

    goto :goto_0

    .line 569
    :cond_2
    const-string/jumbo v11, "AA.getView"

    invoke-static {v11}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p0 .. p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/browse/ConversationCursor;

    .line 572
    .local v2, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationCursor;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v1

    .line 574
    .local v1, "conv":Lcom/kingsoft/mail/providers/Conversation;
    iget-object v11, v1, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    if-eqz v11, :cond_3

    iget-object v11, v1, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    iget-object v11, v11, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    iget-object v11, v1, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    iget-object v11, v11, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kingsoft/mail/providers/MessageInfo;

    iget-boolean v11, v11, Lcom/kingsoft/mail/providers/MessageInfo;->read:Z

    iget-boolean v12, v1, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    if-eq v11, v12, :cond_3

    .line 579
    iget-object v11, v1, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    iget-boolean v12, v1, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    invoke-virtual {v11, v12}, Lcom/kingsoft/mail/providers/ConversationInfo;->markRead(Z)Z

    .line 582
    :cond_3
    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationCursor;->notifyUIPositionChange()V

    .line 585
    iget-object v11, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v11}, Lcom/kingsoft/mail/providers/Folder;->isSyncInProgress()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v11}, Lcom/kingsoft/mail/ui/SwipeableListView;->isScrolling()Z

    move-result v11

    if-nez v11, :cond_4

    iget-wide v11, v1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-direct {p0, v11, v12}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->isDrafting(J)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 586
    invoke-virtual/range {p0 .. p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getPositionOffset(I)I

    move-result v11

    sub-int v11, p1, v11

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v1, v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getDraftingView(ILcom/kingsoft/mail/providers/Conversation;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 587
    invoke-virtual/range {p0 .. p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getPositionOffset(I)I

    move-result v11

    sub-int v11, p1, v11

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v1, v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getDraftingView(ILcom/kingsoft/mail/providers/Conversation;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    goto/16 :goto_0

    .line 590
    :cond_4
    iget-wide v11, v1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-direct {p0, v11, v12}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->isPositionRestoring(J)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 592
    invoke-virtual/range {p0 .. p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getPositionOffset(I)I

    move-result v11

    sub-int v11, p1, v11

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v1, v0, v12}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getMarkingView(ILcom/kingsoft/mail/providers/Conversation;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    goto/16 :goto_0

    .line 595
    :cond_5
    iget-wide v11, v1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-direct {p0, v11, v12}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->isPositionUndoing(J)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 596
    invoke-virtual/range {p0 .. p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getPositionOffset(I)I

    move-result v11

    sub-int v11, p1, v11

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v1, v0, v12}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getUndoingView(ILcom/kingsoft/mail/providers/Conversation;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    goto/16 :goto_0

    .line 598
    :cond_6
    iget-wide v11, v1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-direct {p0, v11, v12}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->isPositionUndoingSwipe(J)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 599
    invoke-virtual/range {p0 .. p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getPositionOffset(I)I

    move-result v11

    sub-int v11, p1, v11

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v1, v0, v12}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getUndoingView(ILcom/kingsoft/mail/providers/Conversation;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    goto/16 :goto_0

    .line 601
    :cond_7
    iget-wide v11, v1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-direct {p0, v11, v12}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->isPositionDeleting(J)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 602
    invoke-virtual/range {p0 .. p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getPositionOffset(I)I

    move-result v11

    sub-int v11, p1, v11

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v1, v0, v12}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getDeletingView(ILcom/kingsoft/mail/providers/Conversation;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    goto/16 :goto_0

    .line 603
    :cond_8
    iget-wide v11, v1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-direct {p0, v11, v12}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->isPositionSwipeDeleting(J)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 604
    invoke-virtual/range {p0 .. p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getPositionOffset(I)I

    move-result v11

    sub-int v11, p1, v11

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v1, v0, v12}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getDeletingView(ILcom/kingsoft/mail/providers/Conversation;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    goto/16 :goto_0

    .line 606
    :cond_9
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->hasFadeLeaveBehinds()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 607
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->isPositionFadeLeaveBehind(Lcom/kingsoft/mail/providers/Conversation;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 608
    move/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getFadeLeaveBehindItem(ILcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/ui/LeaveBehindItem;

    move-result-object v4

    .line 609
    .local v4, "fade":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    iget-object v11, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v11}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->startShrinkAnimation(Landroid/animation/Animator$AnimatorListener;)V

    .line 610
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    move-object v8, v4

    .line 611
    goto/16 :goto_0

    .line 614
    .end local v4    # "fade":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    :cond_a
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->hasLeaveBehinds()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 615
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->isPositionLeaveBehind(Lcom/kingsoft/mail/providers/Conversation;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 616
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getLeaveBehindItem(Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/ui/LeaveBehindItem;

    move-result-object v5

    .line 617
    .local v5, "fadeIn":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    iget-wide v11, v1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    iget-wide v13, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    cmp-long v11, v11, v13

    if-nez v11, :cond_b

    .line 620
    iget-object v11, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLeaveBehindItems:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    const/4 v12, 0x2

    if-le v11, v12, :cond_d

    .line 621
    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->isAnimating()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 622
    sget v11, Lcom/kingsoft/mail/ui/AnimatedAdapter;->sDismissAllLongDelay:I

    invoke-virtual {v5, v11}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->increaseFadeInDelay(I)V

    .line 631
    :cond_b
    :goto_1
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    move-object v8, v5

    .line 632
    goto/16 :goto_0

    .line 624
    :cond_c
    sget v11, Lcom/kingsoft/mail/ui/AnimatedAdapter;->sDismissAllLongDelay:I

    invoke-virtual {v5, v11}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->startFadeInTextAnimation(I)V

    goto :goto_1

    .line 628
    :cond_d
    sget v11, Lcom/kingsoft/mail/ui/AnimatedAdapter;->sDismissAllShortDelay:I

    invoke-virtual {v5, v11}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->startFadeInTextAnimation(I)V

    goto :goto_1

    .line 636
    .end local v5    # "fadeIn":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    :cond_e
    if-eqz p2, :cond_10

    move-object/from16 v0, p2

    instance-of v11, v0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    if-nez v11, :cond_10

    .line 637
    sget-object v11, Lcom/kingsoft/mail/ui/AnimatedAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "Incorrect convert view received; nulling it out"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 638
    iget-object v11, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-virtual {p0, v11, v2, v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_f
    :goto_2
    move-object/from16 v11, p2

    .line 642
    check-cast v11, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    iget-object v12, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v11, v12, v1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->createConversationItemView(Lcom/kingsoft/mail/browse/SwipeableConversationItemView;Landroid/content/Context;Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    move-result-object v10

    .line 644
    .local v10, "v":Lcom/kingsoft/mail/browse/SwipeableConversationItemView;
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 646
    const v11, 0x7f0c016d

    invoke-virtual {v10, v11}, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 647
    .local v3, "delView":Landroid/widget/ImageView;
    const v11, 0x7f0c016e

    invoke-virtual {v10, v11}, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 648
    .local v9, "starView":Landroid/widget/ImageView;
    const v11, 0x7f0c016c

    invoke-virtual {v10, v11}, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 649
    .local v6, "markView":Landroid/widget/TextView;
    new-instance v11, Lcom/kingsoft/mail/ui/AnimatedAdapter$4;

    move/from16 v0, p1

    invoke-direct {v11, p0, v1, v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter$4;-><init>(Lcom/kingsoft/mail/ui/AnimatedAdapter;Lcom/kingsoft/mail/providers/Conversation;I)V

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    iget-boolean v11, v1, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    if-eqz v11, :cond_11

    .line 690
    const v11, 0x7f0200f1

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 694
    :goto_3
    new-instance v11, Lcom/kingsoft/mail/ui/AnimatedAdapter$5;

    invoke-direct {v11, p0, v10}, Lcom/kingsoft/mail/ui/AnimatedAdapter$5;-><init>(Lcom/kingsoft/mail/ui/AnimatedAdapter;Lcom/kingsoft/mail/browse/SwipeableConversationItemView;)V

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    iget-boolean v11, v1, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    if-eqz v11, :cond_12

    .line 703
    const v11, 0x7f10014e

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    .line 704
    iget-object v11, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b004c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 709
    :goto_4
    iget-object v11, v10, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v13, v1, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/kingsoft/mail/browse/ConversationItemView;->setTag(Ljava/lang/Object;)V

    .line 711
    iget-object v11, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v11}, Lcom/kingsoft/mail/ui/SwipeableListView;->getConversationID()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    cmp-long v11, v11, v13

    if-nez v11, :cond_13

    .line 713
    const/4 v11, 0x1

    sput-boolean v11, Lcom/kingsoft/mail/ui/SwipeHelper;->draftOpen:Z

    .line 714
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 716
    iget-object v11, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0122

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 717
    .local v7, "offset":F
    iget-object v11, v10, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    neg-float v12, v7

    invoke-virtual {v11, v12}, Lcom/kingsoft/mail/browse/ConversationItemView;->setTranslationX(F)V

    .line 718
    iget-object v11, v10, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->deleteImage:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 719
    iget-object v11, v10, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->starImage:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 720
    iget-object v11, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    iget-object v12, v10, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    invoke-virtual {v11, v12}, Lcom/kingsoft/mail/ui/SwipeableListView;->setSwipeCurrentView(Lcom/kingsoft/mail/ui/SwipeableItemView;)V

    .line 721
    iget-object v11, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    iget-wide v12, v1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-virtual {v11, v12, v13}, Lcom/kingsoft/mail/ui/SwipeableListView;->setConversationID(J)V

    .line 727
    .end local v7    # "offset":F
    :goto_5
    iget-object v11, v10, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    invoke-virtual {v11}, Lcom/kingsoft/mail/browse/ConversationItemView;->invalidate()V

    move-object v8, v10

    .line 728
    goto/16 :goto_0

    .line 639
    .end local v3    # "delView":Landroid/widget/ImageView;
    .end local v6    # "markView":Landroid/widget/TextView;
    .end local v9    # "starView":Landroid/widget/ImageView;
    .end local v10    # "v":Lcom/kingsoft/mail/browse/SwipeableConversationItemView;
    :cond_10
    if-eqz p2, :cond_f

    move-object/from16 v11, p2

    .line 640
    check-cast v11, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    invoke-virtual {v11}, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->reset()V

    goto/16 :goto_2

    .line 692
    .restart local v3    # "delView":Landroid/widget/ImageView;
    .restart local v6    # "markView":Landroid/widget/TextView;
    .restart local v9    # "starView":Landroid/widget/ImageView;
    .restart local v10    # "v":Lcom/kingsoft/mail/browse/SwipeableConversationItemView;
    :cond_11
    const v11, 0x7f0200f0

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 706
    :cond_12
    const v11, 0x7f10014f

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    .line 707
    iget-object v11, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b004d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_4

    .line 723
    :cond_13
    iget-object v11, v10, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->deleteImage:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 724
    iget-object v11, v10, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->starImage:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method public getViewMode()I
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x5

    return v0
.end method

.method public hasSpecialViews()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSpecialViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x1

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mUndoingItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSwipeUndoingItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->hasFadeLeaveBehinds()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mDeletingItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSwipeDeletingItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1075
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSpecialViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;

    .line 1076
    .local v1, "view":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    if-eqz v1, :cond_0

    .line 1077
    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;->acceptsUserTaps()Z

    move-result v0

    .line 1078
    .local v0, "enabled":Z
    sget-object v4, Lcom/kingsoft/mail/ui/AnimatedAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "AA.isEnabled(%d) = %b"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1081
    .end local v0    # "enabled":Z
    :goto_0
    return v0

    :cond_0
    int-to-long v4, p1

    invoke-direct {p0, v4, v5}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->isPositionDeleting(J)Z

    move-result v4

    if-nez v4, :cond_1

    int-to-long v4, p1

    invoke-direct {p0, v4, v5}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->isPositionUndoing(J)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public isFooterViewVisibility()Z
    .locals 1

    .prologue
    .line 1085
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mShowFooter:Z

    return v0
.end method

.method public isInCabMode()Z
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mBatchConversations:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 959
    new-instance v0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    invoke-direct {v0, p1}, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 1256
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1257
    sget-object v0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyDataSetChanged() called off the main thread"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1260
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->updateSpecialViews()V

    .line 1261
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    .line 1262
    return-void
.end method

.method public onCabModeEntered()V
    .locals 3

    .prologue
    .line 1326
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFleetingViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;

    .line 1327
    .local v1, "specialView":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;->onCabModeEntered()V

    goto :goto_0

    .line 1329
    .end local v1    # "specialView":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    :cond_0
    return-void
.end method

.method public onCabModeExited()V
    .locals 3

    .prologue
    .line 1332
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFleetingViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;

    .line 1333
    .local v1, "specialView":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;->onCabModeExited()V

    goto :goto_0

    .line 1335
    .end local v1    # "specialView":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    :cond_0
    return-void
.end method

.method public onConversationListVisibilityChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1338
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFleetingViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;

    .line 1339
    .local v1, "specialView":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    invoke-interface {v1, p1}, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;->onConversationListVisibilityChanged(Z)V

    goto :goto_0

    .line 1341
    .end local v1    # "specialView":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    :cond_0
    return-void
.end method

.method public onConversationSelected()V
    .locals 3

    .prologue
    .line 1320
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFleetingViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;

    .line 1321
    .local v1, "specialView":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;->onConversationSelected()V

    goto :goto_0

    .line 1323
    .end local v1    # "specialView":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1136
    const-string/jumbo v7, "last_deleting_items"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1137
    const-string/jumbo v7, "last_deleting_items"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    .line 1138
    .local v4, "lastDeleting":[J
    move-object v2, v4

    .local v2, "arr$":[J
    array-length v6, v2

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-wide v0, v2, v3

    .line 1139
    .local v0, "aLastDeleting":J
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1142
    .end local v0    # "aLastDeleting":J
    .end local v2    # "arr$":[J
    .end local v3    # "i$":I
    .end local v4    # "lastDeleting":[J
    .end local v6    # "len$":I
    :cond_0
    const-string/jumbo v7, "leave_behind_item_data"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1143
    const-string/jumbo v7, "leave_behind_item_data"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/ui/LeaveBehindData;

    .line 1145
    .local v5, "left":Lcom/kingsoft/mail/ui/LeaveBehindData;
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLeaveBehindItems:Ljava/util/HashMap;

    const-string/jumbo v8, "leave_behind_item_id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, v5, Lcom/kingsoft/mail/ui/LeaveBehindData;->data:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v10, v5, Lcom/kingsoft/mail/ui/LeaveBehindData;->op:Lcom/kingsoft/mail/ui/ToastBarOperation;

    iget-object v11, v5, Lcom/kingsoft/mail/ui/LeaveBehindData;->data:Lcom/kingsoft/mail/providers/Conversation;

    iget v11, v11, Lcom/kingsoft/mail/providers/Conversation;->position:I

    iget v12, v5, Lcom/kingsoft/mail/ui/LeaveBehindData;->height:I

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->setupLeaveBehind(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/ui/ToastBarOperation;II)Lcom/kingsoft/mail/ui/LeaveBehindItem;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    .end local v5    # "left":Lcom/kingsoft/mail/ui/LeaveBehindData;
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, -0x1

    .line 1116
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [J

    .line 1117
    .local v3, "lastDeleting":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 1118
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1120
    :cond_0
    const-string/jumbo v4, "last_deleting_items"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1121
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->hasLeaveBehinds()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1122
    iget-wide v4, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    .line 1123
    const-string/jumbo v5, "leave_behind_item_data"

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLeaveBehindItems:Ljava/util/HashMap;

    iget-wide v6, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/ui/LeaveBehindItem;

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->getLeaveBehindData()Lcom/kingsoft/mail/ui/LeaveBehindData;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1125
    const-string/jumbo v4, "leave_behind_item_id"

    iget-wide v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1127
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLeaveBehindItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/ui/LeaveBehindItem;

    .line 1128
    .local v2, "item":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    iget-wide v4, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->getData()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v4

    iget-wide v4, v4, Lcom/kingsoft/mail/providers/Conversation;->id:J

    iget-wide v6, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 1129
    :cond_3
    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->commit()V

    goto :goto_1

    .line 1133
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    :cond_4
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 2
    .param p1, "scrollState"    # I

    .prologue
    .line 1344
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1345
    .local v0, "scrolling":Z
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mBitmapCache:Lcom/kingsoft/bitmap/BitmapCache;

    invoke-interface {v1, v0}, Lcom/kingsoft/bitmap/BitmapCache;->setBlocking(Z)V

    .line 1346
    return-void

    .line 1344
    .end local v0    # "scrolling":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public positionIsFirstConversation(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSpecialViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x1

    .line 349
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveSpecialItemInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1358
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFleetingViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;

    .line 1359
    .local v1, "specialView":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    invoke-interface {v1, p1}, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;->saveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1361
    .end local v1    # "specialView":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    :cond_0
    return-void
.end method

.method public setFolder(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 0
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 1100
    return-void
.end method

.method public setFooterVisibility(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1088
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mShowFooter:Z

    if-eq v0, p1, :cond_0

    .line 1089
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mShowFooter:Z

    .line 1090
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 1092
    :cond_0
    return-void
.end method

.method public setSwipeUndo(Z)V
    .locals 5
    .param p1, "undo"    # Z

    .prologue
    const-wide/16 v3, -0x1

    .line 400
    if-eqz p1, :cond_2

    .line 401
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSwipeUndoingItems:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 403
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 405
    :cond_0
    iget-wide v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSwipeUndoingItems:Ljava/util/HashSet;

    iget-wide v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 407
    iput-wide v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    .line 410
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 411
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mRefreshAction:Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->performAndSetNextAction(Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;)V

    .line 413
    :cond_2
    return-void
.end method

.method public setUndo(Z)V
    .locals 7
    .param p1, "undo"    # Z

    .prologue
    const-wide/16 v5, -0x1

    .line 379
    if-eqz p1, :cond_3

    .line 380
    const/4 v2, 0x0

    .line 381
    .local v2, "itemAdded":Z
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 382
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 383
    .local v1, "item":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->addUndoingItem(J)Z

    move-result v3

    or-int/2addr v2, v3

    .line 384
    goto :goto_0

    .line 385
    .end local v1    # "item":Ljava/lang/Long;
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 387
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-wide v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 388
    iget-wide v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    invoke-direct {p0, v3, v4}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->addUndoingItem(J)Z

    move-result v3

    or-int/2addr v2, v3

    .line 389
    iput-wide v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    .line 392
    :cond_2
    if-eqz v2, :cond_3

    .line 393
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 394
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mRefreshAction:Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;

    invoke-direct {p0, v3}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->performAndSetNextAction(Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;)V

    .line 397
    .end local v2    # "itemAdded":Z
    :cond_3
    return-void
.end method

.method public setupLeaveBehind(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/ui/ToastBarOperation;II)Lcom/kingsoft/mail/ui/LeaveBehindItem;
    .locals 5
    .param p1, "target"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "undoOp"    # Lcom/kingsoft/mail/ui/ToastBarOperation;
    .param p3, "deletedRow"    # I
    .param p4, "viewHeight"    # I

    .prologue
    .line 751
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->cancelLeaveBehindFadeInAnimation()V

    .line 752
    iget-wide v1, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    iput-wide v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    .line 753
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->fadeOutLeaveBehindItems()V

    .line 755
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400ad

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/LeaveBehindItem;

    .line 758
    .local v0, "leaveBehind":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLeaveBehindItems:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    iget-wide v2, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    return-object v0
.end method

.method public startDismissCounter()V
    .locals 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLeaveBehindItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mCountDown:Ljava/lang/Runnable;

    sget v2, Lcom/kingsoft/mail/ui/AnimatedAdapter;->sDismissAllLongDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mCountDown:Ljava/lang/Runnable;

    sget v2, Lcom/kingsoft/mail/ui/AnimatedAdapter;->sDismissAllShortDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected startFadeOutLeaveBehindItemsAnimations()V
    .locals 9

    .prologue
    .line 799
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/SwipeableListView;->getFirstVisiblePosition()I

    move-result v4

    .line 800
    .local v4, "startPosition":I
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/SwipeableListView;->getLastVisiblePosition()I

    move-result v1

    .line 802
    .local v1, "endPosition":I
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->hasLeaveBehinds()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 805
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLeaveBehindItems:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 807
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/kingsoft/mail/ui/LeaveBehindItem;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 808
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/ui/LeaveBehindItem;

    .line 809
    .local v3, "item":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->getData()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    .line 810
    .local v0, "conv":Lcom/kingsoft/mail/providers/Conversation;
    iget-wide v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    iget-wide v5, v0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    iget-wide v7, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastLeaveBehind:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 811
    :cond_1
    iget v5, v0, Lcom/kingsoft/mail/providers/Conversation;->position:I

    if-lt v5, v4, :cond_2

    iget v5, v0, Lcom/kingsoft/mail/providers/Conversation;->position:I

    if-gt v5, v1, :cond_2

    .line 812
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFadeLeaveBehindItems:Ljava/util/HashMap;

    iget-wide v6, v0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 814
    :cond_2
    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->commit()V

    goto :goto_1

    .line 819
    .end local v0    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    .end local v3    # "item":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    :cond_3
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->cancelLeaveBehindFadeInAnimation()V

    .line 821
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/kingsoft/mail/ui/LeaveBehindItem;>;>;"
    :cond_4
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 822
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 824
    :cond_5
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 825
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 1278
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 1279
    .local v0, "oldCursor":Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->updateSpecialViews()V

    .line 1281
    return-object v0
.end method

.method public swipeDelete(Ljava/util/Collection;Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 472
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSwipeDeletingItems:Ljava/util/HashSet;

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->delete(Ljava/util/Collection;Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;Ljava/util/HashSet;)V

    .line 473
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1164
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    const-string/jumbo v1, " mUndoingItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mUndoingItems:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1167
    const-string/jumbo v1, " mSwipeUndoingItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSwipeUndoingItems:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1169
    const-string/jumbo v1, " mDeletingItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mDeletingItems:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1171
    const-string/jumbo v1, " mSwipeDeletingItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSwipeDeletingItems:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1173
    const-string/jumbo v1, " mLeaveBehindItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLeaveBehindItems:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1175
    const-string/jumbo v1, " mFadeLeaveBehindItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFadeLeaveBehindItems:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1177
    const-string/jumbo v1, " mLastDeletingItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1179
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
