.class Lcom/kingsoft/exchange/service/EmailSyncAdapterService$RestartPingsTask;
.super Landroid/os/AsyncTask;
.source "EmailSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/service/EmailSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestartPingsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAnyAccounts:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mSyncHandlerMap:Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

.field final synthetic this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;


# direct methods
.method public constructor <init>(Lcom/kingsoft/exchange/service/EmailSyncAdapterService;Landroid/content/ContentResolver;Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;)V
    .locals 0
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "syncHandlerMap"    # Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$RestartPingsTask;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 590
    iput-object p2, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$RestartPingsTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 591
    iput-object p3, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$RestartPingsTask;->mSyncHandlerMap:Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    .line 592
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 582
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$RestartPingsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 596
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$RestartPingsTask;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    # getter for: Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->PUSH_ACCOUNTS_SELECTION:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->access$300()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 598
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 600
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$RestartPingsTask;->mAnyAccounts:Z

    .line 601
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    new-instance v6, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 603
    .local v6, "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v6, v7}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V

    .line 604
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$RestartPingsTask;->mSyncHandlerMap:Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->modifyPing(ZLcom/android/emailcommon/provider/Account;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 607
    .end local v6    # "account":Lcom/android/emailcommon/provider/Account;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    move v0, v8

    .line 600
    goto :goto_0

    .line 607
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 612
    :goto_2
    return-object v4

    .line 610
    :cond_2
    iput-boolean v8, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$RestartPingsTask;->mAnyAccounts:Z

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 582
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$RestartPingsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$RestartPingsTask;->mAnyAccounts:Z

    if-nez v0, :cond_0

    .line 618
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "stopping for no accounts"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 619
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$RestartPingsTask;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    invoke-virtual {v0}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->stopSelf()V

    .line 621
    :cond_0
    return-void
.end method
