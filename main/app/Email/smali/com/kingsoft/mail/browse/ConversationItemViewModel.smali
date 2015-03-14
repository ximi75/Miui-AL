.class public Lcom/kingsoft/mail/browse/ConversationItemViewModel;
.super Ljava/lang/Object;
.source "ConversationItemViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;
    }
.end annotation


# static fields
.field private static final MAX_CACHE_SIZE:I = 0x64

.field private static sCachedModelsFolder:Lcom/kingsoft/mail/providers/Folder;

.field static sConversationHeaderMap:Landroid/util/LruCache;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/kingsoft/mail/browse/ConversationItemViewModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public conversation:Lcom/kingsoft/mail/providers/Conversation;

.field public dateOverrideText:Ljava/lang/CharSequence;

.field dateText:Ljava/lang/CharSequence;

.field public displayableSenderEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public displayableSenderNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fontColor:I

.field public gadgetMode:I

.field public hasBeenForwarded:Z

.field public hasBeenRepliedTo:Z

.field hasDraftMessage:Z

.field public infoIcon:Landroid/graphics/Bitmap;

.field public isInvite:Z

.field public mAccountEmail:Ljava/lang/StringBuffer;

.field private mContentDescription:Ljava/lang/String;

.field private mDataHashCode:I

.field private mLayoutHashCode:I

.field public mailboxKey:J

.field public maxMessageId:J

.field public mergeCount:I

.field mergedCountBackground:Landroid/graphics/Bitmap;

.field public messageInfoString:Landroid/text/SpannableStringBuilder;

.field overflowText:Ljava/lang/String;

.field paperclip:Landroid/graphics/Bitmap;

.field personalLevelBitmap:Landroid/graphics/Bitmap;

.field public preserveSendersText:Z

.field final senderFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;",
            ">;"
        }
    .end annotation
.end field

.field sendersDisplayLayout:Landroid/text/StaticLayout;

.field sendersDisplayText:Landroid/text/SpannableStringBuilder;

.field public sendersText:Ljava/lang/String;

.field public standardScaledDimen:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public styledMessageInfoStringOffset:I

.field public styledSenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field public styledSendersString:Landroid/text/SpannableStringBuilder;

.field public unread:Z

.field public viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->preserveSendersText:Z

    .line 151
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->mAccountEmail:Ljava/lang/StringBuffer;

    .line 213
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->senderFragments:Ljava/util/ArrayList;

    .line 214
    return-void
.end method

.method public static forConversation(Ljava/lang/String;Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/browse/ConversationItemViewModel;
    .locals 6
    .param p0, "account"    # Ljava/lang/String;
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 171
    iget-wide v4, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {p0, v4, v5}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->forConversationId(Ljava/lang/String;J)Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    move-result-object v0

    .line 173
    .local v0, "header":Lcom/kingsoft/mail/browse/ConversationItemViewModel;
    iput-object p1, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    .line 174
    iget-boolean v1, p1, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->unread:Z

    .line 175
    iget v1, p1, Lcom/kingsoft/mail/providers/Conversation;->mergeCount:I

    iput v1, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->mergeCount:I

    .line 176
    iget-wide v4, p1, Lcom/kingsoft/mail/providers/Conversation;->mailboxKey:J

    iput-wide v4, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->mailboxKey:J

    .line 178
    iget v1, p1, Lcom/kingsoft/mail/providers/Conversation;->convFlags:I

    and-int/lit8 v1, v1, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->hasBeenForwarded:Z

    .line 181
    iget v1, p1, Lcom/kingsoft/mail/providers/Conversation;->convFlags:I

    and-int/lit8 v1, v1, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->hasBeenRepliedTo:Z

    .line 184
    iget v1, p1, Lcom/kingsoft/mail/providers/Conversation;->convFlags:I

    and-int/lit8 v1, v1, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    :goto_3
    iput-boolean v2, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->isInvite:Z

    .line 187
    return-object v0

    :cond_0
    move v1, v3

    .line 174
    goto :goto_0

    :cond_1
    move v1, v3

    .line 178
    goto :goto_1

    :cond_2
    move v1, v3

    .line 181
    goto :goto_2

    :cond_3
    move v2, v3

    .line 184
    goto :goto_3
.end method

.method static forConversationId(Ljava/lang/String;J)Lcom/kingsoft/mail/browse/ConversationItemViewModel;
    .locals 4
    .param p0, "account"    # Ljava/lang/String;
    .param p1, "conversationId"    # J

    .prologue
    .line 200
    sget-object v3, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    monitor-enter v3

    .line 201
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->forConversationIdOrNull(Ljava/lang/String;J)Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    move-result-object v0

    .line 203
    .local v0, "header":Lcom/kingsoft/mail/browse/ConversationItemViewModel;
    if-nez v0, :cond_0

    .line 204
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    .end local v0    # "header":Lcom/kingsoft/mail/browse/ConversationItemViewModel;
    invoke-direct {v0}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;-><init>()V

    .line 206
    .restart local v0    # "header":Lcom/kingsoft/mail/browse/ConversationItemViewModel;
    sget-object v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    invoke-virtual {v2, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .end local v1    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    monitor-exit v3

    return-object v0

    .line 209
    .end local v0    # "header":Lcom/kingsoft/mail/browse/ConversationItemViewModel;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static forConversationIdOrNull(Ljava/lang/String;J)Lcom/kingsoft/mail/browse/ConversationItemViewModel;
    .locals 3
    .param p0, "account"    # Ljava/lang/String;
    .param p1, "conversationId"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 164
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    sget-object v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    monitor-enter v2

    .line 166
    :try_start_0
    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    monitor-exit v2

    return-object v1

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getConvInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getHashCode(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/util/List;ZZII)I
    .locals 3
    .param p0, "dateText"    # Ljava/lang/CharSequence;
    .param p1, "convInfo"    # Ljava/lang/Object;
    .param p3, "starred"    # Z
    .param p4, "read"    # Z
    .param p5, "priority"    # I
    .param p6, "sendingState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;ZZII)I"
        }
    .end annotation

    .prologue
    .line 235
    .local p2, "rawFolders":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Folder;>;"
    if-nez p0, :cond_0

    .line 236
    const/4 v0, -0x1

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method private getLayoutHashCode()I
    .locals 3

    .prologue
    .line 246
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->mDataHashCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->viewWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->standardScaledDimen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->gadgetMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static onAccessibilityUpdated()V
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 377
    return-void
.end method

.method public static onFolderUpdated(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 3
    .param p0, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 383
    sget-object v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sCachedModelsFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sCachedModelsFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v1, v2, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    .line 385
    .local v1, "old":Lcom/kingsoft/mail/utils/FolderUri;
    :goto_0
    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    .line 386
    .local v0, "newUri":Lcom/kingsoft/mail/utils/FolderUri;
    :goto_1
    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 387
    sput-object p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sCachedModelsFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 388
    sget-object v2, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sConversationHeaderMap:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->evictAll()V

    .line 390
    :cond_0
    return-void

    .line 383
    .end local v0    # "newUri":Lcom/kingsoft/mail/utils/FolderUri;
    .end local v1    # "old":Lcom/kingsoft/mail/utils/FolderUri;
    :cond_1
    sget-object v1, Lcom/kingsoft/mail/utils/FolderUri;->EMPTY:Lcom/kingsoft/mail/utils/FolderUri;

    goto :goto_0

    .line 385
    .restart local v1    # "old":Lcom/kingsoft/mail/utils/FolderUri;
    :cond_2
    sget-object v0, Lcom/kingsoft/mail/utils/FolderUri;->EMPTY:Lcom/kingsoft/mail/utils/FolderUri;

    goto :goto_1
.end method


# virtual methods
.method addSenderFragment(IILandroid/text/style/CharacterStyle;Z)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "style"    # Landroid/text/style/CharacterStyle;
    .param p4, "isFixed"    # Z

    .prologue
    .line 225
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->sendersText:Ljava/lang/String;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;-><init>(IILjava/lang/CharSequence;Landroid/text/style/CharacterStyle;Z)V

    .line 226
    .local v0, "senderFragment":Lcom/kingsoft/mail/browse/ConversationItemViewModel$SenderFragment;
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->senderFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    return-void
.end method

.method public getContentDescription(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, -0x1

    .line 326
    iget-object v11, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->mContentDescription:Ljava/lang/String;

    if-nez v11, :cond_3

    .line 330
    const-string/jumbo v9, ""

    .line 331
    .local v9, "sender":Ljava/lang/String;
    iget-object v11, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v11, v11, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    if-eqz v11, :cond_2

    .line 332
    const-string/jumbo v5, ""

    .line 333
    .local v5, "lastSender":Ljava/lang/String;
    iget-object v11, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v11, v11, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    iget-object v11, v11, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v11, v11, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    iget-object v11, v11, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v4, v11, -0x1

    .line 335
    .local v4, "last":I
    :goto_0
    if-eq v4, v10, :cond_0

    .line 336
    iget-object v10, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v10, v10, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    iget-object v10, v10, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kingsoft/mail/providers/MessageInfo;

    iget-object v5, v10, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    .line 338
    :cond_0
    iget-object v10, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v10, v10, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    if-eqz v10, :cond_6

    .line 339
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {p1}, Lcom/kingsoft/mail/browse/SendersView;->getMe(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 354
    :cond_1
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 356
    move-object v9, v5

    .line 359
    .end local v4    # "last":I
    .end local v5    # "lastSender":Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v10, v10, Lcom/kingsoft/mail/providers/Conversation;->dateMs:J

    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v3

    .line 360
    .local v3, "isToday":Z
    iget-object v10, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v10, v10, Lcom/kingsoft/mail/providers/Conversation;->dateMs:J

    invoke-static {p1, v10, v11}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "date":Ljava/lang/String;
    iget-object v10, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v10, v10, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    if-eqz v10, :cond_a

    const v10, 0x7f100331

    :goto_2
    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 364
    .local v7, "readString":Ljava/lang/String;
    if-eqz v3, :cond_b

    const v8, 0x7f100140

    .line 365
    .local v8, "res":I
    :goto_3
    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v12, v12, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v12}, Lcom/kingsoft/mail/providers/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v0, v10, v11

    const/4 v11, 0x4

    aput-object v7, v10, v11

    invoke-virtual {p1, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->mContentDescription:Ljava/lang/String;

    .line 368
    .end local v0    # "date":Ljava/lang/String;
    .end local v3    # "isToday":Z
    .end local v7    # "readString":Ljava/lang/String;
    .end local v8    # "res":I
    .end local v9    # "sender":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->mContentDescription:Ljava/lang/String;

    return-object v10

    .restart local v5    # "lastSender":Ljava/lang/String;
    .restart local v9    # "sender":Ljava/lang/String;
    :cond_4
    move v4, v10

    .line 333
    goto :goto_0

    .restart local v4    # "last":I
    :cond_5
    move-object v9, v5

    .line 339
    goto :goto_1

    .line 342
    :cond_6
    const/4 v1, 0x0

    .line 343
    .local v1, "firstUnread":Lcom/kingsoft/mail/providers/MessageInfo;
    iget-object v10, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v10, v10, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    iget-object v10, v10, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/mail/providers/MessageInfo;

    .line 344
    .local v6, "m":Lcom/kingsoft/mail/providers/MessageInfo;
    iget-boolean v10, v6, Lcom/kingsoft/mail/providers/MessageInfo;->read:Z

    if-nez v10, :cond_7

    .line 345
    move-object v1, v6

    .line 349
    .end local v6    # "m":Lcom/kingsoft/mail/providers/MessageInfo;
    :cond_8
    if-eqz v1, :cond_1

    .line 350
    iget-object v10, v1, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {p1}, Lcom/kingsoft/mail/browse/SendersView;->getMe(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    :goto_4
    goto :goto_1

    :cond_9
    iget-object v9, v1, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    goto :goto_4

    .line 362
    .end local v1    # "firstUnread":Lcom/kingsoft/mail/providers/MessageInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "last":I
    .end local v5    # "lastSender":Ljava/lang/String;
    .restart local v0    # "date":Ljava/lang/String;
    .restart local v3    # "isToday":Z
    :cond_a
    const v10, 0x7f1003bd

    goto :goto_2

    .line 364
    .restart local v7    # "readString":Ljava/lang/String;
    :cond_b
    const v8, 0x7f10013f

    goto :goto_3
.end method

.method isDataValid()Z
    .locals 8

    .prologue
    .line 268
    iget v7, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->mDataHashCode:I

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->dateText:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->getConvInfo()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Conversation;->getRawFolders()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v3, v3, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v4, v4, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget v5, v5, Lcom/kingsoft/mail/providers/Conversation;->priority:I

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget v6, v6, Lcom/kingsoft/mail/providers/Conversation;->sendingState:I

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->getHashCode(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/util/List;ZZII)I

    move-result v0

    if-ne v7, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLayoutValid()Z
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->mLayoutHashCode:I

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->getLayoutHashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetContentDescription()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->mContentDescription:Ljava/lang/String;

    .line 320
    return-void
.end method

.method validate()V
    .locals 7

    .prologue
    .line 258
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->dateText:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->getConvInfo()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Conversation;->getRawFolders()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v3, v3, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v4, v4, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget v5, v5, Lcom/kingsoft/mail/providers/Conversation;->priority:I

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    iget v6, v6, Lcom/kingsoft/mail/providers/Conversation;->sendingState:I

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->getHashCode(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/util/List;ZZII)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->mDataHashCode:I

    .line 261
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->getLayoutHashCode()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->mLayoutHashCode:I

    .line 262
    return-void
.end method
