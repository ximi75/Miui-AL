.class Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncAdapterImpl;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "EmailSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/service/EmailSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncAdapterImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;


# direct methods
.method public constructor <init>(Lcom/kingsoft/exchange/service/EmailSyncAdapterService;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 717
    iput-object p1, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncAdapterImpl;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    .line 718
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 719
    return-void
.end method

.method private syncMailbox(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/accounts/Account;Lcom/android/emailcommon/provider/Account;JLandroid/os/Bundle;Landroid/content/SyncResult;Ljava/util/HashSet;Z)Z
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "acct"    # Landroid/accounts/Account;
    .param p4, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p5, "mailboxId"    # J
    .param p7, "extras"    # Landroid/os/Bundle;
    .param p8, "syncResult"    # Landroid/content/SyncResult;
    .param p10, "isMailboxSync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Landroid/accounts/Account;",
            "Lcom/android/emailcommon/provider/Account;",
            "J",
            "Landroid/os/Bundle;",
            "Landroid/content/SyncResult;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 923
    .local p9, "authsToSync":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v7

    .line 924
    .local v7, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v7, :cond_1

    .line 925
    const/4 v14, 0x0

    .line 994
    :cond_0
    :goto_0
    return v14

    .line 927
    :cond_1
    iget-wide v3, v7, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    move-object/from16 v0, p4

    iget-wide v5, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 930
    const/4 v14, 0x0

    goto :goto_0

    .line 932
    :cond_2
    if-eqz p9, :cond_3

    iget v3, v7, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-static {v3}, Lcom/android/emailcommon/provider/Mailbox;->getAuthority(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 935
    const/4 v14, 0x1

    goto :goto_0

    .line 938
    :cond_3
    iget v3, v7, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 945
    const-string/jumbo v3, "Exchange"

    const-string/jumbo v4, "Skipping sync of DRAFTS folder"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 946
    const/4 v14, 0x1

    goto :goto_0

    .line 952
    :cond_4
    new-instance v11, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v11, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 953
    .local v11, "cv":Landroid/content/ContentValues;
    if-eqz p10, :cond_6

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v11, v3}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncAdapterImpl;->updateMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;Landroid/content/ContentValues;I)V

    .line 955
    iget v3, v7, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    .line 956
    new-instance v13, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-direct {v13, v0, v1, v7}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 958
    .local v13, "outboxSyncHandler":Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;
    invoke-virtual {v13}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->performSync()V

    .line 959
    const/4 v14, 0x1

    .line 980
    .end local v13    # "outboxSyncHandler":Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;
    .local v14, "success":Z
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v11, v3}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncAdapterImpl;->updateMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;Landroid/content/ContentValues;I)V

    .line 982
    move-object/from16 v0, p8

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    .line 987
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/emailcommon/utility/Utility;->isHeaderOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 988
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1, v7}, Lcom/kingsoft/emailcommon/utility/Utility;->getNoLoadBodyMailList(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)Ljava/util/ArrayList;

    move-result-object v12

    .line 989
    .local v12, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 990
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/callback/MessageBodySync;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/callback/MessageBodySync;

    move-result-object v10

    .line 991
    .local v10, "body":Lcom/kingsoft/email/callback/MessageBodySync;
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v10, v0, v7, v12, v3}, Lcom/kingsoft/email/callback/MessageBodySync;->add2BodySyncRequests(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/util/Collection;Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;)Z

    goto/16 :goto_0

    .line 953
    .end local v10    # "body":Lcom/kingsoft/email/callback/MessageBodySync;
    .end local v12    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "success":Z
    :cond_6
    const/4 v3, 0x4

    goto :goto_1

    .line 960
    :cond_7
    invoke-virtual {v7}, Lcom/android/emailcommon/provider/Mailbox;->isSyncable()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 961
    invoke-static/range {v3 .. v9}, Lcom/kingsoft/exchange/service/EasSyncHandler;->getEasSyncHandler(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/accounts/Account;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)Lcom/kingsoft/exchange/service/EasSyncHandler;

    move-result-object v15

    .line 963
    .local v15, "syncHandler":Lcom/kingsoft/exchange/service/EasSyncHandler;
    if-eqz v15, :cond_9

    .line 965
    iget v3, v7, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 966
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mailboxKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "syncServerId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "syncServerId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "=\'\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 969
    .local v16, "whereStr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 973
    .end local v16    # "whereStr":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p8

    invoke-virtual {v15, v0}, Lcom/kingsoft/exchange/service/EasSyncHandler;->performSync(Landroid/content/SyncResult;)Z

    move-result v14

    .restart local v14    # "success":Z
    goto/16 :goto_2

    .line 975
    .end local v14    # "success":Z
    :cond_9
    const/4 v14, 0x0

    .restart local v14    # "success":Z
    goto/16 :goto_2

    .line 978
    .end local v14    # "success":Z
    .end local v15    # "syncHandler":Lcom/kingsoft/exchange/service/EasSyncHandler;
    :cond_a
    const/4 v14, 0x0

    .restart local v14    # "success":Z
    goto/16 :goto_2
.end method

.method private updateMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;Landroid/content/ContentValues;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p3, "cv"    # Landroid/content/ContentValues;
    .param p4, "syncStatus"    # I

    .prologue
    .line 912
    const-string/jumbo v0, "uiSyncStatus"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 913
    if-nez p4, :cond_0

    .line 914
    const-string/jumbo v0, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 916
    :cond_0
    invoke-virtual {p2, p1, p3}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 917
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 47
    .param p1, "acct"    # Landroid/accounts/Account;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "provider"    # Landroid/content/ContentProviderClient;
    .param p5, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 726
    const-string/jumbo v3, "Exchange"

    const-string/jumbo v6, "Exchange onPerformSync: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-static {v3, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 728
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncAdapterImpl;->getContext()Landroid/content/Context;

    move-result-object v26

    .line 729
    .local v26, "context":Landroid/content/Context;
    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 731
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-static/range {v26 .. v26}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 732
    const-string/jumbo v3, "MailSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :cond_0
    sget-object v3, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->BUNDLE_FOR_SILENCE_MODE:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v33

    .line 735
    .local v33, "isSlience":Z
    if-eqz v33, :cond_2

    .line 737
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncAdapterImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->getInstance(Landroid/content/Context;)Lcom/kingsoft/mail/optimize/battery/SilenceManager;

    move-result-object v44

    .line 738
    .local v44, "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    const/4 v3, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->handleSilenceMode(Z)V

    .line 900
    .end local v44    # "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    :cond_1
    :goto_0
    return-void

    .line 742
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncAdapterImpl;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    invoke-static {v3}, Lcom/kingsoft/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 744
    invoke-static/range {p2 .. p2}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxIdsFromBundle(Landroid/os/Bundle;)[J

    move-result-object v36

    .line 745
    .local v36, "mailboxIds":[J
    const-string/jumbo v3, "callback_method"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v28

    .line 747
    .local v28, "hasCallbackMethod":Z
    if-eqz v28, :cond_3

    if-eqz v36, :cond_3

    .line 748
    move-object/from16 v24, v36

    .local v24, "arr$":[J
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v35, v0

    .local v35, "len$":I
    const/16 v29, 0x0

    .local v29, "i$":I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, v35

    if-ge v0, v1, :cond_3

    aget-wide v4, v24, v29

    .line 749
    .local v4, "mailboxId":J
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v8}, Lcom/android/emailcommon/service/EmailServiceStatus;->syncMailboxStatus(Landroid/content/ContentResolver;Landroid/os/Bundle;JIII)V

    .line 748
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    .line 759
    .end local v4    # "mailboxId":J
    .end local v24    # "arr$":[J
    .end local v29    # "i$":I
    .end local v35    # "len$":I
    :cond_3
    sget-object v7, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v9, "emailAddress=?"

    const/4 v3, 0x1

    new-array v10, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v10, v3

    const/4 v11, 0x0

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 762
    .local v22, "accountCursor":Landroid/database/Cursor;
    if-eqz v22, :cond_4

    :try_start_0
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_5

    .line 765
    :cond_4
    const-string/jumbo v3, "Exchange"

    const-string/jumbo v6, "onPerformSync: could not load account"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    if-eqz v22, :cond_1

    .line 772
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 768
    :cond_5
    :try_start_1
    new-instance v10, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v10}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 769
    .local v10, "account":Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 771
    if-eqz v22, :cond_6

    .line 772
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 777
    :cond_6
    iget-object v3, v10, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/provider/EmailContent;->isInitialSyncKey(Ljava/lang/String;)Z

    move-result v32

    .line 778
    .local v32, "isInitialSync":Z
    const-string/jumbo v3, "__mailboxType__"

    const/4 v6, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v37

    .line 783
    .local v37, "mailboxType":I
    invoke-static/range {p2 .. p2}, Lcom/android/emailcommon/provider/Mailbox;->isPushOnlyExtras(Landroid/os/Bundle;)Z

    move-result v43

    .line 785
    .local v43, "pushOnly":Z
    invoke-static/range {p2 .. p2}, Lcom/android/emailcommon/provider/Mailbox;->isAccountOnlyExtras(Landroid/os/Bundle;)Z

    move-result v23

    .line 788
    .local v23, "accountOnly":Z
    if-nez v43, :cond_9

    if-nez v23, :cond_9

    if-nez v36, :cond_9

    const/4 v3, -0x1

    move/from16 v0, v37

    if-ne v0, v3, :cond_9

    const/16 v31, 0x1

    .line 792
    .local v31, "isFullSync":Z
    :goto_2
    if-nez v31, :cond_7

    if-nez v32, :cond_7

    if-eqz v23, :cond_a

    :cond_7
    const/16 v30, 0x1

    .line 795
    .local v30, "isFolderSync":Z
    :goto_3
    if-eqz v43, :cond_b

    if-nez v30, :cond_b

    .line 796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncAdapterImpl;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    # getter for: Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->mSyncHandlerMap:Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;
    invoke-static {v3}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->access$500(Lcom/kingsoft/exchange/service/EmailSyncAdapterService;)Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v10}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->modifyPing(ZLcom/android/emailcommon/provider/Account;)V

    .line 797
    const-string/jumbo v3, "Exchange"

    const-string/jumbo v6, "onPerformSync: mailbox push only"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 771
    .end local v10    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v23    # "accountOnly":Z
    .end local v30    # "isFolderSync":Z
    .end local v31    # "isFullSync":Z
    .end local v32    # "isInitialSync":Z
    .end local v37    # "mailboxType":I
    .end local v43    # "pushOnly":Z
    :catchall_0
    move-exception v3

    if-eqz v22, :cond_8

    .line 772
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    .line 788
    .restart local v10    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v23    # "accountOnly":Z
    .restart local v32    # "isInitialSync":Z
    .restart local v37    # "mailboxType":I
    .restart local v43    # "pushOnly":Z
    :cond_9
    const/16 v31, 0x0

    goto :goto_2

    .line 792
    .restart local v31    # "isFullSync":Z
    :cond_a
    const/16 v30, 0x0

    goto :goto_3

    .line 802
    .restart local v30    # "isFolderSync":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncAdapterImpl;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    # getter for: Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->mSyncHandlerMap:Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;
    invoke-static {v3}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->access$500(Lcom/kingsoft/exchange/service/EmailSyncAdapterService;)Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    move-result-object v3

    iget-wide v6, v10, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v3, v6, v7}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->startSync(J)V

    .line 807
    if-eqz v30, :cond_c

    .line 808
    new-instance v27, Lcom/kingsoft/exchange/eas/EasFolderSync;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v10}, Lcom/kingsoft/exchange/eas/EasFolderSync;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 809
    .local v27, "folderSync":Lcom/kingsoft/exchange/eas/EasFolderSync;
    move-object/from16 v0, v27

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/eas/EasFolderSync;->doFolderSync(Landroid/content/SyncResult;)I

    .line 812
    .end local v27    # "folderSync":Lcom/kingsoft/exchange/eas/EasFolderSync;
    :cond_c
    const/16 v34, 0x0

    .line 814
    .local v34, "lastSyncHadError":Z
    iget v3, v10, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_18

    .line 816
    if-nez v32, :cond_d

    .line 817
    new-instance v38, Lcom/kingsoft/exchange/eas/EasMoveItems;

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v10}, Lcom/kingsoft/exchange/eas/EasMoveItems;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 818
    .local v38, "move":Lcom/kingsoft/exchange/eas/EasMoveItems;
    move-object/from16 v0, v38

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/eas/EasMoveItems;->upsyncMovedMessages(Landroid/content/SyncResult;)I

    .line 821
    new-instance v46, Lcom/kingsoft/exchange/eas/EasSync;

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v10}, Lcom/kingsoft/exchange/eas/EasSync;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 822
    .local v46, "upsync":Lcom/kingsoft/exchange/eas/EasSync;
    move-object/from16 v0, v46

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/eas/EasSync;->upsync(Landroid/content/SyncResult;)I

    .line 829
    .end local v38    # "move":Lcom/kingsoft/exchange/eas/EasMoveItems;
    .end local v46    # "upsync":Lcom/kingsoft/exchange/eas/EasSync;
    :cond_d
    if-eqz v36, :cond_14

    .line 830
    const-wide/16 v41, 0x0

    .line 831
    .local v41, "numIoExceptions":J
    const-wide/16 v39, 0x0

    .line 833
    .local v39, "numAuthExceptions":J
    move-object/from16 v24, v36

    .restart local v24    # "arr$":[J
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v35, v0

    .restart local v35    # "len$":I
    const/16 v29, 0x0

    .restart local v29    # "i$":I
    :goto_4
    move/from16 v0, v29

    move/from16 v1, v35

    if-ge v0, v1, :cond_18

    aget-wide v4, v24, v29

    .line 834
    .restart local v4    # "mailboxId":J
    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, v26

    move-object v8, v2

    move-object/from16 v9, p1

    move-wide v11, v4

    move-object/from16 v13, p2

    move-object/from16 v14, p5

    invoke-direct/range {v6 .. v16}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncAdapterImpl;->syncMailbox(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/accounts/Account;Lcom/android/emailcommon/provider/Account;JLandroid/os/Bundle;Landroid/content/SyncResult;Ljava/util/HashSet;Z)Z

    move-result v45

    .line 836
    .local v45, "success":Z
    if-nez v45, :cond_e

    .line 837
    const/16 v34, 0x1

    .line 839
    :cond_e
    if-eqz v28, :cond_f

    .line 841
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 842
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v3, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v3, v6, v41

    if-lez v3, :cond_10

    .line 843
    const/4 v8, 0x1

    .line 844
    .local v8, "result":I
    move-object/from16 v0, v26

    invoke-static {v0, v8}, Lcom/kingsoft/emailcommon/utility/Utility;->showErrorToast(Landroid/content/Context;I)V

    .line 845
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v3, Landroid/content/SyncStats;->numIoExceptions:J

    move-wide/from16 v41, v0

    .line 861
    :goto_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v8}, Lcom/android/emailcommon/service/EmailServiceStatus;->syncMailboxStatus(Landroid/content/ContentResolver;Landroid/os/Bundle;JIII)V

    .line 833
    .end local v8    # "result":I
    :cond_f
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    .line 846
    :cond_10
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v3, v6, v39

    if-lez v3, :cond_11

    .line 847
    const/4 v8, 0x2

    .line 848
    .restart local v8    # "result":I
    move-object/from16 v0, v26

    invoke-static {v0, v8}, Lcom/kingsoft/emailcommon/utility/Utility;->showErrorToast(Landroid/content/Context;I)V

    .line 849
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    move-wide/from16 v39, v0

    goto :goto_5

    .line 851
    .end local v8    # "result":I
    :cond_11
    const/4 v8, 0x5

    .line 852
    .restart local v8    # "result":I
    invoke-static/range {v26 .. v26}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 853
    const v3, 0x7f100283

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_5

    .line 855
    :cond_12
    move-object/from16 v0, v26

    invoke-static {v0, v8}, Lcom/kingsoft/emailcommon/utility/Utility;->showErrorToast(Landroid/content/Context;I)V

    goto :goto_5

    .line 859
    .end local v8    # "result":I
    :cond_13
    const/4 v8, 0x0

    .restart local v8    # "result":I
    goto :goto_5

    .line 865
    .end local v4    # "mailboxId":J
    .end local v8    # "result":I
    .end local v24    # "arr$":[J
    .end local v29    # "i$":I
    .end local v35    # "len$":I
    .end local v39    # "numAuthExceptions":J
    .end local v41    # "numIoExceptions":J
    .end local v45    # "success":Z
    :cond_14
    if-nez v23, :cond_18

    if-nez v43, :cond_18

    .line 868
    if-eqz v31, :cond_16

    .line 870
    iget-wide v6, v10, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v6, v7}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxIdsForSync(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v25

    .line 875
    .local v25, "c":Landroid/database/Cursor;
    :goto_6
    if-eqz v25, :cond_18

    .line 877
    :try_start_2
    # invokes: Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->getAuthsToSync(Landroid/accounts/Account;)Ljava/util/HashSet;
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->access$100(Landroid/accounts/Account;)Ljava/util/HashSet;

    move-result-object v20

    .line 878
    .local v20, "authsToSync":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_15
    :goto_7
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 879
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/16 v21, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, v26

    move-object v13, v2

    move-object/from16 v14, p1

    move-object v15, v10

    move-object/from16 v18, p2

    move-object/from16 v19, p5

    invoke-direct/range {v11 .. v21}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncAdapterImpl;->syncMailbox(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/accounts/Account;Lcom/android/emailcommon/provider/Account;JLandroid/os/Bundle;Landroid/content/SyncResult;Ljava/util/HashSet;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v45

    .line 881
    .restart local v45    # "success":Z
    if-nez v45, :cond_15

    .line 882
    const/16 v34, 0x1

    goto :goto_7

    .line 873
    .end local v20    # "authsToSync":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v25    # "c":Landroid/database/Cursor;
    .end local v45    # "success":Z
    :cond_16
    iget-wide v6, v10, Lcom/android/emailcommon/provider/Account;->mId:J

    move/from16 v0, v37

    invoke-static {v2, v6, v7, v0}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxIdsForSyncByType(Landroid/content/ContentResolver;JI)Landroid/database/Cursor;

    move-result-object v25

    .restart local v25    # "c":Landroid/database/Cursor;
    goto :goto_6

    .line 886
    .restart local v20    # "authsToSync":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_17
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 893
    .end local v20    # "authsToSync":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v25    # "c":Landroid/database/Cursor;
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncAdapterImpl;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    # getter for: Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->mSyncHandlerMap:Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;
    invoke-static {v3}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->access$500(Lcom/kingsoft/exchange/service/EmailSyncAdapterService;)Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0, v10}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->syncComplete(ZLcom/android/emailcommon/provider/Account;)V

    .line 898
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncAdapterImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/ContactHelper;->getContactSyncInfo(Landroid/content/Context;)V

    .line 899
    const-string/jumbo v3, "Exchange"

    const-string/jumbo v6, "onPerformSync: finished"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 886
    .restart local v25    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    throw v3
.end method
