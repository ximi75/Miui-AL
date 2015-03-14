.class public interface abstract Lcom/kingsoft/mail/ui/AccountController;
.super Ljava/lang/Object;
.source "AccountController.java"


# virtual methods
.method public abstract changeAccount(Lcom/kingsoft/mail/providers/Account;)V
.end method

.method public abstract changeAccountAtBackground(Lcom/kingsoft/mail/providers/Account;)V
.end method

.method public abstract closeDrawer(ZLcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V
.end method

.method public abstract getAccount()Lcom/kingsoft/mail/providers/Account;
.end method

.method public abstract getAllAccounts()[Lcom/kingsoft/mail/providers/Account;
.end method

.method public abstract getFolderListViewChoiceMode()I
.end method

.method public abstract getVeiledAddressMatcher()Lcom/kingsoft/mail/utils/VeiledAddressMatcher;
.end method

.method public abstract isDrawerPullEnabled()Z
.end method

.method public abstract registerAccountObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract registerAllAccountObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract registerDrawerClosedObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract setFolderWatcher(Lcom/kingsoft/mail/providers/FolderWatcher;)V
.end method

.method public abstract switchToDefaultInboxOrChangeAccount(Lcom/kingsoft/mail/providers/Account;)V
.end method

.method public abstract unregisterAccountObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract unregisterAllAccountObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract unregisterDrawerClosedObserver(Landroid/database/DataSetObserver;)V
.end method
