.class public Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;
.super Landroid/widget/FrameLayout;
.source "ConversationSyncDisabledTipView.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
.implements Lcom/kingsoft/mail/ui/SwipeableItemView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$ReasonSyncOff;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sScrollSlop:I

.field private static sShrinkAnimationDuration:I


# instance fields
.field private mAccount:Lcom/kingsoft/mail/providers/Account;

.field private mAccountPreferences:Lcom/kingsoft/mail/preferences/AccountPreferences;

.field private final mAccountSyncOffTextClickedListener:Landroid/view/View$OnClickListener;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

.field private mAnimatedHeight:I

.field private final mAutoSyncOffTextClickedListener:Landroid/view/View$OnClickListener;

.field private mEnableSyncInAccountSettingsText:Landroid/text/SpannableString;

.field private mFolder:Lcom/kingsoft/mail/providers/Folder;

.field private final mListCollapsible:Z

.field private final mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

.field private mReasonSyncOff:I

.field private mSwipeableContent:Landroid/view/View;

.field private final mTabletDevice:Z

.field private mTeaserRightEdge:Landroid/view/View;

.field private mText1:Landroid/widget/TextView;

.field private mText2:Landroid/widget/TextView;

.field private mTextArea:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->LOG_TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->sScrollSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 99
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput-object v4, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 61
    iput-object v4, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 75
    const/4 v4, -0x1

    iput v4, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAnimatedHeight:I

    .line 77
    iput v7, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mReasonSyncOff:I

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 108
    .local v2, "resources":Landroid/content/res/Resources;
    sget v4, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->sScrollSlop:I

    if-nez v4, :cond_0

    .line 109
    const v4, 0x7f0e003d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->sScrollSlop:I

    .line 110
    const v4, 0x7f0e003a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->sShrinkAnimationDuration:I

    .line 114
    :cond_0
    invoke-static {p1}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    .line 116
    new-instance v4, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$1;

    invoke-direct {v4, p0}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$1;-><init>(Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;)V

    iput-object v4, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAutoSyncOffTextClickedListener:Landroid/view/View$OnClickListener;

    .line 125
    new-instance v4, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$2;

    invoke-direct {v4, p0}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$2;-><init>(Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;)V

    iput-object v4, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAccountSyncOffTextClickedListener:Landroid/view/View$OnClickListener;

    .line 134
    const v4, 0x7f10003f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "subString":Ljava/lang/String;
    const v4, 0x7f1001a2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "entireString":Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v4, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mEnableSyncInAccountSettingsText:Landroid/text/SpannableString;

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 139
    .local v1, "index":I
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mEnableSyncInAccountSettingsText:Landroid/text/SpannableString;

    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    const v6, 0x7f11003f

    invoke-direct {v5, p1, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 145
    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mTabletDevice:Z

    .line 146
    const v4, 0x7f0a000d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mListCollapsible:Z

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;)Lcom/kingsoft/mail/providers/Account;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;)Lcom/kingsoft/mail/ui/AnimatedAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    return-object v0
.end method

.method public static calculateReasonSyncOff(Lcom/kingsoft/mail/preferences/MailPrefs;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/preferences/AccountPreferences;)I
    .locals 4
    .param p0, "mailPrefs"    # Lcom/kingsoft/mail/preferences/MailPrefs;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "accountPreferences"    # Lcom/kingsoft/mail/preferences/AccountPreferences;

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    invoke-virtual {p2}, Lcom/kingsoft/mail/preferences/AccountPreferences;->resetNumOfDismissesForAccountSyncOff()V

    .line 216
    sget-object v2, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getMasterSyncAutomatically() return false"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 217
    const/4 v1, 0x1

    .line 233
    :goto_0
    return v1

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->resetNumOfDismissesForAutoSyncOff()V

    .line 224
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 225
    .local v0, "acct":Landroid/accounts/Account;
    iget-object v2, p1, Lcom/kingsoft/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/kingsoft/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    const/4 v1, 0x2

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p2}, Lcom/kingsoft/mail/preferences/AccountPreferences;->resetNumOfDismissesForAccountSyncOff()V

    goto :goto_0
.end method

.method private setReasonSyncOff(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 239
    iget v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mReasonSyncOff:I

    if-eq v0, p1, :cond_0

    .line 240
    iput p1, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mReasonSyncOff:I

    .line 241
    iget v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mReasonSyncOff:I

    packed-switch v0, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 243
    :pswitch_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mText1:Landroid/widget/TextView;

    const v1, 0x7f1000fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mText2:Landroid/widget/TextView;

    const v1, 0x7f1003aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 245
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mText2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mTextArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 247
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mTextArea:Landroid/view/View;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAutoSyncOffTextClickedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 250
    :pswitch_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mText1:Landroid/widget/TextView;

    const v1, 0x7f1000b6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 251
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mText2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mEnableSyncInAccountSettingsText:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mText2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mTextArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 254
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mTextArea:Landroid/view/View;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAccountSyncOffTextClickedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startDestroyAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 346
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->getHeight()I

    move-result v2

    .line 347
    .local v2, "start":I
    const/4 v0, 0x0

    .line 348
    .local v0, "end":I
    iput v2, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAnimatedHeight:I

    .line 349
    const-string/jumbo v3, "animatedHeight"

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v2, v4, v6

    const/4 v5, 0x1

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 351
    .local v1, "heightAnimator":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40000000

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 352
    sget v3, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->sShrinkAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 353
    new-instance v3, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$4;

    invoke-direct {v3, p0}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$4;-><init>(Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 375
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 376
    return-void
.end method


# virtual methods
.method public acceptsUserTaps()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method public bindAccount(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/ui/ControllableActivity;)V
    .locals 2
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "activity"    # Lcom/kingsoft/mail/ui/ControllableActivity;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 151
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingsoft/mail/preferences/AccountPreferences;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/mail/preferences/AccountPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAccountPreferences:Lcom/kingsoft/mail/preferences/AccountPreferences;

    .line 152
    check-cast p2, Landroid/app/Activity;

    .end local p2    # "activity":Lcom/kingsoft/mail/ui/ControllableActivity;
    iput-object p2, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mActivity:Landroid/app/Activity;

    .line 153
    return-void
.end method

.method public bindFragment(Landroid/app/LoaderManager;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "loaderManager"    # Landroid/app/LoaderManager;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 275
    return-void
.end method

.method public canChildBeDismissed()Z
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    return v0
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public dismiss(Z)V
    .locals 6
    .param p1, "moveLeft"    # Z

    .prologue
    .line 313
    iget v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mReasonSyncOff:I

    packed-switch v0, :pswitch_data_0

    .line 323
    const/4 v3, 0x0

    .line 326
    .local v3, "reason":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const-string/jumbo v1, "list_swipe"

    const-string/jumbo v2, "sync_disabled_tip"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 327
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->startDestroyAnimation()V

    .line 328
    return-void

    .line 315
    .end local v3    # "reason":Ljava/lang/String;
    :pswitch_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-virtual {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->incNumOfDismissesForAutoSyncOff()V

    .line 316
    const-string/jumbo v3, "auto_sync_off"

    .line 317
    .restart local v3    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 319
    .end local v3    # "reason":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAccountPreferences:Lcom/kingsoft/mail/preferences/AccountPreferences;

    invoke-virtual {v0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->incNumOfDismissesForAccountSyncOff()V

    .line 320
    const-string/jumbo v3, "account_sync_off"

    .line 321
    .restart local v3    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMinAllowScrollDistance()F
    .locals 1

    .prologue
    .line 342
    sget v0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->sScrollSlop:I

    int-to-float v0, v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public getShouldDisplayInList()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v1

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget v2, v2, Lcom/kingsoft/mail/providers/Folder;->syncWindow:I

    if-lez v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAccountPreferences:Lcom/kingsoft/mail/preferences/AccountPreferences;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->calculateReasonSyncOff(Lcom/kingsoft/mail/preferences/MailPrefs;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/preferences/AccountPreferences;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->setReasonSyncOff(I)V

    .line 196
    iget v2, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mReasonSyncOff:I

    if-eqz v2, :cond_2

    .line 197
    sget-object v2, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Sync is off with reason %d"

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mReasonSyncOff:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 200
    :cond_2
    iget v2, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mReasonSyncOff:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 202
    :pswitch_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-virtual {v2}, Lcom/kingsoft/mail/preferences/MailPrefs;->getNumOfDismissesForAutoSyncOff()I

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 204
    :pswitch_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAccountPreferences:Lcom/kingsoft/mail/preferences/AccountPreferences;

    invoke-virtual {v2}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getNumOfDismissesForAccountSyncOff()I

    move-result v2

    if-nez v2, :cond_4

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSwipeableView()Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mSwipeableContent:Landroid/view/View;

    invoke-static {v0}, Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;->from(Landroid/view/View;)Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v0

    return-object v0
.end method

.method public onCabModeEntered()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public onCabModeExited()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public onConversationListVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 298
    return-void
.end method

.method public onConversationSelected()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 162
    const v0, 0x7f0c0190

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mSwipeableContent:Landroid/view/View;

    .line 164
    const v0, 0x7f0c01d1

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mText1:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f0c01d2

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mText2:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f0c01d0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mTextArea:Landroid/view/View;

    .line 168
    const v0, 0x7f0c0193

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$3;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$3;-><init>(Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const v0, 0x7f0c0236

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mTeaserRightEdge:Landroid/view/View;

    .line 176
    return-void
.end method

.method public onGetView()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mTabletDevice:Z

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mListCollapsible:Z

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getViewMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/Utils;->getDisplayListRightEdgeEffect(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mTeaserRightEdge:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 398
    :goto_0
    iget v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAnimatedHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 399
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 403
    :goto_1
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mTeaserRightEdge:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 401
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAnimatedHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onUpdate(Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 0
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "cursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 181
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 303
    return-void
.end method

.method public setAdapter(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .line 271
    return-void
.end method

.method public setAnimatedHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 385
    iput p1, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAnimatedHeight:I

    .line 386
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->requestLayout()V

    .line 387
    return-void
.end method
