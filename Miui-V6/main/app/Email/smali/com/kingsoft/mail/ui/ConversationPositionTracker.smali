.class public Lcom/kingsoft/mail/ui/ConversationPositionTracker;
.super Ljava/lang/Object;
.source "ConversationPositionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/ConversationPositionTracker$Callbacks;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCallbacks:Lcom/kingsoft/mail/ui/ConversationPositionTracker$Callbacks;

.field private mConversation:Lcom/kingsoft/mail/providers/Conversation;

.field private mCursorDirty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/kingsoft/mail/ui/ConversationPositionTracker$Callbacks;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/kingsoft/mail/ui/ConversationPositionTracker$Callbacks;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->mCursorDirty:Z

    .line 54
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->mCallbacks:Lcom/kingsoft/mail/ui/ConversationPositionTracker$Callbacks;

    .line 55
    return-void
.end method

.method private calculatePosition()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, -0x1

    .line 168
    const/4 v2, -0x1

    .line 169
    .local v2, "invalidPosition":I
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->mCallbacks:Lcom/kingsoft/mail/ui/ConversationPositionTracker$Callbacks;

    invoke-interface {v5}, Lcom/kingsoft/mail/ui/ConversationPositionTracker$Callbacks;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    .line 171
    .local v0, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    iget-boolean v5, p0, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->mCursorDirty:Z

    if-nez v5, :cond_1

    .line 172
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget v1, v5, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 216
    :cond_0
    :goto_0
    return v1

    .line 175
    :cond_1
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    if-eqz v5, :cond_0

    .line 178
    iput-boolean v9, p0, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->mCursorDirty:Z

    .line 179
    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v3

    .line 180
    .local v3, "listSize":I
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->isDataLoaded(Lcom/kingsoft/mail/browse/ConversationCursor;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    .line 184
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v5, v5, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-virtual {v0, v5, v6}, Lcom/kingsoft/mail/browse/ConversationCursor;->getConversationPosition(J)I

    move-result v1

    .line 185
    .local v1, "foundPosition":I
    if-ltz v1, :cond_2

    .line 186
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iput v1, v5, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 191
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToPosition(I)Z

    goto :goto_0

    .line 199
    :cond_2
    if-lt v1, v3, :cond_4

    .line 201
    add-int/lit8 v4, v3, -0x1

    .line 208
    .local v4, "newPosition":I
    :goto_1
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->isDataLoaded(Lcom/kingsoft/mail/browse/ConversationCursor;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-ltz v4, :cond_3

    .line 209
    sget-object v5, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "ConversationPositionTracker: Could not find conversation %s in the cursor. Moving to position %d "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v8}, Lcom/kingsoft/mail/providers/Conversation;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 212
    invoke-virtual {v0, v4}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToPosition(I)Z

    .line 213
    new-instance v5, Lcom/kingsoft/mail/providers/Conversation;

    invoke-direct {v5, v0}, Lcom/kingsoft/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    iput-object v5, p0, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    .line 214
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iput v4, v5, Lcom/kingsoft/mail/providers/Conversation;->position:I

    :cond_3
    move v1, v4

    .line 216
    goto :goto_0

    .line 203
    .end local v4    # "newPosition":I
    :cond_4
    move v4, v1

    .restart local v4    # "newPosition":I
    goto :goto_1
.end method

.method private conversationAtPosition(I)Lcom/kingsoft/mail/providers/Conversation;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 59
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->mCallbacks:Lcom/kingsoft/mail/ui/ConversationPositionTracker$Callbacks;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ConversationPositionTracker$Callbacks;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v1

    .line 60
    .local v1, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToPosition(I)Z

    .line 61
    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    .line 62
    .local v0, "conv":Lcom/kingsoft/mail/providers/Conversation;
    iput p1, v0, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 63
    return-object v0
.end method

.method private getCount()I
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->mCallbacks:Lcom/kingsoft/mail/ui/ConversationPositionTracker$Callbacks;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ConversationPositionTracker$Callbacks;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    .line 71
    .local v0, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->isDataLoaded(Lcom/kingsoft/mail/browse/ConversationCursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v1

    .line 74
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNewer(Ljava/util/Collection;)Lcom/kingsoft/mail/providers/Conversation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;)",
            "Lcom/kingsoft/mail/providers/Conversation;"
        }
    .end annotation

    .prologue
    .local p1, "victims":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->calculatePosition()I

    move-result v1

    .line 84
    .local v1, "pos":I
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->isDataLoaded()Z

    move-result v3

    if-eqz v3, :cond_0

    if-gez v1, :cond_2

    :cond_0
    move-object v0, v2

    .line 97
    :cond_1
    :goto_0
    return-object v0

    .line 89
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 90
    :goto_1
    if-ltz v1, :cond_3

    .line 91
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->conversationAtPosition(I)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    .line 92
    .local v0, "candidate":Lcom/kingsoft/mail/providers/Conversation;
    invoke-static {p1, v0}, Lcom/kingsoft/mail/providers/Conversation;->contains(Ljava/util/Collection;Lcom/kingsoft/mail/providers/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    add-int/lit8 v1, v1, -0x1

    .line 96
    goto :goto_1

    .end local v0    # "candidate":Lcom/kingsoft/mail/providers/Conversation;
    :cond_3
    move-object v0, v2

    .line 97
    goto :goto_0
.end method

.method private getOlder(Ljava/util/Collection;)Lcom/kingsoft/mail/providers/Conversation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;)",
            "Lcom/kingsoft/mail/providers/Conversation;"
        }
    .end annotation

    .prologue
    .local p1, "victims":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->calculatePosition()I

    move-result v1

    .line 106
    .local v1, "pos":I
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->isDataLoaded()Z

    move-result v3

    if-eqz v3, :cond_0

    if-gez v1, :cond_2

    :cond_0
    move-object v0, v2

    .line 119
    :cond_1
    :goto_0
    return-object v0

    .line 111
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 112
    :goto_1
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 113
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->conversationAtPosition(I)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    .line 114
    .local v0, "candidate":Lcom/kingsoft/mail/providers/Conversation;
    invoke-static {p1, v0}, Lcom/kingsoft/mail/providers/Conversation;->contains(Ljava/util/Collection;Lcom/kingsoft/mail/providers/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    add-int/lit8 v1, v1, 0x1

    .line 118
    goto :goto_1

    .end local v0    # "candidate":Lcom/kingsoft/mail/providers/Conversation;
    :cond_3
    move-object v0, v2

    .line 119
    goto :goto_0
.end method

.method private isDataLoaded()Z
    .locals 2

    .prologue
    .line 141
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->mCallbacks:Lcom/kingsoft/mail/ui/ConversationPositionTracker$Callbacks;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ConversationPositionTracker$Callbacks;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    .line 142
    .local v0, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->isDataLoaded(Lcom/kingsoft/mail/browse/ConversationCursor;)Z

    move-result v1

    return v1
.end method

.method private static isDataLoaded(Lcom/kingsoft/mail/browse/ConversationCursor;)Z
    .locals 1
    .param p0, "cursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 137
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNextConversation(ILjava/util/Collection;)Lcom/kingsoft/mail/providers/Conversation;
    .locals 5
    .param p1, "autoAdvance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;)",
            "Lcom/kingsoft/mail/providers/Conversation;"
        }
    .end annotation

    .prologue
    .local p2, "mTarget":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 230
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    move v0, v1

    .line 231
    .local v0, "getNewer":Z
    :goto_0
    if-ne p1, v1, :cond_1

    .line 232
    .local v1, "getOlder":Z
    :goto_1
    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->getNewer(Ljava/util/Collection;)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v2

    .line 233
    .local v2, "next":Lcom/kingsoft/mail/providers/Conversation;
    :goto_2
    return-object v2

    .end local v0    # "getNewer":Z
    .end local v1    # "getOlder":Z
    .end local v2    # "next":Lcom/kingsoft/mail/providers/Conversation;
    :cond_0
    move v0, v3

    .line 230
    goto :goto_0

    .restart local v0    # "getNewer":Z
    :cond_1
    move v1, v3

    .line 231
    goto :goto_1

    .line 232
    .restart local v1    # "getOlder":Z
    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, p2}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->getOlder(Ljava/util/Collection;)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public initialize(Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 1
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->mCursorDirty:Z

    .line 132
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->calculatePosition()I

    .line 133
    return-void
.end method

.method public onCursorUpdated()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->mCursorDirty:Z

    .line 150
    return-void
.end method
