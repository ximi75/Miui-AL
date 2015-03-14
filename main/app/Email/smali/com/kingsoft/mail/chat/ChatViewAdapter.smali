.class public Lcom/kingsoft/mail/chat/ChatViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChatViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;,
        Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;,
        Lcom/kingsoft/mail/chat/ChatViewAdapter$ContentClickListener;
    }
.end annotation


# static fields
.field private static final ITEMCOUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "ChatMsgViewAdapter"

.field private static nameInfoMaxWidth:I


# instance fields
.field private inlineMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private lastItemMarginBottom:I

.field private mAccount:Lcom/kingsoft/mail/providers/Account;

.field private mAttachmentListExpandable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomMarginId:J

.field private mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

.field private mContext:Landroid/content/Context;

.field public mController:Lcom/kingsoft/mail/chat/ChatViewUtils$ChatFragmentOperation;

.field private mEnableLongClick:Z

.field private mFocusIndex:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMessagesLoaded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkType:I

.field private mScrapViews:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectIemOnRealRt:Landroid/graphics/Rect;

.field private mSelectItemOnGloableVisibleRt:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingsoft/mail/chat/ChatCache;Lcom/kingsoft/mail/chat/ChatViewUtils$ChatFragmentOperation;Lcom/kingsoft/mail/providers/Account;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chatCache"    # Lcom/kingsoft/mail/chat/ChatCache;
    .param p3, "callback"    # Lcom/kingsoft/mail/chat/ChatViewUtils$ChatFragmentOperation;
    .param p4, "curAccount"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mAttachmentListExpandable:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mMessagesLoaded:Ljava/util/Set;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mFocusIndex:I

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mSelectItemOnGloableVisibleRt:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mSelectIemOnRealRt:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mScrapViews:Ljava/util/ArrayDeque;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mEnableLongClick:Z

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->inlineMap:Ljava/util/Map;

    .line 100
    iput-object p2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    .line 101
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;

    .line 102
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 103
    iput-object p3, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mController:Lcom/kingsoft/mail/chat/ChatViewUtils$ChatFragmentOperation;

    .line 104
    iput-object p4, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 105
    invoke-static {p1}, Lcom/kingsoft/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mNetworkType:I

    .line 106
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->lastItemMarginBottom:I

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/chat/ChatViewAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewAdapter;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mEnableLongClick:Z

    return v0
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/chat/ChatViewAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewAdapter;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/chat/ChatViewAdapter;Ljava/util/List;Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewAdapter;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/kingsoft/mail/providers/Message;
    .param p3, "x3"    # Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;
    .param p4, "x4"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->renderAttachments(Ljava/util/List;Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/chat/ChatViewAdapter;)Lcom/kingsoft/mail/chat/ChatCache;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewAdapter;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->nameInfoMaxWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/chat/ChatViewAdapter;)Lcom/kingsoft/mail/providers/Account;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewAdapter;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method

.method private calFromMaxWidth(Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;I)I
    .locals 8
    .param p1, "namesInfo"    # Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;
    .param p2, "viewHolder"    # Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;
    .param p3, "parentWidth"    # I

    .prologue
    .line 677
    if-nez p1, :cond_0

    .line 678
    new-instance p1, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;

    .end local p1    # "namesInfo":Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;
    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v6}, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;-><init>(Landroid/content/Context;)V

    .line 680
    .restart local p1    # "namesInfo":Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;
    :cond_0
    iget v6, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mListPadding:I

    mul-int/lit8 v3, v6, 0x2

    .line 681
    .local v3, "listpadding":I
    iget v6, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mItemMargin:I

    mul-int/lit8 v2, v6, 0x2

    .line 682
    .local v2, "itemMargin":I
    iget v6, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mUserHeadSpaceTakerWidth:I

    iget v7, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mUserHeadMarginLeft:I

    add-int/2addr v6, v7

    iget v7, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mUserHeadMarginRight:I

    add-int v1, v6, v7

    .line 684
    .local v1, "headWidth":I
    iget v6, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mMsgItemStarMarginLeft:I

    iget v7, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mMsgItemStarMarginRigth:I

    add-int/2addr v6, v7

    iget-object v7, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->ItemStarred:Landroid/widget/ImageView;

    invoke-static {v7}, Lcom/kingsoft/mail/chat/ChatViewUtils;->measureImageViewWidth(Landroid/widget/ImageView;)I

    move-result v7

    add-int v5, v6, v7

    .line 687
    .local v5, "starWidth":I
    iget v6, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mItemExpandRecipientMarginLeft:I

    iget v7, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mItemExpandRecipientMarginRight:I

    add-int/2addr v6, v7

    iget-object v7, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mMsgItemExpandRecipient:Landroid/widget/ImageView;

    invoke-static {v7}, Lcom/kingsoft/mail/chat/ChatViewUtils;->measureImageViewWidth(Landroid/widget/ImageView;)I

    move-result v7

    add-int v0, v6, v7

    .line 689
    .local v0, "expandWidth":I
    sub-int v6, p3, v3

    sub-int/2addr v6, v2

    sub-int/2addr v6, v1

    sub-int/2addr v6, v5

    sub-int v4, v6, v0

    .line 690
    .local v4, "maxWidth":I
    return v4
.end method

.method private destroyAttachment(ILcom/kingsoft/mail/providers/Message;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 6
    .param p1, "oldId"    # I
    .param p2, "uiMessage"    # Lcom/kingsoft/mail/providers/Message;
    .param p3, "visibleAtts"    # Landroid/widget/LinearLayout;
    .param p4, "invisibleAtts"    # Landroid/widget/LinearLayout;

    .prologue
    .line 578
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 579
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 580
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mScrapViews:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 584
    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 585
    .restart local v2    # "v":Landroid/view/View;
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mScrapViews:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 588
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 589
    invoke-virtual {p4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 590
    iget-object v3, p2, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    if-eqz v3, :cond_2

    .line 591
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 592
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 593
    .local v1, "lm":Landroid/app/LoaderManager;
    invoke-virtual {v1, p1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 598
    .end local v1    # "lm":Landroid/app/LoaderManager;
    :cond_2
    :goto_2
    return-void

    .line 595
    :cond_3
    const-string/jumbo v3, "ChatMsgViewAdapter"

    const-string/jumbo v4, "invalid context!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method private fillDataToViewHolder(Lcom/kingsoft/mail/chat/ChatCacheItem;Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;ILandroid/view/ViewGroup;)V
    .locals 11
    .param p1, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;
    .param p2, "viewHolder"    # Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;
    .param p3, "position"    # I
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 230
    iput-object p1, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    .line 231
    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatCache;->namesInfo:Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    invoke-direct {p0, v6, p2, v7}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->calFromMaxWidth(Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;I)I

    move-result v6

    sput v6, Lcom/kingsoft/mail/chat/ChatViewAdapter;->nameInfoMaxWidth:I

    .line 232
    new-instance v5, Lcom/kingsoft/mail/chat/ChatViewUtils$UserInfoClickListener;

    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v7}, Lcom/kingsoft/mail/providers/Account;->getSenderName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p1, v6, v7, p2}, Lcom/kingsoft/mail/chat/ChatViewUtils$UserInfoClickListener;-><init>(Lcom/kingsoft/mail/chat/ChatCacheItem;Landroid/content/Context;Ljava/lang/String;Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;)V

    .line 233
    .local v5, "userInfoClickListener":Lcom/kingsoft/mail/chat/ChatViewUtils$UserInfoClickListener;
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->llCollapseUserInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;

    iget-object v8, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v7, p0, p2, p1, v8}, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;-><init>(Lcom/kingsoft/mail/chat/ChatViewAdapter;Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Lcom/kingsoft/mail/chat/ChatCacheItem;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    sget-boolean v6, Lcom/kingsoft/email/mail/attachment/AttachmentOffOn;->isAttDownloadViaOneKeyEnable:Z

    if-eqz v6, :cond_0

    .line 236
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mDownloadAll:Landroid/widget/Button;

    new-instance v7, Lcom/kingsoft/mail/chat/ChatViewAdapter$1;

    invoke-direct {v7, p0, p2, p1}, Lcom/kingsoft/mail/chat/ChatViewAdapter$1;-><init>(Lcom/kingsoft/mail/chat/ChatViewAdapter;Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Lcom/kingsoft/mail/chat/ChatCacheItem;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    :cond_0
    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v6}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p3, v6, :cond_1

    .line 251
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mListViewItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 252
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->lastItemMarginBottom:I

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 254
    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    iget-object v7, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v7}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Lcom/kingsoft/mail/chat/ChatCache;->getRow(I)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v0

    .line 255
    .local v0, "item":Lcom/kingsoft/mail/chat/ChatCacheItem;
    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v6

    iget-wide v6, v6, Lcom/kingsoft/mail/providers/Message;->id:J

    iput-wide v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mBottomMarginId:J

    .line 259
    .end local v0    # "item":Lcom/kingsoft/mail/chat/ChatCacheItem;
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-wide v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mBottomMarginId:J

    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v8

    iget-wide v8, v8, Lcom/kingsoft/mail/providers/Message;->id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 261
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mListViewItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 262
    .restart local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x0

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 263
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mBottomMarginId:J

    .line 265
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v6

    iget-boolean v6, v6, Lcom/kingsoft/mail/providers/Message;->starred:Z

    if-eqz v6, :cond_9

    .line 266
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->ItemStarred:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    :goto_0
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v6

    iget-boolean v6, v6, Lcom/kingsoft/mail/providers/Message;->read:Z

    if-nez v6, :cond_a

    .line 271
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->ItemRead:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    :goto_1
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->content:Lcom/kingsoft/mail/chat/EllipsizeText;

    new-instance v7, Lcom/kingsoft/mail/chat/ChatViewAdapter$2;

    invoke-direct {v7, p0, p3}, Lcom/kingsoft/mail/chat/ChatViewAdapter$2;-><init>(Lcom/kingsoft/mail/chat/ChatViewAdapter;I)V

    invoke-virtual {v6, v7}, Lcom/kingsoft/mail/chat/EllipsizeText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->llCollapseUserInfo:Landroid/widget/RelativeLayout;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 284
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->content:Lcom/kingsoft/mail/chat/EllipsizeText;

    new-instance v7, Lcom/kingsoft/mail/chat/ChatViewAdapter$ContentClickListener;

    invoke-direct {v7, p0, p3, p2}, Lcom/kingsoft/mail/chat/ChatViewAdapter$ContentClickListener;-><init>(Lcom/kingsoft/mail/chat/ChatViewAdapter;ILcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;)V

    invoke-virtual {v6, v7}, Lcom/kingsoft/mail/chat/EllipsizeText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 285
    iget v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mFocusIndex:I

    if-ne v6, p3, :cond_3

    .line 286
    new-instance v2, Lcom/kingsoft/mail/chat/ChatViewUtils$MoreMenuItemClick;

    invoke-direct {v2, p2, p1}, Lcom/kingsoft/mail/chat/ChatViewUtils$MoreMenuItemClick;-><init>(Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Lcom/kingsoft/mail/chat/ChatCacheItem;)V

    .line 287
    .local v2, "moreMenuItemClick":Lcom/kingsoft/mail/chat/ChatViewUtils$MoreMenuItemClick;
    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mController:Lcom/kingsoft/mail/chat/ChatViewUtils$ChatFragmentOperation;

    invoke-interface {v6, p3, p1, v2}, Lcom/kingsoft/mail/chat/ChatViewUtils$ChatFragmentOperation;->updateMoreOptions(ILcom/kingsoft/mail/chat/ChatCacheItem;Lcom/kingsoft/mail/ui/QuickReplyBottomBar$OnOptionItemClickLisener;)V

    .line 290
    .end local v2    # "moreMenuItemClick":Lcom/kingsoft/mail/chat/ChatViewUtils$MoreMenuItemClick;
    :cond_3
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvSendTime:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v7}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getDateText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-direct {p0, p2, p1, v6}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->setNamesAfterFirstTruncated(Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Lcom/kingsoft/mail/chat/ChatCacheItem;I)V

    .line 293
    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mController:Lcom/kingsoft/mail/chat/ChatViewUtils$ChatFragmentOperation;

    check-cast v6, Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-virtual {v6}, Lcom/kingsoft/mail/chat/ChatViewController;->isScrolling()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 294
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v7}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getCachedOrDefaultIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 299
    :goto_2
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->isFlagLoaded()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 300
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->content:Lcom/kingsoft/mail/chat/EllipsizeText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/kingsoft/mail/chat/EllipsizeText;->setVisibility(I)V

    .line 301
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->dowdloadProgressBar:Landroid/widget/ProgressBar;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 302
    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v6}, Lcom/kingsoft/mail/chat/ChatViewUtils;->setEmailContent(Lcom/kingsoft/mail/chat/ChatCacheItem;Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Landroid/content/Context;)V

    .line 308
    :goto_3
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getItemType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getItemType()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_e

    .line 309
    :cond_4
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mUpDown:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mAttachmentListExpandable:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v7

    iget-wide v7, v7, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 311
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarListOriginInvisible:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mUpDown:Landroid/widget/ImageView;

    const v7, 0x7f0201e3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 314
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mUpDown:Landroid/widget/ImageView;

    const v7, 0x7f0201e3

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 315
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentCount:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1001f7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v10, v10, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarListOriginInvisible:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarListOriginInvisible:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 322
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarListOriginInvisible:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->invalidate()V

    .line 340
    :goto_4
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mDownloadAll:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 341
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarList:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 342
    .local v1, "lastMsgId":Ljava/lang/Integer;
    const/4 v3, -0x1

    .line 343
    .local v3, "oldId":I
    if-eqz v1, :cond_5

    .line 344
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 347
    :cond_5
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v6

    iget-object v6, v6, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    if-eqz v6, :cond_f

    .line 348
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v6

    iget-object v6, v6, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->hashCode()I

    move-result v6

    if-ne v3, v6, :cond_6

    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mMessagesLoaded:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v7

    iget-wide v7, v7, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->isFlagLoaded()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 350
    :cond_6
    const-string/jumbo v6, "ChatMsgViewAdapter"

    const-string/jumbo v7, "Destroy views now!"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 351
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v6

    iget-object v7, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v7, v7, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarList:Landroid/widget/LinearLayout;

    iget-object v8, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v8, v8, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarListOriginInvisible:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->destroyAttachment(ILcom/kingsoft/mail/providers/Message;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 355
    :cond_7
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getAttachments()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v7

    iget-object v8, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    const/4 v9, 0x1

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->renderAttachments(Ljava/util/List;Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;Z)V

    .line 357
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v6

    iget-object v7, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    invoke-direct {p0, v6, v7}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->initAttachment(Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;)V

    .line 362
    :goto_5
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->isFlagLoaded()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mMessagesLoaded:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v7

    iget-wide v7, v7, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 363
    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mMessagesLoaded:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v7

    iget-wide v7, v7, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_8
    return-void

    .line 268
    .end local v1    # "lastMsgId":Ljava/lang/Integer;
    .end local v3    # "oldId":I
    :cond_9
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->ItemStarred:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 273
    :cond_a
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->ItemRead:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 296
    :cond_b
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v7}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 304
    :cond_c
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->content:Lcom/kingsoft/mail/chat/EllipsizeText;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/kingsoft/mail/chat/EllipsizeText;->setVisibility(I)V

    .line 305
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->dowdloadProgressBar:Landroid/widget/ProgressBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_3

    .line 324
    :cond_d
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarListOriginInvisible:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 325
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mUpDown:Landroid/widget/ImageView;

    const v7, 0x7f0201e2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 326
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mUpDown:Landroid/widget/ImageView;

    const v7, 0x7f0201e2

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentCount:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100279

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v10, v10, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarListOriginInvisible:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarListOriginInvisible:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 334
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarListOriginInvisible:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->invalidate()V

    goto/16 :goto_4

    .line 337
    :cond_e
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mUpDown:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 359
    .restart local v1    # "lastMsgId":Ljava/lang/Integer;
    .restart local v3    # "oldId":I
    :cond_f
    const-string/jumbo v6, "ChatMsgViewAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v8

    iget-wide v8, v8, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": find attachments but there is nothing indeed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 360
    iget-object v6, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->postRender(Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;I)V

    goto/16 :goto_5
.end method

.method private initAttachment(Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;)V
    .locals 5
    .param p1, "uiMessage"    # Lcom/kingsoft/mail/providers/Message;
    .param p2, "attHolder"    # Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    .prologue
    const/4 v4, 0x0

    .line 368
    iget-object v1, p1, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 371
    .local v0, "lm":Landroid/app/LoaderManager;
    iget-object v1, p1, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    new-instance v3, Lcom/kingsoft/mail/chat/ChatViewAdapter$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/kingsoft/mail/chat/ChatViewAdapter$3;-><init>(Lcom/kingsoft/mail/chat/ChatViewAdapter;Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 412
    .end local v0    # "lm":Landroid/app/LoaderManager;
    :goto_0
    return-void

    .line 405
    :cond_0
    const-string/jumbo v1, "ChatMsgViewAdapter"

    const-string/jumbo v2, "invalid context!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 409
    :cond_1
    const-string/jumbo v1, "ChatMsgViewAdapter"

    const-string/jumbo v2, "find some attachments in header-fetching phase, but there is nothing indeed."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 410
    invoke-direct {p0, p2, v4}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->postRender(Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;I)V

    goto :goto_0
.end method

.method private initViewHolder(Landroid/view/View;Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;ILcom/kingsoft/mail/chat/ChatCacheItem;)V
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "viewHolder"    # Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;
    .param p3, "position"    # I
    .param p4, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;

    .prologue
    .line 601
    const v0, 0x7f0c0105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mListViewItemLayout:Landroid/widget/LinearLayout;

    .line 602
    const v0, 0x7f0c010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvNames:Landroid/widget/TextView;

    .line 603
    const v0, 0x7f0c0104

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvSendTime:Landroid/widget/TextView;

    .line 604
    const v0, 0x7f0c010b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mMsgItemExpandRecipient:Landroid/widget/ImageView;

    .line 606
    const v0, 0x7f0c0107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->ItemRead:Landroid/widget/ImageView;

    .line 607
    const v0, 0x7f0c010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->ItemStarred:Landroid/widget/ImageView;

    .line 609
    const v0, 0x7f0c0108

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->llCollapseUserInfo:Landroid/widget/RelativeLayout;

    .line 611
    const v0, 0x7f0c010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvDetailsToNames:Landroid/widget/TextView;

    .line 612
    const v0, 0x7f0c010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvDetailsCcNames:Landroid/widget/TextView;

    .line 613
    iget-object v0, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->llCollapseUserInfo:Landroid/widget/RelativeLayout;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 615
    const v0, 0x7f0c00fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->infoBackground:Landroid/widget/RelativeLayout;

    .line 616
    const v0, 0x7f0c0100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->dowdloadProgressBar:Landroid/widget/ProgressBar;

    .line 618
    const v0, 0x7f0c00ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/chat/EllipsizeText;

    iput-object v0, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->content:Lcom/kingsoft/mail/chat/EllipsizeText;

    .line 619
    const v0, 0x7f0c0106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 620
    new-instance v0, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    invoke-direct {v0}, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;-><init>()V

    iput-object v0, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    .line 621
    iget-object v1, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    const v0, 0x7f0c00df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentCount:Landroid/widget/TextView;

    .line 622
    iget-object v0, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    const v1, 0x7f0c00dd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mBottomDivider:Landroid/view/View;

    .line 623
    iget-object v1, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    const v0, 0x7f0c00be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mDownloadAll:Landroid/widget/Button;

    .line 625
    iget-object v1, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    const v0, 0x7f0c0102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarList:Landroid/widget/LinearLayout;

    .line 626
    iget-object v1, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    const v0, 0x7f0c0103

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarListOriginInvisible:Landroid/widget/LinearLayout;

    .line 627
    iget-object v1, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    const v0, 0x7f0c00de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

    .line 628
    iget-object v1, p2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    const v0, 0x7f0c00e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mUpDown:Landroid/widget/ImageView;

    .line 629
    return-void
.end method

.method private postRender(Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;I)V
    .locals 3
    .param p1, "attHolder"    # Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;
    .param p2, "attType"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 549
    and-int/lit8 p2, p2, 0xf

    .line 550
    packed-switch p2, :pswitch_data_0

    .line 570
    const-string/jumbo v0, "ChatMsgViewAdapter"

    const-string/jumbo v1, "unknown attachment type"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 572
    :goto_0
    return-void

    .line 552
    :pswitch_0
    iget-object v0, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 553
    iget-object v0, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 554
    iget-object v0, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 555
    iget-object v0, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mUpDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 558
    :pswitch_1
    iget-object v0, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 559
    iget-object v0, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 560
    iget-object v0, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 561
    iget-object v0, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mUpDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 564
    :pswitch_2
    iget-object v0, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 565
    iget-object v0, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mMoreAttsDropDownLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 566
    iget-object v0, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 567
    iget-object v0, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mUpDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private renderAttachments(Ljava/util/List;Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;Z)V
    .locals 9
    .param p2, "uiMessage"    # Lcom/kingsoft/mail/providers/Message;
    .param p3, "attHolder"    # Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;
    .param p4, "loaderResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Attachment;",
            ">;",
            "Lcom/kingsoft/mail/providers/Message;",
            "Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    const/4 v8, 0x0

    .line 419
    if-eqz p1, :cond_1

    .line 420
    move-object v1, p1

    .line 425
    .local v1, "atts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p2, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    if-nez v5, :cond_2

    .line 427
    :cond_0
    const-string/jumbo v5, "ChatMsgViewAdapter"

    const-string/jumbo v6, "you lie to me, there is no attachment at all, hide all widgets"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 428
    invoke-direct {p0, p3, v8}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->postRender(Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;I)V

    .line 447
    :goto_1
    return-void

    .line 422
    .end local v1    # "atts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    :cond_1
    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Message;->getAttachments()Ljava/util/List;

    move-result-object v1

    .restart local v1    # "atts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    goto :goto_0

    .line 432
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 433
    .local v4, "maxSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 435
    .local v2, "barAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Attachment;

    .line 436
    .local v0, "attachment":Lcom/kingsoft/mail/providers/Attachment;
    iget-object v5, v0, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    if-nez v5, :cond_3

    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentFilter;->isFilterOut(Lcom/kingsoft/mail/providers/Attachment;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 439
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 441
    .end local v0    # "attachment":Lcom/kingsoft/mail/providers/Attachment;
    :cond_4
    iget-object v5, p2, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    if-eqz v5, :cond_5

    .line 442
    iget-object v5, p3, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarList:Landroid/widget/LinearLayout;

    iget-object v6, p2, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 444
    :cond_5
    invoke-static {v1}, Lcom/kingsoft/mail/providers/Attachment;->toJSONArray(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/kingsoft/mail/providers/Message;->attachmentsJson:Ljava/lang/String;

    .line 445
    invoke-direct {p0, p3, p2, v2, p4}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->renderBarAttachments(Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;Lcom/kingsoft/mail/providers/Message;Ljava/util/List;Z)V

    goto :goto_1
.end method

.method private renderBarAttachments(Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;Lcom/kingsoft/mail/providers/Message;Ljava/util/List;Z)V
    .locals 13
    .param p1, "attHolder"    # Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;
    .param p2, "uiMessage"    # Lcom/kingsoft/mail/providers/Message;
    .param p4, "loaderResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;",
            "Lcom/kingsoft/mail/providers/Message;",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Attachment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p3, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    const/4 v2, 0x0

    .line 459
    .local v2, "attBarCount":I
    const/4 v1, 0x1

    .line 460
    .local v1, "allAttachmentsSaved":Z
    const/4 v5, 0x0

    .line 462
    .local v5, "downloadingAttachments":I
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/providers/Attachment;

    .line 463
    .local v3, "attachment":Lcom/kingsoft/mail/providers/Attachment;
    add-int/lit8 v2, v2, 0x1

    .line 464
    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Attachment;->getIdentifierUri()Landroid/net/Uri;

    move-result-object v7

    .line 465
    .local v7, "id":Landroid/net/Uri;
    iget-object v9, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarList:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/browse/MessageAttachmentBar;

    .line 469
    .local v4, "barAttachmentView":Lcom/kingsoft/mail/browse/MessageAttachmentBar;
    if-nez v4, :cond_1

    .line 470
    iget-object v9, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarListOriginInvisible:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .end local v4    # "barAttachmentView":Lcom/kingsoft/mail/browse/MessageAttachmentBar;
    check-cast v4, Lcom/kingsoft/mail/browse/MessageAttachmentBar;

    .line 474
    .restart local v4    # "barAttachmentView":Lcom/kingsoft/mail/browse/MessageAttachmentBar;
    :cond_1
    if-nez v4, :cond_2

    .line 475
    iget-object v9, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mScrapViews:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 476
    iget-object v9, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v10, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarList:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/kingsoft/mail/browse/MessageAttachmentBar;

    move-result-object v4

    .line 480
    :goto_1
    invoke-virtual {v4, v7}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->setTag(Ljava/lang/Object;)V

    .line 481
    iget-object v9, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->initialize(Landroid/app/FragmentManager;)V

    .line 483
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->shouldAttsBarListCollapse(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 484
    iget-object v9, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarListOriginInvisible:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 491
    :cond_2
    :goto_2
    iget-object v9, p2, Lcom/kingsoft/mail/providers/Message;->accountUri:Landroid/net/Uri;

    move/from16 v0, p4

    invoke-virtual {v4, v3, v9, v0}, Lcom/kingsoft/mail/browse/MessageAttachmentBar;->render(Lcom/kingsoft/mail/providers/Attachment;Landroid/net/Uri;Z)V

    .line 493
    iget v9, v3, Lcom/kingsoft/mail/providers/Attachment;->state:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3

    .line 494
    const/4 v1, 0x0

    .line 497
    :cond_3
    iget v9, v3, Lcom/kingsoft/mail/providers/Attachment;->state:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 498
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 478
    :cond_4
    iget-object v9, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mScrapViews:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "barAttachmentView":Lcom/kingsoft/mail/browse/MessageAttachmentBar;
    check-cast v4, Lcom/kingsoft/mail/browse/MessageAttachmentBar;

    .restart local v4    # "barAttachmentView":Lcom/kingsoft/mail/browse/MessageAttachmentBar;
    goto :goto_1

    .line 486
    :cond_5
    iget-object v9, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarList:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 502
    .end local v3    # "attachment":Lcom/kingsoft/mail/providers/Attachment;
    .end local v4    # "barAttachmentView":Lcom/kingsoft/mail/browse/MessageAttachmentBar;
    .end local v7    # "id":Landroid/net/Uri;
    :cond_6
    iget-object v9, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mDownloadAll:Landroid/widget/Button;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 504
    iget-object v9, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mAttachmentListExpandable:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Message;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 505
    if-nez v1, :cond_8

    const/4 v9, 0x1

    if-le v2, v9, :cond_8

    .line 506
    iget-object v9, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mDownloadAll:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 507
    iget-object v9, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentCount:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    :goto_3
    const/4 v9, 0x1

    if-lt v5, v9, :cond_a

    .line 520
    iget-object v9, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mDownloadAll:Landroid/widget/Button;

    const v10, 0x7f1000ef

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    .line 525
    :goto_4
    if-nez v2, :cond_b

    .line 526
    const/4 v9, 0x0

    invoke-direct {p0, p1, v9}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->postRender(Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;I)V

    .line 546
    :cond_7
    :goto_5
    return-void

    .line 510
    :cond_8
    iget-object v9, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mDownloadAll:Landroid/widget/Button;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 511
    iget-object v9, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentCount:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 515
    :cond_9
    iget-object v9, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mDownloadAll:Landroid/widget/Button;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 516
    iget-object v9, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentCount:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 522
    :cond_a
    iget-object v9, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mDownloadAll:Landroid/widget/Button;

    const v10, 0x7f1000ea

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    .line 527
    :cond_b
    const/4 v9, 0x2

    if-gt v2, v9, :cond_c

    .line 528
    const/4 v9, 0x1

    invoke-direct {p0, p1, v9}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->postRender(Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;I)V

    goto :goto_5

    .line 529
    :cond_c
    const/4 v9, 0x2

    if-le v2, v9, :cond_7

    .line 530
    const/4 v9, 0x2

    invoke-direct {p0, p1, v9}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->postRender(Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;I)V

    .line 532
    const/4 v8, 0x0

    .line 533
    .local v8, "text":Ljava/lang/String;
    iget-object v9, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mAttachmentListExpandable:Ljava/util/ArrayList;

    iget-wide v10, p2, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 534
    iget-object v9, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1001f7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    add-int/lit8 v12, v2, -0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 544
    :goto_6
    iget-object v9, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentCount:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 539
    :cond_d
    iget-object v9, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100279

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    add-int/lit8 v12, v2, -0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_6
.end method

.method private setItemRefresh(Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Lcom/kingsoft/mail/chat/ChatCacheItem;)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;
    .param p2, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;

    .prologue
    .line 189
    iget-object v0, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->content:Lcom/kingsoft/mail/chat/EllipsizeText;

    invoke-virtual {p2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getGestureSign()Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;->isLongClick()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/chat/EllipsizeText;->setSelected(Z)V

    .line 190
    iget-object v0, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mUpDown:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getGestureSign()Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;->isMattCllaps()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mAttachmentListExpandable:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v1

    iget-wide v1, v1, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mAttachmentListExpandable:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v1

    iget-wide v1, v1, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setNamesAfterFirstTruncated(Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Lcom/kingsoft/mail/chat/ChatCacheItem;I)V
    .locals 4
    .param p1, "viewHolder"    # Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;
    .param p2, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;
    .param p3, "parentViewWidth"    # I

    .prologue
    .line 641
    if-lez p3, :cond_0

    .line 642
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mController:Lcom/kingsoft/mail/chat/ChatViewUtils$ChatFragmentOperation;

    check-cast v0, Lcom/kingsoft/mail/chat/ChatViewController;

    .line 643
    .local v0, "controller":Lcom/kingsoft/mail/chat/ChatViewController;
    new-instance v1, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingsoft/mail/chat/ChatViewAdapter$NameTextViewTask;-><init>(Lcom/kingsoft/mail/chat/ChatViewAdapter;Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Lcom/kingsoft/mail/chat/ChatCacheItem;)V

    .line 644
    .local v1, "task":Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;
    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->getDelayedTaskManager()Lcom/kingsoft/mail/chat/DelayedTaskManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingsoft/mail/chat/DelayedTaskManager;->addTask(Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;)V

    .line 645
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mController:Lcom/kingsoft/mail/chat/ChatViewUtils$ChatFragmentOperation;

    check-cast v2, Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->getDelayedTaskManager()Lcom/kingsoft/mail/chat/DelayedTaskManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingsoft/mail/chat/DelayedTaskManager;->addTask(Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;)V

    .line 653
    .end local v0    # "controller":Lcom/kingsoft/mail/chat/ChatViewController;
    .end local v1    # "task":Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;
    :goto_0
    return-void

    .line 647
    :cond_0
    invoke-virtual {p2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->isNeedExpend()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 648
    iget-object v2, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mMsgItemExpandRecipient:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 650
    :cond_1
    iget-object v2, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mMsgItemExpandRecipient:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mAttachmentListExpandable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 665
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mAttachmentListExpandable:Ljava/util/ArrayList;

    .line 666
    return-void
.end method

.method public enableLongClick(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 669
    iput-boolean p1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mEnableLongClick:Z

    .line 670
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v0

    return v0
.end method

.method public getFocusIndex()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mFocusIndex:I

    return v0
.end method

.method public getInlineMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 673
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->inlineMap:Ljava/util/Map;

    return-object v0
.end method

.method public getItem(I)Lcom/kingsoft/mail/chat/ChatCacheItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->getCount()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/chat/ChatCache;->getRow(I)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->getItem(I)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 140
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->getItem(I)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v0

    .line 150
    .local v0, "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    if-nez v0, :cond_0

    .line 151
    const/4 v1, 0x0

    .line 153
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getItemType()I

    move-result v1

    goto :goto_0
.end method

.method public getSelectItemOnGloableVisibleRt()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mSelectItemOnGloableVisibleRt:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectItemOnRealRt()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mSelectIemOnRealRt:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 162
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v2, p1}, Lcom/kingsoft/mail/chat/ChatCache;->getRow(I)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v0

    .line 163
    .local v0, "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    if-nez v0, :cond_0

    .line 164
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x109000c

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 185
    :goto_0
    return-object v2

    .line 167
    :cond_0
    if-nez p2, :cond_2

    .line 168
    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->isFromMe()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04003e

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 175
    :goto_1
    new-instance v1, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    invoke-direct {v1}, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;-><init>()V

    .line 176
    .local v1, "viewHolder":Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->initViewHolder(Landroid/view/View;Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;ILcom/kingsoft/mail/chat/ChatCacheItem;)V

    .line 177
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->setItemRefresh(Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Lcom/kingsoft/mail/chat/ChatCacheItem;)V

    .line 184
    invoke-direct {p0, v0, v1, p1, p3}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->fillDataToViewHolder(Lcom/kingsoft/mail/chat/ChatCacheItem;Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;ILandroid/view/ViewGroup;)V

    move-object v2, p2

    .line 185
    goto :goto_0

    .line 172
    .end local v1    # "viewHolder":Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04003b

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 180
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;
    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x6

    return v0
.end method

.method public setChatCache(Lcom/kingsoft/mail/chat/ChatCache;)V
    .locals 0
    .param p1, "cache"    # Lcom/kingsoft/mail/chat/ChatCache;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    .line 145
    return-void
.end method

.method public setFocusIndex(I)V
    .locals 0
    .param p1, "focusIndex"    # I

    .prologue
    .line 656
    iput p1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mFocusIndex:I

    .line 657
    return-void
.end method

.method public setSelectItemOnGloableVisibleRt(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rt"    # Landroid/graphics/Rect;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mSelectItemOnGloableVisibleRt:Landroid/graphics/Rect;

    .line 115
    return-void
.end method

.method public setSelectItemOnRealRt(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rt"    # Landroid/graphics/Rect;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mSelectIemOnRealRt:Landroid/graphics/Rect;

    .line 123
    return-void
.end method

.method public shouldAttsBarListCollapse(I)Z
    .locals 1
    .param p1, "atts"    # I

    .prologue
    .line 450
    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleAttachmentBarListVisibility(Landroid/widget/LinearLayout;Lcom/kingsoft/mail/chat/ChatCacheItem;)V
    .locals 3
    .param p1, "invisibleAtts"    # Landroid/widget/LinearLayout;
    .param p2, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;

    .prologue
    .line 632
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 633
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mAttachmentListExpandable:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v1

    iget-wide v1, v1, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    :goto_1
    return-void

    .line 632
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter;->mAttachmentListExpandable:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v1

    iget-wide v1, v1, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
