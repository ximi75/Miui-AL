.class public Lcom/kingsoft/mail/ui/ConversationSelectionSet;
.super Ljava/lang/Object;
.source "ConversationSelectionSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/kingsoft/mail/ui/ConversationSelectionSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConversationUriToIdMap:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mInternalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final mObservers:Ljava/util/ArrayList;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/ui/ConversationSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/kingsoft/mail/ui/ConversationSelectionSet$1;

    invoke-direct {v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet$1;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    .line 70
    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mConversationUriToIdMap:Lcom/google/common/collect/BiMap;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mObservers:Ljava/util/ArrayList;

    .line 80
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 8
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    .line 68
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    .line 70
    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mConversationUriToIdMap:Lcom/google/common/collect/BiMap;

    .line 72
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mObservers:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 84
    .local v2, "conversations":[Landroid/os/Parcelable;
    move-object v0, v2

    .local v0, "arr$":[Landroid/os/Parcelable;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .local v5, "parceled":Landroid/os/Parcelable;
    move-object v1, v5

    .line 85
    check-cast v1, Lcom/kingsoft/mail/providers/Conversation;

    .line 86
    .local v1, "conversation":Lcom/kingsoft/mail/providers/Conversation;
    iget-wide v6, v1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->put(Ljava/lang/Long;Lcom/kingsoft/mail/providers/Conversation;)V

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "conversation":Lcom/kingsoft/mail/providers/Conversation;
    .end local v5    # "parceled":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/kingsoft/mail/ui/ConversationSelectionSet$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Ljava/lang/ClassLoader;
    .param p3, "x2"    # Lcom/kingsoft/mail/ui/ConversationSelectionSet$1;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private containsKey(Ljava/lang/Long;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Long;

    .prologue
    .line 125
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private dispatchOnBecomeUnempty(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/ui/ConversationSetObserver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "observers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/ConversationSetObserver;>;"
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 148
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/ConversationSetObserver;

    .line 149
    .local v1, "observer":Lcom/kingsoft/mail/ui/ConversationSetObserver;
    invoke-interface {v1, p0}, Lcom/kingsoft/mail/ui/ConversationSetObserver;->onSetPopulated(Lcom/kingsoft/mail/ui/ConversationSelectionSet;)V

    goto :goto_0

    .line 151
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Lcom/kingsoft/mail/ui/ConversationSetObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    return-void
.end method

.method private dispatchOnChange(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/ui/ConversationSetObserver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "observers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/ConversationSetObserver;>;"
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 158
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/ConversationSetObserver;

    .line 159
    .local v1, "observer":Lcom/kingsoft/mail/ui/ConversationSetObserver;
    invoke-interface {v1, p0}, Lcom/kingsoft/mail/ui/ConversationSetObserver;->onSetChanged(Lcom/kingsoft/mail/ui/ConversationSelectionSet;)V

    goto :goto_0

    .line 161
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Lcom/kingsoft/mail/ui/ConversationSetObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    return-void
.end method

.method private dispatchOnEmpty(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/ui/ConversationSetObserver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "observers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/ConversationSetObserver;>;"
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 166
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/ConversationSetObserver;

    .line 167
    .local v1, "observer":Lcom/kingsoft/mail/ui/ConversationSetObserver;
    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ConversationSetObserver;->onSetEmpty()V

    goto :goto_0

    .line 169
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Lcom/kingsoft/mail/ui/ConversationSetObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    return-void
.end method

.method private put(Ljava/lang/Long;Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "info"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 183
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    .line 185
    .local v0, "initiallyEmpty":Z
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mConversationUriToIdMap:Lcom/google/common/collect/BiMap;

    iget-object v4, p2, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, p1}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mObservers:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 189
    .local v1, "observersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/ConversationSetObserver;>;"
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->dispatchOnChange(Ljava/util/ArrayList;)V

    .line 190
    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->dispatchOnBecomeUnempty(Ljava/util/ArrayList;)V

    .line 193
    :cond_0
    monitor-exit v3

    .line 194
    return-void

    .line 193
    .end local v0    # "initiallyEmpty":Z
    .end local v1    # "observersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/ConversationSetObserver;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private putNotDispatchChange(Ljava/lang/Long;Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "info"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 279
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mConversationUriToIdMap:Lcom/google/common/collect/BiMap;

    iget-object v2, p2, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    monitor-exit v1

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private remove(Ljava/lang/Long;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 198
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->removeAll(Ljava/util/Collection;)V

    .line 200
    monitor-exit v1

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeAll(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 205
    :try_start_0
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    .line 207
    .local v2, "initiallyNotEmpty":Z
    :goto_0
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mConversationUriToIdMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v5}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v3

    .line 209
    .local v3, "inverseMap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 210
    .local v1, "id":Ljava/lang/Long;
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-interface {v3, v1}, Lcom/google/common/collect/BiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 219
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/lang/Long;
    .end local v2    # "initiallyNotEmpty":Z
    .end local v3    # "inverseMap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<Ljava/lang/Long;Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 205
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 214
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "initiallyNotEmpty":Z
    .restart local v3    # "inverseMap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mObservers:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    .line 215
    .local v4, "observersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/ConversationSetObserver;>;"
    invoke-direct {p0, v4}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->dispatchOnChange(Ljava/util/ArrayList;)V

    .line 216
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 217
    invoke-direct {p0, v4}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->dispatchOnEmpty(Ljava/util/ArrayList;)V

    .line 219
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    return-void
.end method

.method private removeNotDispatchChange(J)V
    .locals 4
    .param p1, "id"    # J

    .prologue
    .line 270
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mConversationUriToIdMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    .line 273
    .local v0, "inverseMap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/BiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    monitor-exit v2

    .line 276
    return-void

    .line 275
    .end local v0    # "inverseMap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<Ljava/lang/Long;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addObserver(Lcom/kingsoft/mail/ui/ConversationSetObserver;)V
    .locals 2
    .param p1, "observer"    # Lcom/kingsoft/mail/ui/ConversationSetObserver;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    monitor-exit v1

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 105
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 106
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 107
    .local v0, "initiallyNotEmpty":Z
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 108
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mConversationUriToIdMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v2}, Lcom/google/common/collect/BiMap;->clear()V

    .line 110
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 111
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mObservers:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 112
    .local v1, "observersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/ConversationSetObserver;>;"
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->dispatchOnChange(Ljava/util/ArrayList;)V

    .line 113
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->dispatchOnEmpty(Ljava/util/ArrayList;)V

    .line 115
    .end local v1    # "observersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/ConversationSetObserver;>;"
    :cond_0
    monitor-exit v3

    .line 116
    return-void

    .line 106
    .end local v0    # "initiallyNotEmpty":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public contains(Lcom/kingsoft/mail/providers/Conversation;)Z
    .locals 4
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 136
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-wide v2, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->containsKey(Ljava/lang/Long;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public delete(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "deletedRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v1, v3

    .line 349
    .local v1, "id":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->remove(Ljava/lang/Long;)V

    goto :goto_0

    .line 351
    .end local v1    # "id":J
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyChange(Z)V
    .locals 3
    .param p1, "initiallyNotEmpty"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 292
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mObservers:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 295
    .local v0, "observersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/ConversationSetObserver;>;"
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->dispatchOnChange(Ljava/util/ArrayList;)V

    .line 296
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 297
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->dispatchOnEmpty(Ljava/util/ArrayList;)V

    .line 299
    :cond_0
    monitor-exit v2

    .line 300
    return-void

    .line 299
    .end local v0    # "observersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/ConversationSetObserver;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putAll(Lcom/kingsoft/mail/ui/ConversationSelectionSet;)V
    .locals 4
    .param p1, "other"    # Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    .prologue
    .line 324
    if-nez p1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    .line 329
    .local v0, "initiallyEmpty":Z
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 331
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mObservers:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 332
    .local v1, "observersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/ConversationSetObserver;>;"
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->dispatchOnChange(Ljava/util/ArrayList;)V

    .line 333
    if-eqz v0, :cond_0

    .line 334
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->dispatchOnBecomeUnempty(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public removeObserver(Lcom/kingsoft/mail/ui/ConversationSetObserver;)V
    .locals 2
    .param p1, "observer"    # Lcom/kingsoft/mail/ui/ConversationSetObserver;

    .prologue
    .line 228
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 230
    monitor-exit v1

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 238
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 411
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 412
    :try_start_0
    const-string/jumbo v0, "%s:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toggle(Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 3
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 250
    iget-wide v0, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    .line 251
    .local v0, "conversationId":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->containsKey(Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->remove(Ljava/lang/Long;)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->put(Ljava/lang/Long;Lcom/kingsoft/mail/providers/Conversation;)V

    goto :goto_0
.end method

.method public toggleNotDispatchChange(Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 3
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 260
    iget-wide v0, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    .line 261
    .local v0, "conversationId":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->containsKey(Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    invoke-direct {p0, v0, v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->removeNotDispatchChange(J)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->putNotDispatchChange(Ljava/lang/Long;Lcom/kingsoft/mail/providers/Conversation;)V

    goto :goto_0
.end method

.method public validateAgainstCursor(Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 9
    .param p1, "cursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 359
    iget-object v8, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 360
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 361
    monitor-exit v8

    .line 407
    :goto_0
    return-void

    .line 364
    :cond_0
    if-nez p1, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->clear()V

    .line 366
    monitor-exit v8

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 370
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getDeletedItems()Ljava/util/Set;

    move-result-object v4

    .line 373
    .local v4, "deletedConversations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 374
    .local v6, "itemsToRemoveFromBatch":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 375
    .local v2, "conversationUri":Ljava/lang/String;
    iget-object v7, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mConversationUriToIdMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v7, v2}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 376
    .local v1, "conversationId":Ljava/lang/Long;
    if-eqz v1, :cond_2

    .line 377
    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 382
    .end local v1    # "conversationId":Ljava/lang/Long;
    .end local v2    # "conversationUri":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 386
    .local v0, "batchConversationToCheck":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 392
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getConversationIds()Ljava/util/Set;

    move-result-object v3

    .line 397
    .local v3, "cursorConversationIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v3, :cond_4

    .line 398
    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 403
    :cond_4
    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 405
    invoke-direct {p0, v6}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->removeAll(Ljava/util/Collection;)V

    .line 406
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->mInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/kingsoft/mail/providers/Conversation;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/mail/providers/Conversation;

    .line 341
    .local v0, "values":[Lcom/kingsoft/mail/providers/Conversation;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 342
    return-void
.end method
