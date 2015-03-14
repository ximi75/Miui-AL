.class public Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;
.super Ljava/lang/Object;
.source "ConversationListFooterViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$FooterViewClickListener;
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$FooterViewClickListener;

.field private mContext:Landroid/content/Context;

.field private mConversationListController:Lcom/kingsoft/mail/ui/ConversationListFragment;

.field private mCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

.field private mErrorStatus:I

.field private mFolder:Lcom/kingsoft/mail/providers/Folder;

.field private mFooterView:Lcom/kingsoft/mail/browse/ConversationListFooterView;

.field private mSearchMoreFlag:Z


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/browse/ConversationListFooterView;Landroid/content/Context;)V
    .locals 1
    .param p1, "footerView"    # Lcom/kingsoft/mail/browse/ConversationListFooterView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mSearchMoreFlag:Z

    .line 37
    iput-object p2, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mContext:Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFooterView:Lcom/kingsoft/mail/browse/ConversationListFooterView;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mSearchMoreFlag:Z

    return v0
.end method

.method static synthetic access$002(Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mSearchMoreFlag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;)Lcom/kingsoft/mail/browse/ConversationCursor;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    return-object v0
.end method


# virtual methods
.method public displayFooterView(Lcom/kingsoft/mail/browse/ConversationCursor;ZZILcom/kingsoft/mail/providers/Folder;)Z
    .locals 2
    .param p1, "cursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;
    .param p2, "isSearch"    # Z
    .param p3, "isExchange"    # Z
    .param p4, "mode"    # I
    .param p5, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 51
    const/4 v1, 0x5

    if-eq p4, v1, :cond_0

    const/16 v1, 0xc

    if-eq p4, v1, :cond_0

    const/4 v1, 0x4

    if-eq p4, v1, :cond_0

    const/16 v1, 0xb

    if-eq p4, v1, :cond_0

    const/4 v0, 0x1

    .line 55
    .local v0, "listNeedDisplayFooterView":Z
    :goto_0
    iput-object p5, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 56
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->displayFooterView(Lcom/kingsoft/mail/browse/ConversationCursor;ZZZ)Z

    move-result v1

    return v1

    .line 51
    .end local v0    # "listNeedDisplayFooterView":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public displayFooterView(Lcom/kingsoft/mail/browse/ConversationCursor;ZZZ)Z
    .locals 9
    .param p1, "cursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;
    .param p2, "isSearch"    # Z
    .param p3, "isExchange"    # Z
    .param p4, "listNeedDisplayFooterView"    # Z

    .prologue
    const/4 v5, 0x0

    .line 65
    if-eqz p2, :cond_3

    .line 66
    if-eqz p3, :cond_2

    .line 67
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getLocalSearchType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 68
    .local v1, "hasSearchType":Z
    iget-object v6, p1, Lcom/kingsoft/mail/browse/ConversationCursor;->mSearchState:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    sget-object v7, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->REMOTE_FINISH:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    if-ne v6, v7, :cond_0

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v6

    sget v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->remoteSearchCount:I

    sget v8, Lcom/kingsoft/mail/ui/AbstractActivityController;->localSearchCount:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_1

    .line 70
    :cond_0
    iget-object v5, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFooterView:Lcom/kingsoft/mail/browse/ConversationListFooterView;

    invoke-virtual {v5, v1}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->showLoadFromRemote(Z)V

    .line 130
    .end local v1    # "hasSearchType":Z
    :goto_0
    return v1

    .line 75
    .restart local v1    # "hasSearchType":Z
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->hideFooterView()V

    move v1, v5

    .line 76
    goto :goto_0

    .line 79
    .end local v1    # "hasSearchType":Z
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->hideFooterView()V

    move v1, v5

    .line 80
    goto :goto_0

    .line 84
    :cond_3
    if-eqz p3, :cond_4

    .line 85
    invoke-virtual {p0}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->hideFooterView()V

    move v1, v5

    .line 86
    goto :goto_0

    .line 90
    :cond_4
    if-eqz p1, :cond_5

    iget-object v6, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-nez v6, :cond_6

    .line 91
    :cond_5
    invoke-virtual {p0}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->hideFooterView()V

    .line 92
    const/4 v1, 0x1

    goto :goto_0

    .line 96
    :cond_6
    if-nez p4, :cond_7

    .line 97
    invoke-virtual {p0}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->hideFooterView()V

    move v1, v5

    .line 98
    goto :goto_0

    .line 101
    :cond_7
    iput-object p1, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    .line 102
    const/4 v3, 0x0

    .line 103
    .local v3, "messageCount":I
    const/4 v4, 0x1

    .line 105
    .local v4, "showFooter":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v6, "cursor_error"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string/jumbo v6, "cursor_error"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    :goto_1
    iput v6, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mErrorStatus:I

    .line 110
    const-string/jumbo v6, "cursor_message_count"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 113
    .end local v0    # "extras":Landroid/os/Bundle;
    :goto_2
    iget-object v6, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v2, v6, Lcom/kingsoft/mail/providers/Folder;->loadMoreUri:Landroid/net/Uri;

    .line 115
    .local v2, "loadMoreUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/Folder;->isSyncInProgress()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 116
    iget-object v6, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFooterView:Lcom/kingsoft/mail/browse/ConversationListFooterView;

    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->showLoading()V

    .line 117
    iget-boolean v6, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mSearchMoreFlag:Z

    if-eqz v6, :cond_8

    .line 118
    iput-boolean v5, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mSearchMoreFlag:Z

    :cond_8
    :goto_3
    move v1, v4

    .line 130
    goto :goto_0

    .end local v2    # "loadMoreUri":Landroid/net/Uri;
    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_9
    move v6, v5

    .line 106
    goto :goto_1

    .line 120
    .end local v0    # "extras":Landroid/os/Bundle;
    .restart local v2    # "loadMoreUri":Landroid/net/Uri;
    :cond_a
    iget-boolean v5, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mSearchMoreFlag:Z

    if-eqz v5, :cond_b

    .line 121
    iget-object v5, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFooterView:Lcom/kingsoft/mail/browse/ConversationListFooterView;

    invoke-virtual {v5}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->showLoading()V

    goto :goto_3

    .line 122
    :cond_b
    iget v5, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mErrorStatus:I

    if-eqz v5, :cond_c

    .line 123
    invoke-virtual {p0}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->hideFooterView()V

    .line 124
    const/4 v4, 0x0

    goto :goto_3

    .line 125
    :cond_c
    if-eqz v2, :cond_d

    iget-object v5, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget v5, v5, Lcom/kingsoft/mail/providers/Folder;->totalCount:I

    if-ge v3, v5, :cond_d

    .line 126
    iget-object v5, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFooterView:Lcom/kingsoft/mail/browse/ConversationListFooterView;

    invoke-virtual {v5}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->showLoadMore()V

    goto :goto_3

    .line 128
    :cond_d
    const/4 v4, 0x0

    goto :goto_3

    .line 111
    .end local v2    # "loadMoreUri":Landroid/net/Uri;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public hideFooterView()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFooterView:Lcom/kingsoft/mail/browse/ConversationListFooterView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->hideAllView()V

    .line 47
    return-void
.end method

.method public onErrorActionClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mClickListener:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$FooterViewClickListener;

    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget v2, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mErrorStatus:I

    invoke-interface {v0, v1, v2}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$FooterViewClickListener;->onFooterViewErrorActionClick(Lcom/kingsoft/mail/providers/Folder;I)V

    .line 137
    :cond_0
    return-void
.end method

.method public onFooterViewLoadMoreClick(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 8
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/email/provider/Utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mContext:Landroid/content/Context;

    const v1, 0x7f10021f

    invoke-static {v0, v1}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 205
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mContext:Landroid/content/Context;

    const v1, 0x7f100364

    invoke-static {v0, v1}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 209
    :cond_2
    const-wide/16 v4, -0x1

    .line 211
    .local v4, "mailboxId":J
    :try_start_0
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v0, v0, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 217
    :goto_1
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/kingsoft/mail/providers/Folder;->loadMoreUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mConversationListController:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mConversationListController:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    sget-boolean v3, Lcom/kingsoft/mail/ui/AbstractActivityController;->isInit:Z

    new-instance v6, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$2;

    invoke-direct {v6, p0}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$2;-><init>(Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;)V

    invoke-virtual/range {v0 .. v6}, Lcom/kingsoft/mail/browse/ConversationCursor;->requireRemoteSearch(Ljava/lang/String;Ljava/lang/String;ZJLcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;)V

    goto :goto_0

    .line 214
    :catch_0
    move-exception v7

    .line 215
    .local v7, "e":Ljava/lang/Exception;
    const-wide/16 v4, -0x1

    goto :goto_1
.end method

.method public onLoadMoreClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/email/provider/Utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mContext:Landroid/content/Context;

    const v1, 0x7f10021f

    invoke-static {v0, v1}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 149
    :cond_1
    iput-boolean v2, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mSearchMoreFlag:Z

    .line 150
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->displayFooterView(Lcom/kingsoft/mail/browse/ConversationCursor;ZZZ)Z

    .line 154
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$1;-><init>(Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mClickListener:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$FooterViewClickListener;

    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$FooterViewClickListener;->onFooterViewLoadMoreClick(Lcom/kingsoft/mail/providers/Folder;)V

    goto :goto_0
.end method

.method public onSearchFromRemoteClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->onFooterViewLoadMoreClick(Lcom/kingsoft/mail/providers/Folder;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onViewModeChanged(I)V
    .locals 2
    .param p1, "newMode"    # I

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "wideMode":Z
    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 181
    :cond_0
    const/4 v0, 0x1

    .line 185
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFooterView:Lcom/kingsoft/mail/browse/ConversationListFooterView;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->setFooterViewBackground(Z)V

    .line 186
    return-void

    .line 183
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClickListener(Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$FooterViewClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$FooterViewClickListener;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mClickListener:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$FooterViewClickListener;

    .line 244
    return-void
.end method

.method public setConversationListController(Lcom/kingsoft/mail/ui/ConversationListFragment;)V
    .locals 0
    .param p1, "listController"    # Lcom/kingsoft/mail/ui/ConversationListFragment;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mConversationListController:Lcom/kingsoft/mail/ui/ConversationListFragment;

    .line 43
    return-void
.end method

.method public setTxtRemoteSearch()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFooterView:Lcom/kingsoft/mail/browse/ConversationListFooterView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->setTxtRemoteSearch()V

    .line 195
    return-void
.end method

.method public setTxtRemoteSearching()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->mFooterView:Lcom/kingsoft/mail/browse/ConversationListFooterView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->setTxtRemoteSearching()V

    .line 191
    return-void
.end method
