.class public Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;
.super Landroid/app/Fragment;
.source "AccountSettingsEditQuickResponsesFragment.java"


# static fields
.field private static final BUNDLE_KEY_ACTIVITY_TITLE:Ljava/lang/String; = "AccountSettingsEditQuickResponsesFragment.title"


# instance fields
.field private mAccount:Lcom/kingsoft/mail/providers/Account;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Lcom/kingsoft/mail/providers/Account;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "AccountSettingsEditQuickResponsesFragment.title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    :cond_0
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f04009e

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "quickResponse"

    aput-object v5, v4, v6

    new-array v5, v8, [I

    const v8, 0x7f0c0211

    aput v8, v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 82
    .local v0, "adapter":Landroid/widget/SimpleCursorAdapter;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0060

    invoke-static {v1, v2}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 84
    .local v7, "listView":Landroid/widget/ListView;
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;Landroid/widget/SimpleCursorAdapter;)V

    invoke-virtual {v1, v6, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 103
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 66
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 115
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Account;

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 117
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->setHasOptionsMenu(Z)V

    .line 118
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 148
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 149
    const v0, 0x7f12000f

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 150
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    const v3, 0x7f04001a

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 126
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0c0060

    invoke-static {v2, v3}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 128
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0c0061

    invoke-static {v3, v4}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, "emptyView":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 131
    new-instance v3, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment$2;

    invoke-direct {v3, p0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment$2;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;Landroid/widget/ListView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0c029b

    if-ne v1, v2, :cond_0

    .line 155
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    invoke-static {v3, v1, v0}, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->newInstance(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 159
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    const-string/jumbo v1, "AccountSettingsEditQuickResponsesFragment.title"

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method
