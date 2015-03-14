.class public Lcom/kingsoft/mail/ui/SingleFolderSelectionDialog;
.super Lcom/kingsoft/mail/ui/FolderSelectionDialog;
.source "SingleFolderSelectionDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/ui/ConversationUpdater;Ljava/util/Collection;ZLcom/kingsoft/mail/providers/Folder;)V
    .locals 2
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
    .line 56
    .local p4, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    invoke-direct/range {p0 .. p6}, Lcom/kingsoft/mail/ui/FolderSelectionDialog;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/ui/ConversationUpdater;Ljava/util/Collection;ZLcom/kingsoft/mail/providers/Folder;)V

    .line 58
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SingleFolderSelectionDialog;->mBuilder:Lmiui/app/AlertDialog$Builder;

    const v1, 0x7f10027e

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 59
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 119
    return-void
.end method

.method protected onListItemClick(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 104
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SingleFolderSelectionDialog;->mAdapter:Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 105
    .local v7, "item":Ljava/lang/Object;
    instance-of v0, v7, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    if-eqz v0, :cond_0

    .line 106
    check-cast v7, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    .end local v7    # "item":Ljava/lang/Object;
    invoke-virtual {v7}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v6

    .line 107
    .local v6, "folder":Lcom/kingsoft/mail/providers/Folder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/FolderOperation;>;"
    new-instance v0, Lcom/kingsoft/mail/ui/FolderOperation;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SingleFolderSelectionDialog;->mCurrentFolder:Lcom/kingsoft/mail/providers/Folder;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/kingsoft/mail/ui/FolderOperation;-><init>(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v0, Lcom/kingsoft/mail/ui/FolderOperation;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v6, v2}, Lcom/kingsoft/mail/ui/FolderOperation;-><init>(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SingleFolderSelectionDialog;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SingleFolderSelectionDialog;->mTarget:Ljava/util/Collection;

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/SingleFolderSelectionDialog;->mBatch:Z

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/ui/ConversationUpdater;->assignFolder(Ljava/util/Collection;Ljava/util/Collection;ZZZ)V

    .line 112
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SingleFolderSelectionDialog;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    .line 114
    .end local v1    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/FolderOperation;>;"
    .end local v6    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_0
    return-void
.end method

.method protected updateAdapterInBackground(Landroid/content/Context;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v10, 0x0

    .line 65
    .local v10, "foldersCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SingleFolderSelectionDialog;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SingleFolderSelectionDialog;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    :goto_0
    sget-object v3, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, "headers":[Ljava/lang/String;
    iget-object v14, p0, Lcom/kingsoft/mail/ui/SingleFolderSelectionDialog;->mAdapter:Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;

    new-instance v1, Lcom/kingsoft/mail/ui/UserFolderHierarchicalFolderSelectorAdapter;

    const/4 v2, 0x0

    invoke-static {v10, v2}, Lcom/kingsoft/mail/ui/AddableFolderSelectorAdapter;->filterFolders(Landroid/database/Cursor;Ljava/util/Set;)Landroid/database/Cursor;

    move-result-object v3

    const v4, 0x7f0400aa

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/kingsoft/mail/ui/SingleFolderSelectionDialog;->mCurrentFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/kingsoft/mail/ui/UserFolderHierarchicalFolderSelectorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Lcom/kingsoft/mail/providers/Folder;)V

    invoke-virtual {v14, v1}, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;->addSection(Lcom/kingsoft/mail/ui/FolderSelectorAdapter;)V

    .line 84
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v9, "foldernames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SingleFolderSelectionDialog;->mAdapter:Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;->getCount()I

    move-result v1

    if-ge v12, v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SingleFolderSelectionDialog;->mAdapter:Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;

    invoke-virtual {v1, v12}, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v13

    .line 87
    .local v13, "item":Ljava/lang/Object;
    instance-of v1, v13, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    if-eqz v1, :cond_0

    .line 88
    check-cast v13, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    .end local v13    # "item":Ljava/lang/Object;
    invoke-virtual {v13}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v7

    .line 89
    .local v7, "folder":Lcom/kingsoft/mail/providers/Folder;
    iget-object v1, v7, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v7    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 65
    .end local v9    # "foldernames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "headers":[Ljava/lang/String;
    .end local v12    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SingleFolderSelectionDialog;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    goto :goto_0

    .line 92
    .restart local v9    # "foldernames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "headers":[Ljava/lang/String;
    .restart local v12    # "i":I
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v8, v0

    .line 93
    .local v8, "foldernamearr":[Ljava/lang/String;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SingleFolderSelectionDialog;->mBuilder:Lmiui/app/AlertDialog$Builder;

    const/4 v2, -0x1

    invoke-virtual {v1, v8, v2, p0}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    if-eqz v10, :cond_3

    .line 97
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_3
    return-void

    .line 96
    .end local v8    # "foldernamearr":[Ljava/lang/String;
    .end local v9    # "foldernames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "headers":[Ljava/lang/String;
    .end local v12    # "i":I
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_4

    .line 97
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method
