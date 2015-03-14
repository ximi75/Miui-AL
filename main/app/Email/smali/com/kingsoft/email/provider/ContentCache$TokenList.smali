.class Lcom/kingsoft/email/provider/ContentCache$TokenList;
.super Ljava/util/ArrayList;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/ContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TokenList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/kingsoft/email/provider/ContentCache$CacheToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLogTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TokenList-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/provider/ContentCache$TokenList;->mLogTag:Ljava/lang/String;

    .line 185
    return-void
.end method

.method static synthetic access$600(Lcom/kingsoft/email/provider/ContentCache$TokenList;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/ContentCache$TokenList;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache$TokenList;->mLogTag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lcom/kingsoft/email/provider/ContentCache$CacheToken;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 229
    new-instance v0, Lcom/kingsoft/email/provider/ContentCache$CacheToken;

    invoke-direct {v0, p1}, Lcom/kingsoft/email/provider/ContentCache$CacheToken;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "token":Lcom/kingsoft/email/provider/ContentCache$CacheToken;
    invoke-super {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    sget-boolean v1, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 234
    :cond_0
    return-object v0
.end method

.method invalidate()V
    .locals 3

    .prologue
    .line 207
    sget-boolean v2, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/ContentCache$TokenList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/provider/ContentCache$CacheToken;

    .line 211
    .local v1, "token":Lcom/kingsoft/email/provider/ContentCache$CacheToken;
    invoke-virtual {v1}, Lcom/kingsoft/email/provider/ContentCache$CacheToken;->invalidate()V

    goto :goto_0

    .line 213
    .end local v1    # "token":Lcom/kingsoft/email/provider/ContentCache$CacheToken;
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/ContentCache$TokenList;->clear()V

    .line 214
    return-void
.end method

.method invalidateTokens(Ljava/lang/String;)I
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 188
    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 191
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v2, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/ContentCache$CacheToken;>;"
    const/4 v0, 0x0

    .line 193
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/ContentCache$TokenList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/email/provider/ContentCache$CacheToken;

    .line 194
    .local v3, "token":Lcom/kingsoft/email/provider/ContentCache$CacheToken;
    invoke-virtual {v3}, Lcom/kingsoft/email/provider/ContentCache$CacheToken;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    invoke-virtual {v3}, Lcom/kingsoft/email/provider/ContentCache$CacheToken;->invalidate()V

    .line 196
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .end local v3    # "token":Lcom/kingsoft/email/provider/ContentCache$CacheToken;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/email/provider/ContentCache$CacheToken;

    .line 201
    .restart local v3    # "token":Lcom/kingsoft/email/provider/ContentCache$CacheToken;
    invoke-virtual {p0, v3}, Lcom/kingsoft/email/provider/ContentCache$TokenList;->remove(Lcom/kingsoft/email/provider/ContentCache$CacheToken;)Z

    goto :goto_1

    .line 203
    .end local v3    # "token":Lcom/kingsoft/email/provider/ContentCache$CacheToken;
    :cond_3
    return v0
.end method

.method remove(Lcom/kingsoft/email/provider/ContentCache$CacheToken;)Z
    .locals 2
    .param p1, "token"    # Lcom/kingsoft/email/provider/ContentCache$CacheToken;

    .prologue
    .line 217
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 218
    .local v0, "result":Z
    sget-boolean v1, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 225
    :cond_0
    return v0
.end method
