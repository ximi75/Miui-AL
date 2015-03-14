.class public Lcom/kingsoft/email/provider/FolderPickerDialog;
.super Ljava/lang/Object;
.source "FolderPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field private final mAdapter:Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;

.field private final mCallback:Lcom/kingsoft/email/provider/FolderPickerCallback;

.field private final mCheckedState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDialog:Lmiui/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/kingsoft/email/provider/FolderPickerCallback;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callback"    # Lcom/kingsoft/email/provider/FolderPickerCallback;
    .param p4, "header"    # Ljava/lang/String;
    .param p5, "cancelable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p3, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mCallback:Lcom/kingsoft/email/provider/FolderPickerCallback;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mCheckedState:Ljava/util/HashMap;

    .line 55
    new-instance v6, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v6, p1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    .local v6, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {v6, p4}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 57
    const v0, 0x7f10029f

    invoke-virtual {v6, v0, p0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v6, p5}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    .line 59
    invoke-virtual {v6, p0}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 63
    .local v2, "foldersCursor":Landroid/database/Cursor;
    new-instance v0, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;

    invoke-direct {v0}, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mAdapter:Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;

    .line 64
    if-eqz v2, :cond_0

    .line 66
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, "headers":[Ljava/lang/String;
    iget-object v8, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mAdapter:Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;

    new-instance v0, Lcom/kingsoft/email/provider/FolderPickerSelectorAdapter;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const v4, 0x7f0400a0

    const/4 v1, 0x2

    aget-object v5, v7, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/provider/FolderPickerSelectorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;ILjava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;->addSection(Lcom/kingsoft/mail/ui/FolderSelectorAdapter;)V

    .line 70
    iget-object v0, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mAdapter:Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;

    invoke-virtual {v6, v0, p0}, Lmiui/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 75
    .end local v7    # "headers":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v6}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mDialog:Lmiui/app/AlertDialog;

    .line 76
    return-void

    .line 72
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic access$000(Lcom/kingsoft/email/provider/FolderPickerDialog;)Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/FolderPickerDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mAdapter:Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mCallback:Lcom/kingsoft/email/provider/FolderPickerCallback;

    invoke-interface {v0}, Lcom/kingsoft/email/provider/FolderPickerCallback;->cancel()V

    .line 161
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 131
    packed-switch p2, :pswitch_data_0

    .line 143
    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, v3}, Lcom/kingsoft/email/provider/FolderPickerDialog;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 146
    :goto_0
    return-void

    .line 133
    :pswitch_0
    const/4 v1, 0x0

    .line 134
    .local v1, "folder":Lcom/kingsoft/mail/providers/Folder;
    iget-object v3, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mCheckedState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 135
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/kingsoft/mail/providers/Folder;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "folder":Lcom/kingsoft/mail/providers/Folder;
    check-cast v1, Lcom/kingsoft/mail/providers/Folder;

    .line 140
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/kingsoft/mail/providers/Folder;Ljava/lang/Boolean;>;"
    .restart local v1    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mCallback:Lcom/kingsoft/email/provider/FolderPickerCallback;

    invoke-interface {v3, v1}, Lcom/kingsoft/email/provider/FolderPickerCallback;->select(Lcom/kingsoft/mail/providers/Folder;)V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 150
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mAdapter:Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;

    invoke-virtual {v1, p2}, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    .line 152
    .local v0, "row":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mCheckedState:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 153
    const/4 p3, 0x1

    .line 154
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mCheckedState:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 156
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 79
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->show()V

    .line 80
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/kingsoft/email/provider/FolderPickerDialog$1;

    invoke-direct {v2, p0}, Lcom/kingsoft/email/provider/FolderPickerDialog$1;-><init>(Lcom/kingsoft/email/provider/FolderPickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mDialog:Lmiui/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 91
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mCheckedState:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    :cond_0
    return-void
.end method

.method public update(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;)V
    .locals 8
    .param p1, "row"    # Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 105
    invoke-virtual {p1}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->isPresent()Z

    move-result v6

    if-nez v6, :cond_0

    move v0, v4

    .line 106
    .local v0, "add":Z
    :goto_0
    if-nez v0, :cond_1

    .line 127
    :goto_1
    return-void

    .end local v0    # "add":Z
    :cond_0
    move v0, v5

    .line 105
    goto :goto_0

    .line 112
    .restart local v0    # "add":Z
    :cond_1
    iget-object v6, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mAdapter:Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;

    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;->getCount()I

    .line 113
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v6, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mAdapter:Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;

    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 114
    iget-object v6, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mAdapter:Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;

    invoke-virtual {v6, v2}, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 115
    .local v3, "item":Ljava/lang/Object;
    instance-of v6, v3, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    if-eqz v6, :cond_2

    .line 116
    check-cast v3, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    .end local v3    # "item":Ljava/lang/Object;
    invoke-virtual {v3, v5}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->setIsPresent(Z)V

    .line 113
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 119
    :cond_3
    iget-object v5, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mCheckedState:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 120
    invoke-virtual {p1, v0}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->setIsPresent(Z)V

    .line 121
    iget-object v5, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mAdapter:Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;->notifyDataSetChanged()V

    .line 122
    iget-object v5, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mCheckedState:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v5, p0, Lcom/kingsoft/email/provider/FolderPickerDialog;->mDialog:Lmiui/app/AlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 126
    .local v1, "button":Landroid/widget/Button;
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method
