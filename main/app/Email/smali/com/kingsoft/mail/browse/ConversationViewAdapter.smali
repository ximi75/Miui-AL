.class public Lcom/kingsoft/mail/browse/ConversationViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConversationViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/ConversationViewAdapter$1;,
        Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;,
        Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;,
        Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageFooterItem;,
        Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;,
        Lcom/kingsoft/mail/browse/ConversationViewAdapter$ConversationHeaderItem;
    }
.end annotation


# static fields
.field public static final VIEW_TYPE_AD_BORDER:I = 0x7

.field public static final VIEW_TYPE_AD_HEADER:I = 0x5

.field public static final VIEW_TYPE_AD_SENDER_HEADER:I = 0x6

.field public static final VIEW_TYPE_BORDER:I = 0x4

.field public static final VIEW_TYPE_CONVERSATION_HEADER:I = 0x0

.field public static final VIEW_TYPE_COUNT:I = 0x8

.field public static final VIEW_TYPE_MESSAGE_FOOTER:I = 0x2

.field public static final VIEW_TYPE_MESSAGE_HEADER:I = 0x1

.field public static final VIEW_TYPE_SUPER_COLLAPSED_BLOCK:I = 0x3


# instance fields
.field private final mAccountController:Lcom/kingsoft/mail/browse/ConversationAccountController;

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

.field private final mContactInfoSource:Lcom/kingsoft/mail/ContactInfoSource;

.field private mContext:Landroid/content/Context;

.field private mConversationCallbacks:Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;

.field private final mDateBuilder:Lcom/kingsoft/mail/FormattedDateBuilder;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationOverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoaderManager:Landroid/app/LoaderManager;

.field private final mMatcher:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

.field private final mMessageCallbacks:Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

.field private mSuperCollapsedListener:Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/browse/ConversationAccountController;Landroid/app/LoaderManager;Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;Lcom/kingsoft/mail/ContactInfoSource;Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;Ljava/util/Map;Lcom/kingsoft/mail/FormattedDateBuilder;)V
    .locals 1
    .param p1, "controllableActivity"    # Lcom/kingsoft/mail/ui/ControllableActivity;
    .param p2, "accountController"    # Lcom/kingsoft/mail/browse/ConversationAccountController;
    .param p3, "loaderManager"    # Landroid/app/LoaderManager;
    .param p4, "messageCallbacks"    # Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;
    .param p5, "contactInfoSource"    # Lcom/kingsoft/mail/ContactInfoSource;
    .param p6, "convCallbacks"    # Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;
    .param p7, "scbListener"    # Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;
    .param p9, "dateBuilder"    # Lcom/kingsoft/mail/FormattedDateBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/ui/ControllableActivity;",
            "Lcom/kingsoft/mail/browse/ConversationAccountController;",
            "Landroid/app/LoaderManager;",
            "Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;",
            "Lcom/kingsoft/mail/ContactInfoSource;",
            "Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;",
            "Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/providers/Address;",
            ">;",
            "Lcom/kingsoft/mail/FormattedDateBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 474
    .local p8, "addressCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/mail/providers/Address;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 475
    invoke-interface {p1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mContext:Landroid/content/Context;

    .line 476
    iput-object p9, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mDateBuilder:Lcom/kingsoft/mail/FormattedDateBuilder;

    .line 477
    iput-object p2, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mAccountController:Lcom/kingsoft/mail/browse/ConversationAccountController;

    .line 478
    iput-object p3, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mLoaderManager:Landroid/app/LoaderManager;

    .line 479
    invoke-interface {p1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 480
    iput-object p4, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mMessageCallbacks:Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    .line 481
    iput-object p5, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mContactInfoSource:Lcom/kingsoft/mail/ContactInfoSource;

    .line 482
    iput-object p6, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mConversationCallbacks:Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;

    .line 483
    iput-object p7, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mSuperCollapsedListener:Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;

    .line 484
    iput-object p8, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mAddressCache:Ljava/util/Map;

    .line 485
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 487
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    .line 488
    invoke-interface {p1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getAccountController()Lcom/kingsoft/mail/ui/AccountController;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/AccountController;->getVeiledAddressMatcher()Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mMatcher:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    .line 489
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mConversationCallbacks:Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)Lcom/kingsoft/mail/browse/ConversationAccountController;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mAccountController:Lcom/kingsoft/mail/browse/ConversationAccountController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mAddressCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mMessageCallbacks:Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)Lcom/kingsoft/mail/ContactInfoSource;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mContactInfoSource:Lcom/kingsoft/mail/ContactInfoSource;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)Lcom/kingsoft/mail/utils/VeiledAddressMatcher;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mMatcher:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)Landroid/app/LoaderManager;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)Landroid/app/FragmentManager;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mSuperCollapsedListener:Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;

    return-object v0
.end method

.method public static newMessageHeaderItem(Lcom/kingsoft/mail/browse/ConversationViewAdapter;Lcom/kingsoft/mail/FormattedDateBuilder;Lcom/kingsoft/mail/browse/ConversationMessage;ZZ)Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    .locals 6
    .param p0, "adapter"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter;
    .param p1, "dateBuilder"    # Lcom/kingsoft/mail/FormattedDateBuilder;
    .param p2, "message"    # Lcom/kingsoft/mail/browse/ConversationMessage;
    .param p3, "expanded"    # Z
    .param p4, "showImages"    # Z

    .prologue
    .line 570
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;-><init>(Lcom/kingsoft/mail/browse/ConversationViewAdapter;Lcom/kingsoft/mail/FormattedDateBuilder;Lcom/kingsoft/mail/browse/ConversationMessage;ZZ)V

    return-object v0
.end method

.method public static newMessageHeaderItem2(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/mail/FormattedDateBuilder;ZZ)Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    .locals 1
    .param p0, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p1, "dateBuilder"    # Lcom/kingsoft/mail/FormattedDateBuilder;
    .param p2, "expanded"    # Z
    .param p3, "showImages"    # Z

    .prologue
    .line 576
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;-><init>(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/mail/FormattedDateBuilder;ZZ)V

    return-object v0
.end method


# virtual methods
.method public addBorder(ZZZZ)I
    .locals 6
    .param p1, "contiguous"    # Z
    .param p2, "expanded"    # Z
    .param p3, "firstBorder"    # Z
    .param p4, "lastBorder"    # Z

    .prologue
    .line 589
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;-><init>(Lcom/kingsoft/mail/browse/ConversationViewAdapter;ZZZZ)V

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->addItem(Lcom/kingsoft/mail/browse/ConversationOverlayItem;)I

    move-result v0

    return v0
.end method

.method public addConversationHeader(Lcom/kingsoft/mail/providers/Conversation;)I
    .locals 2
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 556
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$ConversationHeaderItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$ConversationHeaderItem;-><init>(Lcom/kingsoft/mail/browse/ConversationViewAdapter;Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/browse/ConversationViewAdapter$1;)V

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->addItem(Lcom/kingsoft/mail/browse/ConversationOverlayItem;)I

    move-result v0

    return v0
.end method

.method public addItem(Lcom/kingsoft/mail/browse/ConversationOverlayItem;)I
    .locals 2
    .param p1, "item"    # Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    .prologue
    .line 544
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 545
    .local v0, "pos":I
    invoke-virtual {p1, v0}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->setPosition(I)V

    .line 546
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    return v0
.end method

.method public addMessageFooter(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;)I
    .locals 2
    .param p1, "headerItem"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    .prologue
    .line 564
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageFooterItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageFooterItem;-><init>(Lcom/kingsoft/mail/browse/ConversationViewAdapter;Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;Lcom/kingsoft/mail/browse/ConversationViewAdapter$1;)V

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->addItem(Lcom/kingsoft/mail/browse/ConversationOverlayItem;)I

    move-result v0

    return v0
.end method

.method public addMessageHeader(Lcom/kingsoft/mail/browse/ConversationMessage;ZZ)I
    .locals 6
    .param p1, "msg"    # Lcom/kingsoft/mail/browse/ConversationMessage;
    .param p2, "expanded"    # Z
    .param p3, "showImages"    # Z

    .prologue
    .line 560
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mDateBuilder:Lcom/kingsoft/mail/FormattedDateBuilder;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;-><init>(Lcom/kingsoft/mail/browse/ConversationViewAdapter;Lcom/kingsoft/mail/FormattedDateBuilder;Lcom/kingsoft/mail/browse/ConversationMessage;ZZ)V

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->addItem(Lcom/kingsoft/mail/browse/ConversationOverlayItem;)I

    move-result v0

    return v0
.end method

.method public addSuperCollapsedBlock(II)I
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 584
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;-><init>(Lcom/kingsoft/mail/browse/ConversationViewAdapter;IILcom/kingsoft/mail/browse/ConversationViewAdapter$1;)V

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->addItem(Lcom/kingsoft/mail/browse/ConversationOverlayItem;)I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 552
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->notifyDataSetChanged()V

    .line 553
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDateBuilder()Lcom/kingsoft/mail/FormattedDateBuilder;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mDateBuilder:Lcom/kingsoft/mail/FormattedDateBuilder;

    return-object v0
.end method

.method public getItem(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 508
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getItem(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 513
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 498
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->getType()I

    move-result v0

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getItem(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getView(Lcom/kingsoft/mail/browse/ConversationOverlayItem;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(Lcom/kingsoft/mail/browse/ConversationOverlayItem;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3
    .param p1, "item"    # Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "measureOnly"    # Z

    .prologue
    .line 525
    if-nez p2, :cond_0

    .line 526
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1, v1, v2, p3}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->createView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 530
    .local v0, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {p1, v0, p4}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->bindView(Landroid/view/View;Z)V

    .line 532
    return-object v0

    .line 528
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 503
    const/16 v0, 0x8

    return v0
.end method

.method public newBorderItem(ZZ)Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;
    .locals 6
    .param p1, "contiguous"    # Z
    .param p2, "expanded"    # Z

    .prologue
    const/4 v4, 0x0

    .line 593
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;-><init>(Lcom/kingsoft/mail/browse/ConversationViewAdapter;ZZZZ)V

    return-object v0
.end method

.method public newMessageFooterItem(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;)Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageFooterItem;
    .locals 2
    .param p1, "headerItem"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    .prologue
    .line 580
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageFooterItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageFooterItem;-><init>(Lcom/kingsoft/mail/browse/ConversationViewAdapter;Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;Lcom/kingsoft/mail/browse/ConversationViewAdapter$1;)V

    return-object v0
.end method

.method public replaceSuperCollapsedBlock(Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;Ljava/util/Collection;)V
    .locals 4
    .param p1, "blockToRemove"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationOverlayItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 599
    .local p2, "replacements":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/browse/ConversationOverlayItem;>;"
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 600
    .local v1, "pos":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 611
    :cond_0
    return-void

    .line 604
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 605
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, v1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 608
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 609
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    invoke-virtual {v3, v0}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->setPosition(I)V

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateItemsForMessage(Lcom/kingsoft/mail/browse/ConversationMessage;Ljava/util/List;)V
    .locals 4
    .param p1, "message"    # Lcom/kingsoft/mail/browse/ConversationMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/browse/ConversationMessage;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 615
    .local p2, "affectedPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 616
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    .line 617
    .local v1, "item":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->belongsToMessage(Lcom/kingsoft/mail/browse/ConversationMessage;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 618
    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->setMessage(Lcom/kingsoft/mail/browse/ConversationMessage;)V

    .line 619
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 622
    .end local v1    # "item":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    :cond_1
    return-void
.end method
