.class public abstract Lcom/kingsoft/mail/ui/FolderSelectionDialog;
.super Ljava/lang/Object;
.source "FolderSelectionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/FolderSelectionDialog$QueryRunner;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String;

.field private static sDialogShown:Z


# instance fields
.field protected final mAccount:Lcom/kingsoft/mail/providers/Account;

.field protected final mAdapter:Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;

.field protected final mBatch:Z

.field protected final mBuilder:Lmiui/app/AlertDialog$Builder;

.field protected final mContext:Landroid/content/Context;

.field protected final mCurrentFolder:Lcom/kingsoft/mail/providers/Folder;

.field protected mDialog:Lmiui/app/AlertDialog;

.field protected final mRunner:Lcom/kingsoft/mail/ui/FolderSelectionDialog$QueryRunner;

.field protected final mTarget:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/ui/ConversationUpdater;Ljava/util/Collection;ZLcom/kingsoft/mail/providers/Folder;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p3, "updater"    # Lcom/kingsoft/mail/ui/ConversationUpdater;
    .param p5, "isBatch"    # Z
    .param p6, "currentFolder"    # Lcom/kingsoft/mail/providers/Folder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingsoft/mail/providers/Account;",
            "Lcom/kingsoft/mail/ui/ConversationUpdater;",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;Z",
            "Lcom/kingsoft/mail/providers/Folder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    .local p4, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p3, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    .line 93
    iput-object p4, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->mTarget:Ljava/util/Collection;

    .line 94
    iput-boolean p5, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->mBatch:Z

    .line 96
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    const v1, 0x7f100107

    invoke-virtual {v0, v1, p0}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 98
    iput-object p2, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 99
    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->mBuilder:Lmiui/app/AlertDialog$Builder;

    .line 100
    iput-object p6, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->mCurrentFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 101
    new-instance v1, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;

    invoke-direct {v1}, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->mAdapter:Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;

    .line 102
    new-instance v1, Lcom/kingsoft/mail/ui/FolderSelectionDialog$QueryRunner;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/kingsoft/mail/ui/FolderSelectionDialog$QueryRunner;-><init>(Lcom/kingsoft/mail/ui/FolderSelectionDialog;Landroid/content/Context;Lcom/kingsoft/mail/ui/FolderSelectionDialog$1;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->mRunner:Lcom/kingsoft/mail/ui/FolderSelectionDialog$QueryRunner;

    .line 103
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/ui/ConversationUpdater;Ljava/util/Collection;ZLcom/kingsoft/mail/providers/Folder;Z)Lcom/kingsoft/mail/ui/FolderSelectionDialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "updater"    # Lcom/kingsoft/mail/ui/ConversationUpdater;
    .param p4, "isBatch"    # Z
    .param p5, "currentFolder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p6, "isMoveTo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingsoft/mail/providers/Account;",
            "Lcom/kingsoft/mail/ui/ConversationUpdater;",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;Z",
            "Lcom/kingsoft/mail/providers/Folder;",
            "Z)",
            "Lcom/kingsoft/mail/ui/FolderSelectionDialog;"
        }
    .end annotation

    .prologue
    .line 60
    .local p3, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    sget-boolean v0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->sDialogShown:Z

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    .line 68
    :cond_0
    if-nez p6, :cond_1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    :cond_1
    new-instance v0, Lcom/kingsoft/mail/ui/SingleFolderSelectionDialog;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/mail/ui/SingleFolderSelectionDialog;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/ui/ConversationUpdater;Ljava/util/Collection;ZLcom/kingsoft/mail/providers/Folder;)V

    goto :goto_0

    .line 73
    :cond_2
    new-instance v0, Lcom/kingsoft/mail/ui/MultiFoldersSelectionDialog;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/mail/ui/MultiFoldersSelectionDialog;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/ui/ConversationUpdater;Ljava/util/Collection;ZLcom/kingsoft/mail/providers/Folder;)V

    goto :goto_0
.end method

.method public static setDialogDismissed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    sget-object v0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Folder Selection dialog dismissed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 80
    sput-boolean v3, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->sDialogShown:Z

    .line 81
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 125
    invoke-static {}, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->setDialogDismissed()V

    .line 126
    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->mTarget:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Conversation;

    .line 127
    .local v0, "cv":Lcom/kingsoft/mail/providers/Conversation;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->mContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->moveCacheItem(Landroid/content/Context;JZ)V

    goto :goto_0

    .line 129
    .end local v0    # "cv":Lcom/kingsoft/mail/providers/Conversation;
    :cond_0
    return-void
.end method

.method protected abstract onListItemClick(I)V
.end method

.method public show()V
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->sDialogShown:Z

    .line 109
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->mRunner:Lcom/kingsoft/mail/ui/FolderSelectionDialog$QueryRunner;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/ui/FolderSelectionDialog$QueryRunner;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    return-void
.end method

.method protected showInternal()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    .line 114
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0, p0}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 115
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/kingsoft/mail/ui/FolderSelectionDialog$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/FolderSelectionDialog$1;-><init>(Lcom/kingsoft/mail/ui/FolderSelectionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    return-void
.end method

.method protected abstract updateAdapterInBackground(Landroid/content/Context;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
