.class public Lcom/kingsoft/mail/ui/FolderOperations;
.super Ljava/lang/Object;
.source "FolderOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/FolderOperations$1;,
        Lcom/kingsoft/mail/ui/FolderOperations$Operation;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/ui/FolderOperations$Operation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/FolderOperations;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderOperations;->mOperations:Ljava/util/Map;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/kingsoft/mail/providers/Folder;Z)V
    .locals 3
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "add"    # Z

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/FolderOperations;-><init>()V

    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/FolderOperations;->add(Lcom/kingsoft/mail/providers/Folder;Z)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/ui/FolderOperations;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "FolderOperation created with null Folder object"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/kingsoft/mail/ui/FolderOperations;
    .locals 1
    .param p0, "encodedFolderOperations"    # Ljava/lang/String;

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public static serialize(Lcom/kingsoft/mail/ui/FolderOperations;)Ljava/lang/String;
    .locals 1
    .param p0, "operations"    # Lcom/kingsoft/mail/ui/FolderOperations;

    .prologue
    .line 182
    const-string/jumbo v0, ""

    return-object v0
.end method


# virtual methods
.method public add(Lcom/kingsoft/mail/providers/Folder;Z)V
    .locals 3
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "add"    # Z

    .prologue
    .line 67
    new-instance v0, Lcom/kingsoft/mail/ui/FolderOperations$Operation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/kingsoft/mail/ui/FolderOperations$Operation;-><init>(Lcom/kingsoft/mail/ui/FolderOperations;Lcom/kingsoft/mail/providers/Folder;ZLcom/kingsoft/mail/ui/FolderOperations$1;)V

    .line 69
    .local v0, "operation":Lcom/kingsoft/mail/ui/FolderOperations$Operation;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderOperations;->mOperations:Ljava/util/Map;

    iget-object v2, p1, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderOperations;->mOperations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 138
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderOperations;->mOperations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getOperationList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/ui/FolderOperations$Operation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 168
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/ui/FolderOperations$Operation;>;"
    iget-object v4, p0, Lcom/kingsoft/mail/ui/FolderOperations;->mOperations:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 169
    .local v2, "operationSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/kingsoft/mail/ui/FolderOperations$Operation;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 170
    .local v1, "operationItem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/kingsoft/mail/ui/FolderOperations$Operation;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    .end local v1    # "operationItem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/kingsoft/mail/ui/FolderOperations$Operation;>;"
    :cond_0
    return-object v3
.end method

.method public hasApplyOperation(Lcom/kingsoft/mail/providers/Folder;)Z
    .locals 1
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 98
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/FolderOperations;->hasApplyOperation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasApplyOperation(Ljava/lang/String;)Z
    .locals 2
    .param p1, "canonicalName"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/FolderOperations;->hasOperation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderOperations;->mOperations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/FolderOperations$Operation;

    .line 109
    .local v0, "operation":Lcom/kingsoft/mail/ui/FolderOperations$Operation;
    iget-boolean v1, v0, Lcom/kingsoft/mail/ui/FolderOperations$Operation;->mAdd:Z

    .line 111
    .end local v0    # "operation":Lcom/kingsoft/mail/ui/FolderOperations$Operation;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasOperation(Lcom/kingsoft/mail/providers/Folder;)Z
    .locals 1
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 79
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/FolderOperations;->hasOperation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasOperation(Ljava/lang/String;)Z
    .locals 1
    .param p1, "canonicalName"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderOperations;->mOperations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasRemoveOperation(Lcom/kingsoft/mail/providers/Folder;)Z
    .locals 1
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 120
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/FolderOperations;->hasRemoveOperation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasRemoveOperation(Ljava/lang/String;)Z
    .locals 3
    .param p1, "canonicalName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/FolderOperations;->hasOperation(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderOperations;->mOperations:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/FolderOperations$Operation;

    .line 131
    .local v0, "operation":Lcom/kingsoft/mail/ui/FolderOperations$Operation;
    iget-boolean v2, v0, Lcom/kingsoft/mail/ui/FolderOperations$Operation;->mAdd:Z

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 133
    .end local v0    # "operation":Lcom/kingsoft/mail/ui/FolderOperations$Operation;
    :cond_0
    return v1
.end method

.method public undoOperation()Lcom/kingsoft/mail/ui/FolderOperations;
    .locals 7

    .prologue
    .line 153
    new-instance v4, Lcom/kingsoft/mail/ui/FolderOperations;

    invoke-direct {v4}, Lcom/kingsoft/mail/ui/FolderOperations;-><init>()V

    .line 154
    .local v4, "undoOperations":Lcom/kingsoft/mail/ui/FolderOperations;
    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderOperations;->mOperations:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 155
    .local v2, "operationSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/kingsoft/mail/ui/FolderOperations$Operation;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 156
    .local v1, "operationItem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/kingsoft/mail/ui/FolderOperations$Operation;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/ui/FolderOperations$Operation;

    .line 157
    .local v3, "operationToUndo":Lcom/kingsoft/mail/ui/FolderOperations$Operation;
    iget-object v6, v3, Lcom/kingsoft/mail/ui/FolderOperations$Operation;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-boolean v5, v3, Lcom/kingsoft/mail/ui/FolderOperations$Operation;->mAdd:Z

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v6, v5}, Lcom/kingsoft/mail/ui/FolderOperations;->add(Lcom/kingsoft/mail/providers/Folder;Z)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 159
    .end local v1    # "operationItem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/kingsoft/mail/ui/FolderOperations$Operation;>;"
    .end local v3    # "operationToUndo":Lcom/kingsoft/mail/ui/FolderOperations$Operation;
    :cond_1
    return-object v4
.end method
