.class public Lcom/kingsoft/mail/chat/ChatCache;
.super Ljava/lang/Object;
.source "ChatCache.java"


# static fields
.field private static chatCache:Lcom/kingsoft/mail/chat/ChatCache;


# instance fields
.field public accountKey:J

.field public hashTable:Lcom/google/common/collect/HashBasedTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBasedTable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lcom/kingsoft/mail/chat/ChatCacheItem;",
            ">;"
        }
    .end annotation
.end field

.field public mailboxKey:J

.field public namesInfo:Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;

.field public rawSubject:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->rawSubject:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/google/common/collect/HashBasedTable;->create()Lcom/google/common/collect/HashBasedTable;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/kingsoft/mail/chat/ChatCache;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/kingsoft/mail/chat/ChatCache;->chatCache:Lcom/kingsoft/mail/chat/ChatCache;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/kingsoft/mail/chat/ChatCache;

    invoke-direct {v0}, Lcom/kingsoft/mail/chat/ChatCache;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/chat/ChatCache;->chatCache:Lcom/kingsoft/mail/chat/ChatCache;

    .line 52
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/chat/ChatCache;->chatCache:Lcom/kingsoft/mail/chat/ChatCache;

    return-object v0
.end method

.method private remove(IJ)V
    .locals 3
    .param p1, "rowKey"    # I
    .param p2, "columnKey"    # J

    .prologue
    .line 171
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/HashBasedTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method private removeColumn(J)V
    .locals 3
    .param p1, "columnKey"    # J

    .prologue
    .line 162
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/HashBasedTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 163
    .local v0, "rowKey":I
    invoke-direct {p0, v0, p1, p2}, Lcom/kingsoft/mail/chat/ChatCache;->remove(IJ)V

    .line 164
    return-void
.end method

.method private removeRow(I)V
    .locals 4
    .param p1, "rowKey"    # I

    .prologue
    .line 157
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/HashBasedTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 158
    .local v0, "columnKey":J
    invoke-direct {p0, p1, v0, v1}, Lcom/kingsoft/mail/chat/ChatCache;->remove(IJ)V

    .line 159
    return-void
.end method

.method private removeSafely(IJ)V
    .locals 0
    .param p1, "rowKey"    # I
    .param p2, "columnKey"    # J

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/mail/chat/ChatCache;->remove(IJ)V

    .line 153
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/chat/ChatCache;->restore(I)V

    .line 154
    return-void
.end method

.method private removeValue(Lcom/kingsoft/mail/chat/ChatCacheItem;)V
    .locals 3
    .param p1, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v1

    iget-wide v1, v1, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/HashBasedTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method private restore(I)V
    .locals 4
    .param p1, "rowKey"    # I

    .prologue
    .line 195
    move v1, p1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 196
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/chat/ChatCache;->getRow(I)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v0

    .line 197
    .local v0, "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/kingsoft/mail/chat/ChatCache;->removeRow(I)V

    .line 198
    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/kingsoft/mail/chat/ChatCache;->put(IJLcom/kingsoft/mail/chat/ChatCacheItem;)V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkAccount(J)Z
    .locals 2
    .param p1, "key"    # J

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->accountKey:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkMailBox(JLandroid/content/Context;)Z
    .locals 5
    .param p1, "key"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    iget-wide v2, p0, Lcom/kingsoft/mail/chat/ChatCache;->accountKey:J

    const/4 v4, 0x4

    invoke-static {p3, v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 62
    .local v0, "outBoxId":J
    iget-wide v2, p0, Lcom/kingsoft/mail/chat/ChatCache;->mailboxKey:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_0

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->rawSubject:Ljava/lang/String;

    .line 70
    iput-wide v1, p0, Lcom/kingsoft/mail/chat/ChatCache;->accountKey:J

    .line 71
    iput-wide v1, p0, Lcom/kingsoft/mail/chat/ChatCache;->mailboxKey:J

    .line 72
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-virtual {v0}, Lcom/google/common/collect/HashBasedTable;->clear()V

    .line 76
    :cond_0
    return-void
.end method

.method public contains(IJ)Z
    .locals 3
    .param p1, "rowKey"    # I
    .param p2, "columnKey"    # J

    .prologue
    .line 106
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/HashBasedTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsColumn(J)Z
    .locals 2
    .param p1, "columnKey"    # J

    .prologue
    .line 175
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/HashBasedTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRow(I)Z
    .locals 2
    .param p1, "rowKey"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/HashBasedTable;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Lcom/kingsoft/mail/chat/ChatCacheItem;)Z
    .locals 1
    .param p1, "value"    # Lcom/kingsoft/mail/chat/ChatCacheItem;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/HashBasedTable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(IJ)Lcom/kingsoft/mail/chat/ChatCacheItem;
    .locals 3
    .param p1, "rowKey"    # I
    .param p2, "columnKey"    # J

    .prologue
    .line 128
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/HashBasedTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/chat/ChatCacheItem;

    return-object v0
.end method

.method public getColumn(J)Lcom/kingsoft/mail/chat/ChatCacheItem;
    .locals 4
    .param p1, "columnKey"    # J

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/chat/ChatCache;->containsColumn(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/HashBasedTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 122
    .local v1, "rowKey":I
    invoke-virtual {p0, v1, p1, p2}, Lcom/kingsoft/mail/chat/ChatCache;->get(IJ)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v0

    .line 124
    .end local v1    # "rowKey":I
    :cond_0
    return-object v0
.end method

.method public getRow(I)Lcom/kingsoft/mail/chat/ChatCacheItem;
    .locals 5
    .param p1, "rowKey"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/chat/ChatCache;->containsRow(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/HashBasedTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 113
    .local v1, "columnKey":J
    invoke-virtual {p0, p1, v1, v2}, Lcom/kingsoft/mail/chat/ChatCache;->get(IJ)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v0

    .line 115
    .end local v1    # "columnKey":J
    :cond_0
    return-object v0
.end method

.method public init(Ljava/lang/String;Landroid/content/Context;JJ)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "acKey"    # J
    .param p5, "boxKey"    # J

    .prologue
    .line 36
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatCache;->rawSubject:Ljava/lang/String;

    .line 37
    iput-wide p3, p0, Lcom/kingsoft/mail/chat/ChatCache;->accountKey:J

    .line 38
    iput-wide p5, p0, Lcom/kingsoft/mail/chat/ChatCache;->mailboxKey:J

    .line 39
    invoke-static {}, Lcom/google/common/collect/HashBasedTable;->create()Lcom/google/common/collect/HashBasedTable;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    .line 40
    new-instance v0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;

    invoke-direct {v0, p2}, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->namesInfo:Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;

    .line 41
    return-void
.end method

.method public put(IJLcom/kingsoft/mail/chat/ChatCacheItem;)V
    .locals 3
    .param p1, "rowKey"    # I
    .param p2, "columnKey"    # J
    .param p4, "value"    # Lcom/kingsoft/mail/chat/ChatCacheItem;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/HashBasedTable;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/HashBasedTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-virtual {v0, p4}, Lcom/google/common/collect/HashBasedTable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p4}, Lcom/google/common/collect/HashBasedTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putAtEnd(JLcom/kingsoft/mail/chat/ChatCacheItem;)V
    .locals 4
    .param p1, "columnKey"    # J
    .param p3, "value"    # Lcom/kingsoft/mail/chat/ChatCacheItem;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-virtual {v1}, Lcom/google/common/collect/HashBasedTable;->rowKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 84
    .local v0, "rowKey":I
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p3}, Lcom/google/common/collect/HashBasedTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public putAtEnd(Lcom/kingsoft/mail/chat/ChatCacheItem;)V
    .locals 2
    .param p1, "value"    # Lcom/kingsoft/mail/chat/ChatCacheItem;

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v0

    iget-wide v0, v0, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/kingsoft/mail/chat/ChatCache;->putAtEnd(JLcom/kingsoft/mail/chat/ChatCacheItem;)V

    .line 80
    return-void
.end method

.method public removeColumnSafely(J)Z
    .locals 3
    .param p1, "columnKey"    # J

    .prologue
    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/chat/ChatCache;->containsColumn(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/HashBasedTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 144
    .local v0, "rowKey":I
    invoke-direct {p0, v0, p1, p2}, Lcom/kingsoft/mail/chat/ChatCache;->removeSafely(IJ)V

    .line 145
    const/4 v1, 0x1

    .line 147
    .end local v0    # "rowKey":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeRowSafely(I)Z
    .locals 4
    .param p1, "rowKey"    # I

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/chat/ChatCache;->containsRow(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/HashBasedTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 134
    .local v0, "columnKey":J
    invoke-direct {p0, p1, v0, v1}, Lcom/kingsoft/mail/chat/ChatCache;->removeSafely(IJ)V

    .line 135
    const/4 v2, 0x1

    .line 137
    .end local v0    # "columnKey":J
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCache;->hashTable:Lcom/google/common/collect/HashBasedTable;

    invoke-virtual {v0}, Lcom/google/common/collect/HashBasedTable;->size()I

    move-result v0

    return v0
.end method
