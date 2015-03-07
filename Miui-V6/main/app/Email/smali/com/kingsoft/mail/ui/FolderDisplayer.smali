.class public Lcom/kingsoft/mail/ui/FolderDisplayer;
.super Ljava/lang/Object;
.source "FolderDisplayer.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mDefaultBgColor:I

.field protected final mDefaultFgColor:I

.field protected final mFoldersSortedSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/FolderDisplayer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/google/common/collect/Sets;->newTreeSet()Ljava/util/TreeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderDisplayer;->mFoldersSortedSet:Ljava/util/SortedSet;

    .line 47
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderDisplayer;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/ui/FolderDisplayer;->mDefaultFgColor:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/ui/FolderDisplayer;->mDefaultBgColor:I

    .line 51
    return-void
.end method


# virtual methods
.method public loadConversationFolders(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/utils/FolderUri;I)V
    .locals 3
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "ignoreFolderUri"    # Lcom/kingsoft/mail/utils/FolderUri;
    .param p3, "ignoreFolderType"    # I

    .prologue
    .line 62
    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderDisplayer;->mFoldersSortedSet:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->clear()V

    .line 63
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Conversation;->getRawFolders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Folder;

    .line 65
    .local v0, "folder":Lcom/kingsoft/mail/providers/Folder;
    if-ltz p3, :cond_1

    invoke-virtual {v0, p3}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {p2, v2}, Lcom/kingsoft/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderDisplayer;->mFoldersSortedSet:Ljava/util/SortedSet;

    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    .end local v0    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_3
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderDisplayer;->mFoldersSortedSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 81
    return-void
.end method
