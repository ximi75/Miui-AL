.class public Lcom/kingsoft/mail/ui/FolderOperation;
.super Ljava/lang/Object;
.source "FolderOperation.java"


# static fields
.field public static final EMPTY:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/ui/FolderOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAdd:Z

.field public mFolder:Lcom/kingsoft/mail/providers/Folder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/FolderOperation;->EMPTY:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "operation"    # Ljava/lang/Boolean;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/FolderOperation;->mAdd:Z

    .line 37
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderOperation;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 38
    return-void
.end method

.method public static final getFolders(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/ui/FolderOperation;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "ops":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/ui/FolderOperation;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 47
    .local v0, "folders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/kingsoft/mail/providers/Folder;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/ui/FolderOperation;

    .line 48
    .local v2, "op":Lcom/kingsoft/mail/ui/FolderOperation;
    iget-object v3, v2, Lcom/kingsoft/mail/ui/FolderOperation;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    .end local v2    # "op":Lcom/kingsoft/mail/ui/FolderOperation;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method public static isDestructive(Ljava/util/Collection;Lcom/kingsoft/mail/providers/Folder;)Z
    .locals 4
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/ui/FolderOperation;",
            ">;",
            "Lcom/kingsoft/mail/providers/Folder;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "folderOps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/ui/FolderOperation;>;"
    const/4 v2, 0x1

    .line 70
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/FolderOperation;

    .line 71
    .local v1, "op":Lcom/kingsoft/mail/ui/FolderOperation;
    iget-object v3, v1, Lcom/kingsoft/mail/ui/FolderOperation;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-static {v3, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v1, Lcom/kingsoft/mail/ui/FolderOperation;->mAdd:Z

    if-nez v3, :cond_1

    .line 78
    .end local v1    # "op":Lcom/kingsoft/mail/ui/FolderOperation;
    :goto_0
    return v2

    .line 74
    .restart local v1    # "op":Lcom/kingsoft/mail/ui/FolderOperation;
    :cond_1
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Folder;->isTrash()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/kingsoft/mail/ui/FolderOperation;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Folder;->isInbox()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 78
    .end local v1    # "op":Lcom/kingsoft/mail/ui/FolderOperation;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static listOf(Lcom/kingsoft/mail/ui/FolderOperation;)Ljava/util/Collection;
    .locals 1
    .param p0, "in"    # Lcom/kingsoft/mail/ui/FolderOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/ui/FolderOperation;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/ui/FolderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    if-nez p0, :cond_0

    sget-object v0, Lcom/kingsoft/mail/ui/FolderOperation;->EMPTY:Ljava/util/Collection;

    .line 62
    .local v0, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/ui/FolderOperation;>;"
    :goto_0
    return-object v0

    .line 61
    .end local v0    # "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/ui/FolderOperation;>;"
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method
