.class public Lcom/kingsoft/mail/ui/DrawerFragment;
.super Lcom/kingsoft/mail/ui/FolderListFragment;
.source "DrawerFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/FolderListFragment;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/DrawerFragment;->mIsDivided:Z

    .line 65
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/DrawerFragment;->mHideAccounts:Z

    .line 66
    return-void
.end method

.method private initActionBar()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 110
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/DrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f04007e

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 111
    .local v2, "actionBarView":Landroid/view/View;
    const v9, 0x7f0c01e3

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/kingsoft/mail/ui/DrawerFragment;->actionBarTitle:Landroid/widget/TextView;

    .line 112
    iget-object v9, p0, Lcom/kingsoft/mail/ui/DrawerFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v9, :cond_0

    .line 113
    iget-object v9, p0, Lcom/kingsoft/mail/ui/DrawerFragment;->actionBarTitle:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/kingsoft/mail/ui/DrawerFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v10, v10, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    const v9, 0x7f0c01e2

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 117
    .local v4, "drawerActionBar":Landroid/view/View;
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/DrawerFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v9

    new-instance v10, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v10, v12, v12}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v2, v10}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 119
    new-instance v9, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/DrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/kingsoft/mail/ui/DrawerFragment;->mDropDownSingleChoiceMenu:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    .line 120
    iget-object v9, p0, Lcom/kingsoft/mail/ui/DrawerFragment;->mDropDownSingleChoiceMenu:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    iget-object v10, p0, Lcom/kingsoft/mail/ui/DrawerFragment;->actionBarTitle:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->setAnchorView(Landroid/view/View;)V

    .line 122
    iget-object v9, p0, Lcom/kingsoft/mail/ui/DrawerFragment;->actionBarTitle:Landroid/widget/TextView;

    new-instance v10, Lcom/kingsoft/mail/ui/DrawerFragment$1;

    invoke-direct {v10, p0}, Lcom/kingsoft/mail/ui/DrawerFragment$1;-><init>(Lcom/kingsoft/mail/ui/DrawerFragment;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/DrawerFragment;->refreshActionBarTitle()V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "AccountString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 136
    .local v5, "i":I
    const/4 v8, 0x0

    .line 137
    .local v8, "selected":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/DrawerFragment;->getAllAccounts()[Lcom/kingsoft/mail/providers/Account;

    move-result-object v3

    .local v3, "arr$":[Lcom/kingsoft/mail/providers/Account;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v1, v3, v6

    .line 138
    .local v1, "account":Lcom/kingsoft/mail/providers/Account;
    iget-object v9, v1, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v9, v1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v10, p0, Lcom/kingsoft/mail/ui/DrawerFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v10, v10, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v8, v5

    .line 140
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 137
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "account":Lcom/kingsoft/mail/providers/Account;
    :cond_2
    iget-object v9, p0, Lcom/kingsoft/mail/ui/DrawerFragment;->mDropDownSingleChoiceMenu:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    invoke-virtual {v9, v0}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->setItems(Ljava/util/List;)V

    .line 143
    iget-object v9, p0, Lcom/kingsoft/mail/ui/DrawerFragment;->mDropDownSingleChoiceMenu:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    invoke-virtual {v9, v8}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->setSelectedItem(I)V

    .line 146
    iget-object v9, p0, Lcom/kingsoft/mail/ui/DrawerFragment;->mDropDownSingleChoiceMenu:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    new-instance v10, Lcom/kingsoft/mail/ui/DrawerFragment$2;

    invoke-direct {v10, p0}, Lcom/kingsoft/mail/ui/DrawerFragment$2;-><init>(Lcom/kingsoft/mail/ui/DrawerFragment;)V

    invoke-virtual {v9, v10}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->setOnMenuListener(Lcom/miui/internal/widget/DropDownSingleChoiceMenu$OnMenuListener;)V

    .line 169
    return-void
.end method


# virtual methods
.method protected getListViewChoiceMode()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/FolderListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/DrawerFragment;->initActionBar()V

    .line 92
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/FolderListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f1100bb

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/DrawerFragment;->setThemeRes(I)V

    .line 73
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/DrawerFragment;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f12000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c028d

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DrawerFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/DrawerFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v0, v1}, Lcom/kingsoft/mail/utils/Utils;->showSettings(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)V

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/kingsoft/mail/ui/FolderListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    const/16 v0, 0x1e

    .line 79
    .local v0, "mask":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/DrawerFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Lmiui/app/ActionBar;->setDisplayOptions(II)V

    .line 80
    return-void
.end method
