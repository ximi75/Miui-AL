.class public Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;
.super Ljava/lang/Object;
.source "ContiguousFIFOAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;,
        Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mExpected:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator",
            "<TT;>.Value;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    .local p0, "this":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    .line 80
    return-void
.end method

.method private contains(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeExecuteNow()V
    .locals 5

    .prologue
    .line 187
    .local p0, "this":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator<TT;>;"
    const/4 v0, 0x0

    .line 188
    .local v0, "count":I
    :goto_0
    iget-object v4, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 189
    const-string/jumbo v4, "pool maybeExecuteNow loop"

    invoke-static {v4}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 190
    iget-object v4, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    .line 191
    .local v1, "first":Ljava/lang/Object;, "TT;"
    if-lez v0, :cond_0

    .line 193
    invoke-direct {p0, v1}, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->onFirstExpectedChanged(Ljava/lang/Object;)V

    .line 196
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 197
    .local v2, "hash":I
    iget-object v4, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;

    .line 198
    .local v3, "value":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator<TT;>.Value;"
    iget-object v4, v3, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;->task:Ljava/lang/Runnable;

    if-nez v4, :cond_2

    .line 199
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 210
    .end local v1    # "first":Ljava/lang/Object;, "TT;"
    .end local v2    # "hash":I
    .end local v3    # "value":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator<TT;>.Value;"
    :cond_1
    return-void

    .line 203
    .restart local v1    # "first":Ljava/lang/Object;, "TT;"
    .restart local v2    # "hash":I
    .restart local v3    # "value":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator<TT;>.Value;"
    :cond_2
    iget-object v4, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 204
    iget-object v4, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 206
    iget-object v4, v3, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;->task:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 207
    add-int/lit8 v0, v0, 0x1

    .line 208
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    goto :goto_0
.end method

.method private onFirstExpectedChanged(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 218
    .local v1, "hash":I
    iget-object v3, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;

    .line 219
    .local v2, "value":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator<TT;>.Value;"
    if-nez v2, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, v2, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;->callback:Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback;

    .line 223
    .local v0, "callback":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback<TT;>;"
    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0, p1}, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback;->onBecomeFirstExpected(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private prettyPrint()Ljava/lang/String;
    .locals 7

    .prologue
    .line 239
    .local p0, "this":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator<TT;>;"
    iget-object v5, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 240
    const-string/jumbo v5, "{}"

    .line 261
    :goto_0
    return-object v5

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1c

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 244
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v5, 0x7b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    iget-object v5, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 246
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 247
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 248
    .local v3, "key":Ljava/lang/Object;, "TT;"
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 249
    .local v1, "hash":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    iget-object v5, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;

    .line 252
    .local v4, "value":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator<TT;>.Value;"
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 254
    const-string/jumbo v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 257
    .end local v1    # "hash":I
    .end local v3    # "key":Ljava/lang/Object;, "TT;"
    .end local v4    # "value":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator<TT;>.Value;"
    :cond_2
    const/16 v5, 0x7d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    iget-object v5, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    iget-object v6, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 259
    const-string/jumbo v5, " error"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 3
    .param p2, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    const-string/jumbo v2, "pool execute"

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 165
    .local v0, "hash":I
    iget-object v2, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;

    .line 166
    .local v1, "value":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator<TT;>.Value;"
    if-eqz v1, :cond_0

    if-nez p2, :cond_2

    .line 167
    :cond_0
    if-eqz p2, :cond_1

    .line 168
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 170
    :cond_1
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_2
    iput-object p2, v1, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;->task:Ljava/lang/Runnable;

    .line 175
    invoke-direct {p0}, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->maybeExecuteNow()V

    .line 176
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    goto :goto_0
.end method

.method public expect(Ljava/lang/Object;Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback<TT;>;"
    if-nez p1, :cond_0

    .line 97
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Do not use null keys."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_0
    const-string/jumbo v2, "pool expect"

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 102
    .local v0, "hash":I
    invoke-direct {p0, p1}, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 104
    iget-object v2, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    .line 107
    .local v1, "isFirst":Z
    iget-object v2, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 108
    iget-object v2, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    new-instance v3, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, v4}, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Value;-><init>(Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    if-eqz v1, :cond_2

    .line 112
    invoke-direct {p0, p1}, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->onFirstExpectedChanged(Ljava/lang/Object;)V

    .line 114
    :cond_2
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 115
    return-void
.end method

.method public forget(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;, "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 127
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Do not use null keys."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_0
    invoke-direct {p0, p1}, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string/jumbo v2, "pool forget"

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 136
    .local v0, "removedFirst":Z
    iget-object v2, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 137
    iget-object v2, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 141
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->mExpected:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    .local v1, "second":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_2

    .line 143
    invoke-direct {p0, v1}, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->onFirstExpectedChanged(Ljava/lang/Object;)V

    .line 146
    .end local v1    # "second":Ljava/lang/Object;, "TT;"
    :cond_2
    invoke-direct {p0}, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;->maybeExecuteNow()V

    .line 147
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    goto :goto_0
.end method
