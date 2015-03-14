.class public Lcom/kingsoft/mail/browse/MessageHeaderView;
.super Landroid/widget/LinearLayout;
.source "MessageHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/kingsoft/mail/browse/ConversationContainer$DetachListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/MessageHeaderView$BorderHeights;,
        Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;,
        Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;
    }
.end annotation


# static fields
.field public static final DEFAULT_MODE:I = 0x0

.field private static final DETAILS_DIALOG_TAG:Ljava/lang/String; = "details-dialog"

.field public static final ENABLE_REPORT_RENDERING_PROBLEM:Z = false

.field private static final HEADER_ADDVIEW_TAG:Ljava/lang/String; = "message header addView"

.field private static final HEADER_INFLATE_TAG:Ljava/lang/String; = "message header inflate"

.field private static final HEADER_RENDER_TAG:Ljava/lang/String; = "message header render"

.field private static final LAYOUT_TAG:Ljava/lang/String; = "message header layout"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_SNIPPET_LENGTH:I = 0x64

.field private static final MEASURE_TAG:Ljava/lang/String; = "message header measure"

.field public static final POPUP_MODE:I = 0x1

.field private static final PREMEASURE_TAG:Ljava/lang/String; = "message header pre-measure"

.field private static final RECIPIENT_HEADING_DELIMITER:Ljava/lang/String; = "   "

.field private static final SHOW_IMAGE_PROMPT_ALWAYS:I = 0x2

.field private static final SHOW_IMAGE_PROMPT_ONCE:I = 0x1

.field private static final SUMMARY_MAX_RECIPIENTS:I = 0x32


# instance fields
.field private final alphaChangeListener:Landroid/animation/Animator$AnimatorListener;

.field private final emptyArray:[Ljava/lang/String;

.field private final heightChangeListener:Landroid/animation/Animator$AnimatorListener;

.field private mAccountController:Lcom/kingsoft/mail/browse/ConversationAccountController;

.field private mAddressCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/providers/Address;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachmentIcon:Landroid/view/View;

.field private mBcc:[Ljava/lang/String;

.field private mCallbacks:Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

.field private mCc:[Ljava/lang/String;

.field private mCollapsedDetailsValid:Z

.field private mCollapsedDetailsView:Landroid/view/ViewGroup;

.field private final mContactInfoObserver:Landroid/database/DataSetObserver;

.field private mContactInfoSource:Lcom/kingsoft/mail/ContactInfoSource;

.field private final mContactPhotoHeight:I

.field private final mContactPhotoWidth:I

.field private mDateView:Landroid/widget/TextView;

.field private mDetailsPopup:Landroid/app/DialogFragment;

.field private mDraftIcon:Landroid/view/View;

.field private final mEmailCopyMenu:Lcom/kingsoft/mail/browse/EmailCopyContextMenu;

.field private mExpandMode:I

.field private mExpandable:Z

.field private mExpandedDetailsValid:Z

.field private mExpandedDetailsView:Landroid/view/ViewGroup;

.field private mExtraContentView:Landroid/view/ViewGroup;

.field private mFrom:[Ljava/lang/String;

.field private mImagePromptView:Landroid/widget/TextView;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsDraft:Z

.field private mIsSending:Z

.field private mIsSnappy:Z

.field private mIsViewOnlyMode:Z

.field private mLetterTileProvider:Lcom/kingsoft/mail/photomanager/LetterTileProvider;

.field private mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

.field private mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

.field private final mMyName:Ljava/lang/String;

.field private mObservingContactInfo:Z

.field private mPhotoView:Landroid/widget/QuickContactBadge;

.field private mPopup:Landroid/widget/PopupMenu;

.field private mPreMeasuring:Z

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mReplyTo:[Ljava/lang/String;

.field private mSender:Lcom/kingsoft/mail/providers/Address;

.field private mSenderEmailView:Landroid/widget/TextView;

.field private mSenderNameView:Landroid/widget/TextView;

.field private mShowImagePrompt:Z

.field private mSnapHeaderBottomBorder:Landroid/view/View;

.field private mSnippet:Ljava/lang/String;

.field private mSnippetView:Landroid/widget/TextView;

.field private mSpamWarningView:Lcom/kingsoft/mail/browse/SpamWarningView;

.field private mTitleContainerCollapsedMarginEnd:I

.field private mTitleContainerView:Landroid/view/ViewGroup;

.field private mTo:[Ljava/lang/String;

.field private mUpperDateView:Landroid/widget/TextView;

.field private mUpperHeaderView:Landroid/view/ViewGroup;

.field private mVeiledMatcher:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/MessageHeaderView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 248
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 251
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 252
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    .line 145
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->emptyArray:[Ljava/lang/String;

    .line 147
    iput-boolean v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mIsDraft:Z

    .line 203
    new-instance v1, Lcom/kingsoft/mail/browse/MessageHeaderView$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/browse/MessageHeaderView$1;-><init>(Lcom/kingsoft/mail/browse/MessageHeaderView;)V

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mContactInfoObserver:Landroid/database/DataSetObserver;

    .line 210
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandable:Z

    .line 212
    iput v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandMode:I

    .line 218
    iput-boolean v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mIsViewOnlyMode:Z

    .line 1491
    new-instance v1, Lcom/kingsoft/mail/browse/MessageHeaderView$3;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/browse/MessageHeaderView$3;-><init>(Lcom/kingsoft/mail/browse/MessageHeaderView;)V

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->alphaChangeListener:Landroid/animation/Animator$AnimatorListener;

    .line 1514
    new-instance v1, Lcom/kingsoft/mail/browse/MessageHeaderView$4;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/browse/MessageHeaderView$4;-><init>(Lcom/kingsoft/mail/browse/MessageHeaderView;)V

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->heightChangeListener:Landroid/animation/Animator$AnimatorListener;

    .line 257
    new-instance v1, Lcom/kingsoft/mail/browse/EmailCopyContextMenu;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingsoft/mail/browse/EmailCopyContextMenu;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mEmailCopyMenu:Lcom/kingsoft/mail/browse/EmailCopyContextMenu;

    .line 258
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mInflater:Landroid/view/LayoutInflater;

    .line 259
    const v1, 0x7f100243

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMyName:Ljava/lang/String;

    .line 261
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 262
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0d00e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mContactPhotoWidth:I

    .line 264
    const v1, 0x7f0d00e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mContactPhotoHeight:I

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/browse/MessageHeaderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/MessageHeaderView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->updateContactInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/browse/MessageHeaderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/MessageHeaderView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->hideCollapsedDetails()V

    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/browse/MessageHeaderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/MessageHeaderView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->showExpandedDetails()V

    return-void
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/browse/MessageHeaderView;)Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/MessageHeaderView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/browse/MessageHeaderView;)Lcom/kingsoft/mail/browse/ConversationMessage;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/MessageHeaderView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kingsoft/mail/browse/MessageHeaderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/MessageHeaderView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->hideExpandedDetails()V

    return-void
.end method

.method static synthetic access$700(Lcom/kingsoft/mail/browse/MessageHeaderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/MessageHeaderView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->showCollapsedDetails()V

    return-void
.end method

.method private createAlphaChangeAnimation(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    const/high16 v1, 0x3f800000

    const/4 v3, 0x0

    .line 1543
    if-eqz p2, :cond_0

    move v2, v3

    .line 1544
    .local v2, "start":F
    :goto_0
    if-eqz p2, :cond_1

    .line 1545
    .local v1, "end":F
    :goto_1
    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1546
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    return-object v0

    .end local v0    # "alpha":Landroid/animation/ObjectAnimator;
    .end local v1    # "end":F
    .end local v2    # "start":F
    :cond_0
    move v2, v1

    .line 1543
    goto :goto_0

    .restart local v2    # "start":F
    :cond_1
    move v1, v3

    .line 1544
    goto :goto_1
.end method

.method private ensureExpandedDetailsView()Z
    .locals 15

    .prologue
    .line 1550
    const/4 v14, 0x0

    .line 1551
    .local v14, "viewCreated":Z
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandedDetailsView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->inflateExpandedDetails(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v13

    .line 1553
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1555
    check-cast v13, Landroid/view/ViewGroup;

    .end local v13    # "v":Landroid/view/View;
    iput-object v13, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandedDetailsView:Landroid/view/ViewGroup;

    .line 1556
    const/4 v14, 0x1

    .line 1558
    :cond_0
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandedDetailsValid:Z

    if-nez v0, :cond_1

    .line 1560
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandedDetailsView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationMessage;->viaDomain:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mAddressCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mVeiledMatcher:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mFrom:[Ljava/lang/String;

    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mReplyTo:[Ljava/lang/String;

    iget-object v8, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mTo:[Ljava/lang/String;

    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCc:[Ljava/lang/String;

    iget-object v10, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mBcc:[Ljava/lang/String;

    iget-object v11, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v11}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getTimestampLong()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static/range {v0 .. v11}, Lcom/kingsoft/mail/browse/MessageHeaderView;->renderExpandedDetails(Landroid/content/res/Resources;Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/utils/VeiledAddressMatcher;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandedDetailsValid:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1570
    :cond_1
    :goto_0
    return v14

    .line 1565
    :catch_0
    move-exception v12

    .line 1566
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "MessageHeaderView"

    const-string/jumbo v1, "ensureExpandedDetailsView"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private getAccount()Lcom/kingsoft/mail/providers/Account;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mAccountController:Lcom/kingsoft/mail/browse/ConversationAccountController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mAccountController:Lcom/kingsoft/mail/browse/ConversationAccountController;

    invoke-interface {v0}, Lcom/kingsoft/mail/browse/ConversationAccountController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAddress(Ljava/util/Map;Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;
    .locals 3
    .param p1, "emailStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/providers/Address;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/kingsoft/mail/providers/Address;"
        }
    .end annotation

    .prologue
    .line 626
    .local p0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/mail/providers/Address;>;"
    const/4 v1, 0x0

    .line 627
    .local v1, "addr":Lcom/kingsoft/mail/providers/Address;
    monitor-enter p0

    .line 628
    if-eqz p0, :cond_0

    .line 629
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/kingsoft/mail/providers/Address;

    move-object v1, v0

    .line 631
    :cond_0
    if-nez v1, :cond_1

    .line 632
    invoke-static {p1}, Lcom/kingsoft/mail/providers/Address;->getEmailAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v1

    .line 633
    if-eqz p0, :cond_1

    .line 634
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    :cond_1
    monitor-exit p0

    .line 638
    return-object v1

    .line 637
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getHeaderSubtitle()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 678
    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mIsSending:Z

    if-eqz v1, :cond_0

    .line 679
    const/4 v0, 0x0

    .line 692
    .local v0, "sub":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 681
    .end local v0    # "sub":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 682
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationMessage;->viaDomain:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 683
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1003c6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationMessage;->viaDomain:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "sub":Ljava/lang/CharSequence;
    goto :goto_0

    .line 686
    .end local v0    # "sub":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSender:Lcom/kingsoft/mail/providers/Address;

    invoke-static {v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getSenderAddress(Lcom/kingsoft/mail/providers/Address;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "sub":Ljava/lang/CharSequence;
    goto :goto_0

    .line 689
    .end local v0    # "sub":Ljava/lang/CharSequence;
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSnippet:Ljava/lang/String;

    .restart local v0    # "sub":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private getHeaderTitle()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 665
    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mIsDraft:Z

    if-eqz v1, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f000f

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 673
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 667
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_0
    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mIsSending:Z

    if-eqz v1, :cond_1

    .line 668
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100374

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0

    .line 670
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSender:Lcom/kingsoft/mail/providers/Address;

    invoke-static {v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getSenderName(Lcom/kingsoft/mail/providers/Address;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 2

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v0, :cond_0

    .line 1387
    new-instance v0, Lcom/kingsoft/mail/browse/MessageHeaderView$2;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView$2;-><init>(Lcom/kingsoft/mail/browse/MessageHeaderView;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static getRecipientSummaryText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Lcom/kingsoft/mail/utils/VeiledAddressMatcher;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "myEmail"    # Ljava/lang/String;
    .param p2, "me"    # Ljava/lang/String;
    .param p3, "myName"    # Ljava/lang/String;
    .param p4, "to"    # [Ljava/lang/String;
    .param p5, "cc"    # [Ljava/lang/String;
    .param p6, "bcc"    # [Ljava/lang/String;
    .param p8, "matcher"    # Lcom/kingsoft/mail/utils/VeiledAddressMatcher;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/providers/Address;",
            ">;",
            "Lcom/kingsoft/mail/utils/VeiledAddressMatcher;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p7, "addressCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/mail/providers/Address;>;"
    const v6, 0x7f100389

    .line 955
    new-instance v0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/kingsoft/mail/utils/VeiledAddressMatcher;)V

    .line 958
    .local v0, "builder":Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;
    invoke-virtual {v0, p4, v6, p1}, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->append([Ljava/lang/String;ILjava/lang/String;)V

    .line 959
    invoke-virtual {v0, p5, v6, p1}, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->append([Ljava/lang/String;ILjava/lang/String;)V

    .line 960
    invoke-virtual {v0, p6, v6, p1}, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->append([Ljava/lang/String;ILjava/lang/String;)V

    .line 962
    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->build()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static getSenderAddress(Lcom/kingsoft/mail/providers/Address;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "sender"    # Lcom/kingsoft/mail/providers/Address;

    .prologue
    .line 712
    if-eqz p0, :cond_0

    .line 713
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 715
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static getSenderName(Lcom/kingsoft/mail/providers/Address;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "sender"    # Lcom/kingsoft/mail/providers/Address;

    .prologue
    .line 700
    if-eqz p0, :cond_1

    .line 701
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Address;->getName()Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 704
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private handleShowImagePromptClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1338
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1339
    .local v0, "state":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1383
    :goto_0
    return-void

    .line 1342
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCallbacks:Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    if-eqz v1, :cond_1

    .line 1343
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCallbacks:Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-interface {v1, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;->showExternalResources(Lcom/kingsoft/mail/providers/Message;)V

    .line 1345
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    if-eqz v1, :cond_2

    .line 1346
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->setShowImages(Z)V

    .line 1348
    :cond_2
    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mIsViewOnlyMode:Z

    if-eqz v1, :cond_3

    .line 1349
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->hideShowImagePrompt()V

    goto :goto_0

    .line 1353
    :cond_3
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCallbacks:Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    if-eqz v1, :cond_4

    .line 1354
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCallbacks:Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v2, v2, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationMessage;->bodyHtml:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;->downloadInlineImage(Ljava/lang/Long;Ljava/lang/String;)V

    .line 1356
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1357
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideCollapsedDetails()V
    .locals 2

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1266
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1268
    :cond_0
    return-void
.end method

.method private hideDetailsPopup()V
    .locals 1

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mDetailsPopup:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 1692
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mDetailsPopup:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1693
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mDetailsPopup:Landroid/app/DialogFragment;

    .line 1695
    :cond_0
    return-void
.end method

.method private hideExpandedDetails()V
    .locals 2

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandedDetailsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandedDetailsView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1274
    :cond_0
    return-void
.end method

.method private hideShowImagePrompt()V
    .locals 2

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mImagePromptView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mImagePromptView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1280
    :cond_0
    return-void
.end method

.method private hideSpamWarning()V
    .locals 2

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSpamWarningView:Lcom/kingsoft/mail/browse/SpamWarningView;

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSpamWarningView:Lcom/kingsoft/mail/browse/SpamWarningView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/SpamWarningView;->setVisibility(I)V

    .line 1319
    :cond_0
    return-void
.end method

.method public static inflateExpandedDetails(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 1574
    const v0, 0x7f04006a

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private isValidPosition(II)Z
    .locals 1
    .param p1, "position"    # I
    .param p2, "size"    # I

    .prologue
    .line 1192
    if-ltz p1, :cond_0

    if-ge p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # [Ljava/lang/CharSequence;

    .prologue
    .line 1666
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1667
    .local v4, "sb":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x1

    .line 1668
    .local v1, "firstTime":Z
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/CharSequence;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 1669
    .local v5, "token":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 1670
    const/4 v1, 0x0

    .line 1674
    :goto_1
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1668
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1672
    :cond_0
    invoke-virtual {v4, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 1676
    .end local v5    # "token":Ljava/lang/CharSequence;
    :cond_1
    return-object v4
.end method

.method private makeLetterTile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "senderAddress"    # Ljava/lang/String;

    .prologue
    .line 1003
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mLetterTileProvider:Lcom/kingsoft/mail/photomanager/LetterTileProvider;

    if-nez v1, :cond_0

    .line 1004
    new-instance v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mLetterTileProvider:Lcom/kingsoft/mail/photomanager/LetterTileProvider;

    .line 1007
    :cond_0
    new-instance v0, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    iget v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mContactPhotoWidth:I

    iget v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mContactPhotoHeight:I

    const/high16 v3, 0x3f800000

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;-><init>(IIF)V

    .line 1009
    .local v0, "dimensions":Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mLetterTileProvider:Lcom/kingsoft/mail/photomanager/LetterTileProvider;

    invoke-virtual {v1, v0, p1, p2}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getLetterTile(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method static makeSnippet(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "messageBody"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v11, 0x3c

    const/16 v10, 0x3b

    const/16 v9, 0x26

    const/4 v8, -0x1

    .line 1707
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1708
    const/4 v6, 0x0

    .line 1788
    :goto_0
    return-object v6

    .line 1711
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1713
    .local v5, "snippet":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 1716
    .local v3, "reader":Ljava/io/StringReader;
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v0

    .local v0, "c":I
    if-eq v0, v8, :cond_3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/16 v7, 0x64

    if-ge v6, v7, :cond_3

    .line 1718
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1719
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1721
    :cond_2
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v0

    .line 1722
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    .line 1723
    if-ne v0, v8, :cond_4

    .line 1788
    .end local v0    # "c":I
    :cond_3
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1728
    .restart local v0    # "c":I
    :cond_4
    if-ne v0, v11, :cond_7

    .line 1731
    :cond_5
    :try_start_1
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v0

    if-eq v0, v8, :cond_6

    .line 1732
    const/16 v6, 0x3e

    if-ne v0, v6, :cond_5

    .line 1738
    :cond_6
    if-ne v0, v8, :cond_1

    goto :goto_2

    .line 1741
    :cond_7
    if-ne v0, v9, :cond_12

    .line 1743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1745
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_3
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v0

    if-eq v0, v8, :cond_8

    .line 1746
    if-ne v0, v10, :cond_a

    .line 1752
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1753
    .local v2, "entity":Ljava/lang/String;
    const-string/jumbo v6, "nbsp"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1754
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1774
    :cond_9
    :goto_4
    if-ne v0, v8, :cond_1

    goto :goto_2

    .line 1749
    .end local v2    # "entity":Ljava/lang/String;
    :cond_a
    int-to-char v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1784
    .end local v0    # "c":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 1785
    .local v1, "e":Ljava/io/IOException;
    sget-object v6, Lcom/kingsoft/mail/browse/MessageHeaderView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Really? IOException while reading a freaking string?!? "

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v1, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 1755
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "c":I
    .restart local v2    # "entity":Ljava/lang/String;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_b
    :try_start_2
    const-string/jumbo v6, "lt"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1756
    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1757
    :cond_c
    const-string/jumbo v6, "gt"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1758
    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1759
    :cond_d
    const-string/jumbo v6, "amp"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1760
    const/16 v6, 0x26

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1761
    :cond_e
    const-string/jumbo v6, "quot"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1762
    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1763
    :cond_f
    const-string/jumbo v6, "apos"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string/jumbo v6, "#39"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1764
    :cond_10
    const/16 v6, 0x27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1767
    :cond_11
    const/16 v6, 0x26

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    if-ne v0, v10, :cond_9

    .line 1769
    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1781
    .end local v2    # "entity":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_12
    int-to-char v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method private measureHeight()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 651
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 652
    .local v1, "parent":Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    .line 653
    sget-object v2, Lcom/kingsoft/mail/browse/MessageHeaderView;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    const-string/jumbo v4, "Unable to measure height of detached header"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 654
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getHeight()I

    move-result v0

    .line 659
    :goto_0
    return v0

    .line 656
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPreMeasuring:Z

    .line 657
    invoke-static {p0, v1}, Lcom/kingsoft/mail/utils/Utils;->measureViewHeight(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v0

    .line 658
    .local v0, "h":I
    iput-boolean v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPreMeasuring:Z

    goto :goto_0
.end method

.method private varargs registerMessageClickTargets([I)V
    .locals 5
    .param p1, "ids"    # [I

    .prologue
    .line 314
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 315
    .local v2, "id":I
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 316
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 317
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v2    # "id":I
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private render()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 417
    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    if-nez v6, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    new-instance v5, Lcom/kingsoft/mail/perf/Timer;

    invoke-direct {v5}, Lcom/kingsoft/mail/perf/Timer;-><init>()V

    .line 422
    .local v5, "t":Lcom/kingsoft/mail/perf/Timer;
    const-string/jumbo v6, "message header render"

    invoke-virtual {v5, v6}, Lcom/kingsoft/mail/perf/Timer;->start(Ljava/lang/String;)V

    .line 424
    iput-boolean v8, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCollapsedDetailsValid:Z

    .line 425
    iput-boolean v8, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandedDetailsValid:Z

    .line 427
    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getEmailContentMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    .line 428
    .local v2, "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v2, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    .line 432
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    if-eqz v0, :cond_2

    .line 433
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Account;->getProtocol()Ljava/lang/String;

    move-result-object v4

    .line 434
    .local v4, "protocol":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100305

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "pop3":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 436
    iput-boolean v8, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mShowImagePrompt:Z

    .line 440
    .end local v3    # "pop3":Ljava/lang/String;
    .end local v4    # "protocol":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->isExpanded()Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setExpanded(Z)V

    .line 442
    new-array v6, v9, [Ljava/lang/String;

    iget-object v7, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    aput-object v7, v6, v8

    iput-object v6, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mFrom:[Ljava/lang/String;

    .line 443
    iget-object v6, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v6}, Lcom/kingsoft/mail/providers/Message;->tokenizeAddresses(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mTo:[Ljava/lang/String;

    .line 458
    iget-object v1, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 459
    .local v1, "from":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 461
    if-eqz v0, :cond_3

    .line 462
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v6

    iget-object v1, v6, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    .line 465
    :cond_3
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSender:Lcom/kingsoft/mail/providers/Address;

    .line 482
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->updateChildVisibility()V

    .line 489
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->updateContactInfo()V

    .line 490
    iget-boolean v6, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mObservingContactInfo:Z

    if-nez v6, :cond_4

    .line 491
    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mContactInfoSource:Lcom/kingsoft/mail/ContactInfoSource;

    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mContactInfoObserver:Landroid/database/DataSetObserver;

    invoke-interface {v6, v7}, Lcom/kingsoft/mail/ContactInfoSource;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 492
    iput-boolean v9, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mObservingContactInfo:Z

    .line 495
    :cond_4
    const-string/jumbo v6, "message header render"

    invoke-virtual {v5, v6}, Lcom/kingsoft/mail/perf/Timer;->pause(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private render(Z)V
    .locals 9
    .param p1, "measureOnly"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 499
    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    if-nez v7, :cond_0

    .line 604
    :goto_0
    return-void

    .line 503
    :cond_0
    new-instance v4, Lcom/kingsoft/mail/perf/Timer;

    invoke-direct {v4}, Lcom/kingsoft/mail/perf/Timer;-><init>()V

    .line 504
    .local v4, "t":Lcom/kingsoft/mail/perf/Timer;
    const-string/jumbo v7, "message header render"

    invoke-virtual {v4, v7}, Lcom/kingsoft/mail/perf/Timer;->start(Ljava/lang/String;)V

    .line 506
    iput-boolean v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCollapsedDetailsValid:Z

    .line 507
    iput-boolean v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandedDetailsValid:Z

    .line 509
    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v7

    iput-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    .line 511
    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-object v8, v8, Lcom/kingsoft/mail/browse/ConversationMessage;->bodyHtml:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/kingsoft/mail/browse/ConversationMessage;->shouldShowImagePrompt(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mShowImagePrompt:Z

    .line 512
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    .line 513
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Account;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 515
    .local v3, "protocol":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100305

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 516
    .local v2, "pop3":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 517
    iput-boolean v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mShowImagePrompt:Z

    .line 521
    .end local v2    # "pop3":Ljava/lang/String;
    .end local v3    # "protocol":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->isExpanded()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setExpanded(Z)V

    .line 523
    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ConversationMessage;->getFromAddresses()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mFrom:[Ljava/lang/String;

    .line 524
    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ConversationMessage;->getToAddresses()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mTo:[Ljava/lang/String;

    .line 525
    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ConversationMessage;->getCcAddresses()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCc:[Ljava/lang/String;

    .line 526
    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ConversationMessage;->getBccAddresses()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mBcc:[Ljava/lang/String;

    .line 527
    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ConversationMessage;->getReplyToAddresses()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mReplyTo:[Ljava/lang/String;

    .line 534
    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget v7, v7, Lcom/kingsoft/mail/browse/ConversationMessage;->draftType:I

    if-eqz v7, :cond_2

    move v5, v6

    :cond_2
    iput-boolean v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mIsDraft:Z

    .line 535
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-boolean v5, v5, Lcom/kingsoft/mail/browse/ConversationMessage;->isSending:Z

    iput-boolean v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mIsSending:Z

    .line 544
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v5}, Lcom/kingsoft/mail/browse/ConversationMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, "from":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 547
    if-eqz v0, :cond_3

    .line 548
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v5

    iget-object v1, v5, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    .line 551
    :cond_3
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSender:Lcom/kingsoft/mail/providers/Address;

    .line 568
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->updateChildVisibility()V

    .line 570
    iget-boolean v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mIsDraft:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mIsSending:Z

    if-eqz v5, :cond_7

    .line 571
    :cond_4
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationMessage;->snippet:Ljava/lang/String;

    invoke-static {v5}, Lcom/kingsoft/mail/browse/MessageHeaderView;->makeSnippet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSnippet:Ljava/lang/String;

    .line 576
    :goto_1
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSenderNameView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSenderEmailView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getHeaderSubtitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mDateView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getTimestampLong()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSnippetView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSnippet:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setAddressOnContextMenu()V

    .line 588
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mUpperDateView:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 589
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mUpperDateView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getTimestampShort()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    :cond_5
    if-eqz p1, :cond_8

    .line 594
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->unbind()V

    .line 603
    :cond_6
    :goto_2
    const-string/jumbo v5, "message header render"

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/perf/Timer;->pause(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 573
    :cond_7
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-object v5, v5, Lcom/kingsoft/mail/browse/ConversationMessage;->snippet:Ljava/lang/String;

    iput-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSnippet:Ljava/lang/String;

    goto :goto_1

    .line 596
    :cond_8
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->updateContactInfo()V

    .line 597
    iget-boolean v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mObservingContactInfo:Z

    if-nez v5, :cond_6

    .line 598
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mContactInfoSource:Lcom/kingsoft/mail/ContactInfoSource;

    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mContactInfoObserver:Landroid/database/DataSetObserver;

    invoke-interface {v5, v7}, Lcom/kingsoft/mail/ContactInfoSource;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 599
    iput-boolean v6, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mObservingContactInfo:Z

    goto :goto_2
.end method

.method private static renderEmailList(Landroid/content/res/Resources;II[Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/util/Map;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/utils/VeiledAddressMatcher;)V
    .locals 15
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "headerId"    # I
    .param p2, "detailsId"    # I
    .param p3, "emails"    # [Ljava/lang/String;
    .param p4, "viaDomain"    # Ljava/lang/String;
    .param p5, "rootView"    # Landroid/view/View;
    .param p7, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p8, "veiledMatcher"    # Lcom/kingsoft/mail/utils/VeiledAddressMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "II[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/providers/Address;",
            ">;",
            "Lcom/kingsoft/mail/providers/Account;",
            "Lcom/kingsoft/mail/utils/VeiledAddressMatcher;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1609
    .local p6, "addressCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/mail/providers/Address;>;"
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v11, v0

    if-nez v11, :cond_1

    .line 1663
    :cond_0
    :goto_0
    return-void

    .line 1612
    :cond_1
    move-object/from16 v0, p3

    array-length v11, v0

    new-array v7, v11, [Ljava/lang/CharSequence;

    .line 1613
    .local v7, "formattedEmails":[Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p3

    array-length v11, v0

    if-ge v8, v11, :cond_9

    .line 1614
    aget-object v11, p3, v8

    move-object/from16 v0, p6

    invoke-static {v0, v11}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAddress(Ljava/util/Map;Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v5

    .line 1615
    .local v5, "email":Lcom/kingsoft/mail/providers/Address;
    if-nez v5, :cond_2

    .line 1616
    const-string/jumbo v11, ""

    aput-object v11, v7, v8

    .line 1613
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1619
    :cond_2
    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1621
    .local v2, "address":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1622
    .local v10, "name":Ljava/lang/String;
    if-eqz p7, :cond_4

    .line 1623
    invoke-virtual/range {p7 .. p7}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Address;->getSimplifiedName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v2, v11, v12, v13}, Lcom/kingsoft/mail/utils/ContactHelper;->getContactNameByEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 1630
    :goto_3
    if-eqz p8, :cond_5

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/utils/VeiledAddressMatcher;->isVeiledAddress(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v9, 0x1

    .line 1633
    .local v9, "isVeiledAddress":Z
    :goto_4
    if-eqz v9, :cond_7

    .line 1637
    const-string/jumbo v3, ""

    .line 1638
    .local v3, "addressShown":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1641
    const v11, 0x7f1003c4

    invoke-virtual {p0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1649
    :goto_5
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_8

    .line 1650
    :cond_3
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1654
    .local v6, "formatted":Landroid/text/Spannable;
    :goto_6
    new-instance v11, Lcom/kingsoft/mail/browse/EmailAddressSpan;

    move-object/from16 v0, p7

    invoke-direct {v11, v0, v3}, Lcom/kingsoft/mail/browse/EmailAddressSpan;-><init>(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v13

    const/16 v14, 0x21

    invoke-interface {v6, v11, v12, v13, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1655
    aput-object v6, v7, v8

    goto :goto_2

    .line 1626
    .end local v3    # "addressShown":Ljava/lang/String;
    .end local v6    # "formatted":Landroid/text/Spannable;
    .end local v9    # "isVeiledAddress":Z
    :cond_4
    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Address;->getSimplifiedName()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 1630
    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    .line 1643
    .restart local v3    # "addressShown":Ljava/lang/String;
    .restart local v9    # "isVeiledAddress":Z
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f1003c3

    invoke-virtual {p0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 1646
    .end local v3    # "addressShown":Ljava/lang/String;
    :cond_7
    move-object v3, v2

    .restart local v3    # "addressShown":Ljava/lang/String;
    goto :goto_5

    .line 1652
    :cond_8
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v6    # "formatted":Landroid/text/Spannable;
    goto :goto_6

    .line 1658
    .end local v2    # "address":Ljava/lang/String;
    .end local v3    # "addressShown":Ljava/lang/String;
    .end local v5    # "email":Lcom/kingsoft/mail/providers/Address;
    .end local v6    # "formatted":Landroid/text/Spannable;
    .end local v9    # "isVeiledAddress":Z
    .end local v10    # "name":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1659
    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1660
    .local v4, "detailsText":Landroid/widget/TextView;
    const v11, 0x7f1001a4

    invoke-virtual {p0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v7}, Lcom/kingsoft/mail/browse/MessageHeaderView;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1661
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1662
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public static renderExpandedDetails(Landroid/content/res/Resources;Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/utils/VeiledAddressMatcher;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 11
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "detailsView"    # Landroid/view/View;
    .param p2, "viaDomain"    # Ljava/lang/String;
    .param p4, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p5, "veiledMatcher"    # Lcom/kingsoft/mail/utils/VeiledAddressMatcher;
    .param p6, "from"    # [Ljava/lang/String;
    .param p7, "replyTo"    # [Ljava/lang/String;
    .param p8, "to"    # [Ljava/lang/String;
    .param p9, "cc"    # [Ljava/lang/String;
    .param p10, "bcc"    # [Ljava/lang/String;
    .param p11, "receivedTimestamp"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/providers/Address;",
            ">;",
            "Lcom/kingsoft/mail/providers/Account;",
            "Lcom/kingsoft/mail/utils/VeiledAddressMatcher;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1582
    .local p3, "addressCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/mail/providers/Address;>;"
    const v2, 0x7f0c01a2

    const v3, 0x7f0c01a4

    move-object v1, p0

    move-object/from16 v4, p6

    move-object v5, p2

    move-object v6, p1

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v9}, Lcom/kingsoft/mail/browse/MessageHeaderView;->renderEmailList(Landroid/content/res/Resources;II[Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/util/Map;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/utils/VeiledAddressMatcher;)V

    .line 1586
    const v2, 0x7f0c01ab

    const v3, 0x7f0c01ac

    move-object v1, p0

    move-object/from16 v4, p8

    move-object v5, p2

    move-object v6, p1

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v9}, Lcom/kingsoft/mail/browse/MessageHeaderView;->renderEmailList(Landroid/content/res/Resources;II[Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/util/Map;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/utils/VeiledAddressMatcher;)V

    .line 1588
    const v2, 0x7f0c01ad

    const v3, 0x7f0c01ae

    move-object v1, p0

    move-object/from16 v4, p9

    move-object v5, p2

    move-object v6, p1

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v9}, Lcom/kingsoft/mail/browse/MessageHeaderView;->renderEmailList(Landroid/content/res/Resources;II[Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/util/Map;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/utils/VeiledAddressMatcher;)V

    .line 1590
    const v2, 0x7f0c01af

    const v3, 0x7f0c01b0

    move-object v1, p0

    move-object/from16 v4, p10

    move-object v5, p2

    move-object v6, p1

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v9}, Lcom/kingsoft/mail/browse/MessageHeaderView;->renderEmailList(Landroid/content/res/Resources;II[Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/util/Map;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/utils/VeiledAddressMatcher;)V

    .line 1595
    const v1, 0x7f0c01a9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1596
    const v1, 0x7f0c01aa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1597
    .local v10, "date":Landroid/widget/TextView;
    move-object/from16 v0, p11

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1598
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1600
    return-void
.end method

.method private setAddressOnContextMenu()V
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSender:Lcom/kingsoft/mail/providers/Address;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mEmailCopyMenu:Lcom/kingsoft/mail/browse/EmailCopyContextMenu;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSender:Lcom/kingsoft/mail/providers/Address;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/EmailCopyContextMenu;->setAddress(Ljava/lang/CharSequence;)V

    .line 615
    :cond_0
    return-void
.end method

.method private static setChildMarginEnd(Landroid/view/View;I)V
    .locals 3
    .param p0, "childView"    # Landroid/view/View;
    .param p1, "marginEnd"    # I

    .prologue
    .line 851
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 852
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 854
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 858
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    return-void

    .line 856
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private static varargs setChildVisibility(I[Landroid/view/View;)V
    .locals 4
    .param p0, "visibility"    # I
    .param p1, "children"    # [Landroid/view/View;

    .prologue
    .line 719
    move-object v0, p1

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 720
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 721
    invoke-virtual {v3, p0}, Landroid/view/View;->setVisibility(I)V

    .line 719
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 724
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 729
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setActivated(Z)V

    .line 730
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->setExpanded(Z)V

    .line 733
    :cond_0
    return-void
.end method

.method private setMessageDetailsExpanded(Z)V
    .locals 2
    .param p1, "expand"    # Z

    .prologue
    .line 1206
    iget v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandMode:I

    if-nez v0, :cond_4

    .line 1207
    if-eqz p1, :cond_2

    .line 1208
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->startAlphaChangeAnimation(Landroid/view/View;)V

    .line 1226
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    if-eqz v0, :cond_1

    .line 1227
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    iput-boolean p1, v0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->detailsExpanded:Z

    .line 1229
    :cond_1
    return-void

    .line 1211
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandedDetailsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 1212
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandedDetailsView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->startHideExpandedDetails(Landroid/view/View;)V

    goto :goto_0

    .line 1214
    :cond_3
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->hideExpandedDetails()V

    .line 1215
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->showCollapsedDetails()V

    goto :goto_0

    .line 1218
    :cond_4
    iget v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1219
    if-eqz p1, :cond_5

    .line 1220
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->showDetailsPopup()V

    goto :goto_0

    .line 1222
    :cond_5
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->hideDetailsPopup()V

    .line 1223
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->showCollapsedDetails()V

    goto :goto_0
.end method

.method private setReplyOrReplyAllVisible()V
    .locals 0

    .prologue
    .line 848
    return-void
.end method

.method private showCollapsedDetails()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const v4, 0x7f0c01a5

    const/4 v13, 0x0

    .line 1397
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040069

    invoke-virtual {v0, v3, p0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    .line 1401
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExtraContentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1402
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    const v3, 0x7f0c01a1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1404
    :cond_0
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCollapsedDetailsValid:Z

    if-nez v0, :cond_3

    .line 1405
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->recipientSummaryText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 1406
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v12

    .line 1407
    .local v12, "account":Lcom/kingsoft/mail/providers/Account;
    if-eqz v12, :cond_4

    iget-object v2, v12, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    .line 1409
    .local v2, "name":Ljava/lang/String;
    :goto_0
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    .line 1411
    .local v1, "myEmail":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mTo:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mTo:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 1414
    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f1003ae

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1415
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMyName:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mTo:[Ljava/lang/String;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->emptyArray:[Ljava/lang/String;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->emptyArray:[Ljava/lang/String;

    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mAddressCache:Ljava/util/Map;

    iget-object v8, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mVeiledMatcher:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    invoke-static/range {v0 .. v8}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getRecipientSummaryText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Lcom/kingsoft/mail/utils/VeiledAddressMatcher;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v9, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->recipientSummaryText:Ljava/lang/CharSequence;

    .line 1432
    .end local v1    # "myEmail":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v12    # "account":Lcom/kingsoft/mail/providers/Account;
    :cond_1
    :goto_2
    const v0, 0x7f0c01a3

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getTimestampShort()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1435
    const v0, 0x7f0c01a6

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->recipientSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    const/4 v6, 0x0

    .line 1439
    .local v6, "fromAddresses":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1440
    .local v7, "viaDomain":Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    if-eqz v0, :cond_8

    .line 1441
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationMessage;->getFromAddresses()[Ljava/lang/String;

    move-result-object v6

    .line 1442
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-object v7, v0, Lcom/kingsoft/mail/browse/ConversationMessage;->viaDomain:Ljava/lang/String;

    .line 1446
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01a2

    const v5, 0x7f0c01a4

    iget-object v8, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mAddressCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v10

    iget-object v11, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mVeiledMatcher:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    invoke-static/range {v3 .. v11}, Lcom/kingsoft/mail/browse/MessageHeaderView;->renderEmailList(Landroid/content/res/Resources;II[Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/util/Map;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/utils/VeiledAddressMatcher;)V

    .line 1449
    iput-boolean v14, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCollapsedDetailsValid:Z

    .line 1451
    .end local v6    # "fromAddresses":[Ljava/lang/String;
    .end local v7    # "viaDomain":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1452
    return-void

    .line 1407
    .restart local v12    # "account":Lcom/kingsoft/mail/providers/Account;
    :cond_4
    const-string/jumbo v2, ""

    goto/16 :goto_0

    .line 1409
    .restart local v2    # "name":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1417
    .restart local v1    # "myEmail":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCc:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCc:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 1419
    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f100111

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1420
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMyName:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->emptyArray:[Ljava/lang/String;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCc:[Ljava/lang/String;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->emptyArray:[Ljava/lang/String;

    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mAddressCache:Ljava/util/Map;

    iget-object v8, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mVeiledMatcher:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    invoke-static/range {v0 .. v8}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getRecipientSummaryText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Lcom/kingsoft/mail/utils/VeiledAddressMatcher;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v9, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->recipientSummaryText:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 1422
    :cond_7
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mBcc:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mBcc:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1424
    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f1000fd

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1425
    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMyName:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->emptyArray:[Ljava/lang/String;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->emptyArray:[Ljava/lang/String;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mBcc:[Ljava/lang/String;

    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mAddressCache:Ljava/util/Map;

    iget-object v8, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mVeiledMatcher:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    invoke-static/range {v0 .. v8}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getRecipientSummaryText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Lcom/kingsoft/mail/utils/VeiledAddressMatcher;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v9, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->recipientSummaryText:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 1443
    .end local v1    # "myEmail":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v12    # "account":Lcom/kingsoft/mail/providers/Account;
    .restart local v6    # "fromAddresses":[Ljava/lang/String;
    .restart local v7    # "viaDomain":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getEmailContentMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1444
    new-array v6, v14, [Ljava/lang/String;

    .end local v6    # "fromAddresses":[Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getEmailContentMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    aput-object v0, v6, v13

    .restart local v6    # "fromAddresses":[Ljava/lang/String;
    goto/16 :goto_3
.end method

.method private showDetailsPopup()V
    .locals 9

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCallbacks:Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    invoke-interface {v0}, Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    .line 1681
    .local v8, "manager":Landroid/app/FragmentManager;
    const-string/jumbo v0, "details-dialog"

    invoke-virtual {v8, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mDetailsPopup:Landroid/app/DialogFragment;

    .line 1682
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mDetailsPopup:Landroid/app/DialogFragment;

    if-nez v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mAddressCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mFrom:[Ljava/lang/String;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mReplyTo:[Ljava/lang/String;

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mTo:[Ljava/lang/String;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCc:[Ljava/lang/String;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mBcc:[Ljava/lang/String;

    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getTimestampLong()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/kingsoft/mail/browse/MessageHeaderDetailsDialogFragment;->newInstance(Ljava/util/Map;Lcom/kingsoft/mail/providers/Account;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/kingsoft/mail/browse/MessageHeaderDetailsDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mDetailsPopup:Landroid/app/DialogFragment;

    .line 1686
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mDetailsPopup:Landroid/app/DialogFragment;

    const-string/jumbo v1, "details-dialog"

    invoke-virtual {v0, v8, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1688
    :cond_0
    return-void
.end method

.method private showExpandedDetails()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1461
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->ensureExpandedDetailsView()Z

    move-result v1

    .line 1462
    .local v1, "expandedViewCreated":Z
    if-eqz v1, :cond_0

    .line 1463
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExtraContentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandedDetailsView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1465
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandedDetailsView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1466
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandedDetailsView:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->startShowExpandedDetailsAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 1467
    .local v0, "a":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1468
    return-void
.end method

.method private showImagePromptAlways(Z)V
    .locals 2
    .param p1, "initialShowing"    # Z

    .prologue
    .line 1301
    if-eqz p1, :cond_0

    .line 1303
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->showImagePromptOnce()V

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mImagePromptView:Landroid/widget/TextView;

    const v1, 0x7f1000d1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1307
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mImagePromptView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1309
    if-nez p1, :cond_1

    .line 1311
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->updateSpacerHeight()V

    .line 1313
    :cond_1
    return-void
.end method

.method private showSpamWarning()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1322
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSpamWarningView:Lcom/kingsoft/mail/browse/SpamWarningView;

    if-nez v1, :cond_0

    .line 1323
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04006f

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/browse/SpamWarningView;

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSpamWarningView:Lcom/kingsoft/mail/browse/SpamWarningView;

    .line 1325
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExtraContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSpamWarningView:Lcom/kingsoft/mail/browse/SpamWarningView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1330
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSpamWarningView:Lcom/kingsoft/mail/browse/SpamWarningView;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSender:Lcom/kingsoft/mail/providers/Address;

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/browse/SpamWarningView;->showSpamWarning(Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/providers/Address;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    :goto_0
    return-void

    .line 1331
    :catch_0
    move-exception v0

    .line 1332
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MessageHeaderView"

    const-string/jumbo v2, "showSpamWarning"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private startAlphaChangeAnimation(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1471
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->createAlphaChangeAnimation(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1472
    .local v0, "a":Landroid/animation/Animator;
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1473
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->alphaChangeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1474
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1475
    return-void
.end method

.method private startHideExpandedDetails(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1478
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->createAlphaChangeAnimation(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1479
    .local v0, "a":Landroid/animation/Animator;
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1480
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->heightChangeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1481
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1482
    return-void
.end method

.method private startShowExpandedDetailsAnimation(Landroid/view/View;)Landroid/animation/Animator;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1485
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->createAlphaChangeAnimation(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1486
    .local v0, "alpha":Landroid/animation/Animator;
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1488
    return-object v0
.end method

.method private toggleMessageDetails(Landroid/view/View;)V
    .locals 4
    .param p1, "visibleDetailsView"    # Landroid/view/View;

    .prologue
    .line 1196
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->measureHeight()I

    move-result v1

    .line 1197
    .local v1, "heightBefore":I
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCollapsedDetailsView:Landroid/view/ViewGroup;

    const v3, 0x7f0c01a1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    .line 1198
    .local v0, "detailsExpanded":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setMessageDetailsExpanded(Z)V

    .line 1199
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->updateSpacerHeight()V

    .line 1200
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCallbacks:Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    if-eqz v2, :cond_0

    .line 1201
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCallbacks:Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-interface {v2, v3, v0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;->setMessageDetailsExpanded(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;ZI)V

    .line 1203
    :cond_0
    return-void

    .line 1197
    .end local v0    # "detailsExpanded":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateBorderExpandedState()Lcom/kingsoft/mail/browse/MessageHeaderView$BorderHeights;
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1139
    iget-object v13, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v13}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getPosition()I

    move-result v8

    .line 1140
    .local v8, "position":I
    iget-object v13, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v13}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->isExpanded()Z

    move-result v6

    .line 1141
    .local v6, "isExpanded":Z
    add-int/lit8 v0, v8, -0x2

    .line 1142
    .local v0, "abovePosition":I
    add-int/lit8 v2, v8, 0x3

    .line 1143
    .local v2, "belowPosition":I
    iget-object v13, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v13}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getAdapter()Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    move-result-object v1

    .line 1144
    .local v1, "adapter":Lcom/kingsoft/mail/browse/ConversationViewAdapter;
    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getCount()I

    move-result v9

    .line 1145
    .local v9, "size":I
    new-instance v3, Lcom/kingsoft/mail/browse/MessageHeaderView$BorderHeights;

    const/4 v13, 0x0

    invoke-direct {v3, p0, v13}, Lcom/kingsoft/mail/browse/MessageHeaderView$BorderHeights;-><init>(Lcom/kingsoft/mail/browse/MessageHeaderView;Lcom/kingsoft/mail/browse/MessageHeaderView$1;)V

    .line 1148
    .local v3, "borderHeights":Lcom/kingsoft/mail/browse/MessageHeaderView$BorderHeights;
    invoke-direct {p0, v0, v9}, Lcom/kingsoft/mail/browse/MessageHeaderView;->isValidPosition(II)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1149
    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getItem(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    move-result-object v7

    .line 1150
    .local v7, "item":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->getType()I

    move-result v10

    .line 1151
    .local v10, "type":I
    const/4 v13, 0x2

    if-eq v10, v13, :cond_0

    const/4 v13, 0x3

    if-ne v10, v13, :cond_2

    .line 1153
    :cond_0
    add-int/lit8 v13, v0, 0x1

    invoke-virtual {v1, v13}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getItem(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;

    .line 1154
    .local v5, "borderItem":Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;
    if-nez v6, :cond_1

    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->isExpanded()Z

    move-result v13

    if-eqz v13, :cond_5

    :cond_1
    move v4, v12

    .line 1155
    .local v4, "borderIsExpanded":Z
    :goto_0
    invoke-virtual {v5, v4}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->setExpanded(Z)V

    .line 1156
    if-eqz v4, :cond_6

    invoke-static {}, Lcom/kingsoft/mail/browse/BorderView;->getExpandedHeight()I

    move-result v13

    :goto_1
    iput v13, v3, Lcom/kingsoft/mail/browse/MessageHeaderView$BorderHeights;->topHeight:I

    .line 1158
    iget v13, v3, Lcom/kingsoft/mail/browse/MessageHeaderView$BorderHeights;->topHeight:I

    invoke-virtual {v5, v13}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->setHeight(I)Z

    .line 1164
    .end local v4    # "borderIsExpanded":Z
    .end local v5    # "borderItem":Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;
    .end local v7    # "item":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    .end local v10    # "type":I
    :cond_2
    invoke-direct {p0, v2, v9}, Lcom/kingsoft/mail/browse/MessageHeaderView;->isValidPosition(II)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1165
    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getItem(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    move-result-object v7

    .line 1166
    .restart local v7    # "item":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->getType()I

    move-result v13

    if-ne v13, v12, :cond_4

    .line 1167
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {v1, v13}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getItem(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;

    .line 1168
    .restart local v5    # "borderItem":Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;
    if-nez v6, :cond_3

    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->isExpanded()Z

    move-result v13

    if-eqz v13, :cond_7

    :cond_3
    move v4, v12

    .line 1169
    .restart local v4    # "borderIsExpanded":Z
    :goto_2
    invoke-virtual {v5, v4}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->setExpanded(Z)V

    .line 1170
    if-eqz v4, :cond_8

    invoke-static {}, Lcom/kingsoft/mail/browse/BorderView;->getExpandedHeight()I

    move-result v11

    :goto_3
    iput v11, v3, Lcom/kingsoft/mail/browse/MessageHeaderView$BorderHeights;->bottomHeight:I

    .line 1172
    iget v11, v3, Lcom/kingsoft/mail/browse/MessageHeaderView$BorderHeights;->bottomHeight:I

    invoke-virtual {v5, v11}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->setHeight(I)Z

    .line 1176
    .end local v4    # "borderIsExpanded":Z
    .end local v5    # "borderItem":Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;
    .end local v7    # "item":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    :cond_4
    return-object v3

    .restart local v5    # "borderItem":Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;
    .restart local v7    # "item":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    .restart local v10    # "type":I
    :cond_5
    move v4, v11

    .line 1154
    goto :goto_0

    .line 1156
    .restart local v4    # "borderIsExpanded":Z
    :cond_6
    invoke-static {}, Lcom/kingsoft/mail/browse/BorderView;->getCollapsedHeight()I

    move-result v13

    goto :goto_1

    .end local v4    # "borderIsExpanded":Z
    .end local v10    # "type":I
    :cond_7
    move v4, v11

    .line 1168
    goto :goto_2

    .line 1170
    .restart local v4    # "borderIsExpanded":Z
    :cond_8
    invoke-static {}, Lcom/kingsoft/mail/browse/BorderView;->getCollapsedHeight()I

    move-result v11

    goto :goto_3
.end method

.method private updateChildVisibility()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/16 v3, 0x8

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 741
    new-array v2, v7, [Landroid/view/View;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSenderNameView:Landroid/widget/TextView;

    aput-object v5, v2, v4

    invoke-static {v3, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildVisibility(I[Landroid/view/View;)V

    .line 744
    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mIsViewOnlyMode:Z

    if-eqz v2, :cond_3

    .line 745
    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setMessageDetailsVisibility(I)V

    .line 746
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSnapHeaderBottomBorder:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 748
    new-array v2, v7, [Landroid/view/View;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSnapHeaderBottomBorder:Landroid/view/View;

    aput-object v5, v2, v4

    invoke-static {v3, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildVisibility(I[Landroid/view/View;)V

    .line 751
    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/view/View;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mDraftIcon:Landroid/view/View;

    aput-object v5, v2, v4

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mAttachmentIcon:Landroid/view/View;

    aput-object v5, v2, v7

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mUpperDateView:Landroid/widget/TextView;

    aput-object v5, v2, v8

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSnippetView:Landroid/widget/TextView;

    aput-object v5, v2, v9

    invoke-static {v3, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildVisibility(I[Landroid/view/View;)V

    .line 754
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    if-eqz v2, :cond_1

    .line 756
    new-array v2, v9, [Landroid/view/View;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSenderEmailView:Landroid/widget/TextView;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mDateView:Landroid/widget/TextView;

    aput-object v3, v2, v8

    invoke-static {v4, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildVisibility(I[Landroid/view/View;)V

    .line 759
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mTitleContainerView:Landroid/view/ViewGroup;

    invoke-static {v2, v4}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildMarginEnd(Landroid/view/View;I)V

    .line 825
    :cond_2
    :goto_0
    return-void

    .line 760
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 763
    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mIsSnappy:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setMessageDetailsVisibility(I)V

    .line 764
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSnapHeaderBottomBorder:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 766
    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mIsSnappy:Z

    if-eqz v2, :cond_6

    move v2, v4

    :goto_2
    new-array v5, v7, [Landroid/view/View;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSnapHeaderBottomBorder:Landroid/view/View;

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildVisibility(I[Landroid/view/View;)V

    .line 770
    :cond_4
    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mIsDraft:Z

    if-eqz v2, :cond_7

    .line 771
    const/16 v1, 0x8

    .line 772
    .local v1, "normalVis":I
    const/4 v0, 0x0

    .line 778
    .local v0, "draftVis":I
    :goto_3
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setReplyOrReplyAllVisible()V

    .line 779
    new-array v2, v7, [Landroid/view/View;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildVisibility(I[Landroid/view/View;)V

    .line 780
    new-array v2, v7, [Landroid/view/View;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mDraftIcon:Landroid/view/View;

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildVisibility(I[Landroid/view/View;)V

    .line 781
    new-array v2, v8, [Landroid/view/View;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSenderEmailView:Landroid/widget/TextView;

    aput-object v5, v2, v4

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mDateView:Landroid/widget/TextView;

    aput-object v5, v2, v7

    invoke-static {v3, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildVisibility(I[Landroid/view/View;)V

    .line 782
    new-array v2, v9, [Landroid/view/View;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mAttachmentIcon:Landroid/view/View;

    aput-object v5, v2, v4

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mUpperDateView:Landroid/widget/TextView;

    aput-object v5, v2, v7

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSnippetView:Landroid/widget/TextView;

    aput-object v5, v2, v8

    invoke-static {v3, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildVisibility(I[Landroid/view/View;)V

    .line 785
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mTitleContainerView:Landroid/view/ViewGroup;

    invoke-static {v2, v4}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildMarginEnd(Landroid/view/View;I)V

    goto :goto_0

    .end local v0    # "draftVis":I
    .end local v1    # "normalVis":I
    :cond_5
    move v2, v4

    .line 763
    goto :goto_1

    :cond_6
    move v2, v3

    .line 766
    goto :goto_2

    .line 774
    :cond_7
    const/4 v1, 0x0

    .line 775
    .restart local v1    # "normalVis":I
    const/16 v0, 0x8

    .restart local v0    # "draftVis":I
    goto :goto_3

    .line 789
    .end local v0    # "draftVis":I
    .end local v1    # "normalVis":I
    :cond_8
    invoke-virtual {p0, v3}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setMessageDetailsVisibility(I)V

    .line 790
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSnapHeaderBottomBorder:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 792
    new-array v2, v7, [Landroid/view/View;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSnapHeaderBottomBorder:Landroid/view/View;

    aput-object v5, v2, v4

    invoke-static {v3, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildVisibility(I[Landroid/view/View;)V

    .line 795
    :cond_9
    new-array v2, v8, [Landroid/view/View;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSnippetView:Landroid/widget/TextView;

    aput-object v5, v2, v4

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mUpperDateView:Landroid/widget/TextView;

    aput-object v5, v2, v7

    invoke-static {v3, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildVisibility(I[Landroid/view/View;)V

    .line 797
    new-array v2, v8, [Landroid/view/View;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSenderEmailView:Landroid/widget/TextView;

    aput-object v5, v2, v4

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mDateView:Landroid/widget/TextView;

    aput-object v5, v2, v7

    invoke-static {v3, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildVisibility(I[Landroid/view/View;)V

    .line 800
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-boolean v2, v2, Lcom/kingsoft/mail/browse/ConversationMessage;->hasAttachments:Z

    if-eqz v2, :cond_a

    move v2, v4

    :goto_4
    new-array v5, v7, [Landroid/view/View;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mAttachmentIcon:Landroid/view/View;

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildVisibility(I[Landroid/view/View;)V

    .line 805
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mTitleContainerView:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mTitleContainerCollapsedMarginEnd:I

    invoke-static {v2, v5}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildMarginEnd(Landroid/view/View;I)V

    .line 807
    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mIsDraft:Z

    if-eqz v2, :cond_b

    .line 809
    new-array v2, v7, [Landroid/view/View;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mDraftIcon:Landroid/view/View;

    aput-object v5, v2, v4

    invoke-static {v4, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildVisibility(I[Landroid/view/View;)V

    .line 810
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    if-eqz v2, :cond_2

    .line 812
    new-array v2, v7, [Landroid/view/View;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    aput-object v5, v2, v4

    invoke-static {v3, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildVisibility(I[Landroid/view/View;)V

    goto/16 :goto_0

    :cond_a
    move v2, v3

    .line 800
    goto :goto_4

    .line 817
    :cond_b
    new-array v2, v7, [Landroid/view/View;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mDraftIcon:Landroid/view/View;

    aput-object v5, v2, v4

    invoke-static {v3, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildVisibility(I[Landroid/view/View;)V

    .line 818
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    if-eqz v2, :cond_2

    .line 820
    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    aput-object v3, v2, v4

    invoke-static {v4, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setChildVisibility(I[Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private updateContactInfo()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 966
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    if-nez v4, :cond_1

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mContactInfoSource:Lcom/kingsoft/mail/ContactInfoSource;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSender:Lcom/kingsoft/mail/providers/Address;

    if-nez v4, :cond_3

    .line 971
    :cond_2
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4}, Landroid/widget/QuickContactBadge;->setImageToDefault()V

    .line 972
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10013a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 980
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100139

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSender:Lcom/kingsoft/mail/providers/Address;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Address;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSender:Lcom/kingsoft/mail/providers/Address;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Address;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "contentDesc":Ljava/lang/String;
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v0}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 983
    const/4 v3, 0x0

    .line 984
    .local v3, "photoSet":Z
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSender:Lcom/kingsoft/mail/providers/Address;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 985
    .local v1, "email":Ljava/lang/String;
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mContactInfoSource:Lcom/kingsoft/mail/ContactInfoSource;

    invoke-interface {v4, v1}, Lcom/kingsoft/mail/ContactInfoSource;->getContactInfo(Ljava/lang/String;)Lcom/kingsoft/mail/ContactInfo;

    move-result-object v2

    .line 986
    .local v2, "info":Lcom/kingsoft/mail/ContactInfo;
    if-eqz v2, :cond_6

    .line 987
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    iget-object v5, v2, Lcom/kingsoft/mail/ContactInfo;->contactUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 988
    iget-object v4, v2, Lcom/kingsoft/mail/ContactInfo;->photo:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 989
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    iget-object v5, v2, Lcom/kingsoft/mail/ContactInfo;->photo:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 990
    const/4 v3, 0x1

    .line 996
    :cond_4
    :goto_2
    if-nez v3, :cond_0

    .line 997
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSender:Lcom/kingsoft/mail/providers/Address;

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Address;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->makeLetterTile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 980
    .end local v0    # "contentDesc":Ljava/lang/String;
    .end local v1    # "email":Ljava/lang/String;
    .end local v2    # "info":Lcom/kingsoft/mail/ContactInfo;
    .end local v3    # "photoSet":Z
    :cond_5
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSender:Lcom/kingsoft/mail/providers/Address;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 993
    .restart local v0    # "contentDesc":Ljava/lang/String;
    .restart local v1    # "email":Ljava/lang/String;
    .restart local v2    # "info":Lcom/kingsoft/mail/ContactInfo;
    .restart local v3    # "photoSet":Z
    :cond_6
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v1, v9}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method private updateSpacerHeight()V
    .locals 3

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->measureHeight()I

    move-result v0

    .line 644
    .local v0, "h":I
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->setHeight(I)Z

    .line 645
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCallbacks:Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    if-eqz v1, :cond_0

    .line 646
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCallbacks:Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-interface {v1, v2, v0}, Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;->setMessageSpacerHeight(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;I)V

    .line 648
    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;)V
    .locals 1
    .param p1, "headerItem"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    if-ne v0, p1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    .line 413
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->render()V

    goto :goto_0
.end method

.method public bind(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;Z)V
    .locals 1
    .param p1, "headerItem"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    .param p2, "measureOnly"    # Z

    .prologue
    .line 380
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    if-ne v0, p1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    .line 385
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->render(Z)V

    goto :goto_0
.end method

.method public getAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;
    .locals 1
    .param p1, "emailStr"    # Ljava/lang/String;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mAddressCache:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAddress(Ljava/util/Map;Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v0

    return-object v0
.end method

.method public hideMessageDetails()V
    .locals 1

    .prologue
    .line 1260
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setMessageDetailsVisibility(I)V

    .line 1261
    return-void
.end method

.method public initialize(Lcom/kingsoft/mail/browse/ConversationAccountController;Ljava/util/Map;)V
    .locals 0
    .param p1, "accountController"    # Lcom/kingsoft/mail/browse/ConversationAccountController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/browse/ConversationAccountController;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/providers/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p2, "addressCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/mail/providers/Address;>;"
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mAccountController:Lcom/kingsoft/mail/browse/ConversationAccountController;

    .line 372
    iput-object p2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mAddressCache:Ljava/util/Map;

    .line 373
    return-void
.end method

.method public isBoundTo(Lcom/kingsoft/mail/browse/ConversationOverlayItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    .prologue
    .line 618
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1020
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->onClick(Landroid/view/View;I)Z

    .line 1021
    return-void
.end method

.method public onClick(Landroid/view/View;I)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "id"    # I

    .prologue
    const v12, 0x7f0c0293

    const v11, 0x7f0c01c4

    const v10, 0x7f0c01c3

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1028
    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    if-nez v7, :cond_0

    .line 1029
    sget-object v7, Lcom/kingsoft/mail/browse/MessageHeaderView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "ignoring message header tap on unbound view"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1085
    :goto_0
    return v6

    .line 1033
    :cond_0
    const/4 v1, 0x1

    .line 1035
    .local v1, "handled":Z
    if-ne p2, v10, :cond_1

    .line 1036
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v7

    iget-object v8, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v8, v8, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v6, v7, v8, v9}, Lcom/kingsoft/mail/compose/ComposeActivity;->reply(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V

    :goto_1
    move v6, v1

    .line 1085
    goto :goto_0

    .line 1037
    :cond_1
    if-ne p2, v11, :cond_2

    .line 1038
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v7

    iget-object v8, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v8, v8, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v6, v7, v8, v9}, Lcom/kingsoft/mail/compose/ComposeActivity;->replyAll(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V

    goto :goto_1

    .line 1039
    :cond_2
    const v7, 0x7f0c01c5

    if-ne p2, v7, :cond_3

    .line 1040
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v7

    iget-object v8, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v8, v8, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v6, v7, v8, v9}, Lcom/kingsoft/mail/compose/ComposeActivity;->forward(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V

    goto :goto_1

    .line 1041
    :cond_3
    if-ne p2, v12, :cond_4

    .line 1042
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f10034c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1043
    .local v5, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v7

    iget-object v8, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v8, v8, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCallbacks:Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    iget-object v12, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-interface {v11, v12}, Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;->getMessageTransforms(Lcom/kingsoft/mail/providers/Message;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/kingsoft/mail/compose/ComposeActivity;->reportRenderingFeedback(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;JLjava/lang/String;)V

    goto :goto_1

    .line 1045
    .end local v5    # "text":Ljava/lang/String;
    :cond_4
    const v7, 0x7f0c0294

    if-ne p2, v7, :cond_5

    .line 1046
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f10034a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1047
    .restart local v5    # "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v7

    iget-object v8, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v8, v8, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCallbacks:Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    iget-object v12, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-interface {v11, v12}, Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;->getMessageTransforms(Lcom/kingsoft/mail/providers/Message;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/kingsoft/mail/compose/ComposeActivity;->reportRenderingFeedback(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;JLjava/lang/String;)V

    goto/16 :goto_1

    .line 1049
    .end local v5    # "text":Ljava/lang/String;
    :cond_5
    const v7, 0x7f0c017e

    if-ne p2, v7, :cond_7

    .line 1050
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1051
    .local v3, "newValue":Z
    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1052
    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-virtual {v6, v3}, Lcom/kingsoft/mail/browse/ConversationMessage;->star(Z)V

    goto/16 :goto_1

    .end local v3    # "newValue":Z
    :cond_6
    move v3, v6

    .line 1050
    goto :goto_2

    .line 1053
    :cond_7
    const v7, 0x7f0c01c2

    if-ne p2, v7, :cond_8

    .line 1054
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v7

    iget-object v8, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v8, v8, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v6, v7, v8, v9}, Lcom/kingsoft/mail/compose/ComposeActivity;->editDraft(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V

    goto/16 :goto_1

    .line 1055
    :cond_8
    const v7, 0x7f0c019b

    if-ne p2, v7, :cond_c

    .line 1056
    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPopup:Landroid/widget/PopupMenu;

    if-nez v7, :cond_9

    .line 1057
    new-instance v7, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPopup:Landroid/widget/PopupMenu;

    .line 1058
    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v8, 0x7f12000d

    iget-object v9, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v9}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1060
    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1062
    :cond_9
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v7

    iget-object v7, v7, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget v7, v7, Lcom/kingsoft/mail/providers/Settings;->replyBehavior:I

    if-ne v7, v3, :cond_a

    move v0, v3

    .line 1064
    .local v0, "defaultReplyAll":Z
    :goto_3
    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 1065
    .local v2, "m":Landroid/view/Menu;
    invoke-interface {v2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1066
    invoke-interface {v2, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-nez v0, :cond_b

    :goto_4
    invoke-interface {v7, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1068
    const/4 v4, 0x0

    .line 1070
    .local v4, "reportRendering":Z
    const v6, 0x7f0c0294

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1071
    invoke-interface {v2, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1073
    iget-object v6, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v6}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_1

    .end local v0    # "defaultReplyAll":Z
    .end local v2    # "m":Landroid/view/Menu;
    .end local v4    # "reportRendering":Z
    :cond_a
    move v0, v6

    .line 1062
    goto :goto_3

    .restart local v0    # "defaultReplyAll":Z
    .restart local v2    # "m":Landroid/view/Menu;
    :cond_b
    move v3, v6

    .line 1066
    goto :goto_4

    .line 1074
    .end local v0    # "defaultReplyAll":Z
    .end local v2    # "m":Landroid/view/Menu;
    :cond_c
    const v7, 0x7f0c01a1

    if-eq p2, v7, :cond_d

    const v7, 0x7f0c01a7

    if-ne p2, v7, :cond_e

    .line 1076
    :cond_d
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->toggleMessageDetails(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1077
    :cond_e
    const v7, 0x7f0c01b3

    if-ne p2, v7, :cond_f

    .line 1078
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->toggleExpanded()V

    goto/16 :goto_1

    .line 1079
    :cond_f
    const v7, 0x7f0c01bb

    if-ne p2, v7, :cond_10

    .line 1080
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->handleShowImagePromptClick(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1082
    :cond_10
    sget-object v7, Lcom/kingsoft/mail/browse/MessageHeaderView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "unrecognized header tap: %d"

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1083
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public onDetachedFromParent()V
    .locals 0

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->unbind()V

    .line 351
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 277
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 278
    const v1, 0x7f0c01b3

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mUpperHeaderView:Landroid/view/ViewGroup;

    .line 280
    const v1, 0x7f0c01c9

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSenderNameView:Landroid/widget/TextView;

    .line 281
    const v1, 0x7f0c01ca

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSenderEmailView:Landroid/widget/TextView;

    .line 282
    const v1, 0x7f0c01cb

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mDateView:Landroid/widget/TextView;

    .line 283
    const v1, 0x7f0c01cc

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSnippetView:Landroid/widget/TextView;

    .line 285
    const v1, 0x7f0c00b6

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPhotoView:Landroid/widget/QuickContactBadge;

    .line 292
    const v1, 0x7f0c01c6

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mTitleContainerView:Landroid/view/ViewGroup;

    .line 294
    const v1, 0x7f0c01c1

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mDraftIcon:Landroid/view/View;

    .line 296
    const v1, 0x7f0c01c7

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mUpperDateView:Landroid/widget/TextView;

    .line 297
    const v1, 0x7f0c01c8

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mAttachmentIcon:Landroid/view/View;

    .line 298
    const v1, 0x7f0c01b4

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExtraContentView:Landroid/view/ViewGroup;

    .line 301
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 302
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0d00ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mTitleContainerCollapsedMarginEnd:I

    .line 305
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setExpanded(Z)V

    .line 307
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->registerMessageClickTargets([I)V

    .line 310
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mUpperHeaderView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mEmailCopyMenu:Lcom/kingsoft/mail/browse/EmailCopyContextMenu;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 311
    return-void

    .line 307
    :array_0
    .array-data 4
        0x7f0c01c3
        0x7f0c01c4
        0x7f0c01c5
        0x7f0c017e
        0x7f0c01c2
        0x7f0c019b
        0x7f0c01b3
    .end array-data
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1793
    new-instance v0, Lcom/kingsoft/mail/perf/Timer;

    invoke-direct {v0}, Lcom/kingsoft/mail/perf/Timer;-><init>()V

    .line 1794
    .local v0, "perf":Lcom/kingsoft/mail/perf/Timer;
    const-string/jumbo v1, "message header layout"

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/perf/Timer;->start(Ljava/lang/String;)V

    .line 1795
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1796
    const-string/jumbo v1, "message header layout"

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/perf/Timer;->pause(Ljava/lang/String;)V

    .line 1797
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1801
    new-instance v0, Lcom/kingsoft/mail/perf/Timer;

    invoke-direct {v0}, Lcom/kingsoft/mail/perf/Timer;-><init>()V

    .line 1806
    .local v0, "t":Lcom/kingsoft/mail/perf/Timer;
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1807
    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPreMeasuring:Z

    if-nez v1, :cond_0

    .line 1808
    const-string/jumbo v1, "message header measure"

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/perf/Timer;->pause(Ljava/lang/String;)V

    .line 1810
    :cond_0
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1016
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/browse/MessageHeaderView;->onClick(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public rebind(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;)V
    .locals 2
    .param p1, "headerItem"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->isActivated()Z

    move-result v0

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->isExpanded()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->render(Z)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->render(Z)V

    .line 405
    return-void
.end method

.method public setCallbacks(Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCallbacks:Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    .line 332
    return-void
.end method

.method public setContactInfoSource(Lcom/kingsoft/mail/ContactInfoSource;)V
    .locals 0
    .param p1, "contactInfoSource"    # Lcom/kingsoft/mail/ContactInfoSource;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mContactInfoSource:Lcom/kingsoft/mail/ContactInfoSource;

    .line 328
    return-void
.end method

.method public setExpandMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 272
    iput p1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandMode:I

    .line 273
    return-void
.end method

.method public setExpandable(Z)V
    .locals 0
    .param p1, "expandable"    # Z

    .prologue
    .line 1099
    iput-boolean p1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandable:Z

    .line 1100
    return-void
.end method

.method public setMessageDetailsVisibility(I)V
    .locals 2
    .param p1, "vis"    # I

    .prologue
    .line 1232
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 1233
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->hideCollapsedDetails()V

    .line 1234
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->hideExpandedDetails()V

    .line 1235
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->hideSpamWarning()V

    .line 1236
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->hideShowImagePrompt()V

    .line 1237
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mUpperHeaderView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1257
    :goto_0
    return-void

    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    iget-boolean v0, v0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->detailsExpanded:Z

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setMessageDetailsExpanded(Z)V

    .line 1245
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mShowImagePrompt:Z

    if-eqz v0, :cond_1

    .line 1250
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->showImagePromptOnce()V

    .line 1255
    :goto_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mUpperHeaderView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mEmailCopyMenu:Lcom/kingsoft/mail/browse/EmailCopyContextMenu;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0

    .line 1253
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->hideShowImagePrompt()V

    goto :goto_1
.end method

.method public setSnappy(Z)V
    .locals 0
    .param p1, "snappy"    # Z

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mIsSnappy:Z

    .line 345
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->hideMessageDetails()V

    .line 346
    return-void
.end method

.method public setVeiledMatcher(Lcom/kingsoft/mail/utils/VeiledAddressMatcher;)V
    .locals 0
    .param p1, "matcher"    # Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mVeiledMatcher:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    .line 336
    return-void
.end method

.method public setViewOnlyMode(Z)V
    .locals 0
    .param p1, "isViewOnlyMode"    # Z

    .prologue
    .line 1095
    iput-boolean p1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mIsViewOnlyMode:Z

    .line 1096
    return-void
.end method

.method public showImagePromptOnce()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1283
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mImagePromptView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04006e

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mImagePromptView:Landroid/widget/TextView;

    .line 1286
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExtraContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mImagePromptView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1287
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mImagePromptView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mImagePromptView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1290
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mImagePromptView:Landroid/widget/TextView;

    const v1, 0x7f100381

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1291
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mImagePromptView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1292
    return-void
.end method

.method public toggleExpanded()V
    .locals 6

    .prologue
    .line 1103
    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mExpandable:Z

    if-nez v2, :cond_1

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v2}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setExpanded(Z)V

    .line 1109
    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mIsSnappy:Z

    if-nez v2, :cond_2

    .line 1110
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSenderNameView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1111
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSenderEmailView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getHeaderSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mDateView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getTimestampLong()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSnippetView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mSnippet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    :cond_2
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->updateChildVisibility()V

    .line 1118
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->updateBorderExpandedState()Lcom/kingsoft/mail/browse/MessageHeaderView$BorderHeights;

    move-result-object v0

    .line 1123
    .local v0, "borderHeights":Lcom/kingsoft/mail/browse/MessageHeaderView$BorderHeights;
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->measureHeight()I

    move-result v1

    .line 1124
    .local v1, "h":I
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-virtual {v2, v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->setHeight(I)Z

    .line 1125
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCallbacks:Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    if-eqz v2, :cond_0

    .line 1126
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mCallbacks:Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    iget v4, v0, Lcom/kingsoft/mail/browse/MessageHeaderView$BorderHeights;->topHeight:I

    iget v5, v0, Lcom/kingsoft/mail/browse/MessageHeaderView$BorderHeights;->bottomHeight:I

    invoke-interface {v2, v3, v1, v4, v5}, Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;->setMessageExpanded(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;III)V

    goto :goto_0

    .line 1106
    .end local v0    # "borderHeights":Lcom/kingsoft/mail/browse/MessageHeaderView$BorderHeights;
    .end local v1    # "h":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    .line 361
    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    .line 363
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mObservingContactInfo:Z

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mContactInfoSource:Lcom/kingsoft/mail/ContactInfoSource;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mContactInfoObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/ContactInfoSource;->unregisterObserver(Landroid/database/DataSetObserver;)V

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView;->mObservingContactInfo:Z

    .line 367
    :cond_0
    return-void
.end method
