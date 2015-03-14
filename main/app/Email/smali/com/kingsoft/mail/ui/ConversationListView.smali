.class public Lcom/kingsoft/mail/ui/ConversationListView;
.super Lcom/kingsoft/mail/ui/SwipeBackView;
.source "ConversationListView.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/SwipeableListView$SwipeListener;


# static fields
.field private static final DISTANCE_TO_IGNORE:I = 0xf

.field private static final DISTANCE_TO_TRIGGER_CANCEL:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_DISTANCE_TO_TRIGGER_SYNC:I = 0x12c

.field private static final MAX_NUM_OF_SYNC_TOASTS:I = 0x5

.field private static final MIN_DISTANCE_TO_TRIGGER_SYNC:I = 0x96


# instance fields
.field private mAccountPreferences:Lcom/kingsoft/mail/preferences/AccountPreferences;

.field private mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

.field private mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

.field private mDensity:F

.field private mDistanceToTriggerSyncDp:F

.field private mIgnoreTouchEvents:Z

.field private mIsSyncing:Z

.field private mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

.field private final mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

.field private mTrackingScrollMaxY:F

.field private mTrackingScrollMovement:Z

.field private mTrackingScrollStartY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/ConversationListView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/ConversationListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/ui/ConversationListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/mail/ui/SwipeBackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mIgnoreTouchEvents:Z

    .line 45
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mTrackingScrollMovement:Z

    .line 52
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mIsSyncing:Z

    .line 61
    const/high16 v0, 0x43160000

    iput v0, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mDistanceToTriggerSyncDp:F

    .line 81
    invoke-static {p1}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/ConversationListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationListView;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationListView;->triggerSync()V

    return-void
.end method

.method private cancelMovementTracking()V
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mTrackingScrollMovement:Z

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mTrackingScrollMovement:Z

    .line 241
    :cond_0
    return-void
.end method

.method private showToastIfSyncIsOff()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 265
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    iget-object v3, v3, Lcom/kingsoft/mail/ConversationListContext;->account:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mAccountPreferences:Lcom/kingsoft/mail/preferences/AccountPreferences;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->calculateReasonSyncOff(Lcom/kingsoft/mail/preferences/MailPrefs;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/preferences/AccountPreferences;)I

    move-result v1

    .line 267
    .local v1, "reasonSyncOff":I
    packed-switch v1, :pswitch_data_0

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 270
    :pswitch_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-virtual {v2}, Lcom/kingsoft/mail/preferences/MailPrefs;->getNumOfDismissesForAutoSyncOff()I

    move-result v0

    .line 271
    .local v0, "num":I
    if-lez v0, :cond_0

    if-gt v0, v6, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1000fb

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 274
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-virtual {v2}, Lcom/kingsoft/mail/preferences/MailPrefs;->incNumOfDismissesForAutoSyncOff()V

    goto :goto_0

    .line 279
    .end local v0    # "num":I
    :pswitch_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mAccountPreferences:Lcom/kingsoft/mail/preferences/AccountPreferences;

    invoke-virtual {v2}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getNumOfDismissesForAccountSyncOff()I

    move-result v0

    .line 280
    .restart local v0    # "num":I
    if-lez v0, :cond_0

    if-gt v0, v6, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1000b6

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 283
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mAccountPreferences:Lcom/kingsoft/mail/preferences/AccountPreferences;

    invoke-virtual {v2}, Lcom/kingsoft/mail/preferences/AccountPreferences;->incNumOfDismissesForAccountSyncOff()V

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startMovementTracking(F)V
    .locals 3
    .param p1, "y"    # F

    .prologue
    .line 231
    sget-object v0, Lcom/kingsoft/mail/ui/ConversationListView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Start swipe to refresh tracking"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mTrackingScrollMovement:Z

    .line 233
    iput p1, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mTrackingScrollStartY:F

    .line 234
    iget v0, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mTrackingScrollStartY:F

    iput v0, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mTrackingScrollMaxY:F

    .line 235
    return-void
.end method

.method private triggerSync()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 244
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const-string/jumbo v1, "menu_item"

    const-string/jumbo v2, "swipe_refresh"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 248
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFolderController()Lcom/kingsoft/mail/ui/FolderController;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/kingsoft/mail/ui/FolderController;->requestFolderRefresh(Z)V

    .line 251
    iput-boolean v6, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mTrackingScrollMovement:Z

    .line 252
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 140
    :goto_0
    :pswitch_0
    iget-boolean v6, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mIgnoreTouchEvents:Z

    if-eqz v6, :cond_0

    .line 141
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/SwipeBackView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 227
    :goto_1
    return v0

    .line 137
    :pswitch_1
    iput-boolean v8, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mIgnoreTouchEvents:Z

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 145
    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 219
    :cond_1
    :goto_2
    const/4 v0, 0x0

    .line 221
    .local v0, "ret":Z
    :try_start_0
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/SwipeBackView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 147
    .end local v0    # "ret":Z
    :pswitch_2
    iget-boolean v6, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mIsSyncing:Z

    if-nez v6, :cond_1

    .line 151
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    invoke-static {v6}, Lcom/kingsoft/mail/ConversationListContext;->isSearchResult(Lcom/kingsoft/mail/ConversationListContext;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 156
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v6}, Lcom/kingsoft/mail/ui/ControllableActivity;->getSelectedSet()Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v6}, Lcom/kingsoft/mail/ui/ControllableActivity;->getSelectedSet()Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 162
    :cond_2
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/SwipeableListView;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v6, v8}, Lcom/kingsoft/mail/ui/SwipeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    if-nez v6, :cond_1

    .line 163
    :cond_3
    invoke-direct {p0, v5}, Lcom/kingsoft/mail/ui/ConversationListView;->startMovementTracking(F)V

    goto :goto_2

    .line 167
    :pswitch_3
    iget-boolean v6, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mTrackingScrollMovement:Z

    if-eqz v6, :cond_1

    .line 168
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v6}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFolderController()Lcom/kingsoft/mail/ui/FolderController;

    move-result-object v6

    invoke-interface {v6}, Lcom/kingsoft/mail/ui/FolderController;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/Folder;->isDraft()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 170
    sget-object v6, Lcom/kingsoft/mail/ui/ConversationListView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "ignoring swipe to refresh on DRAFT folder"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 173
    :cond_4
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v6}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFolderController()Lcom/kingsoft/mail/ui/FolderController;

    move-result-object v6

    invoke-interface {v6}, Lcom/kingsoft/mail/ui/FolderController;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v6

    const/16 v7, 0x1000

    invoke-virtual {v6, v7}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 176
    sget-object v6, Lcom/kingsoft/mail/ui/ConversationListView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "ignoring swipe to refresh on virtual folder"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 180
    :cond_5
    iget v6, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mTrackingScrollStartY:F

    sub-float v4, v5, v6

    .line 181
    .local v4, "verticalDistancePx":F
    iget v6, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mDensity:F

    div-float v1, v4, v6

    .line 182
    .local v1, "verticalDistanceDp":F
    iget v6, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mDistanceToTriggerSyncDp:F

    cmpl-float v6, v1, v6

    if-gtz v6, :cond_1

    .line 189
    iget v6, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mTrackingScrollMaxY:F

    sub-float v3, v6, v5

    .line 190
    .local v3, "verticalDistanceFromMaxPx":F
    iget v6, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mDensity:F

    div-float v2, v3, v6

    .line 191
    .local v2, "verticalDistanceFromMaxDp":F
    const/high16 v6, 0x41200000

    cmpl-float v6, v2, v6

    if-lez v6, :cond_6

    .line 192
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationListView;->cancelMovementTracking()V

    goto/16 :goto_2

    .line 198
    :cond_6
    const/high16 v6, 0x41700000

    cmpg-float v6, v1, v6

    if-gez v6, :cond_7

    .line 200
    const/4 v1, 0x0

    .line 207
    :cond_7
    iget v6, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mTrackingScrollMaxY:F

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    .line 208
    iput v5, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mTrackingScrollMaxY:F

    goto/16 :goto_2

    .line 214
    .end local v1    # "verticalDistanceDp":F
    .end local v2    # "verticalDistanceFromMaxDp":F
    .end local v3    # "verticalDistanceFromMaxPx":F
    .end local v4    # "verticalDistancePx":F
    :pswitch_4
    iget-boolean v6, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mTrackingScrollMovement:Z

    if-eqz v6, :cond_1

    .line 215
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationListView;->cancelMovementTracking()V

    goto/16 :goto_2

    .line 223
    .restart local v0    # "ret":Z
    :catch_0
    move-exception v6

    goto/16 :goto_1

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 145
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public enablePullToRefresh(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 300
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/SwipeableListView;->setEnablePullRefresh(Z)V

    .line 301
    return-void
.end method

.method public onBeginSwipe()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mIgnoreTouchEvents:Z

    .line 119
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mTrackingScrollMovement:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationListView;->cancelMovementTracking()V

    .line 122
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 86
    invoke-super {p0}, Lcom/kingsoft/mail/ui/SwipeBackView;->onFinishInflate()V

    .line 87
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/ConversationListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/ui/SwipeableListView;

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    .line 88
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v2, p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->setSwipeListener(Lcom/kingsoft/mail/ui/SwipeableListView$SwipeListener;)V

    .line 89
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    new-instance v3, Lcom/kingsoft/mail/ui/ConversationListView$1;

    invoke-direct {v3, p0}, Lcom/kingsoft/mail/ui/ConversationListView$1;-><init>(Lcom/kingsoft/mail/ui/ConversationListView;)V

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->setOnRefreshListener(Lcom/kingsoft/mail/ui/SwipeableListView$OnRefreshListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 96
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mDensity:F

    .line 100
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mDensity:F

    div-float/2addr v2, v3

    const/high16 v3, 0x40200000

    div-float v1, v2, v3

    .line 101
    .local v1, "threshold":F
    const/high16 v2, 0x43960000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x43160000

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mDistanceToTriggerSyncDp:F

    .line 104
    return-void
.end method

.method protected onSyncFinished()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 292
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mIsSyncing:Z

    if-eqz v0, :cond_0

    .line 293
    sget-object v0, Lcom/kingsoft/mail/ui/ConversationListView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "ConversationListView hide sync status bar"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 294
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mIsSyncing:Z

    .line 296
    :cond_0
    return-void
.end method

.method protected setActivity(Lcom/kingsoft/mail/ui/ControllableActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/kingsoft/mail/ui/ControllableActivity;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    .line 108
    return-void
.end method

.method protected setConversationContext(Lcom/kingsoft/mail/ConversationListContext;)V
    .locals 2
    .param p1, "convListContext"    # Lcom/kingsoft/mail/ConversationListContext;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    .line 112
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/kingsoft/mail/ConversationListContext;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingsoft/mail/preferences/AccountPreferences;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/mail/preferences/AccountPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mAccountPreferences:Lcom/kingsoft/mail/preferences/AccountPreferences;

    .line 114
    return-void
.end method

.method protected showSyncStatusBar()V
    .locals 3

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mIsSyncing:Z

    if-nez v0, :cond_0

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListView;->mIsSyncing:Z

    .line 258
    sget-object v0, Lcom/kingsoft/mail/ui/ConversationListView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "ConversationListView show sync status bar"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 259
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationListView;->showToastIfSyncIsOff()V

    .line 261
    :cond_0
    return-void
.end method
