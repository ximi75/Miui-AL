.class public Lcom/kingsoft/mail/browse/ConversationPagerController;
.super Ljava/lang/Object;
.source "ConversationPagerController.java"


# static fields
.field private static final ENABLE_SINGLETON_INITIAL_LOAD:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "ConvPager"


# instance fields
.field private mActivityController:Lcom/kingsoft/mail/ui/ActivityController;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mInitConversation:Lcom/kingsoft/mail/providers/Conversation;

.field private mInitialConversationLoading:Z

.field private final mLoadedObservable:Landroid/database/DataSetObservable;

.field private mPager:Lcom/kingsoft/mail/browse/ViewPager;

.field private mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

.field private mShown:Z


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/ui/RestrictedActivity;Lcom/kingsoft/mail/ui/ActivityController;)V
    .locals 1
    .param p1, "activity"    # Lcom/kingsoft/mail/ui/RestrictedActivity;
    .param p2, "controller"    # Lcom/kingsoft/mail/ui/ActivityController;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mLoadedObservable:Landroid/database/DataSetObservable;

    .line 92
    invoke-interface {p1}, Lcom/kingsoft/mail/ui/RestrictedActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 93
    const v0, 0x7f0c01ce

    invoke-interface {p1, v0}, Lcom/kingsoft/mail/ui/RestrictedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/ViewPager;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    .line 94
    iput-object p2, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mActivityController:Lcom/kingsoft/mail/ui/ActivityController;

    .line 95
    invoke-interface {p1}, Lcom/kingsoft/mail/ui/RestrictedActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/ConversationPagerController;->setupPageMargin(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/browse/ConversationPagerController;)Lcom/kingsoft/mail/browse/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationPagerController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/browse/ConversationPagerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationPagerController;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationPagerController;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->setActivityController(Lcom/kingsoft/mail/ui/ActivityController;)V

    .line 196
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->setPager(Lcom/kingsoft/mail/browse/ViewPager;)V

    .line 197
    iput-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    .line 199
    :cond_0
    return-void
.end method

.method private setupPageMargin(Landroid/content/Context;)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 239
    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x1010214

    aput v5, v4, v3

    invoke-virtual {p1, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 240
    .local v7, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 241
    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 245
    .local v2, "padding":I
    new-instance v0, Lcom/kingsoft/mail/graphics/PageMarginDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/mail/graphics/PageMarginDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIIII)V

    .line 248
    .local v0, "gutterDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 250
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 251
    .local v8, "aaa":I
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v8

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/browse/ViewPager;->setPageMargin(I)V

    .line 252
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v3, v0}, Lcom/kingsoft/mail/browse/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v0    # "gutterDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "padding":I
    .end local v8    # "aaa":I
    :cond_0
    :goto_0
    return-void

    .line 254
    .restart local v0    # "gutterDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "padding":I
    :catch_0
    move-exception v9

    .line 256
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public hide(Z)V
    .locals 4
    .param p1, "changeVisibility"    # Z

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mShown:Z

    if-nez v1, :cond_0

    .line 156
    const-string/jumbo v1, "ConvPager"

    const-string/jumbo v2, "IN CPC.hide, but already hidden"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 181
    :goto_0
    return-void

    .line 159
    :cond_0
    iput-boolean v3, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mShown:Z

    .line 160
    if-eqz p1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050014

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 162
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/kingsoft/mail/browse/ConversationPagerController$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/browse/ConversationPagerController$1;-><init>(Lcom/kingsoft/mail/browse/ConversationPagerController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 174
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/browse/ViewPager;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :goto_1
    const-string/jumbo v1, "ConvPager"

    const-string/jumbo v2, "IN CPC.hide, clearing adapter and unregistering list observer"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/browse/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;I)V

    .line 177
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationPagerController;->cleanup()V

    goto :goto_1
.end method

.method public isInitialConversationLoading()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mInitialConversationLoading:Z

    return v0
.end method

.method public onConversationSeen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->isSingletonMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    const-string/jumbo v0, "ConvPager"

    const-string/jumbo v1, "IN pager adapter, finished loading primary conversation, switching to cursor mode to load other conversations"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 211
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0, v3}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->setSingletonMode(Z)V

    .line 214
    :cond_2
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mInitialConversationLoading:Z

    if-eqz v0, :cond_0

    .line 215
    iput-boolean v3, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mInitialConversationLoading:Z

    .line 216
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mLoadedObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationPagerController;->cleanup()V

    .line 190
    return-void
.end method

.method public registerConversationLoadedObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mLoadedObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public show(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Conversation;Z)V
    .locals 10
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p3, "initialConversation"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p4, "changeVisibility"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 100
    iput-boolean v9, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mInitialConversationLoading:Z

    .line 101
    iput-object p3, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mInitConversation:Lcom/kingsoft/mail/providers/Conversation;

    .line 103
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mShown:Z

    if-eqz v0, :cond_1

    .line 104
    const-string/jumbo v0, "ConvPager"

    const-string/jumbo v1, "IN CPC.show, but already shown"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 108
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->matches(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0, p3}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getConversationPosition(Lcom/kingsoft/mail/providers/Conversation;)I

    move-result v7

    .line 111
    .local v7, "pos":I
    if-ltz v7, :cond_0

    .line 112
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v0, v7}, Lcom/kingsoft/mail/browse/ViewPager;->setCurrentItem(I)V

    .line 152
    .end local v7    # "pos":I
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationPagerController;->cleanup()V

    .line 120
    :cond_1
    if-eqz p4, :cond_2

    .line 121
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v0, v8}, Lcom/kingsoft/mail/browse/ViewPager;->setVisibility(I)V

    .line 122
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mShown:Z

    if-nez v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050013

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ViewPager;->startAnimation(Landroid/view/animation/Animation;)V

    .line 127
    :cond_2
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mFragmentManager:Landroid/app/FragmentManager;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;-><init>(Landroid/content/res/Resources;Landroid/app/FragmentManager;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Conversation;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    .line 129
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0, v8}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->setSingletonMode(Z)V

    .line 130
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mActivityController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->setActivityController(Lcom/kingsoft/mail/ui/ActivityController;)V

    .line 131
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->setPager(Lcom/kingsoft/mail/browse/ViewPager;)V

    .line 133
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ViewPager;->resetRestoredCurItem()V

    .line 134
    const-string/jumbo v0, "ConvPager"

    const-string/jumbo v1, "IN CPC.show, adapter=%s"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 138
    sget-object v0, Lcom/kingsoft/mail/utils/Utils;->sConvLoadTimer:Lcom/kingsoft/mail/perf/SimpleTimer;

    const-string/jumbo v1, "pager init"

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/perf/SimpleTimer;->mark(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v0, "ConvPager"

    const-string/jumbo v1, "init pager adapter, count=%d initialConv=%s adapter=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    aput-object p3, v2, v9

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 143
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mInitConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getConversationPosition(Lcom/kingsoft/mail/providers/Conversation;)I

    move-result v6

    .line 144
    .local v6, "initialPos":I
    const/4 v0, -0x2

    if-ne v6, v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0, v9}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->setDetachedMode(Z)V

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPager:Lcom/kingsoft/mail/browse/ViewPager;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    if-lez v6, :cond_4

    move v0, v6

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/kingsoft/mail/browse/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;I)V

    .line 149
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0, v6}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->onPageSelected(I)V

    .line 150
    sget-object v0, Lcom/kingsoft/mail/utils/Utils;->sConvLoadTimer:Lcom/kingsoft/mail/perf/SimpleTimer;

    const-string/jumbo v1, "pager setAdapter"

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/perf/SimpleTimer;->mark(Ljava/lang/String;)V

    .line 151
    iput-boolean v9, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mShown:Z

    goto/16 :goto_0

    :cond_4
    move v0, v8

    .line 147
    goto :goto_1
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mPagerAdapter:Lcom/kingsoft/mail/browse/ConversationPagerAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->stopListening()V

    .line 236
    :cond_0
    return-void
.end method

.method public unregisterConversationLoadedObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationPagerController;->mLoadedObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 226
    return-void
.end method
