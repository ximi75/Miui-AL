.class Lcom/kingsoft/mail/ui/FolderSelectionActivity$1;
.super Ljava/lang/Object;
.source "FolderSelectionActivity.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/AccountController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/FolderSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/FolderSelectionActivity;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/FolderSelectionActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity$1;->this$0:Lcom/kingsoft/mail/ui/FolderSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeAccount(Lcom/kingsoft/mail/providers/Account;)V
    .locals 3
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 113
    # getter for: Lcom/kingsoft/mail/ui/FolderSelectionActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FolderSelectionActivity.changeAccount() called when NOT expected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 115
    return-void
.end method

.method public changeAccountAtBackground(Lcom/kingsoft/mail/providers/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 120
    return-void
.end method

.method public closeDrawer(ZLcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 1
    .param p1, "hasNewFolderOrAccount"    # Z
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p3, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity$1;->this$0:Lcom/kingsoft/mail/ui/FolderSelectionActivity;

    # getter for: Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mDrawerObservers:Landroid/database/DataSetObservable;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->access$200(Lcom/kingsoft/mail/ui/FolderSelectionActivity;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 146
    return-void
.end method

.method public getAccount()Lcom/kingsoft/mail/providers/Account;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity$1;->this$0:Lcom/kingsoft/mail/ui/FolderSelectionActivity;

    # getter for: Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->access$000(Lcom/kingsoft/mail/ui/FolderSelectionActivity;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAllAccounts()[Lcom/kingsoft/mail/providers/Account;
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/kingsoft/mail/providers/Account;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity$1;->this$0:Lcom/kingsoft/mail/ui/FolderSelectionActivity;

    # getter for: Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->access$000(Lcom/kingsoft/mail/ui/FolderSelectionActivity;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getFolderListViewChoiceMode()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getVeiledAddressMatcher()Lcom/kingsoft/mail/utils/VeiledAddressMatcher;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDrawerPullEnabled()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public registerAccountObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 78
    return-void
.end method

.method public registerAllAccountObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 93
    return-void
.end method

.method public registerDrawerClosedObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity$1;->this$0:Lcom/kingsoft/mail/ui/FolderSelectionActivity;

    # getter for: Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mDrawerObservers:Landroid/database/DataSetObservable;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->access$200(Lcom/kingsoft/mail/ui/FolderSelectionActivity;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public setFolderWatcher(Lcom/kingsoft/mail/providers/FolderWatcher;)V
    .locals 0
    .param p1, "watcher"    # Lcom/kingsoft/mail/providers/FolderWatcher;

    .prologue
    .line 151
    return-void
.end method

.method public switchToDefaultInboxOrChangeAccount(Lcom/kingsoft/mail/providers/Account;)V
    .locals 3
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 125
    # getter for: Lcom/kingsoft/mail/ui/FolderSelectionActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FolderSelectionActivity.switchToDefaultInboxOrChangeAccount() called when NOT expected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 127
    return-void
.end method

.method public unregisterAccountObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 83
    return-void
.end method

.method public unregisterAllAccountObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 98
    return-void
.end method

.method public unregisterDrawerClosedObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionActivity$1;->this$0:Lcom/kingsoft/mail/ui/FolderSelectionActivity;

    # getter for: Lcom/kingsoft/mail/ui/FolderSelectionActivity;->mDrawerObservers:Landroid/database/DataSetObservable;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/FolderSelectionActivity;->access$200(Lcom/kingsoft/mail/ui/FolderSelectionActivity;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 137
    return-void
.end method
