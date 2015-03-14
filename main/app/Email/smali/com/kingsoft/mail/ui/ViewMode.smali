.class public Lcom/kingsoft/mail/ui/ViewMode;
.super Ljava/lang/Object;
.source "ViewMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final AD:I = 0x9

.field public static final CHAT_FOR_MERGED_CONVERSATION:I = 0xb

.field public static final CONVERSATION:I = 0x6

.field public static final CONVERSATION_LIST:I = 0x1

.field public static final FILTED_MERGED_CONVERSATION_LIST:I = 0x5

.field public static final FILTED_SEARCH_RESULTS_LIST:I = 0x3

.field public static final FILTED_UNREAD_CONVERSATION_LIST:I = 0xc

.field public static final LOG_TAG:Ljava/lang/String; = "ViewMode"

.field public static final MERGED_CONVERSATION_LIST:I = 0x4

.field private static final MODE_NAMES:[Ljava/lang/String;

.field public static final SEARCH_RESULTS_CONVERSATION:I = 0x7

.field public static final SEARCH_RESULTS_LIST:I = 0x2

.field public static final UNKNOWN:I = 0x0

.field private static final VIEW_MODE_KEY:Ljava/lang/String; = "view-mode"

.field private static final VIEW_PRE_MODE_KEY:Ljava/lang/String; = "view-pre-mode"

.field public static final WAITING_FOR_ACCOUNT_INITIALIZATION:I = 0x8


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mPreMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    const-class v0, Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/kingsoft/mail/ui/ViewMode;->$assertionsDisabled:Z

    .line 116
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "Unknown"

    aput-object v3, v0, v2

    const-string/jumbo v2, "Conversation list"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "Search results list"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "filted Search Conversation List"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "Merged Conversation List"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "filted MERGED_CONVERSATION_LIST"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Conversation"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Search results conversation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "Waiting for sync"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "Ad"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "Chart for merge conversation"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "Drawer"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "Showing unread messages"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/mail/ui/ViewMode;->MODE_NAMES:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 33
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ViewMode;->mListeners:Ljava/util/ArrayList;

    .line 110
    iput v1, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    .line 111
    iput v1, p0, Lcom/kingsoft/mail/ui/ViewMode;->mPreMode:I

    .line 134
    return-void
.end method

.method private dispatchModeChange()V
    .locals 4

    .prologue
    .line 162
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ViewMode;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 163
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;

    .line 164
    .local v2, "listener":Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;
    sget-boolean v3, Lcom/kingsoft/mail/ui/ViewMode;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 165
    :cond_0
    iget v3, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    invoke-interface {v2, v3}, Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;->onViewModeChanged(I)V

    goto :goto_0

    .line 167
    .end local v2    # "listener":Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;
    :cond_1
    return-void
.end method

.method public static getModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 146
    sget-object v0, Lcom/kingsoft/mail/ui/ViewMode;->MODE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static isAdMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 344
    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChatMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 321
    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConversationMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 313
    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isListMode(I)Z
    .locals 2
    .param p0, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 285
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMergeConversation(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 328
    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMergeSubjctOrFromMode(I)Z
    .locals 2
    .param p0, "mode"    # I

    .prologue
    const/4 v1, 0x5

    .line 299
    if-eq p0, v1, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSearchMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 317
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWaitingForSync(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 336
    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setModeInternal(I)Z
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 397
    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    if-eq p1, v2, :cond_1

    .line 398
    :cond_0
    iget v2, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    iput v2, p0, Lcom/kingsoft/mail/ui/ViewMode;->mPreMode:I

    .line 400
    :cond_1
    iget v2, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    if-ne v2, p1, :cond_3

    if-eq v5, p1, :cond_3

    .line 401
    const-string/jumbo v2, "ViewMode"

    invoke-static {v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 402
    const-string/jumbo v2, "ViewMode"

    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    const-string/jumbo v4, "ViewMode: debouncing change attempt mode=%s and mMode = %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    iget v6, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 419
    :goto_0
    return v0

    .line 405
    :cond_2
    const-string/jumbo v2, "ViewMode"

    const-string/jumbo v3, "ViewMode: debouncing change attempt mode=%s and mMode=%s"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    iget v5, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 410
    :cond_3
    const-string/jumbo v2, "ViewMode"

    invoke-static {v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 411
    const-string/jumbo v2, "ViewMode"

    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    const-string/jumbo v4, "ViewMode: executing change old=%s new=%s"

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 416
    :goto_1
    iput p1, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    .line 417
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ViewMode;->dispatchModeChange()V

    .line 418
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ViewMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ViewMode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/kingsoft/mail/analytics/Tracker;->sendView(Ljava/lang/String;)V

    move v0, v1

    .line 419
    goto :goto_0

    .line 414
    :cond_4
    const-string/jumbo v2, "ViewMode"

    const-string/jumbo v3, "ViewMode: executing change old=%s new=%s"

    new-array v4, v5, [Ljava/lang/Object;

    iget v5, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ViewMode;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public enterAdMode()V
    .locals 1

    .prologue
    .line 251
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ViewMode;->setModeInternal(I)Z

    .line 252
    return-void
.end method

.method public enterChatMode()V
    .locals 1

    .prologue
    .line 255
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ViewMode;->setModeInternal(I)Z

    .line 256
    return-void
.end method

.method public enterConversationListMode()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ViewMode;->setModeInternal(I)Z

    .line 175
    return-void
.end method

.method public enterConversationMode()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ViewMode;->setModeInternal(I)Z

    .line 202
    return-void
.end method

.method public enterFiltedMergedConversationListMode()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ViewMode;->setModeInternal(I)Z

    .line 194
    return-void
.end method

.method public enterMergedConversationListMode()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ViewMode;->setModeInternal(I)Z

    .line 184
    return-void
.end method

.method public enterMergedSearchResultsListMode()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ViewMode;->setModeInternal(I)Z

    .line 220
    return-void
.end method

.method public enterSearchResultsConversationMode()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ViewMode;->setModeInternal(I)Z

    .line 229
    return-void
.end method

.method public enterSearchResultsListMode()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ViewMode;->setModeInternal(I)Z

    .line 211
    return-void
.end method

.method public enterUnreadConversationListMode()V
    .locals 1

    .prologue
    .line 244
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ViewMode;->setModeInternal(I)Z

    .line 245
    return-void
.end method

.method public enterWaitingForInitializationMode()V
    .locals 1

    .prologue
    .line 236
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ViewMode;->setModeInternal(I)Z

    .line 237
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    return v0
.end method

.method public getModeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/kingsoft/mail/ui/ViewMode;->MODE_NAMES:[Ljava/lang/String;

    iget v1, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPreMode()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/kingsoft/mail/ui/ViewMode;->mPreMode:I

    return v0
.end method

.method public handleRestore(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 353
    if-nez p1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    const-string/jumbo v2, "view-mode"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 358
    .local v0, "newMode":I
    if-eqz v0, :cond_2

    .line 359
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ViewMode;->setModeInternal(I)Z

    .line 362
    :cond_2
    const-string/jumbo v2, "view-pre-mode"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 363
    .local v1, "preMode":I
    if-eqz v1, :cond_0

    .line 364
    iput v1, p0, Lcom/kingsoft/mail/ui/ViewMode;->mPreMode:I

    goto :goto_0
.end method

.method public handleSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 373
    if-nez p1, :cond_0

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    const-string/jumbo v0, "view-mode"

    iget v1, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 377
    const-string/jumbo v0, "view-pre-mode"

    iget v1, p0, Lcom/kingsoft/mail/ui/ViewMode;->mPreMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public isAdMode()Z
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    invoke-static {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isAdMode(I)Z

    move-result v0

    return v0
.end method

.method public isChatMode()Z
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    invoke-static {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isChatMode(I)Z

    move-result v0

    return v0
.end method

.method public isConversationListMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 294
    iget v1, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConversationMode()Z
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    invoke-static {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationMode(I)Z

    move-result v0

    return v0
.end method

.method public isListMode()Z
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    invoke-static {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isListMode(I)Z

    move-result v0

    return v0
.end method

.method public isWaitingForSync()Z
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    invoke-static {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isWaitingForSync(I)Z

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ViewMode;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 386
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 267
    iput p1, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    .line 268
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/mail/ui/ViewMode;->MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/kingsoft/mail/ui/ViewMode;->mMode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
