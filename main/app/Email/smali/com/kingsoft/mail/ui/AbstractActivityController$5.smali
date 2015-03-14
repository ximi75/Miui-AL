.class Lcom/kingsoft/mail/ui/AbstractActivityController$5;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;->checkSendResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V
    .locals 0

    .prologue
    .line 1847
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$5;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1850
    const/4 v7, 0x0

    .line 1852
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$5;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v0, v0, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 1853
    .local v9, "folderId":Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$5;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "mailboxKey=? and (syncServerId is null or syncServerId<3)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1860
    .end local v9    # "folderId":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x1

    .line 1861
    .local v6, "available":Z
    if-eqz v7, :cond_1

    .line 1863
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1864
    const/4 v6, 0x0

    .line 1869
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1873
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 1874
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$5;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$5;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    const v2, 0x7f100375

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1876
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$5;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # invokes: Lcom/kingsoft/mail/ui/AbstractActivityController;->requestSync()V
    invoke-static {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$300(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    .line 1883
    :goto_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$5;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # setter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mQueryOutBox:Z
    invoke-static {v0, v10}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$402(Lcom/kingsoft/mail/ui/AbstractActivityController;Z)Z

    .line 1884
    return-void

    .line 1856
    .end local v6    # "available":Z
    :catch_0
    move-exception v8

    .line 1857
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1866
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "available":Z
    :catch_1
    move-exception v8

    .line 1867
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1869
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1878
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$5;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$5;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    const v2, 0x7f1002ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2
.end method
