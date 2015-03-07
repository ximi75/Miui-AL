.class Lcom/kingsoft/mail/ui/AbstractActivityController$25;
.super Landroid/os/AsyncTask;
.source "AbstractActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;->navigateUpFolderHierarchy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/kingsoft/mail/providers/Folder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V
    .locals 0

    .prologue
    .line 5548
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$25;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/kingsoft/mail/providers/Folder;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 5551
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$25;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mInbox:Lcom/kingsoft/mail/providers/Folder;

    if-nez v0, :cond_1

    .line 5553
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$25;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$25;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5557
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 5559
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5560
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$25;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    new-instance v1, Lcom/kingsoft/mail/providers/Folder;

    invoke-direct {v1, v6}, Lcom/kingsoft/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V

    iput-object v1, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mInbox:Lcom/kingsoft/mail/providers/Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5563
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5589
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$25;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v7, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mInbox:Lcom/kingsoft/mail/providers/Folder;

    .line 5592
    .local v7, "folder":Lcom/kingsoft/mail/providers/Folder;
    return-object v7

    .line 5563
    .end local v7    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 5548
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController$25;->doInBackground([Ljava/lang/Void;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 1
    .param p1, "result"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 5597
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$25;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onFolderSelected(Lcom/kingsoft/mail/providers/Folder;)V

    .line 5598
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5548
    check-cast p1, Lcom/kingsoft/mail/providers/Folder;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController$25;->onPostExecute(Lcom/kingsoft/mail/providers/Folder;)V

    return-void
.end method
