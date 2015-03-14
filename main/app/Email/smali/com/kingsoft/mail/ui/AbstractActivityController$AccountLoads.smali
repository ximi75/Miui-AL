.class Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountLoads"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/kingsoft/mail/content/ObjectCursor",
        "<",
        "Lcom/kingsoft/mail/providers/Account;",
        ">;>;"
    }
.end annotation


# instance fields
.field private isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mFactory:Lcom/kingsoft/mail/content/CursorCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingsoft/mail/content/CursorCreator",
            "<",
            "Lcom/kingsoft/mail/providers/Account;",
            ">;"
        }
    .end annotation
.end field

.field final mProjection:[Ljava/lang/String;

.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V
    .locals 2

    .prologue
    .line 4677
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4678
    sget-object v0, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->mProjection:[Ljava/lang/String;

    .line 4679
    sget-object v0, Lcom/kingsoft/mail/providers/Account;->FACTORY:Lcom/kingsoft/mail/content/CursorCreator;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->mFactory:Lcom/kingsoft/mail/content/CursorCreator;

    .line 4699
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/ui/AbstractActivityController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p2, "x1"    # Lcom/kingsoft/mail/ui/AbstractActivityController$1;

    .prologue
    .line 4677
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Account;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4683
    sparse-switch p1, :sswitch_data_0

    .line 4693
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Got an id  (%d) that I cannot create!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4696
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4685
    :sswitch_0
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "LOADER_ACCOUNT_CURSOR created"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4686
    new-instance v0, Lcom/kingsoft/mail/content/ObjectCursorLoader;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->getAccountsUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->mFactory:Lcom/kingsoft/mail/content/CursorCreator;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingsoft/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/kingsoft/mail/content/CursorCreator;)V

    goto :goto_0

    .line 4689
    :sswitch_1
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "LOADER_ACCOUNT_UPDATE_CURSOR created"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4690
    new-instance v0, Lcom/kingsoft/mail/content/ObjectCursorLoader;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->mFactory:Lcom/kingsoft/mail/content/CursorCreator;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingsoft/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/kingsoft/mail/content/CursorCreator;)V

    goto :goto_0

    .line 4683
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/content/ObjectCursor;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Account;",
            ">;>;",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4703
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Account;>;>;"
    .local p2, "data":Lcom/kingsoft/mail/content/ObjectCursor;, "Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Account;>;"
    if-nez p2, :cond_0

    .line 4704
    sget-object v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "Received null cursor from loader id: %d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4706
    :cond_0
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 4780
    :cond_1
    :goto_0
    return-void

    .line 4709
    :sswitch_0
    if-eqz p2, :cond_1

    .line 4713
    invoke-virtual {p2}, Lcom/kingsoft/mail/content/ObjectCursor;->getCount()I

    move-result v7

    int-to-long v2, v7

    .line 4715
    .local v2, "count":J
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-nez v7, :cond_3

    .line 4724
    invoke-virtual {p2}, Lcom/kingsoft/mail/content/ObjectCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 4725
    .local v4, "extras":Landroid/os/Bundle;
    const-string/jumbo v7, "accounts_loaded"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x1

    .line 4728
    .local v1, "accountsLoaded":Z
    :goto_1
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 4738
    const/4 v7, 0x0

    sput-boolean v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->isResultOk:Z

    .line 4740
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v7, v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    check-cast v7, Landroid/app/Activity;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->actionNewAccountWithResult4Result(Landroid/app/Activity;I)V

    .line 4741
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v7, v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    check-cast v7, Landroid/app/Activity;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 4725
    .end local v1    # "accountsLoaded":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 4744
    .end local v4    # "extras":Landroid/os/Bundle;
    :cond_3
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # invokes: Lcom/kingsoft/mail/ui/AbstractActivityController;->accountsUpdated(Lcom/kingsoft/mail/content/ObjectCursor;)Z
    invoke-static {v7, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$2600(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/content/ObjectCursor;)Z

    move-result v0

    .line 4745
    .local v0, "accountListUpdated":Z
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-boolean v7, v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHaveAccountList:Z

    if-eqz v7, :cond_4

    if-eqz v0, :cond_5

    .line 4746
    :cond_4
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v8, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # invokes: Lcom/kingsoft/mail/ui/AbstractActivityController;->updateAccounts(Lcom/kingsoft/mail/content/ObjectCursor;)Z
    invoke-static {v8, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$2700(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/content/ObjectCursor;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHaveAccountList:Z

    .line 4748
    :cond_5
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/kingsoft/mail/analytics/Tracker;->setCustomDimension(ILjava/lang/String;)V

    goto :goto_0

    .line 4754
    .end local v0    # "accountListUpdated":Z
    .end local v2    # "count":J
    :sswitch_1
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4755
    invoke-virtual {p2}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/mail/providers/Account;

    .line 4757
    .local v6, "updatedAccount":Lcom/kingsoft/mail/providers/Account;
    iget-object v7, v6, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v8, v8, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v8, v8, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4758
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v7, v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v5, v7, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    .line 4761
    .local v5, "previousSettings":Lcom/kingsoft/mail/providers/Settings;
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object v6, v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 4762
    sget-object v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "AbstractActivityController.onLoadFinished(): mAccount = %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v11, v11, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v11, v11, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4766
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v7, v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v7, v7, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    invoke-static {v7, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 4767
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccountObservers:Landroid/database/DataSetObservable;
    invoke-static {v7}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$2800(Lcom/kingsoft/mail/ui/AbstractActivityController;)Landroid/database/DataSetObservable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 4769
    :cond_6
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v7}, Lcom/kingsoft/mail/ui/AbstractActivityController;->perhapsEnterWaitMode()V

    goto/16 :goto_0

    .line 4771
    .end local v5    # "previousSettings":Lcom/kingsoft/mail/providers/Settings;
    :cond_7
    sget-object v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "Got update for account: %s with current account: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v6, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v11, v11, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v11, v11, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4775
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    const/4 v8, 0x7

    sget-object v9, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    # invokes: Lcom/kingsoft/mail/ui/AbstractActivityController;->restartOptionalLoader(ILandroid/app/LoaderManager$LoaderCallbacks;Landroid/os/Bundle;)V
    invoke-static {v7, v8, p0, v9}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$2900(Lcom/kingsoft/mail/ui/AbstractActivityController;ILandroid/app/LoaderManager$LoaderCallbacks;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 4706
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 4677
    check-cast p2, Lcom/kingsoft/mail/content/ObjectCursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;->onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/content/ObjectCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Account;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 4785
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Account;>;>;"
    return-void
.end method
