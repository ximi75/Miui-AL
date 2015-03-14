.class public Lcom/kingsoft/mail/ui/SearchMailActionBarView;
.super Lcom/kingsoft/mail/ui/MailActionBarView;
.source "SearchMailActionBarView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/SearchMailActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/ui/SearchMailActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/mail/ui/MailActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method private clearSearchFocus()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SearchMailActionBarView;->getSearch()Landroid/view/MenuItem;

    move-result-object v0

    .line 91
    .local v0, "search":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    .line 93
    .local v1, "searchWidget":Landroid/widget/SearchView;
    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 95
    .end local v1    # "searchWidget":Landroid/widget/SearchView;
    :cond_0
    return-void
.end method

.method private setSearchQueryTerm()V
    .locals 5

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SearchMailActionBarView;->getSearch()Landroid/view/MenuItem;

    move-result-object v1

    .line 102
    .local v1, "search":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 103
    invoke-interface {v1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 104
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SearchMailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "query"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "query":Ljava/lang/String;
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    .line 107
    .local v2, "searchWidget":Landroid/widget/SearchView;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 111
    .end local v0    # "query":Ljava/lang/String;
    .end local v2    # "searchWidget":Landroid/widget/SearchView;
    :cond_0
    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    .line 118
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SearchMailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    .line 119
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SearchMailActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->showTwoPaneSearchResults(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 130
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 52
    const v0, 0x7f0c002b

    invoke-static {p1, v0, v1}, Lcom/kingsoft/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 53
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SearchMailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 69
    :goto_0
    return v1

    .line 55
    :sswitch_0
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SearchMailActionBarView;->setSearchQueryTerm()V

    .line 58
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SearchMailActionBarView;->clearSearchFocus()V

    goto :goto_0

    .line 61
    :sswitch_1
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/SearchMailActionBarView;->mIsOnTablet:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SearchMailActionBarView;->setSearchQueryTerm()V

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SearchMailActionBarView;->clearSearchFocus()V

    goto :goto_0

    .line 53
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onViewModeChanged(I)V
    .locals 0
    .param p1, "newMode"    # I

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->onViewModeChanged(I)V

    .line 75
    packed-switch p1, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 77
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SearchMailActionBarView;->setEmptyMode()V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
