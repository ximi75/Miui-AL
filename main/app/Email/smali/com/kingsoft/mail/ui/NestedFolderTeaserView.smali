.class public Lcom/kingsoft/mail/ui/NestedFolderTeaserView;
.super Landroid/widget/LinearLayout;
.source "NestedFolderTeaserView.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/ConversationSpecialItemView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    }
.end annotation


# static fields
.field private static final LOADER_FOLDER_LIST:I = 0x18a88

.field private static final LOG_TAG:Ljava/lang/String; = "NestedFolderTeaserView"

.field private static final MAX_SENDERS:Ljava/lang/String; = "20"

.field private static sCollapsedFolderThreshold:I


# instance fields
.field private mAccount:Lcom/kingsoft/mail/providers/Account;

.field private mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

.field private mAnimatedHeight:I

.field private mCollapsed:Z

.field private final mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mFolderItemUpdateDelayMs:I

.field private final mFolderListLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFolderListUri:Landroid/net/Uri;

.field private final mFolderLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mListCollapsible:Z

.field private mListUpdated:Z

.field private mListener:Lcom/kingsoft/mail/ui/FolderSelector;

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mNestedFolderContainer:Landroid/view/ViewGroup;

.field private mShouldDisplayInList:Z

.field private mShowMoreFoldersCountTextView:Landroid/widget/TextView;

.field private mShowMoreFoldersRow:Landroid/view/View;

.field private mShowMoreFoldersTextView:Landroid/widget/TextView;

.field private final mShowMoreOnClickListener:Landroid/view/View$OnClickListener;

.field private final mTabletDevice:Z

.field private mTeaserRightEdge:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, -0x1

    sput v0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->sCollapsedFolderThreshold:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 179
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 184
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShouldDisplayInList:Z

    .line 75
    iput-object v2, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mLoaderManager:Landroid/app/LoaderManager;

    .line 76
    iput-object v2, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .line 78
    new-instance v1, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v1}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;

    .line 83
    const/4 v1, -0x1

    iput v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mAnimatedHeight:I

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mCollapsed:Z

    .line 309
    new-instance v1, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$2;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$2;-><init>(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShowMoreOnClickListener:Landroid/view/View$OnClickListener;

    .line 463
    new-instance v1, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;-><init>(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderListLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 589
    new-instance v1, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$4;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$4;-><init>(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 188
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->sCollapsedFolderThreshold:I

    if-gez v1, :cond_0

    .line 189
    const v1, 0x7f0e0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->sCollapsedFolderThreshold:I

    .line 193
    :cond_0
    const v1, 0x7f0e0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderItemUpdateDelayMs:I

    .line 196
    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mTabletDevice:Z

    .line 197
    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mListCollapsible:Z

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Lcom/kingsoft/mail/ui/FolderSelector;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mListener:Lcom/kingsoft/mail/ui/FolderSelector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mCollapsed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$102(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mCollapsed:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderListUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    .prologue
    .line 66
    iget v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderItemUpdateDelayMs:I

    return v0
.end method

.method static synthetic access$1300(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 66
    invoke-static {p0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->getFolderId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mListUpdated:Z

    return v0
.end method

.method static synthetic access$202(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mListUpdated:Z

    return p1
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Lcom/kingsoft/mail/ui/AnimatedAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView;
    .param p1, "x1"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->updateViews(Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;Ljava/lang/CharSequence;)Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->createFolderHolder(Ljava/lang/CharSequence;)Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView;
    .param p1, "x1"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->populateUnreadSenders(Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 66
    invoke-static {p0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->getLoaderId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Landroid/app/LoaderManager;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method private attachOnClickListener(Landroid/view/View;Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "holder"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;

    .prologue
    .line 236
    new-instance v0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$1;

    invoke-direct {v0, p0, p2}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$1;-><init>(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    return-void
.end method

.method private createFolderHolder(Ljava/lang/CharSequence;)Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    .locals 7
    .param p1, "folderName"    # Ljava/lang/CharSequence;

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040087

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 225
    .local v2, "itemView":Landroid/view/View;
    const v4, 0x7f0c01eb

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const v4, 0x7f0c01ec

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 227
    .local v3, "sendersTextView":Landroid/widget/TextView;
    const v4, 0x7f0c01ea

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 228
    .local v0, "countTextView":Landroid/widget/TextView;
    new-instance v1, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;

    invoke-direct {v1, v2, v3, v0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 230
    .local v1, "holder":Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    invoke-direct {p0, v2, v1}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->attachOnClickListener(Landroid/view/View;Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;)V

    .line 232
    return-object v1
.end method

.method private static getFolderId(I)I
    .locals 1
    .param p0, "loaderId"    # I

    .prologue
    .line 460
    const v0, 0x18a88

    sub-int v0, p0, v0

    return v0
.end method

.method private static getLoaderId(I)I
    .locals 1
    .param p0, "folderId"    # I

    .prologue
    .line 456
    const v0, 0x18a88

    add-int/2addr v0, p0

    return v0
.end method

.method private populateUnreadSenders(Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;Ljava/lang/String;)V
    .locals 12
    .param p1, "folderHolder"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    .param p2, "unreadSenders"    # Ljava/lang/String;

    .prologue
    .line 556
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 557
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->setUnreadSenders(Ljava/util/List;)V

    .line 587
    :goto_0
    return-void

    .line 561
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 563
    .local v1, "emailtoNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/kingsoft/mail/providers/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/mail/providers/Address;

    move-result-object v7

    .line 565
    .local v7, "senderAddresses":[Lcom/kingsoft/mail/providers/Address;
    move-object v0, v7

    .local v0, "arr$":[Lcom/kingsoft/mail/providers/Address;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 566
    .local v6, "senderAddress":Lcom/kingsoft/mail/providers/Address;
    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/Address;->getName()Ljava/lang/String;

    move-result-object v5

    .line 567
    .local v5, "sender":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 569
    .local v8, "senderEmail":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 570
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 571
    .local v2, "existingSender":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 573
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v10, v11, :cond_1

    .line 575
    move-object v5, v2

    .line 578
    :cond_1
    invoke-interface {v1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    .end local v2    # "existingSender":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v10

    const/16 v11, 0x14

    if-lt v10, v11, :cond_4

    .line 585
    .end local v5    # "sender":Ljava/lang/String;
    .end local v6    # "senderAddress":Lcom/kingsoft/mail/providers/Address;
    .end local v8    # "senderEmail":Ljava/lang/String;
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-static {v10}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v9

    .line 586
    .local v9, "senders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v9}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->setUnreadSenders(Ljava/util/List;)V

    goto :goto_0

    .line 565
    .end local v9    # "senders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "sender":Ljava/lang/String;
    .restart local v6    # "senderAddress":Lcom/kingsoft/mail/providers/Address;
    .restart local v8    # "senderEmail":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private updateShowMoreView()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 319
    iget-object v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v6}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    .line 320
    .local v4, "total":I
    iget-object v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mNestedFolderContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 321
    .local v0, "displayed":I
    sub-int v3, v4, v0

    .line 323
    .local v3, "notShown":I
    if-lez v3, :cond_3

    .line 325
    iget-object v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersRow:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersRow:Landroid/view/View;

    const v7, 0x7f020149

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 327
    iget-object v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f100382

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersCountTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    const/4 v5, 0x0

    .line 333
    .local v5, "unreadCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v6}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 334
    iget-object v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v6, v2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;

    .line 336
    .local v1, "holder":Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->getItemView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_0

    .line 340
    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v6

    iget v6, v6, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    add-int/2addr v5, v6

    .line 333
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    .end local v1    # "holder":Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    :cond_1
    if-lez v5, :cond_2

    .line 347
    iget-object v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersCountTextView:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    .end local v2    # "i":I
    .end local v5    # "unreadCount":I
    :goto_1
    return-void

    .line 351
    .restart local v2    # "i":I
    .restart local v5    # "unreadCount":I
    :cond_2
    iget-object v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersCountTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 355
    .end local v2    # "i":I
    .end local v5    # "unreadCount":I
    :cond_3
    sget v6, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->sCollapsedFolderThreshold:I

    if-le v0, v6, :cond_4

    .line 357
    iget-object v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersRow:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersRow:Landroid/view/View;

    const v7, 0x7f020148

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 359
    iget-object v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersTextView:Landroid/widget/TextView;

    const v7, 0x7f1001f9

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 360
    iget-object v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersCountTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 363
    :cond_4
    iget-object v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersRow:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateViews(Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;)V
    .locals 5
    .param p1, "folderHolder"    # Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;

    .prologue
    .line 368
    invoke-virtual {p1}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    .line 370
    .local v0, "folder":Lcom/kingsoft/mail/providers/Folder;
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v0, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    invoke-static {v3, v4}, Lcom/kingsoft/mail/utils/Utils;->getUnreadCountString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "unreadText":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->getCountTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v2, ""

    .end local v2    # "unreadText":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    const-string/jumbo v3, ", "

    invoke-virtual {p1}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->getUnreadSenders()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "sendersText":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->getSendersTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    invoke-virtual {p1}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->getItemView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0c01eb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    return-void
.end method


# virtual methods
.method public acceptsUserTaps()Z
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public bind(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/ui/FolderSelector;)V
    .locals 0
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "listener"    # Lcom/kingsoft/mail/ui/FolderSelector;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 215
    iput-object p2, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mListener:Lcom/kingsoft/mail/ui/FolderSelector;

    .line 216
    return-void
.end method

.method public bindFragment(Landroid/app/LoaderManager;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "loaderManager"    # Landroid/app/LoaderManager;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mLoaderManager:Landroid/app/LoaderManager;

    if-eqz v0, :cond_0

    .line 397
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This view has already been bound to a LoaderManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mLoaderManager:Landroid/app/LoaderManager;

    .line 401
    return-void
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public getShouldDisplayInList()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShouldDisplayInList:Z

    return v0
.end method

.method public onCabModeEntered()V
    .locals 0

    .prologue
    .line 416
    return-void
.end method

.method public onCabModeExited()V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method public onConversationListVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 426
    return-void
.end method

.method public onConversationSelected()V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 202
    const v0, 0x7f0c01fa

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mNestedFolderContainer:Landroid/view/ViewGroup;

    .line 203
    const v0, 0x7f0c0236

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mTeaserRightEdge:Landroid/view/View;

    .line 205
    const v0, 0x7f0c01fb

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersRow:Landroid/view/View;

    .line 206
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersRow:Landroid/view/View;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShowMoreOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v0, 0x7f0c01fc

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersTextView:Landroid/widget/TextView;

    .line 209
    const v0, 0x7f0c01fd

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersCountTextView:Landroid/widget/TextView;

    .line 211
    return-void
.end method

.method public onGetView()V
    .locals 8

    .prologue
    .line 276
    iget-boolean v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mListUpdated:Z

    if-eqz v6, :cond_2

    .line 278
    iget-object v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mNestedFolderContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 282
    new-instance v3, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    sget-object v6, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v3, v6}, Lcom/google/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    .line 285
    .local v3, "folderHoldersBuilder":Lcom/google/common/collect/ImmutableSortedSet$Builder;, "Lcom/google/common/collect/ImmutableSortedSet$Builder<Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v6}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 286
    iget-object v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v6, v4}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    .line 285
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->build()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v2

    .line 292
    .local v2, "folderHolders":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;>;"
    const/4 v0, 0x0

    .line 293
    .local v0, "added":I
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;

    .line 295
    .local v1, "folderHolder":Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    sget v6, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->sCollapsedFolderThreshold:I

    if-lt v0, v6, :cond_3

    iget-boolean v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mCollapsed:Z

    if-eqz v6, :cond_3

    .line 303
    .end local v1    # "folderHolder":Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->updateShowMoreView()V

    .line 305
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mListUpdated:Z

    .line 307
    .end local v0    # "added":I
    .end local v2    # "folderHolders":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;>;"
    .end local v3    # "folderHoldersBuilder":Lcom/google/common/collect/ImmutableSortedSet$Builder;, "Lcom/google/common/collect/ImmutableSortedSet$Builder<Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;>;"
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void

    .line 299
    .restart local v0    # "added":I
    .restart local v1    # "folderHolder":Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    .restart local v2    # "folderHolders":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;>;"
    .restart local v3    # "folderHoldersBuilder":Lcom/google/common/collect/ImmutableSortedSet$Builder;, "Lcom/google/common/collect/ImmutableSortedSet$Builder<Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;>;"
    .restart local v4    # "i":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v6, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mNestedFolderContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->getItemView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 300
    add-int/lit8 v0, v0, 0x1

    .line 301
    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 686
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 688
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mCollapsed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersRow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersRow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 691
    const/4 v0, 0x1

    .line 694
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mTabletDevice:Z

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mListCollapsible:Z

    iget-object v2, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getViewMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/Utils;->getDisplayListRightEdgeEffect(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mTeaserRightEdge:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 448
    :goto_0
    iget v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mAnimatedHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 449
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 453
    :goto_1
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mTeaserRightEdge:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 451
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mAnimatedHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onUpdate(Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 5
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "cursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    const v4, 0x18a88

    .line 246
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShouldDisplayInList:Z

    .line 248
    if-nez p1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Folder;->childFoldersListUri:Landroid/net/Uri;

    .line 253
    .local v0, "folderListUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderListUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderListUri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/kingsoft/mail/providers/Folder;->childFoldersListUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 264
    :cond_2
    iput-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderListUri:Landroid/net/Uri;

    .line 267
    iget-object v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-virtual {v1, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 268
    iget-object v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderListLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 271
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mShouldDisplayInList:Z

    goto :goto_0
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 431
    return-void
.end method

.method public setAdapter(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .line 392
    return-void
.end method
