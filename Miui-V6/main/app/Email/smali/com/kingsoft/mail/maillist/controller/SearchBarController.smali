.class public Lcom/kingsoft/mail/maillist/controller/SearchBarController;
.super Ljava/lang/Object;
.source "SearchBarController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/kingsoft/mail/ui/MailSearchTab$OnTabSelectionChanged;
.implements Lmiui/view/SearchActionMode$Callback;


# static fields
.field public static final SEARCH_PARAM_ALL:I = 0x3

.field public static final SEARCH_PARAM_FROM:I = 0x1

.field public static final SEARCH_PARAM_SUBJECT:I = 0x2

.field public static final SEARCH_PARAM_TO:I


# instance fields
.field private isModeActive:Z

.field private mActionMode:Lmiui/view/SearchActionMode;

.field private mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

.field private mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

.field private mListFragment:Lcom/kingsoft/mail/ui/ConversationListFragment;

.field private mMailSearchTab:Lcom/kingsoft/mail/ui/MailSearchTab;

.field private mSearchInput:Landroid/widget/EditText;

.field private mSearchParam:I

.field private mSearchWidgetAnchorView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mSearchParam:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->isModeActive:Z

    return-void
.end method

.method private clearSearchState()V
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->stopSearchTask()V

    .line 107
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->enterForceRefresh()V

    .line 108
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->refresh()Z

    goto :goto_0
.end method

.method private enableListPullRefresh(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getConversationListView()Lcom/kingsoft/mail/ui/ConversationListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/ui/ConversationListView;->enablePullToRefresh(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onCallBack4MailSearchTab()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    const v1, 0x7f0c021b

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/MailSearchTab;

    iput-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mMailSearchTab:Lcom/kingsoft/mail/ui/MailSearchTab;

    .line 64
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mMailSearchTab:Lcom/kingsoft/mail/ui/MailSearchTab;

    iget v1, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mSearchParam:I

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/MailSearchTab;->setSelect(I)V

    .line 65
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mMailSearchTab:Lcom/kingsoft/mail/ui/MailSearchTab;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/ui/MailSearchTab;->setTabSelectionListener(Lcom/kingsoft/mail/ui/MailSearchTab$OnTabSelectionChanged;)V

    .line 66
    return-void
.end method

.method private searchParamToFilterType(I)Ljava/lang/String;
    .locals 1
    .param p1, "searchParam"    # I

    .prologue
    .line 145
    packed-switch p1, :pswitch_data_0

    .line 154
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 147
    :pswitch_0
    const-string/jumbo v0, "from"

    goto :goto_0

    .line 149
    :pswitch_1
    const-string/jumbo v0, "to"

    goto :goto_0

    .line 151
    :pswitch_2
    const-string/jumbo v0, "subject"

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private startActionMode()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mListFragment:Lcom/kingsoft/mail/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mListFragment:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x0

    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "newText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->clearSearchState()V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    sget-object v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->enterForceRefresh()V

    .line 222
    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1, v2, v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->scrollListViewToPosition(IZ)V

    .line 224
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onSearchRequired(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 203
    return-void
.end method

.method public collapseSearchBar()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public expendSearchBar()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->startActionMode()V

    .line 70
    return-void
.end method

.method public hideOrShowSoftInput(Z)V
    .locals 3
    .param p1, "hide"    # Z

    .prologue
    .line 121
    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 122
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public isExpand()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->isModeActive:Z

    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "actionMode"    # Landroid/view/ActionMode;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/ui/AbstractActivityController;)V
    .locals 3
    .param p1, "activity"    # Lcom/kingsoft/mail/ui/ControllableActivity;
    .param p2, "controller"    # Lcom/kingsoft/mail/ui/AbstractActivityController;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    .line 54
    iput-object p2, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    .line 56
    invoke-interface {p1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lmiui/R$layout;->search_stub:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mSearchWidgetAnchorView:Landroid/view/View;

    .line 58
    invoke-virtual {p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mListFragment:Lcom/kingsoft/mail/ui/ConversationListFragment;

    .line 59
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "actionMode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    check-cast p1, Lmiui/view/SearchActionMode;

    .end local p1    # "actionMode":Landroid/view/ActionMode;
    iput-object p1, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mActionMode:Lmiui/view/SearchActionMode;

    .line 161
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mActionMode:Lmiui/view/SearchActionMode;

    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mSearchWidgetAnchorView:Landroid/view/View;

    invoke-interface {v0, v1}, Lmiui/view/SearchActionMode;->setAnchorView(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mActionMode:Lmiui/view/SearchActionMode;

    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mListFragment:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/view/SearchActionMode;->setAnimateView(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mActionMode:Lmiui/view/SearchActionMode;

    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mListFragment:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/view/SearchActionMode;->setResultView(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mActionMode:Lmiui/view/SearchActionMode;

    invoke-interface {v0}, Lmiui/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    .line 165
    invoke-direct {p0}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->onCallBack4MailSearchTab()V

    .line 168
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->enableMenuDrawer(Z)V

    .line 169
    invoke-direct {p0, v2}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->enableListPullRefresh(Z)V

    .line 170
    iput-boolean v3, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->isModeActive:Z

    .line 171
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->hideOrShowSoftInput(Z)V

    .line 173
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 174
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 175
    return v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->isModeActive:Z

    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mMailSearchTab:Lcom/kingsoft/mail/ui/MailSearchTab;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mMailSearchTab:Lcom/kingsoft/mail/ui/MailSearchTab;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/MailSearchTab;->onDestory()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    if-eqz v0, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->clearSearchState()V

    .line 92
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mSearchParam:I

    .line 93
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "actionMode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x1

    .line 191
    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->enableMenuDrawer(Z)V

    .line 192
    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 193
    .local v0, "listFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_0

    .line 194
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->showSearchHeader(Z)V

    .line 196
    :cond_0
    invoke-direct {p0, v2}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->enableListPullRefresh(Z)V

    .line 197
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->hideOrShowSoftInput(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->onDestroy()V

    .line 199
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "actionMode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public onTabSelectionChanged(IZ)V
    .locals 3
    .param p1, "tabIndex"    # I
    .param p2, "clicked"    # Z

    .prologue
    .line 135
    iput p1, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mSearchParam:I

    .line 136
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    .line 137
    .local v0, "searchFilter":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget v2, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mSearchParam:I

    invoke-direct {p0, v2}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->searchParamToFilterType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onSearchRequired(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 207
    return-void
.end method

.method public requestFocus()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 131
    return-void
.end method
