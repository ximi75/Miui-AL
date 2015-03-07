.class public Lcom/kingsoft/email/service/PopImapSyncAdapterService;
.super Landroid/app/Service;
.source "PopImapSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/service/PopImapSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopImapSyncService"

.field private static mPowerManager:Landroid/os/PowerManager;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mSyncAdapter:Lcom/kingsoft/email/service/PopImapSyncAdapterService$SyncAdapterImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/email/service/PopImapSyncAdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService;->mSyncAdapter:Lcom/kingsoft/email/service/PopImapSyncAdapterService$SyncAdapterImpl;

    .line 92
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/accounts/Account;
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Landroid/content/ContentProviderClient;
    .param p4, "x4"    # Landroid/content/SyncResult;

    .prologue
    .line 64
    invoke-static {p0, p1, p2, p3, p4}, Lcom/kingsoft/email/service/PopImapSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    return-void
.end method

.method private static loadsFromServer(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "m"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p2, "protocol"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 134
    const v4, 0x7f100304

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "legacyImapProtocol":Ljava/lang/String;
    const v4, 0x7f100305

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "pop3Protocol":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    iget v4, p1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-eq v4, v6, :cond_1

    iget v4, p1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    iget v4, p1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    iget v4, p1, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    if-eq v4, v6, :cond_1

    iget v4, p1, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    if-eqz v4, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 139
    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 145
    iget v4, p1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 148
    goto :goto_0
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "provider"    # Landroid/content/ContentProviderClient;
    .param p4, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 310
    const/4 v12, 0x0

    .line 312
    .local v12, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "emailAddress=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v9, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 315
    if-eqz v12, :cond_e

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 316
    new-instance v10, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v10}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 317
    .local v10, "acct":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v10, v12}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V

    .line 318
    const-string/jumbo v2, "upload"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 319
    const-string/jumbo v2, "PopImapSyncService"

    const-string/jumbo v5, "Upload sync request"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 322
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "mailboxKey"

    aput-object v5, v4, v2

    const-string/jumbo v5, "accountKey=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v0, v10, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v22

    .line 328
    .local v22, "updatesCursor":Landroid/database/Cursor;
    if-eqz v22, :cond_0

    :try_start_1
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 337
    :cond_0
    if-eqz v22, :cond_1

    .line 338
    :try_start_2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 389
    :cond_1
    if-eqz v12, :cond_2

    .line 390
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 393
    .end local v10    # "acct":Lcom/android/emailcommon/provider/Account;
    .end local v22    # "updatesCursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-void

    .line 329
    .restart local v10    # "acct":Lcom/android/emailcommon/provider/Account;
    .restart local v22    # "updatesCursor":Landroid/database/Cursor;
    :cond_3
    :try_start_3
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v20, "mailboxesToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4
    :goto_1
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 331
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 332
    .local v3, "mailboxId":Ljava/lang/Long;
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 333
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 337
    .end local v3    # "mailboxId":Ljava/lang/Long;
    .end local v20    # "mailboxesToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v2

    if-eqz v22, :cond_5

    .line 338
    :try_start_4
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 386
    .end local v10    # "acct":Lcom/android/emailcommon/provider/Account;
    .end local v22    # "updatesCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v13

    .line 387
    .local v13, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 389
    if-eqz v12, :cond_2

    .line 390
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 337
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v10    # "acct":Lcom/android/emailcommon/provider/Account;
    .restart local v20    # "mailboxesToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v22    # "updatesCursor":Landroid/database/Cursor;
    :cond_6
    if-eqz v22, :cond_7

    .line 338
    :try_start_6
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 341
    :cond_7
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 342
    .local v3, "mailboxId":J
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v9

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    invoke-static/range {v2 .. v9}, Lcom/kingsoft/email/service/PopImapSyncAdapterService;->sync(Landroid/content/Context;JLandroid/os/Bundle;Landroid/content/SyncResult;ZIZ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 389
    .end local v3    # "mailboxId":J
    .end local v10    # "acct":Lcom/android/emailcommon/provider/Account;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v20    # "mailboxesToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v22    # "updatesCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    if-eqz v12, :cond_8

    .line 390
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 350
    .restart local v10    # "acct":Lcom/android/emailcommon/provider/Account;
    :cond_9
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 351
    iget-wide v5, v10, Lcom/android/emailcommon/provider/Account;->mId:J

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceForAccount(Landroid/content/Context;J)Lcom/android/emailcommon/service/EmailServiceProxy;

    move-result-object v21

    .line 353
    .local v21, "service":Lcom/android/emailcommon/service/EmailServiceProxy;
    iget-wide v5, v10, Lcom/android/emailcommon/provider/Account;->mId:J

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Lcom/android/emailcommon/service/EmailServiceProxy;->updateFolderList(J)V

    .line 357
    .end local v21    # "service":Lcom/android/emailcommon/service/EmailServiceProxy;
    :cond_a
    invoke-static/range {p2 .. p2}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxIdsFromBundle(Landroid/os/Bundle;)[J

    move-result-object v19

    .line 358
    .local v19, "mailboxIds":[J
    if-eqz v19, :cond_b

    move-object/from16 v0, v19

    array-length v2, v0

    if-nez v2, :cond_c

    .line 361
    :cond_b
    iget-wide v5, v10, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6, v2}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v15

    .line 363
    .local v15, "inboxId":J
    const-wide/16 v5, -0x1

    cmp-long v2, v15, v5

    if-eqz v2, :cond_c

    .line 364
    const/4 v2, 0x1

    new-array v0, v2, [J

    move-object/from16 v19, v0

    .line 365
    const/4 v2, 0x0

    aput-wide v15, v19, v2

    .line 369
    .end local v15    # "inboxId":J
    :cond_c
    if-eqz v19, :cond_e

    .line 370
    const-string/jumbo v2, "expedited"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 373
    .local v7, "uiRefresh":Z
    const-string/jumbo v2, "__push_only__"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 374
    .local v17, "isPush":Z
    if-eqz v17, :cond_d

    .line 375
    const/4 v7, 0x0

    .line 378
    :cond_d
    const-string/jumbo v2, "__deltaMessageCount__"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 380
    .local v8, "deltaMessageCount":I
    move-object/from16 v11, v19

    .local v11, "arr$":[J
    array-length v0, v11

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_3
    move/from16 v0, v18

    if-ge v14, v0, :cond_e

    aget-wide v3, v11, v14

    .line 381
    .restart local v3    # "mailboxId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v9

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    invoke-static/range {v2 .. v9}, Lcom/kingsoft/email/service/PopImapSyncAdapterService;->sync(Landroid/content/Context;JLandroid/os/Bundle;Landroid/content/SyncResult;ZIZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 380
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 389
    .end local v3    # "mailboxId":J
    .end local v7    # "uiRefresh":Z
    .end local v8    # "deltaMessageCount":I
    .end local v10    # "acct":Lcom/android/emailcommon/provider/Account;
    .end local v11    # "arr$":[J
    .end local v14    # "i$":I
    .end local v17    # "isPush":Z
    .end local v18    # "len$":I
    .end local v19    # "mailboxIds":[J
    :cond_e
    if-eqz v12, :cond_2

    .line 390
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static requireWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    sget-object v0, Lcom/kingsoft/email/service/PopImapSyncAdapterService;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 76
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/kingsoft/email/service/PopImapSyncAdapterService;->mPowerManager:Landroid/os/PowerManager;

    .line 79
    :cond_0
    sget-object v0, Lcom/kingsoft/email/service/PopImapSyncAdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kingsoft/email/service/PopImapSyncAdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Lcom/kingsoft/email/service/PopImapSyncAdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 83
    :cond_1
    sget-object v0, Lcom/kingsoft/email/service/PopImapSyncAdapterService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string/jumbo v2, "email_for_notification"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/service/PopImapSyncAdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 85
    sget-object v0, Lcom/kingsoft/email/service/PopImapSyncAdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 87
    return-void
.end method

.method private static sync(Landroid/content/Context;JLandroid/os/Bundle;Landroid/content/SyncResult;ZIZ)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailboxId"    # J
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "syncResult"    # Landroid/content/SyncResult;
    .param p5, "uiRefresh"    # Z
    .param p6, "deltaMessageCount"    # I
    .param p7, "autoSync"    # Z

    .prologue
    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 155
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p3

    move-wide/from16 v4, p1

    invoke-static/range {v2 .. v8}, Lcom/android/emailcommon/service/EmailServiceStatus;->syncMailboxStatus(Landroid/content/ContentResolver;Landroid/os/Bundle;JIII)V

    .line 158
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 159
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v5

    .line 160
    .local v5, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v5, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-wide v6, v5, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    .line 162
    .local v4, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v4, :cond_0

    .line 163
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    .line 164
    .local v21, "protocol":Ljava/lang/String;
    iget v3, v5, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v6, 0x4

    if-eq v3, v6, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v5, v1}, Lcom/kingsoft/email/service/PopImapSyncAdapterService;->loadsFromServer(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 168
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v6, "mailboxKey=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-wide v11, v5, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_2
    const-string/jumbo v3, "PopImapSyncService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "About to sync mailbox: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 173
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 174
    .local v20, "mailboxUri":Landroid/net/Uri;
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 176
    .local v23, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "uiSyncStatus"

    if-eqz p5, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 181
    const v3, 0x7f100304

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 182
    .local v19, "legacyImapProtocol":Ljava/lang/String;
    iget v3, v5, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_4

    .line 183
    iget-wide v6, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/kingsoft/email/service/EmailServiceStub;->sendMailImpl(Landroid/content/Context;J)V
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    .end local v19    # "legacyImapProtocol":Ljava/lang/String;
    :goto_2
    const-string/jumbo v3, "uiSyncStatus"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    const-string/jumbo v3, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 299
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 176
    :cond_3
    const/4 v3, 0x4

    goto :goto_1

    .line 186
    .restart local v19    # "legacyImapProtocol":Ljava/lang/String;
    :cond_4
    :try_start_1
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 187
    if-eqz p6, :cond_5

    const/4 v6, 0x1

    :goto_3
    move-object/from16 v3, p0

    move/from16 v7, p5

    move/from16 v8, p7

    invoke-static/range {v3 .. v8}, Lcom/kingsoft/email/service/ImapService;->synchronizeMailboxSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZZ)I

    move-result v22

    .line 189
    .local v22, "status":I
    const/4 v3, 0x4

    move/from16 v0, v22

    if-ne v3, v0, :cond_7

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/special/NetEasyHandle;->fromNetEasy(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 191
    new-instance v3, Ljava/lang/Thread;

    new-instance v6, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;

    move-object/from16 v7, p0

    move-object v8, v4

    move-object v9, v5

    move/from16 v10, p6

    move/from16 v11, p5

    move/from16 v12, p7

    move-object v13, v2

    move-object/from16 v14, p3

    move-wide/from16 v15, p1

    move-object/from16 v17, p4

    invoke-direct/range {v6 .. v17}, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;IZZLandroid/content/ContentResolver;Landroid/os/Bundle;JLandroid/content/SyncResult;)V

    invoke-direct {v3, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    move/from16 v10, v22

    .line 260
    .end local v22    # "status":I
    .local v10, "status":I
    :goto_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v2

    move-object/from16 v7, p3

    move-wide/from16 v8, p1

    invoke-static/range {v6 .. v12}, Lcom/android/emailcommon/service/EmailServiceStatus;->syncMailboxStatus(Landroid/content/ContentResolver;Landroid/os/Bundle;JIII)V
    :try_end_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 263
    .end local v10    # "status":I
    .end local v19    # "legacyImapProtocol":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 264
    .local v18, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v15

    .line 267
    .local v15, "cause":I
    sparse-switch v15, :sswitch_data_0

    .line 284
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 285
    const v3, 0x7f100283

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 290
    :goto_5
    const/16 v16, 0x0

    const/16 v17, 0x5

    move-object v11, v2

    move-object/from16 v12, p3

    move-wide/from16 v13, p1

    invoke-static/range {v11 .. v17}, Lcom/android/emailcommon/service/EmailServiceStatus;->syncMailboxStatus(Landroid/content/ContentResolver;Landroid/os/Bundle;JIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 297
    .end local v15    # "cause":I
    .end local v18    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :catchall_0
    move-exception v3

    const-string/jumbo v6, "uiSyncStatus"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    const-string/jumbo v6, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 299
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    throw v3

    .line 187
    .restart local v19    # "legacyImapProtocol":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 223
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-static {v0, v4, v5, v1}, Lcom/kingsoft/email/service/Pop3Service;->synchronizeMailboxSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)I

    move-result v22

    .line 225
    .restart local v22    # "status":I
    const/4 v3, 0x4

    move/from16 v0, v22

    if-ne v3, v0, :cond_7

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/special/NetEasyHandle;->fromNetEasy(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 227
    new-instance v3, Ljava/lang/Thread;

    new-instance v6, Lcom/kingsoft/email/service/PopImapSyncAdapterService$2;

    move-object/from16 v7, p0

    move-object v8, v4

    move-object v9, v5

    move/from16 v10, p6

    move-object v11, v2

    move-object/from16 v12, p3

    move-wide/from16 v13, p1

    move-object/from16 v15, p4

    invoke-direct/range {v6 .. v15}, Lcom/kingsoft/email/service/PopImapSyncAdapterService$2;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ILandroid/content/ContentResolver;Landroid/os/Bundle;JLandroid/content/SyncResult;)V

    invoke-direct {v3, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    move/from16 v10, v22

    .end local v22    # "status":I
    .restart local v10    # "status":I
    goto/16 :goto_4

    .line 269
    .end local v10    # "status":I
    .end local v19    # "legacyImapProtocol":Ljava/lang/String;
    .restart local v15    # "cause":I
    .restart local v18    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :sswitch_0
    :try_start_4
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/kingsoft/emailcommon/utility/Utility;->showErrorToast(Landroid/content/Context;I)V

    .line 270
    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v11, v2

    move-object/from16 v12, p3

    move-wide/from16 v13, p1

    invoke-static/range {v11 .. v17}, Lcom/android/emailcommon/service/EmailServiceStatus;->syncMailboxStatus(Landroid/content/ContentResolver;Landroid/os/Bundle;JIII)V

    .line 273
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v3, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v3, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_2

    .line 277
    :sswitch_1
    const/16 v16, 0x0

    const/16 v17, 0x2

    move-object v11, v2

    move-object/from16 v12, p3

    move-wide/from16 v13, p1

    invoke-static/range {v11 .. v17}, Lcom/android/emailcommon/service/EmailServiceStatus;->syncMailboxStatus(Landroid/content/ContentResolver;Landroid/os/Bundle;JIII)V

    .line 280
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    goto/16 :goto_2

    .line 288
    :cond_8
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/kingsoft/emailcommon/utility/Utility;->showErrorToast(Landroid/content/Context;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 267
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService;->mSyncAdapter:Lcom/kingsoft/email/service/PopImapSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/kingsoft/email/service/PopImapSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 121
    new-instance v0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/kingsoft/email/service/PopImapSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/email/service/PopImapSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService;->mSyncAdapter:Lcom/kingsoft/email/service/PopImapSyncAdapterService$SyncAdapterImpl;

    .line 122
    return-void
.end method
