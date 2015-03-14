.class public Lcom/kingsoft/email/service/ImapService;
.super Landroid/app/Service;
.source "ImapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/service/ImapService$SortableMessage;,
        Lcom/kingsoft/email/service/ImapService$OldestTimestampInfo;,
        Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;
    }
.end annotation


# static fields
.field private static final FLAG_LIST_ANSWERED:[Lcom/kingsoft/emailcommon/mail/Flag;

.field private static final FLAG_LIST_FLAGGED:[Lcom/kingsoft/emailcommon/mail/Flag;

.field private static final FLAG_LIST_SEEN:[Lcom/kingsoft/emailcommon/mail/Flag;

.field private static final FULL_SYNC_INTERVAL_MILLIS:J = 0xdbba00L

.field private static final FULL_SYNC_WINDOW_MILLIS:J = 0x240c8400L

.field private static final INITIAL_WINDOW_SIZE_INCREASE:J = 0x5265c00L

.field private static final LOAD_MORE_MAX_INCREMENT:I = 0x14

.field private static final LOAD_MORE_MIN_INCREMENT:I = 0xa

.field private static final LOCAL_SERVERID_PREFIX:Ljava/lang/String; = "Local-"

.field private static final MINIMUM_MESSAGES_TO_SYNC:I = 0xa

.field private static final QUICK_SYNC_WINDOW_MILLIS:J = 0x5265c00L

.field static _flagChangedSet:Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;

.field static _flagDeletedSet:Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;

.field private static mLastSearchAccountKey:J

.field private static mLastSearchRemoteMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field private static mLastSearchServerId:Ljava/lang/String;

.field private static final sSearchResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "[",
            "Lcom/kingsoft/email/service/ImapService$SortableMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBinder:Lcom/kingsoft/email/service/EmailServiceStub;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const-wide/32 v5, 0x1d4c0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-array v0, v3, [Lcom/kingsoft/emailcommon/mail/Flag;

    sget-object v1, Lcom/kingsoft/emailcommon/mail/Flag;->SEEN:Lcom/kingsoft/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kingsoft/email/service/ImapService;->FLAG_LIST_SEEN:[Lcom/kingsoft/emailcommon/mail/Flag;

    .line 92
    new-array v0, v3, [Lcom/kingsoft/emailcommon/mail/Flag;

    sget-object v1, Lcom/kingsoft/emailcommon/mail/Flag;->FLAGGED:Lcom/kingsoft/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kingsoft/email/service/ImapService;->FLAG_LIST_FLAGGED:[Lcom/kingsoft/emailcommon/mail/Flag;

    .line 93
    new-array v0, v3, [Lcom/kingsoft/emailcommon/mail/Flag;

    sget-object v1, Lcom/kingsoft/emailcommon/mail/Flag;->ANSWERED:Lcom/kingsoft/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kingsoft/email/service/ImapService;->FLAG_LIST_ANSWERED:[Lcom/kingsoft/emailcommon/mail/Flag;

    .line 99
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/kingsoft/email/service/ImapService;->mLastSearchAccountKey:J

    .line 100
    sput-object v4, Lcom/kingsoft/email/service/ImapService;->mLastSearchServerId:Ljava/lang/String;

    .line 101
    sput-object v4, Lcom/kingsoft/email/service/ImapService;->mLastSearchRemoteMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingsoft/email/service/ImapService;->sSearchResults:Ljava/util/HashMap;

    .line 161
    new-instance v0, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;

    invoke-direct {v0, v5, v6}, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;-><init>(J)V

    sput-object v0, Lcom/kingsoft/email/service/ImapService;->_flagChangedSet:Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;

    .line 162
    new-instance v0, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;

    invoke-direct {v0, v5, v6}, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;-><init>(J)V

    sput-object v0, Lcom/kingsoft/email/service/ImapService;->_flagDeletedSet:Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 124
    new-instance v0, Lcom/kingsoft/email/service/ImapService$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/service/ImapService$1;-><init>(Lcom/kingsoft/email/service/ImapService;)V

    iput-object v0, p0, Lcom/kingsoft/email/service/ImapService;->mBinder:Lcom/kingsoft/email/service/EmailServiceStub;

    .line 1577
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/android/emailcommon/service/SearchParams;
    .param p4, "x3"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static/range {p0 .. p5}, Lcom/kingsoft/email/service/ImapService;->searchMailboxImpl(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v0

    return v0
.end method

.method public static downloadFlagAndEnvelope(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/kingsoft/emailcommon/mail/Folder;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p3, "remoteFolder"    # Lcom/kingsoft/emailcommon/mail/Folder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/Account;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            "Lcom/kingsoft/emailcommon/mail/Folder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/emailcommon/mail/Message;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 300
    .local p4, "unsyncedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Message;>;"
    .local p5, "localMessageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;>;"
    .local p6, "unseenMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v6, Lcom/kingsoft/emailcommon/mail/FetchProfile;

    invoke-direct {v6}, Lcom/kingsoft/emailcommon/mail/FetchProfile;-><init>()V

    .line 301
    .local v6, "fp":Lcom/kingsoft/emailcommon/mail/FetchProfile;
    sget-object v0, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v6, v0}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v0, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v6, v0}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v0, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v6, v0}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 306
    if-eqz p5, :cond_0

    .line 307
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 312
    .local v1, "localMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;>;"
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/kingsoft/emailcommon/mail/Message;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lcom/kingsoft/emailcommon/mail/Message;

    new-instance v0, Lcom/kingsoft/email/service/ImapService$2;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/service/ImapService$2;-><init>(Ljava/util/HashMap;Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/util/ArrayList;)V

    invoke-virtual {p3, v7, v6, v0}, Lcom/kingsoft/emailcommon/mail/Folder;->fetch([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 384
    return-void

    .line 309
    .end local v1    # "localMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;>;"
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .restart local v1    # "localMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;>;"
    goto :goto_0
.end method

.method private static getRemoteMailboxForMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;

    .prologue
    const/4 v5, 0x0

    .line 882
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 883
    iget-wide v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 884
    .local v6, "accountKey":J
    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    .line 885
    .local v10, "protocolSearchInfo":Ljava/lang/String;
    sget-wide v0, Lcom/kingsoft/email/service/ImapService;->mLastSearchAccountKey:J

    cmp-long v0, v6, v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/kingsoft/email/service/ImapService;->mLastSearchServerId:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 887
    sget-object v5, Lcom/kingsoft/email/service/ImapService;->mLastSearchRemoteMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 911
    .end local v6    # "accountKey":J
    .end local v10    # "protocolSearchInfo":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 889
    .restart local v6    # "accountKey":J
    .restart local v10    # "protocolSearchInfo":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "serverId=? and accountKey=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v4, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 893
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 895
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 896
    new-instance v9, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 897
    .local v9, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual {v9, v8}, Lcom/android/emailcommon/provider/Mailbox;->restore(Landroid/database/Cursor;)V

    .line 898
    sput-wide v6, Lcom/kingsoft/email/service/ImapService;->mLastSearchAccountKey:J

    .line 899
    sput-object v10, Lcom/kingsoft/email/service/ImapService;->mLastSearchServerId:Ljava/lang/String;

    .line 900
    sput-object v9, Lcom/kingsoft/email/service/ImapService;->mLastSearchRemoteMailbox:Lcom/android/emailcommon/provider/Mailbox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v5, v9

    goto :goto_0

    .end local v9    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 911
    .end local v6    # "accountKey":J
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v10    # "protocolSearchInfo":Ljava/lang/String;
    :cond_3
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v5

    goto :goto_0
.end method

.method public static loadUnsyncedMessages(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/kingsoft/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "remoteFolder"    # Lcom/kingsoft/emailcommon/mail/Folder;
    .param p4, "toMailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/Account;",
            "Lcom/kingsoft/emailcommon/mail/Folder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/emailcommon/mail/Message;",
            ">;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 257
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Message;>;"
    invoke-static {p0}, Lcom/kingsoft/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v8

    .line 259
    .local v8, "networkType":I
    new-instance v2, Lcom/kingsoft/emailcommon/mail/FetchProfile;

    invoke-direct {v2}, Lcom/kingsoft/emailcommon/mail/FetchProfile;-><init>()V

    .line 260
    .local v2, "fp":Lcom/kingsoft/emailcommon/mail/FetchProfile;
    sget-object v12, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v2, v12}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lcom/kingsoft/emailcommon/mail/Message;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/kingsoft/emailcommon/mail/Message;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v2, v13}, Lcom/kingsoft/emailcommon/mail/Folder;->fetch([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 262
    const/4 v12, 0x1

    new-array v9, v12, [Lcom/kingsoft/emailcommon/mail/Message;

    .line 263
    .local v9, "oneMessageArray":[Lcom/kingsoft/emailcommon/mail/Message;
    const/4 v3, 0x0

    .line 264
    .local v3, "i":I
    const/4 v12, 0x0

    invoke-static {p0, v12}, Lcom/kingsoft/email/provider/Utilities;->SendEMailDownloadProcessBroadcast(Landroid/content/Context;I)V

    .line 267
    const/4 v6, 0x5

    .line 268
    .local v6, "loadStatus":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kingsoft/emailcommon/mail/Message;

    .line 271
    .local v7, "message":Lcom/kingsoft/emailcommon/mail/Message;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v11, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v1, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    invoke-static {v7, v11, v1}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->collectParts(Lcom/kingsoft/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 275
    const/4 v12, 0x0

    aput-object v7, v9, v12

    .line 276
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kingsoft/emailcommon/mail/Part;

    .line 277
    .local v10, "part":Lcom/kingsoft/emailcommon/mail/Part;
    const/4 v12, 0x1

    if-eq v8, v12, :cond_1

    invoke-interface {v10}, Lcom/kingsoft/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "text"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    if-eq v8, v12, :cond_0

    .line 279
    :cond_1
    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->clear()V

    .line 280
    invoke-virtual {v2, v10}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 281
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v2, v12}, Lcom/kingsoft/emailcommon/mail/Folder;->fetch([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_1

    .line 286
    .end local v10    # "part":Lcom/kingsoft/emailcommon/mail/Part;
    :cond_2
    const/4 v6, 0x1

    .line 288
    move-object/from16 v0, p4

    invoke-static {p0, v7, p1, v0, v6}, Lcom/kingsoft/email/provider/Utilities;->copyOneMessageToProvider(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V

    .line 291
    add-int/lit8 v3, v3, 0x1

    .line 292
    mul-int/lit8 v12, v3, 0x64

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    div-int/2addr v12, v13

    invoke-static {p0, v12}, Lcom/kingsoft/email/provider/Utilities;->SendEMailDownloadProcessBroadcast(Landroid/content/Context;I)V

    goto :goto_0

    .line 294
    .end local v1    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "message":Lcom/kingsoft/emailcommon/mail/Message;
    .end local v11    # "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    :cond_3
    return-void
.end method

.method private static processPendingActionsSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 854
    invoke-static {p0, p1}, Lcom/kingsoft/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 855
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 858
    .local v0, "accountIdArgs":[Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/kingsoft/email/service/ImapService;->processPendingDeletesSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;[Ljava/lang/String;)V

    .line 862
    iget v1, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 864
    invoke-static {p0, p1, v0}, Lcom/kingsoft/email/service/ImapService;->processPendingUploadsSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;[Ljava/lang/String;)V

    .line 868
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/kingsoft/email/service/ImapService;->processPendingUpdatesSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;[Ljava/lang/String;)V

    .line 869
    return-void
.end method

.method private static processPendingAppend(Landroid/content/Context;Lcom/kingsoft/email/mail/Store;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remoteStore"    # Lcom/kingsoft/email/mail/Store;
    .param p2, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p3, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1456
    const/4 v14, 0x0

    .line 1457
    .local v14, "updateInternalDate":Z
    const/4 v15, 0x0

    .line 1458
    .local v15, "updateMessage":Z
    const/4 v4, 0x0

    .line 1461
    .local v4, "deleteMessage":Z
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Folder;

    move-result-object v10

    .line 1462
    .local v10, "remoteFolder":Lcom/kingsoft/emailcommon/mail/Folder;
    invoke-virtual {v10}, Lcom/kingsoft/emailcommon/mail/Folder;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1463
    sget-object v17, Lcom/kingsoft/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/kingsoft/emailcommon/mail/Folder$FolderType;

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/kingsoft/emailcommon/mail/Folder;->create(Lcom/kingsoft/emailcommon/mail/Folder$FolderType;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1465
    const/16 v17, 0x0

    .line 1571
    :goto_0
    return v17

    .line 1468
    :cond_0
    sget-object v17, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/kingsoft/emailcommon/mail/Folder;->open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V

    .line 1469
    invoke-virtual {v10}, Lcom/kingsoft/emailcommon/mail/Folder;->getMode()Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    move-result-object v17

    sget-object v18, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 1470
    const/16 v17, 0x0

    goto :goto_0

    .line 1474
    :cond_1
    const/4 v11, 0x0

    .line 1475
    .local v11, "remoteMessage":Lcom/kingsoft/emailcommon/mail/Message;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_2

    .line 1476
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/kingsoft/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v11

    .line 1480
    :cond_2
    if-nez v11, :cond_7

    .line 1485
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/kingsoft/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v8

    .line 1490
    .local v8, "localMessage":Lcom/kingsoft/emailcommon/mail/Message;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lcom/kingsoft/emailcommon/mail/Message;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/kingsoft/emailcommon/mail/Folder;->appendMessages([Lcom/kingsoft/emailcommon/mail/Message;)V

    .line 1493
    invoke-virtual {v8}, Lcom/kingsoft/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 1496
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1497
    const/4 v4, 0x1

    .line 1498
    :cond_3
    const/4 v14, 0x1

    .line 1499
    const/4 v15, 0x1

    .line 1542
    .end local v8    # "localMessage":Lcom/kingsoft/emailcommon/mail/Message;
    :goto_1
    if-eqz v14, :cond_4

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1544
    :try_start_0
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/kingsoft/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v12

    .line 1545
    .local v12, "remoteMessage2":Lcom/kingsoft/emailcommon/mail/Message;
    if-eqz v12, :cond_4

    .line 1546
    new-instance v6, Lcom/kingsoft/emailcommon/mail/FetchProfile;

    invoke-direct {v6}, Lcom/kingsoft/emailcommon/mail/FetchProfile;-><init>()V

    .line 1547
    .local v6, "fp2":Lcom/kingsoft/emailcommon/mail/FetchProfile;
    sget-object v17, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1548
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lcom/kingsoft/emailcommon/mail/Message;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v12, v17, v18

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v6, v1}, Lcom/kingsoft/emailcommon/mail/Folder;->fetch([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1549
    invoke-virtual {v12}, Lcom/kingsoft/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p3

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1550
    const/4 v15, 0x1

    .line 1558
    .end local v6    # "fp2":Lcom/kingsoft/emailcommon/mail/FetchProfile;
    .end local v12    # "remoteMessage2":Lcom/kingsoft/emailcommon/mail/Message;
    :cond_4
    :goto_2
    if-nez v4, :cond_5

    if-eqz v15, :cond_6

    .line 1559
    :cond_5
    sget-object v17, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 1560
    .local v16, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 1561
    .local v13, "resolver":Landroid/content/ContentResolver;
    if-eqz v4, :cond_9

    .line 1562
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1571
    .end local v13    # "resolver":Landroid/content/ContentResolver;
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_6
    :goto_3
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1506
    :cond_7
    new-instance v5, Lcom/kingsoft/emailcommon/mail/FetchProfile;

    invoke-direct {v5}, Lcom/kingsoft/emailcommon/mail/FetchProfile;-><init>()V

    .line 1507
    .local v5, "fp":Lcom/kingsoft/emailcommon/mail/FetchProfile;
    sget-object v17, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1508
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lcom/kingsoft/emailcommon/mail/Message;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v5, v1}, Lcom/kingsoft/emailcommon/mail/Folder;->fetch([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1509
    new-instance v7, Ljava/util/Date;

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1510
    .local v7, "localDate":Ljava/util/Date;
    invoke-virtual {v11}, Lcom/kingsoft/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v9

    .line 1511
    .local v9, "remoteDate":Ljava/util/Date;
    if-eqz v9, :cond_8

    invoke-virtual {v9, v7}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v17

    if-lez v17, :cond_8

    .line 1515
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1523
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/kingsoft/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v8

    .line 1526
    .restart local v8    # "localMessage":Lcom/kingsoft/emailcommon/mail/Message;
    invoke-virtual {v5}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->clear()V

    .line 1527
    new-instance v5, Lcom/kingsoft/emailcommon/mail/FetchProfile;

    .end local v5    # "fp":Lcom/kingsoft/emailcommon/mail/FetchProfile;
    invoke-direct {v5}, Lcom/kingsoft/emailcommon/mail/FetchProfile;-><init>()V

    .line 1528
    .restart local v5    # "fp":Lcom/kingsoft/emailcommon/mail/FetchProfile;
    sget-object v17, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1529
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lcom/kingsoft/emailcommon/mail/Message;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/kingsoft/emailcommon/mail/Folder;->appendMessages([Lcom/kingsoft/emailcommon/mail/Message;)V

    .line 1532
    invoke-virtual {v8}, Lcom/kingsoft/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 1533
    const/4 v14, 0x1

    .line 1534
    const/4 v15, 0x1

    .line 1537
    sget-object v17, Lcom/kingsoft/emailcommon/mail/Flag;->DELETED:Lcom/kingsoft/emailcommon/mail/Flag;

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lcom/kingsoft/emailcommon/mail/Message;->setFlag(Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    goto/16 :goto_1

    .line 1563
    .end local v5    # "fp":Lcom/kingsoft/emailcommon/mail/FetchProfile;
    .end local v7    # "localDate":Ljava/util/Date;
    .end local v8    # "localMessage":Lcom/kingsoft/emailcommon/mail/Message;
    .end local v9    # "remoteDate":Ljava/util/Date;
    .restart local v13    # "resolver":Landroid/content/ContentResolver;
    .restart local v16    # "uri":Landroid/net/Uri;
    :cond_9
    if-eqz v15, :cond_6

    .line 1564
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1565
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v17, "syncServerId"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    const-string/jumbo v17, "syncServerTimeStamp"

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1567
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v13, v0, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1552
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v13    # "resolver":Landroid/content/ContentResolver;
    .end local v16    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v17

    goto/16 :goto_2
.end method

.method private static processPendingDataChange(Landroid/content/Context;Lcom/kingsoft/email/mail/Store;Lcom/android/emailcommon/provider/Mailbox;ZZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remoteStore"    # Lcom/kingsoft/email/mail/Store;
    .param p2, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p3, "changeRead"    # Z
    .param p4, "changeFlagged"    # Z
    .param p5, "changeMailbox"    # Z
    .param p6, "changeAnswered"    # Z
    .param p7, "oldMessage"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p8, "newMessage"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1221
    move-object v2, p2

    .line 1223
    .local v2, "newMailbox":Lcom/android/emailcommon/provider/Mailbox;
    move-object/from16 v0, p7

    invoke-static {p0, v0}, Lcom/kingsoft/email/service/ImapService;->getRemoteMailboxForMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object p2

    .line 1226
    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v6, :cond_0

    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string/jumbo v7, "Local-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez p2, :cond_1

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    iget v6, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    iget v6, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    .line 1237
    iget-object v6, p2, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/kingsoft/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Folder;

    move-result-object v3

    .line 1238
    .local v3, "remoteFolder":Lcom/kingsoft/emailcommon/mail/Folder;
    invoke-virtual {v3}, Lcom/kingsoft/emailcommon/mail/Folder;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1241
    sget-object v6, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v3, v6}, Lcom/kingsoft/emailcommon/mail/Folder;->open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V

    .line 1242
    invoke-virtual {v3}, Lcom/kingsoft/emailcommon/mail/Folder;->getMode()Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    move-result-object v6

    sget-object v7, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    if-ne v6, v7, :cond_0

    .line 1247
    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/kingsoft/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v4

    .line 1248
    .local v4, "remoteMessage":Lcom/kingsoft/emailcommon/mail/Message;
    if-eqz v4, :cond_0

    .line 1251
    sget-boolean v6, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 1252
    sget-object v7, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Update for msg id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " read="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    iget-boolean v8, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " flagged="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    iget-boolean v8, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " answered="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p8

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v9, 0x40000

    and-int/2addr v6, v9

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " new mailbox="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v6, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1260
    :cond_2
    const/4 v6, 0x1

    new-array v1, v6, [Lcom/kingsoft/emailcommon/mail/Message;

    const/4 v6, 0x0

    aput-object v4, v1, v6

    .line 1261
    .local v1, "messages":[Lcom/kingsoft/emailcommon/mail/Message;
    if-eqz p3, :cond_3

    .line 1262
    sget-object v6, Lcom/kingsoft/email/service/ImapService;->FLAG_LIST_SEEN:[Lcom/kingsoft/emailcommon/mail/Flag;

    move-object/from16 v0, p8

    iget-boolean v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v3, v1, v6, v7}, Lcom/kingsoft/emailcommon/mail/Folder;->setFlags([Lcom/kingsoft/emailcommon/mail/Message;[Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    .line 1264
    :cond_3
    if-eqz p4, :cond_4

    .line 1265
    sget-object v6, Lcom/kingsoft/email/service/ImapService;->FLAG_LIST_FLAGGED:[Lcom/kingsoft/emailcommon/mail/Flag;

    move-object/from16 v0, p8

    iget-boolean v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v3, v1, v6, v7}, Lcom/kingsoft/emailcommon/mail/Folder;->setFlags([Lcom/kingsoft/emailcommon/mail/Message;[Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    .line 1267
    :cond_4
    if-eqz p6, :cond_5

    .line 1268
    sget-object v7, Lcom/kingsoft/email/service/ImapService;->FLAG_LIST_ANSWERED:[Lcom/kingsoft/emailcommon/mail/Flag;

    move-object/from16 v0, p8

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v8, 0x40000

    and-int/2addr v6, v8

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v3, v1, v7, v6}, Lcom/kingsoft/emailcommon/mail/Folder;->setFlags([Lcom/kingsoft/emailcommon/mail/Message;[Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    .line 1271
    :cond_5
    if-eqz p5, :cond_6

    .line 1272
    iget-object v6, v2, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/kingsoft/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Folder;

    move-result-object v5

    .line 1273
    .local v5, "toFolder":Lcom/kingsoft/emailcommon/mail/Folder;
    invoke-virtual {v3}, Lcom/kingsoft/emailcommon/mail/Folder;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1277
    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/kingsoft/emailcommon/mail/Message;->setMessageId(Ljava/lang/String;)V

    .line 1279
    new-instance v6, Lcom/kingsoft/email/service/ImapService$3;

    move-object/from16 v0, p8

    invoke-direct {v6, p0, v0}, Lcom/kingsoft/email/service/ImapService$3;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    invoke-virtual {v3, v1, v5, v6}, Lcom/kingsoft/emailcommon/mail/Folder;->copyMessages([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/Folder;Lcom/kingsoft/emailcommon/mail/Folder$MessageUpdateCallbacks;)V

    .line 1295
    sget-object v6, Lcom/kingsoft/emailcommon/mail/Flag;->DELETED:Lcom/kingsoft/emailcommon/mail/Flag;

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lcom/kingsoft/emailcommon/mail/Message;->setFlag(Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    .line 1296
    invoke-virtual {v3}, Lcom/kingsoft/emailcommon/mail/Folder;->expunge()[Lcom/kingsoft/emailcommon/mail/Message;

    .line 1298
    .end local v5    # "toFolder":Lcom/kingsoft/emailcommon/mail/Folder;
    :cond_6
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/kingsoft/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 1252
    .end local v1    # "messages":[Lcom/kingsoft/emailcommon/mail/Message;
    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    .line 1268
    .restart local v1    # "messages":[Lcom/kingsoft/emailcommon/mail/Message;
    :cond_8
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private static processPendingDeleteFromTrash(Lcom/kingsoft/email/mail/Store;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 6
    .param p0, "remoteStore"    # Lcom/kingsoft/email/mail/Store;
    .param p1, "oldMailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p2, "oldMessage"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1417
    iget-object v2, p1, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Folder;

    move-result-object v0

    .line 1418
    .local v0, "remoteFolder":Lcom/kingsoft/emailcommon/mail/Folder;
    invoke-virtual {v0}, Lcom/kingsoft/emailcommon/mail/Folder;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1441
    :goto_0
    return-void

    .line 1422
    :cond_0
    sget-object v2, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v0, v2}, Lcom/kingsoft/emailcommon/mail/Folder;->open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V

    .line 1423
    invoke-virtual {v0}, Lcom/kingsoft/emailcommon/mail/Folder;->getMode()Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    move-result-object v2

    sget-object v3, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    if-eq v2, v3, :cond_1

    .line 1424
    invoke-virtual {v0, v5}, Lcom/kingsoft/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 1429
    :cond_1
    iget-object v2, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kingsoft/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v1

    .line 1430
    .local v1, "remoteMessage":Lcom/kingsoft/emailcommon/mail/Message;
    if-nez v1, :cond_2

    .line 1431
    invoke-virtual {v0, v5}, Lcom/kingsoft/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 1436
    :cond_2
    sget-object v2, Lcom/kingsoft/email/service/ImapService;->_flagDeletedSet:Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/Store;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    sget-object v2, Lcom/kingsoft/emailcommon/mail/Flag;->DELETED:Lcom/kingsoft/emailcommon/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/emailcommon/mail/Message;->setFlag(Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    .line 1439
    invoke-virtual {v0}, Lcom/kingsoft/emailcommon/mail/Folder;->expunge()[Lcom/kingsoft/emailcommon/mail/Message;

    .line 1440
    invoke-virtual {v0, v5}, Lcom/kingsoft/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0
.end method

.method private static processPendingDeletesSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;[Ljava/lang/String;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "accountIdArgs"    # [Ljava/lang/String;

    .prologue
    .line 921
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "accountKey=?"

    const-string/jumbo v5, "mailboxKey"

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 926
    .local v6, "deletes":Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 927
    .local v7, "lastMessageId":J
    if-eqz v6, :cond_3

    .line 930
    const/4 v12, 0x0

    .line 932
    .local v12, "remoteStore":Lcom/kingsoft/email/mail/Store;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 933
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v6, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v11

    check-cast v11, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 936
    .local v11, "oldMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v11, :cond_0

    .line 937
    iget-wide v7, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    .line 939
    invoke-static {p0, v11}, Lcom/kingsoft/email/service/ImapService;->getRemoteMailboxForMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v9

    .line 940
    .local v9, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v9, :cond_0

    .line 946
    if-nez v12, :cond_1

    .line 947
    invoke-static {p1, p0}, Lcom/kingsoft/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;

    move-result-object v12

    .line 953
    :cond_1
    invoke-static {v12, v9, v11}, Lcom/kingsoft/email/service/ImapService;->processPendingDeleteFromTrash(Lcom/kingsoft/email/mail/Store;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 957
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 959
    .local v13, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 962
    .end local v9    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v11    # "oldMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v13    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v10

    .line 965
    .local v10, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_1
    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 966
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to process pending delete for id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 970
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 973
    .end local v10    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .end local v12    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    :cond_3
    :goto_1
    return-void

    .line 970
    .restart local v12    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static processPendingMoveToTrash(Landroid/content/Context;Lcom/kingsoft/email/mail/Store;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remoteStore"    # Lcom/kingsoft/email/mail/Store;
    .param p2, "newMailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p3, "oldMessage"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p4, "newMessage"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1314
    iget-object v4, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string/jumbo v5, "Local-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1403
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    invoke-static {p0, p3}, Lcom/kingsoft/email/service/ImapService;->getRemoteMailboxForMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 1322
    .local v0, "oldMailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_0

    .line 1327
    iget v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    .line 1334
    iget-object v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/kingsoft/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Folder;

    move-result-object v1

    .line 1335
    .local v1, "remoteFolder":Lcom/kingsoft/emailcommon/mail/Folder;
    invoke-virtual {v1}, Lcom/kingsoft/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1339
    sget-object v4, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v1, v4}, Lcom/kingsoft/emailcommon/mail/Folder;->open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V

    .line 1340
    invoke-virtual {v1}, Lcom/kingsoft/emailcommon/mail/Folder;->getMode()Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    move-result-object v4

    sget-object v5, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    if-eq v4, v5, :cond_2

    .line 1341
    invoke-virtual {v1, v6}, Lcom/kingsoft/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 1346
    :cond_2
    iget-object v4, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/kingsoft/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v2

    .line 1347
    .local v2, "remoteMessage":Lcom/kingsoft/emailcommon/mail/Message;
    if-nez v2, :cond_3

    .line 1348
    invoke-virtual {v1, v6}, Lcom/kingsoft/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 1353
    :cond_3
    iget-object v4, p2, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/kingsoft/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Folder;

    move-result-object v3

    .line 1354
    .local v3, "remoteTrashFolder":Lcom/kingsoft/emailcommon/mail/Folder;
    invoke-virtual {v3}, Lcom/kingsoft/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1358
    sget-object v4, Lcom/kingsoft/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/kingsoft/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v3, v4}, Lcom/kingsoft/emailcommon/mail/Folder;->create(Lcom/kingsoft/emailcommon/mail/Folder$FolderType;)Z

    .line 1363
    :cond_4
    invoke-virtual {v3}, Lcom/kingsoft/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1367
    sget-object v4, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v3, v4}, Lcom/kingsoft/emailcommon/mail/Folder;->open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V

    .line 1368
    invoke-virtual {v3}, Lcom/kingsoft/emailcommon/mail/Folder;->getMode()Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    move-result-object v4

    sget-object v5, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    if-eq v4, v5, :cond_5

    .line 1369
    invoke-virtual {v1, v6}, Lcom/kingsoft/emailcommon/mail/Folder;->close(Z)V

    .line 1370
    invoke-virtual {v3, v6}, Lcom/kingsoft/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 1374
    :cond_5
    new-array v4, v7, [Lcom/kingsoft/emailcommon/mail/Message;

    aput-object v2, v4, v6

    new-instance v5, Lcom/kingsoft/email/service/ImapService$4;

    invoke-direct {v5, p4, p0}, Lcom/kingsoft/email/service/ImapService$4;-><init>(Lcom/android/emailcommon/provider/EmailContent$Message;Landroid/content/Context;)V

    invoke-virtual {v1, v4, v3, v5}, Lcom/kingsoft/emailcommon/mail/Folder;->copyMessages([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/Folder;Lcom/kingsoft/emailcommon/mail/Folder$MessageUpdateCallbacks;)V

    .line 1396
    invoke-virtual {v3, v6}, Lcom/kingsoft/emailcommon/mail/Folder;->close(Z)V

    .line 1400
    :cond_6
    sget-object v4, Lcom/kingsoft/emailcommon/mail/Flag;->DELETED:Lcom/kingsoft/emailcommon/mail/Flag;

    invoke-virtual {v2, v4, v7}, Lcom/kingsoft/emailcommon/mail/Message;->setFlag(Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    .line 1401
    invoke-virtual {v1}, Lcom/kingsoft/emailcommon/mail/Folder;->expunge()[Lcom/kingsoft/emailcommon/mail/Message;

    .line 1402
    invoke-virtual {v1, v6}, Lcom/kingsoft/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0
.end method

.method private static processPendingUpdatesSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;[Ljava/lang/String;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "accountIdArgs"    # [Ljava/lang/String;

    .prologue
    .line 1058
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1059
    .local v3, "resolver":Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v6, "accountKey=?"

    const-string/jumbo v8, "mailboxKey"

    move-object/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1063
    .local v18, "updates":Landroid/database/Cursor;
    const-wide/16 v15, -0x1

    .line 1064
    .local v15, "lastMessageId":J
    if-eqz v18, :cond_6

    .line 1067
    const/4 v5, 0x0

    .line 1069
    .local v5, "remoteStore":Lcom/kingsoft/email/mail/Store;
    const/4 v6, 0x0

    .line 1071
    .local v6, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1072
    const/4 v13, 0x0

    .line 1073
    .local v13, "changeMoveToTrash":Z
    const/4 v7, 0x0

    .line 1074
    .local v7, "changeRead":Z
    const/4 v8, 0x0

    .line 1075
    .local v8, "changeFlagged":Z
    const/4 v9, 0x0

    .line 1076
    .local v9, "changeMailbox":Z
    const/4 v10, 0x0

    .line 1078
    .local v10, "changeAnswered":Z
    const-class v4, Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v11

    check-cast v11, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1080
    .local v11, "oldMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-wide v15, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    .line 1081
    iget-wide v0, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    .line 1083
    .local v12, "newMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v12, :cond_0

    .line 1084
    iget-wide v0, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v6

    .line 1085
    if-eqz v6, :cond_0

    .line 1088
    iget-wide v0, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide/from16 v20, v0

    iget-wide v0, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide/from16 v22, v0

    cmp-long v4, v20, v22

    if-eqz v4, :cond_1

    .line 1089
    iget v4, v6, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v20, 0x6

    move/from16 v0, v20

    if-ne v4, v0, :cond_7

    .line 1090
    const/4 v13, 0x1

    .line 1095
    :cond_1
    :goto_1
    iget-boolean v4, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    iget-boolean v0, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v4, v0, :cond_8

    const/4 v7, 0x1

    .line 1096
    :goto_2
    iget-boolean v4, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    iget-boolean v0, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v4, v0, :cond_9

    const/4 v8, 0x1

    .line 1097
    :goto_3
    iget v4, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v20, 0x40000

    and-int v4, v4, v20

    iget v0, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v20, v0

    const/high16 v21, 0x40000

    and-int v20, v20, v21

    move/from16 v0, v20

    if-eq v4, v0, :cond_a

    const/4 v10, 0x1

    .line 1104
    :goto_4
    if-nez v5, :cond_3

    if-nez v13, :cond_2

    if-nez v7, :cond_2

    if-nez v8, :cond_2

    if-nez v9, :cond_2

    if-eqz v10, :cond_3

    .line 1107
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/kingsoft/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;

    move-result-object v5

    .line 1111
    :cond_3
    if-eqz v13, :cond_b

    .line 1113
    move-object/from16 v0, p0

    invoke-static {v0, v5, v6, v11, v12}, Lcom/kingsoft/email/service/ImapService;->processPendingMoveToTrash(Landroid/content/Context;Lcom/kingsoft/email/mail/Store;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 1115
    sget-object v4, Lcom/kingsoft/email/service/ImapService;->_flagDeletedSet:Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v20

    iget-object v0, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    :cond_4
    :goto_5
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 1126
    .local v19, "uri":Landroid/net/Uri;
    const/4 v4, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v4, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1131
    if-eqz v13, :cond_0

    .line 1133
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1134
    .local v14, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "syncServerId"

    iget-object v0, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    const-string/jumbo v4, "mailboxKey"

    iget-wide v0, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1136
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v20, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v21, "_id=?"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    iget-wide v0, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v4, v0, v14, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1144
    .end local v7    # "changeRead":Z
    .end local v8    # "changeFlagged":Z
    .end local v9    # "changeMailbox":Z
    .end local v10    # "changeAnswered":Z
    .end local v11    # "oldMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v12    # "newMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v13    # "changeMoveToTrash":Z
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v19    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v17

    .line 1147
    .local v17, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_1
    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 1148
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unable to process pending update for id="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v4, v0, v1}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1152
    :cond_5
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1155
    .end local v5    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    .end local v6    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v17    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :cond_6
    :goto_6
    return-void

    .line 1092
    .restart local v5    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    .restart local v6    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .restart local v7    # "changeRead":Z
    .restart local v8    # "changeFlagged":Z
    .restart local v9    # "changeMailbox":Z
    .restart local v10    # "changeAnswered":Z
    .restart local v11    # "oldMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v12    # "newMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v13    # "changeMoveToTrash":Z
    :cond_7
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 1095
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1096
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 1097
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 1116
    :cond_b
    if-nez v7, :cond_c

    if-nez v8, :cond_c

    if-nez v9, :cond_c

    if-eqz v10, :cond_4

    :cond_c
    move-object/from16 v4, p0

    .line 1117
    :try_start_2
    invoke-static/range {v4 .. v12}, Lcom/kingsoft/email/service/ImapService;->processPendingDataChange(Landroid/content/Context;Lcom/kingsoft/email/mail/Store;Lcom/android/emailcommon/provider/Mailbox;ZZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 1120
    sget-object v4, Lcom/kingsoft/email/service/ImapService;->_flagChangedSet:Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v20

    iget-object v0, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 1152
    .end local v7    # "changeRead":Z
    .end local v8    # "changeFlagged":Z
    .end local v9    # "changeMailbox":Z
    .end local v10    # "changeAnswered":Z
    .end local v11    # "oldMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v12    # "newMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v13    # "changeMoveToTrash":Z
    :catchall_0
    move-exception v4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_d
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_6
.end method

.method private static processPendingUploadsSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;[Ljava/lang/String;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "accountIdArgs"    # [Ljava/lang/String;

    .prologue
    .line 988
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 992
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "accountKey=? and type=5"

    const/4 v7, 0x0

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 996
    .local v15, "mailboxes":Landroid/database/Cursor;
    const-wide/16 v10, -0x1

    .line 999
    .local v10, "lastMessageId":J
    const/16 v17, 0x0

    .line 1000
    .local v17, "remoteStore":Lcom/kingsoft/email/mail/Store;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1001
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1002
    .local v13, "mailboxId":J
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    .line 1004
    .local v6, "mailboxKeyArgs":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1007
    .local v12, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "mailboxKey=? and (syncServerId is null or syncServerId=\'\')"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v18

    .line 1015
    .local v18, "upsyncs1":Landroid/database/Cursor;
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1017
    if-nez v17, :cond_2

    .line 1018
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/kingsoft/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;

    move-result-object v17

    .line 1021
    :cond_2
    if-nez v12, :cond_3

    .line 1022
    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v12

    .line 1023
    if-eqz v12, :cond_1

    .line 1028
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1029
    .local v8, "id":J
    move-wide v10, v8

    .line 1030
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1, v12, v8, v9}, Lcom/kingsoft/email/service/ImapService;->processUploadMessage(Landroid/content/Context;Lcom/kingsoft/email/mail/Store;Lcom/android/emailcommon/provider/Mailbox;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1033
    .end local v8    # "id":J
    :catchall_0
    move-exception v3

    if-eqz v18, :cond_4

    .line 1034
    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
    :try_end_2
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1038
    .end local v6    # "mailboxKeyArgs":[Ljava/lang/String;
    .end local v12    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v13    # "mailboxId":J
    .end local v18    # "upsyncs1":Landroid/database/Cursor;
    :catch_0
    move-exception v16

    .line 1041
    .local v16, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_3
    sget-boolean v3, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 1042
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to process pending upsync for id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1046
    :cond_5
    if-eqz v15, :cond_6

    .line 1047
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1050
    .end local v16    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :cond_6
    :goto_2
    return-void

    .line 1033
    .restart local v6    # "mailboxKeyArgs":[Ljava/lang/String;
    .restart local v12    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .restart local v13    # "mailboxId":J
    .restart local v18    # "upsyncs1":Landroid/database/Cursor;
    :cond_7
    if-eqz v18, :cond_0

    .line 1034
    :try_start_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 1046
    .end local v6    # "mailboxKeyArgs":[Ljava/lang/String;
    .end local v12    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v13    # "mailboxId":J
    .end local v18    # "upsyncs1":Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    if-eqz v15, :cond_8

    .line 1047
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    .line 1046
    :cond_9
    if-eqz v15, :cond_6

    .line 1047
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private static processUploadMessage(Landroid/content/Context;Lcom/kingsoft/email/mail/Store;Lcom/android/emailcommon/provider/Mailbox;J)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remoteStore"    # Lcom/kingsoft/email/mail/Store;
    .param p2, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p3, "messageId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1174
    invoke-static {p0, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 1177
    .local v1, "newMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v1, :cond_1

    .line 1178
    const/4 v0, 0x1

    .line 1179
    .local v0, "deleteUpdate":Z
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Upsync failed for null message, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1196
    :goto_0
    if-eqz v0, :cond_0

    .line 1198
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1200
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1202
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    return-void

    .line 1180
    .end local v0    # "deleteUpdate":Z
    :cond_1
    iget v3, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1181
    const/4 v0, 0x0

    .line 1182
    .restart local v0    # "deleteUpdate":Z
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Upsync skipped for mailbox=drafts, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1183
    .end local v0    # "deleteUpdate":Z
    :cond_2
    iget v3, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 1184
    const/4 v0, 0x0

    .line 1185
    .restart local v0    # "deleteUpdate":Z
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Upsync skipped for mailbox=outbox, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1186
    .end local v0    # "deleteUpdate":Z
    :cond_3
    iget v3, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 1187
    const/4 v0, 0x0

    .line 1188
    .restart local v0    # "deleteUpdate":Z
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Upsync skipped for mailbox=trash, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1189
    .end local v0    # "deleteUpdate":Z
    :cond_4
    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v5, p2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 1190
    const/4 v0, 0x0

    .line 1191
    .restart local v0    # "deleteUpdate":Z
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Upsync skipped; mailbox changed, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 1193
    .end local v0    # "deleteUpdate":Z
    :cond_5
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Upsyc triggered for message id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1194
    invoke-static {p0, p1, p2, v1}, Lcom/kingsoft/email/service/ImapService;->processPendingAppend(Landroid/content/Context;Lcom/kingsoft/email/mail/Store;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z

    move-result v0

    .restart local v0    # "deleteUpdate":Z
    goto/16 :goto_0
.end method

.method private static searchMailboxImpl(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 33
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "searchParams"    # Lcom/android/emailcommon/service/SearchParams;
    .param p4, "destMailboxId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1589
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    .line 1590
    .local v4, "account":Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v5

    .line 1591
    .local v5, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v11

    .line 1592
    .local v11, "destMailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-nez v11, :cond_1

    .line 1593
    :cond_0
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Attempted search for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " but account or mailbox information was missing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1595
    const/16 v22, 0x0

    .line 1733
    :goto_0
    return v22

    .line 1599
    :cond_1
    new-instance v31, Landroid/content/ContentValues;

    const/4 v3, 0x2

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1600
    .local v31, "statusValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "uiSyncStatus"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1601
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1603
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/kingsoft/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;

    move-result-object v29

    .line 1604
    .local v29, "remoteStore":Lcom/kingsoft/email/mail/Store;
    iget-object v3, v5, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/kingsoft/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Folder;

    move-result-object v27

    .line 1605
    .local v27, "remoteFolder":Lcom/kingsoft/emailcommon/mail/Folder;
    sget-object v3, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/kingsoft/emailcommon/mail/Folder;->open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V

    .line 1607
    const/4 v3, 0x0

    new-array v0, v3, [Lcom/kingsoft/email/service/ImapService$SortableMessage;

    move-object/from16 v30, v0

    .line 1608
    .local v30, "sortableMessages":[Lcom/kingsoft/email/service/ImapService$SortableMessage;
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    if-nez v3, :cond_4

    .line 1610
    const/4 v3, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/kingsoft/emailcommon/mail/Folder;->getMessages(Lcom/android/emailcommon/service/SearchParams;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v28

    .line 1611
    .local v28, "remoteMessages":[Lcom/kingsoft/emailcommon/mail/Message;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v26, v0

    .line 1612
    .local v26, "remoteCount":I
    sput v26, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mSearchTotalCount:I

    .line 1613
    if-lez v26, :cond_3

    .line 1614
    move/from16 v0, v26

    new-array v0, v0, [Lcom/kingsoft/email/service/ImapService$SortableMessage;

    move-object/from16 v30, v0

    .line 1615
    const/4 v13, 0x0

    .line 1616
    .local v13, "i":I
    move-object/from16 v9, v28

    .local v9, "arr$":[Lcom/kingsoft/emailcommon/mail/Message;
    array-length v0, v9

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    move v14, v13

    .end local v13    # "i":I
    .local v14, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_2

    aget-object v21, v9, v15

    .line 1617
    .local v21, "msg":Lcom/kingsoft/emailcommon/mail/Message;
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "i":I
    .restart local v13    # "i":I
    new-instance v3, Lcom/kingsoft/email/service/ImapService$SortableMessage;

    invoke-virtual/range {v21 .. v21}, Lcom/kingsoft/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v21

    invoke-direct {v3, v0, v6, v7}, Lcom/kingsoft/email/service/ImapService$SortableMessage;-><init>(Lcom/kingsoft/emailcommon/mail/Message;J)V

    aput-object v3, v30, v14

    .line 1616
    add-int/lit8 v15, v15, 0x1

    move v14, v13

    .end local v13    # "i":I
    .restart local v14    # "i":I
    goto :goto_1

    .line 1622
    .end local v21    # "msg":Lcom/kingsoft/emailcommon/mail/Message;
    :cond_2
    new-instance v3, Lcom/kingsoft/email/service/ImapService$5;

    invoke-direct {v3}, Lcom/kingsoft/email/service/ImapService$5;-><init>()V

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1628
    sget-object v3, Lcom/kingsoft/email/service/ImapService;->sSearchResults:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    .end local v9    # "arr$":[Lcom/kingsoft/emailcommon/mail/Message;
    .end local v14    # "i":I
    .end local v15    # "i$":I
    .end local v17    # "len$":I
    .end local v26    # "remoteCount":I
    .end local v28    # "remoteMessages":[Lcom/kingsoft/emailcommon/mail/Message;
    :cond_3
    :goto_2
    if-eqz v30, :cond_5

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v22, v0

    .line 1638
    .local v22, "numSearchResults":I
    :goto_3
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    sub-int v3, v22, v3

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 1640
    .local v23, "numToLoad":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->updateMessageCount(Landroid/content/Context;I)V

    .line 1641
    if-gtz v23, :cond_6

    .line 1642
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1634
    .end local v22    # "numSearchResults":I
    .end local v23    # "numToLoad":I
    :cond_4
    sget-object v3, Lcom/kingsoft/email/service/ImapService;->sSearchResults:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .end local v30    # "sortableMessages":[Lcom/kingsoft/email/service/ImapService$SortableMessage;
    check-cast v30, [Lcom/kingsoft/email/service/ImapService$SortableMessage;

    .restart local v30    # "sortableMessages":[Lcom/kingsoft/email/service/ImapService$SortableMessage;
    goto :goto_2

    .line 1637
    :cond_5
    const/16 v22, 0x0

    goto :goto_3

    .line 1645
    .restart local v22    # "numSearchResults":I
    .restart local v23    # "numToLoad":I
    :cond_6
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1646
    .local v20, "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Message;>;"
    move-object/from16 v0, p3

    iget v13, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .restart local v13    # "i":I
    :goto_4
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    add-int v3, v3, v23

    if-ge v13, v3, :cond_7

    .line 1647
    aget-object v3, v30, v13

    # getter for: Lcom/kingsoft/email/service/ImapService$SortableMessage;->mMessage:Lcom/kingsoft/emailcommon/mail/Message;
    invoke-static {v3}, Lcom/kingsoft/email/service/ImapService$SortableMessage;->access$400(Lcom/kingsoft/email/service/ImapService$SortableMessage;)Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1646
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1651
    :cond_7
    new-instance v12, Lcom/kingsoft/emailcommon/mail/FetchProfile;

    invoke-direct {v12}, Lcom/kingsoft/emailcommon/mail/FetchProfile;-><init>()V

    .line 1652
    .local v12, "fp":Lcom/kingsoft/emailcommon/mail/FetchProfile;
    sget-object v3, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v12, v3}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1653
    sget-object v3, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v12, v3}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1655
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/kingsoft/emailcommon/mail/Message;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lcom/kingsoft/emailcommon/mail/Message;

    .line 1660
    .local v19, "messageArray":[Lcom/kingsoft/emailcommon/mail/Message;
    new-instance v3, Lcom/kingsoft/email/service/ImapService$6;

    move-wide/from16 v6, p4

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/kingsoft/email/service/ImapService$6;-><init>(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;JLandroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12, v3}, Lcom/kingsoft/emailcommon/mail/Folder;->fetch([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1702
    invoke-virtual {v12}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->clear()V

    .line 1703
    sget-object v3, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v12, v3}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1704
    const/4 v3, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12, v3}, Lcom/kingsoft/emailcommon/mail/Folder;->fetch([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1709
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/kingsoft/emailcommon/mail/Message;

    move-object/from16 v24, v0

    .line 1710
    .local v24, "oneMessageArray":[Lcom/kingsoft/emailcommon/mail/Message;
    move-object/from16 v9, v19

    .restart local v9    # "arr$":[Lcom/kingsoft/emailcommon/mail/Message;
    array-length v0, v9

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v15, 0x0

    .restart local v15    # "i$":I
    move/from16 v16, v15

    .end local v15    # "i$":I
    .local v16, "i$":I
    :goto_5
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    aget-object v18, v9, v16

    .line 1713
    .local v18, "message":Lcom/kingsoft/emailcommon/mail/Message;
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1714
    .local v32, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1715
    .local v10, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-static {v0, v1, v10}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->collectParts(Lcom/kingsoft/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1717
    const/4 v3, 0x0

    aput-object v18, v24, v3

    .line 1718
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v16    # "i$":I
    .local v15, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/kingsoft/emailcommon/mail/Part;

    .line 1719
    .local v25, "part":Lcom/kingsoft/emailcommon/mail/Part;
    invoke-virtual {v12}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->clear()V

    .line 1720
    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1721
    const/4 v3, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v12, v3}, Lcom/kingsoft/emailcommon/mail/Folder;->fetch([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_6

    .line 1724
    .end local v25    # "part":Lcom/kingsoft/emailcommon/mail/Part;
    :cond_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4, v11, v3}, Lcom/kingsoft/email/provider/Utilities;->copyOneMessageToProvider(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V

    .line 1710
    add-int/lit8 v15, v16, 0x1

    .local v15, "i$":I
    move/from16 v16, v15

    .end local v15    # "i$":I
    .restart local v16    # "i$":I
    goto :goto_5

    .line 1729
    .end local v10    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    .end local v18    # "message":Lcom/kingsoft/emailcommon/mail/Message;
    .end local v32    # "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    :cond_9
    const-string/jumbo v3, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1730
    const-string/jumbo v3, "uiSyncStatus"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1731
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto/16 :goto_0
.end method

.method private static declared-synchronized synchronizeMailboxGeneric(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZZ)V
    .locals 81
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p3, "loadMore"    # Z
    .param p4, "uiRefresh"    # Z
    .param p5, "autoSync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 402
    const-class v78, Lcom/kingsoft/email/service/ImapService;

    monitor-enter v78

    :try_start_0
    sget-object v10, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "synchronizeMailboxGeneric "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 405
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v16, "unseenMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 410
    .local v4, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1

    .line 835
    :cond_0
    :goto_0
    monitor-exit v78

    return-void

    .line 422
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/Mailbox;->mLastFullSyncTime:J

    sub-long v66, v10, v12

    .line 424
    .local v66, "timeSinceLastFullSync":J
    if-nez p4, :cond_2

    if-nez p3, :cond_2

    const-wide/32 v10, 0xdbba00

    cmp-long v10, v66, v10

    if-gez v10, :cond_2

    const-wide/16 v10, 0x0

    cmp-long v10, v66, v10

    if-gez v10, :cond_4

    :cond_2
    const/16 v30, 0x1

    .line 427
    .local v30, "fullSync":Z
    :goto_1
    if-eqz v30, :cond_6

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    const-wide/32 v12, 0x240c8400

    sub-long v26, v10, v12

    .line 431
    .local v26, "endDate":J
    const/16 v43, 0x0

    .line 434
    .local v43, "localOldestCursor":Landroid/database/Cursor;
    :try_start_2
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/kingsoft/email/service/ImapService$OldestTimestampInfo;->PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/service/ImapService$OldestTimestampInfo;->access$100()[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "accountKey=? AND mailboxKey=? AND timeStamp!=0"

    const/4 v10, 0x2

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v43

    .line 441
    if-eqz v43, :cond_33

    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_33

    .line 442
    const/4 v10, 0x0

    move-object/from16 v0, v43

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    .line 444
    .local v50, "oldestLocalMessageDate":J
    const-wide/16 v10, 0x0

    cmp-long v10, v50, v10

    if-lez v10, :cond_33

    .line 445
    move-wide/from16 v0, v26

    move-wide/from16 v2, v50

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v8

    .line 446
    .end local v26    # "endDate":J
    .local v8, "endDate":J
    :try_start_3
    sget-object v10, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "oldest local message "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v50

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 451
    .end local v50    # "oldestLocalMessageDate":J
    :goto_2
    if-eqz v43, :cond_3

    .line 452
    :try_start_4
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    .line 455
    :cond_3
    sget-object v10, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "full sync: original window: now - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 465
    .end local v43    # "localOldestCursor":Landroid/database/Cursor;
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/kingsoft/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;

    move-result-object v60

    .line 467
    .local v60, "remoteStore":Lcom/kingsoft/email/mail/Store;
    if-nez v60, :cond_7

    .line 468
    sget-object v10, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v11, "account is apparently deleted"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 402
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "endDate":J
    .end local v16    # "unseenMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v30    # "fullSync":Z
    .end local v60    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    .end local v66    # "timeSinceLastFullSync":J
    :catchall_0
    move-exception v10

    monitor-exit v78

    throw v10

    .line 424
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v16    # "unseenMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v66    # "timeSinceLastFullSync":J
    :cond_4
    const/16 v30, 0x0

    goto/16 :goto_1

    .line 451
    .restart local v26    # "endDate":J
    .restart local v30    # "fullSync":Z
    .restart local v43    # "localOldestCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v10

    move-wide/from16 v8, v26

    .end local v26    # "endDate":J
    .restart local v8    # "endDate":J
    :goto_4
    if-eqz v43, :cond_5

    .line 452
    :try_start_5
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v10

    .line 460
    .end local v8    # "endDate":J
    .end local v43    # "localOldestCursor":Landroid/database/Cursor;
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    sub-long v8, v10, v12

    .line 461
    .restart local v8    # "endDate":J
    sget-object v10, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "quick sync: original window: now - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 471
    .restart local v60    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    :cond_7
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v60

    invoke-virtual {v0, v10}, Lcom/kingsoft/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Folder;

    move-result-object v5

    .line 478
    .local v5, "remoteFolder":Lcom/kingsoft/emailcommon/mail/Folder;
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v11, 0x6

    if-eq v10, v11, :cond_8

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_9

    .line 479
    :cond_8
    invoke-virtual {v5}, Lcom/kingsoft/emailcommon/mail/Folder;->exists()Z

    move-result v10

    if-nez v10, :cond_9

    .line 480
    sget-object v10, Lcom/kingsoft/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/kingsoft/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v5, v10}, Lcom/kingsoft/emailcommon/mail/Folder;->create(Lcom/kingsoft/emailcommon/mail/Folder$FolderType;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 481
    sget-object v10, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v11, "could not create remote folder type %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 487
    :cond_9
    sget-object v10, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v5, v10}, Lcom/kingsoft/emailcommon/mail/Folder;->open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V

    .line 493
    invoke-virtual {v5}, Lcom/kingsoft/emailcommon/mail/Folder;->getMessageCount()I

    move-result v57

    .line 496
    .local v57, "remoteMessageCount":I
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->updateMessageCount(Landroid/content/Context;I)V

    .line 500
    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/kingsoft/emailcommon/mail/Folder;->getMessages(JJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v58

    .line 501
    .local v58, "remoteMessages":[Lcom/kingsoft/emailcommon/mail/Message;
    sget-object v10, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "received "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v58

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " messages"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 507
    if-eqz p3, :cond_c

    .line 508
    move-object/from16 v0, v58

    array-length v10, v0

    add-int/lit8 v68, v10, 0xa

    .line 516
    .local v68, "totalCountNeeded":I
    :cond_a
    :goto_5
    sget-object v10, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "need "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v68

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " total"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 518
    move-object/from16 v0, v58

    array-length v10, v0

    sub-int v18, v68, v10

    .line 519
    .local v18, "additionalMessagesNeeded":I
    if-lez v18, :cond_10

    .line 520
    sget-object v10, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "trying to get "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " more"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 521
    const-wide/16 v10, 0x1

    sub-long v6, v8, v10

    .line 522
    .local v6, "startDate":J
    const/4 v10, 0x0

    new-array v0, v10, [Lcom/kingsoft/emailcommon/mail/Message;

    move-object/from16 v17, v0

    .line 523
    .local v17, "additionalMessages":[Lcom/kingsoft/emailcommon/mail/Message;
    const-wide/32 v76, 0x5265c00

    .line 524
    .local v76, "windowIncreaseSize":J
    :goto_6
    move-object/from16 v0, v17

    array-length v10, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_d

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_d

    .line 525
    sub-long v8, v8, v76

    .line 526
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_b

    .line 527
    sget-object v10, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v11, "window size too large, this is the last attempt"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 528
    const-wide/16 v8, 0x0

    .line 530
    :cond_b
    sget-object v10, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "requesting additional messages from range "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 532
    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/kingsoft/emailcommon/mail/Folder;->getMessages(JJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v17

    .line 538
    const-wide/16 v10, 0x2

    mul-long v76, v76, v10

    goto :goto_6

    .line 510
    .end local v6    # "startDate":J
    .end local v17    # "additionalMessages":[Lcom/kingsoft/emailcommon/mail/Message;
    .end local v18    # "additionalMessagesNeeded":I
    .end local v68    # "totalCountNeeded":I
    .end local v76    # "windowIncreaseSize":J
    :cond_c
    move-object/from16 v0, v58

    array-length v0, v0

    move/from16 v68, v0

    .line 511
    .restart local v68    # "totalCountNeeded":I
    if-eqz v30, :cond_a

    const/16 v10, 0xa

    move/from16 v0, v68

    if-ge v0, v10, :cond_a

    .line 512
    const/16 v68, 0xa

    goto/16 :goto_5

    .line 541
    .restart local v6    # "startDate":J
    .restart local v17    # "additionalMessages":[Lcom/kingsoft/emailcommon/mail/Message;
    .restart local v18    # "additionalMessagesNeeded":I
    .restart local v76    # "windowIncreaseSize":J
    :cond_d
    sget-object v10, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "additionalMessages "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v17

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 542
    move-object/from16 v0, v17

    array-length v10, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_e

    .line 546
    sget-object v10, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "expected to find "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " more messages, only got "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v17

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 549
    :cond_e
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    .line 550
    .local v19, "additionalToKeep":I
    move-object/from16 v0, v17

    array-length v10, v0

    const/16 v11, 0x14

    if-le v10, v11, :cond_f

    .line 553
    const/16 v19, 0x14

    .line 557
    :cond_f
    move-object/from16 v0, v58

    array-length v10, v0

    add-int v10, v10, v19

    new-array v0, v10, [Lcom/kingsoft/emailcommon/mail/Message;

    move-object/from16 v20, v0

    .line 558
    .local v20, "allMessages":[Lcom/kingsoft/emailcommon/mail/Message;
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v58

    array-length v12, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v20

    invoke-static {v0, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    move-object/from16 v0, v17

    array-length v10, v0

    sub-int v10, v10, v19

    move-object/from16 v0, v58

    array-length v11, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v0, v10, v1, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 564
    move-object/from16 v58, v20

    .line 579
    .end local v6    # "startDate":J
    .end local v17    # "additionalMessages":[Lcom/kingsoft/emailcommon/mail/Message;
    .end local v19    # "additionalToKeep":I
    .end local v20    # "allMessages":[Lcom/kingsoft/emailcommon/mail/Message;
    .end local v76    # "windowIncreaseSize":J
    :cond_10
    const/16 v45, 0x0

    .line 580
    .local v45, "localUidCursor":Landroid/database/Cursor;
    new-instance v42, Ljava/util/HashMap;

    invoke-direct/range {v42 .. v42}, Ljava/util/HashMap;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 587
    .local v42, "localMessageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;>;"
    const-wide/16 v52, 0x0

    .line 588
    .local v52, "queryEndDate":J
    :try_start_6
    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->access$200()[Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "accountKey=? AND mailboxKey=? AND timeStamp>=?"

    const/4 v10, 0x3

    new-array v14, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v79, v0

    invoke-static/range {v79 .. v80}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v10

    const/4 v10, 0x1

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    move-wide/from16 v79, v0

    invoke-static/range {v79 .. v80}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v10

    const/4 v10, 0x2

    const-wide/16 v79, 0x0

    invoke-static/range {v79 .. v80}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v10

    const/4 v15, 0x0

    move-object v10, v4

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v45

    .line 599
    :cond_11
    :goto_7
    invoke-interface/range {v45 .. v45}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 600
    new-instance v34, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;

    move-object/from16 v0, v34

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    .line 605
    .local v34, "info":Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;
    move-object/from16 v0, v34

    iget-object v10, v0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mServerId:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 606
    move-object/from16 v0, v34

    iget-object v10, v0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v42

    move-object/from16 v1, v34

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_7

    .line 610
    .end local v34    # "info":Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;
    :catchall_2
    move-exception v10

    if-eqz v45, :cond_12

    .line 611
    :try_start_7
    invoke-interface/range {v45 .. v45}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v10

    .line 610
    :cond_13
    if-eqz v45, :cond_14

    .line 611
    invoke-interface/range {v45 .. v45}, Landroid/database/Cursor;->close()V

    .line 621
    :cond_14
    new-instance v69, Ljava/util/ArrayList;

    invoke-direct/range {v69 .. v69}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v69, "unsyncedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Message;>;"
    new-instance v64, Ljava/util/HashMap;

    invoke-direct/range {v64 .. v64}, Ljava/util/HashMap;-><init>()V

    .line 627
    .local v64, "remoteUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/Message;>;"
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 628
    .local v25, "deletingMessageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v71, 0x0

    .line 630
    .local v71, "updatingCursor1":Landroid/database/Cursor;
    :try_start_8
    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v13, "syncServerId"

    aput-object v13, v12, v10

    const-string/jumbo v13, "accountKey=?"

    const/4 v10, 0x1

    new-array v14, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v79, v0

    invoke-static/range {v79 .. v80}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v10

    const/4 v15, 0x0

    move-object v10, v4

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v71

    .line 634
    :goto_8
    invoke-interface/range {v71 .. v71}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 635
    const/4 v10, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 636
    .local v35, "key":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_8

    .line 640
    .end local v35    # "key":Ljava/lang/String;
    :catchall_3
    move-exception v10

    if-eqz v71, :cond_15

    .line 641
    :try_start_9
    invoke-interface/range {v71 .. v71}, Landroid/database/Cursor;->close()V

    :cond_15
    throw v10

    .line 640
    :cond_16
    if-eqz v71, :cond_17

    .line 641
    invoke-interface/range {v71 .. v71}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 646
    :cond_17
    const/16 v24, 0x0

    .line 648
    .local v24, "deletingCursor":Landroid/database/Cursor;
    :try_start_a
    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v13, "syncServerId"

    aput-object v13, v12, v10

    const-string/jumbo v13, "accountKey=?"

    const/4 v10, 0x1

    new-array v14, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v79, v0

    invoke-static/range {v79 .. v80}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v10

    const/4 v15, 0x0

    move-object v10, v4

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 652
    :goto_9
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 653
    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 654
    .restart local v35    # "key":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_9

    .line 658
    .end local v35    # "key":Ljava/lang/String;
    :catchall_4
    move-exception v10

    if-eqz v24, :cond_18

    .line 659
    :try_start_b
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_18
    throw v10

    .line 658
    :cond_19
    if-eqz v24, :cond_1a

    .line 659
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 669
    :cond_1a
    move-object/from16 v0, v58

    array-length v10, v0

    add-int/lit8 v31, v10, -0x1

    .local v31, "i":I
    :goto_a
    if-ltz v31, :cond_1c

    .line 670
    aget-object v46, v58, v31

    .line 671
    .local v46, "message":Lcom/kingsoft/emailcommon/mail/Message;
    sget-object v10, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "remote message "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v46 .. v46}, Lcom/kingsoft/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 672
    invoke-virtual/range {v46 .. v46}, Lcom/kingsoft/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v64

    move-object/from16 v1, v46

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    invoke-virtual/range {v46 .. v46}, Lcom/kingsoft/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;

    .line 683
    .local v40, "localMessage":Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;
    if-nez v40, :cond_1b

    invoke-virtual/range {v46 .. v46}, Lcom/kingsoft/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1b

    sget-object v10, Lcom/kingsoft/email/service/ImapService;->_flagChangedSet:Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v46 .. v46}, Lcom/kingsoft/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1b

    sget-object v10, Lcom/kingsoft/email/service/ImapService;->_flagDeletedSet:Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v46 .. v46}, Lcom/kingsoft/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1b

    .line 687
    move-object/from16 v0, v69

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    :cond_1b
    add-int/lit8 v31, v31, -0x1

    goto :goto_a

    .line 698
    .end local v40    # "localMessage":Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;
    .end local v46    # "message":Lcom/kingsoft/emailcommon/mail/Message;
    :cond_1c
    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1d

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v5

    move-object/from16 v14, v69

    move-object/from16 v15, v42

    .line 699
    invoke-static/range {v10 .. v16}, Lcom/kingsoft/email/service/ImapService;->downloadFlagAndEnvelope(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/kingsoft/emailcommon/mail/Folder;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 711
    :cond_1d
    if-nez p5, :cond_2e

    .line 712
    new-instance v29, Lcom/kingsoft/emailcommon/mail/FetchProfile;

    invoke-direct/range {v29 .. v29}, Lcom/kingsoft/emailcommon/mail/FetchProfile;-><init>()V

    .line 713
    .local v29, "fp":Lcom/kingsoft/emailcommon/mail/FetchProfile;
    sget-object v10, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 714
    sget-object v10, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v5, v10}, Lcom/kingsoft/emailcommon/mail/Folder;->open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V

    .line 715
    const/4 v10, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v29

    invoke-virtual {v5, v0, v1, v10}, Lcom/kingsoft/emailcommon/mail/Folder;->fetch([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 716
    const/16 v63, 0x0

    .line 717
    .local v63, "remoteSupportsSeen":Z
    const/16 v62, 0x0

    .line 718
    .local v62, "remoteSupportsFlagged":Z
    const/16 v61, 0x0

    .line 719
    .local v61, "remoteSupportsAnswered":Z
    invoke-virtual {v5}, Lcom/kingsoft/emailcommon/mail/Folder;->getPermanentFlags()[Lcom/kingsoft/emailcommon/mail/Flag;

    move-result-object v21

    .local v21, "arr$":[Lcom/kingsoft/emailcommon/mail/Flag;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v36, v0

    .local v36, "len$":I
    const/16 v32, 0x0

    .local v32, "i$":I
    :goto_b
    move/from16 v0, v32

    move/from16 v1, v36

    if-ge v0, v1, :cond_21

    aget-object v28, v21, v32

    .line 720
    .local v28, "flag":Lcom/kingsoft/emailcommon/mail/Flag;
    sget-object v10, Lcom/kingsoft/emailcommon/mail/Flag;->SEEN:Lcom/kingsoft/emailcommon/mail/Flag;

    move-object/from16 v0, v28

    if-ne v0, v10, :cond_1e

    .line 721
    const/16 v63, 0x1

    .line 723
    :cond_1e
    sget-object v10, Lcom/kingsoft/emailcommon/mail/Flag;->FLAGGED:Lcom/kingsoft/emailcommon/mail/Flag;

    move-object/from16 v0, v28

    if-ne v0, v10, :cond_1f

    .line 724
    const/16 v62, 0x1

    .line 726
    :cond_1f
    sget-object v10, Lcom/kingsoft/emailcommon/mail/Flag;->ANSWERED:Lcom/kingsoft/emailcommon/mail/Flag;

    move-object/from16 v0, v28

    if-ne v0, v10, :cond_20

    .line 727
    const/16 v61, 0x1

    .line 719
    :cond_20
    add-int/lit8 v32, v32, 0x1

    goto :goto_b

    .line 732
    .end local v28    # "flag":Lcom/kingsoft/emailcommon/mail/Flag;
    :cond_21
    if-nez v63, :cond_22

    if-nez v62, :cond_22

    if-eqz v61, :cond_2e

    .line 738
    :cond_22
    new-instance v73, Ljava/util/HashMap;

    invoke-direct/range {v73 .. v73}, Ljava/util/HashMap;-><init>()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 739
    .local v73, "updatingMessageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v72, 0x0

    .line 741
    .local v72, "updatingCursor2":Landroid/database/Cursor;
    :try_start_c
    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v13, "_id"

    aput-object v13, v12, v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v4

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v72

    .line 743
    :goto_c
    invoke-interface/range {v72 .. v72}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_24

    .line 744
    const/4 v10, 0x0

    move-object/from16 v0, v72

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v35

    .line 745
    .restart local v35    # "key":Ljava/lang/String;
    move-object/from16 v0, v73

    move-object/from16 v1, v35

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_c

    .line 748
    .end local v35    # "key":Ljava/lang/String;
    :catchall_5
    move-exception v10

    if-eqz v72, :cond_23

    .line 749
    :try_start_d
    invoke-interface/range {v72 .. v72}, Landroid/database/Cursor;->close()V

    :cond_23
    throw v10

    .line 748
    :cond_24
    if-eqz v72, :cond_25

    .line 749
    invoke-interface/range {v72 .. v72}, Landroid/database/Cursor;->close()V

    .line 753
    :cond_25
    move-object/from16 v21, v58

    .local v21, "arr$":[Lcom/kingsoft/emailcommon/mail/Message;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v36, v0

    const/16 v32, 0x0

    :goto_d
    move/from16 v0, v32

    move/from16 v1, v36

    if-ge v0, v1, :cond_2e

    aget-object v56, v21, v32

    .line 754
    .local v56, "remoteMessage":Lcom/kingsoft/emailcommon/mail/Message;
    invoke-virtual/range {v56 .. v56}, Lcom/kingsoft/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;

    .line 755
    .local v41, "localMessageInfo":Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;
    if-nez v41, :cond_27

    .line 753
    :cond_26
    :goto_e
    add-int/lit8 v32, v32, 0x1

    goto :goto_d

    .line 759
    :cond_27
    move-object/from16 v0, v41

    iget-boolean v0, v0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mFlagRead:Z

    move/from16 v44, v0

    .line 760
    .local v44, "localSeen":Z
    sget-object v10, Lcom/kingsoft/emailcommon/mail/Flag;->SEEN:Lcom/kingsoft/emailcommon/mail/Flag;

    move-object/from16 v0, v56

    invoke-virtual {v0, v10}, Lcom/kingsoft/emailcommon/mail/Message;->isSet(Lcom/kingsoft/emailcommon/mail/Flag;)Z

    move-result v59

    .line 761
    .local v59, "remoteSeen":Z
    if-eqz v63, :cond_29

    move/from16 v0, v59

    move/from16 v1, v44

    if-eq v0, v1, :cond_29

    const/16 v49, 0x1

    .line 762
    .local v49, "newSeen":Z
    :goto_f
    move-object/from16 v0, v41

    iget-boolean v0, v0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mFlagFavorite:Z

    move/from16 v38, v0

    .line 763
    .local v38, "localFlagged":Z
    sget-object v10, Lcom/kingsoft/emailcommon/mail/Flag;->FLAGGED:Lcom/kingsoft/emailcommon/mail/Flag;

    move-object/from16 v0, v56

    invoke-virtual {v0, v10}, Lcom/kingsoft/emailcommon/mail/Message;->isSet(Lcom/kingsoft/emailcommon/mail/Flag;)Z

    move-result v55

    .line 764
    .local v55, "remoteFlagged":Z
    if-eqz v62, :cond_2a

    move/from16 v0, v38

    move/from16 v1, v55

    if-eq v0, v1, :cond_2a

    const/16 v48, 0x1

    .line 765
    .local v48, "newFlagged":Z
    :goto_10
    move-object/from16 v0, v41

    iget v0, v0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mFlags:I

    move/from16 v39, v0

    .line 766
    .local v39, "localFlags":I
    const/high16 v10, 0x40000

    and-int v10, v10, v39

    if-eqz v10, :cond_2b

    const/16 v37, 0x1

    .line 767
    .local v37, "localAnswered":Z
    :goto_11
    sget-object v10, Lcom/kingsoft/emailcommon/mail/Flag;->ANSWERED:Lcom/kingsoft/emailcommon/mail/Flag;

    move-object/from16 v0, v56

    invoke-virtual {v0, v10}, Lcom/kingsoft/emailcommon/mail/Message;->isSet(Lcom/kingsoft/emailcommon/mail/Flag;)Z

    move-result v54

    .line 768
    .local v54, "remoteAnswered":Z
    if-eqz v61, :cond_2c

    move/from16 v0, v37

    move/from16 v1, v54

    if-eq v0, v1, :cond_2c

    const/16 v47, 0x1

    .line 770
    .local v47, "newAnswered":Z
    :goto_12
    if-nez v49, :cond_28

    if-nez v48, :cond_28

    if-eqz v47, :cond_26

    :cond_28
    sget-object v10, Lcom/kingsoft/email/service/ImapService;->_flagChangedSet:Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v56 .. v56}, Lcom/kingsoft/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_26

    move-object/from16 v0, v41

    iget-wide v10, v0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v73

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_26

    .line 772
    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v41

    iget-wide v11, v0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v74

    .line 774
    .local v74, "uri":Landroid/net/Uri;
    new-instance v70, Landroid/content/ContentValues;

    invoke-direct/range {v70 .. v70}, Landroid/content/ContentValues;-><init>()V

    .line 775
    .local v70, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v10, "flagRead"

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, v70

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 776
    const-string/jumbo v10, "flagFavorite"

    invoke-static/range {v55 .. v55}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, v70

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 777
    if-eqz v54, :cond_2d

    .line 778
    const/high16 v10, 0x40000

    or-int v39, v39, v10

    .line 782
    :goto_13
    const-string/jumbo v10, "flags"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v70

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 783
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v74

    move-object/from16 v1, v70

    invoke-virtual {v4, v0, v1, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_e

    .line 761
    .end local v37    # "localAnswered":Z
    .end local v38    # "localFlagged":Z
    .end local v39    # "localFlags":I
    .end local v47    # "newAnswered":Z
    .end local v48    # "newFlagged":Z
    .end local v49    # "newSeen":Z
    .end local v54    # "remoteAnswered":Z
    .end local v55    # "remoteFlagged":Z
    .end local v70    # "updateValues":Landroid/content/ContentValues;
    .end local v74    # "uri":Landroid/net/Uri;
    :cond_29
    const/16 v49, 0x0

    goto/16 :goto_f

    .line 764
    .restart local v38    # "localFlagged":Z
    .restart local v49    # "newSeen":Z
    .restart local v55    # "remoteFlagged":Z
    :cond_2a
    const/16 v48, 0x0

    goto/16 :goto_10

    .line 766
    .restart local v39    # "localFlags":I
    .restart local v48    # "newFlagged":Z
    :cond_2b
    const/16 v37, 0x0

    goto/16 :goto_11

    .line 768
    .restart local v37    # "localAnswered":Z
    .restart local v54    # "remoteAnswered":Z
    :cond_2c
    const/16 v47, 0x0

    goto :goto_12

    .line 780
    .restart local v47    # "newAnswered":Z
    .restart local v70    # "updateValues":Landroid/content/ContentValues;
    .restart local v74    # "uri":Landroid/net/Uri;
    :cond_2d
    const v10, -0x40001

    and-int v39, v39, v10

    goto :goto_13

    .line 793
    .end local v21    # "arr$":[Lcom/kingsoft/emailcommon/mail/Message;
    .end local v29    # "fp":Lcom/kingsoft/emailcommon/mail/FetchProfile;
    .end local v32    # "i$":I
    .end local v36    # "len$":I
    .end local v37    # "localAnswered":Z
    .end local v38    # "localFlagged":Z
    .end local v39    # "localFlags":I
    .end local v41    # "localMessageInfo":Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;
    .end local v44    # "localSeen":Z
    .end local v47    # "newAnswered":Z
    .end local v48    # "newFlagged":Z
    .end local v49    # "newSeen":Z
    .end local v54    # "remoteAnswered":Z
    .end local v55    # "remoteFlagged":Z
    .end local v56    # "remoteMessage":Lcom/kingsoft/emailcommon/mail/Message;
    .end local v59    # "remoteSeen":Z
    .end local v61    # "remoteSupportsAnswered":Z
    .end local v62    # "remoteSupportsFlagged":Z
    .end local v63    # "remoteSupportsSeen":Z
    .end local v70    # "updateValues":Landroid/content/ContentValues;
    .end local v72    # "updatingCursor2":Landroid/database/Cursor;
    .end local v73    # "updatingMessageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v74    # "uri":Landroid/net/Uri;
    :cond_2e
    invoke-virtual/range {v42 .. v42}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, "i$":Ljava/util/Iterator;
    :cond_2f
    :goto_14
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_30

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;

    .line 796
    .restart local v34    # "info":Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;
    move-object/from16 v0, v34

    iget-wide v10, v0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mTimestamp:J

    cmp-long v10, v10, v8

    if-ltz v10, :cond_2f

    move-object/from16 v0, v34

    iget-object v10, v0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v64

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2f

    .line 799
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-object/from16 v0, v34

    iget-wide v12, v0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mId:J

    move-object/from16 v0, p0

    invoke-static {v0, v10, v11, v12, v13}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 802
    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v34

    iget-wide v11, v0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v75

    .line 804
    .local v75, "uriToDelete":Landroid/net/Uri;
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v75

    invoke-virtual {v4, v0, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 807
    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v34

    iget-wide v11, v0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v65

    .line 809
    .local v65, "syncRowToDelete":Landroid/net/Uri;
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v65

    invoke-virtual {v4, v0, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 810
    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v34

    iget-wide v11, v0, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 812
    .local v23, "deletERowToDelete":Landroid/net/Uri;
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_14

    .line 820
    .end local v23    # "deletERowToDelete":Landroid/net/Uri;
    .end local v34    # "info":Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;
    .end local v65    # "syncRowToDelete":Landroid/net/Uri;
    .end local v75    # "uriToDelete":Landroid/net/Uri;
    :cond_30
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/emailcommon/utility/Utility;->isHeaderOnly(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_31

    .line 821
    invoke-static/range {p0 .. p2}, Lcom/kingsoft/emailcommon/utility/Utility;->getNoLoadBodyMailList(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)Ljava/util/ArrayList;

    move-result-object v33

    .line 822
    .local v33, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_31

    .line 823
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/email/callback/MessageBodySync;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/callback/MessageBodySync;

    move-result-object v22

    .line 824
    .local v22, "body":Lcom/kingsoft/email/callback/MessageBodySync;
    const/4 v10, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/kingsoft/email/callback/MessageBodySync;->add2BodySyncRequests(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/util/Collection;Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;)Z

    .line 829
    .end local v22    # "body":Lcom/kingsoft/email/callback/MessageBodySync;
    .end local v33    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_31
    if-eqz v30, :cond_32

    .line 830
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v10, v11}, Lcom/android/emailcommon/provider/Mailbox;->updateLastFullSyncTime(Landroid/content/Context;J)V

    .line 834
    :cond_32
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/kingsoft/emailcommon/mail/Folder;->close(Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 451
    .end local v5    # "remoteFolder":Lcom/kingsoft/emailcommon/mail/Folder;
    .end local v18    # "additionalMessagesNeeded":I
    .end local v24    # "deletingCursor":Landroid/database/Cursor;
    .end local v25    # "deletingMessageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v31    # "i":I
    .end local v32    # "i$":Ljava/util/Iterator;
    .end local v42    # "localMessageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;>;"
    .end local v45    # "localUidCursor":Landroid/database/Cursor;
    .end local v52    # "queryEndDate":J
    .end local v57    # "remoteMessageCount":I
    .end local v58    # "remoteMessages":[Lcom/kingsoft/emailcommon/mail/Message;
    .end local v60    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    .end local v64    # "remoteUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/Message;>;"
    .end local v68    # "totalCountNeeded":I
    .end local v69    # "unsyncedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Message;>;"
    .end local v71    # "updatingCursor1":Landroid/database/Cursor;
    .restart local v43    # "localOldestCursor":Landroid/database/Cursor;
    .restart local v50    # "oldestLocalMessageDate":J
    :catchall_6
    move-exception v10

    goto/16 :goto_4

    .end local v8    # "endDate":J
    .end local v50    # "oldestLocalMessageDate":J
    .restart local v26    # "endDate":J
    :cond_33
    move-wide/from16 v8, v26

    .end local v26    # "endDate":J
    .restart local v8    # "endDate":J
    goto/16 :goto_2
.end method

.method public static declared-synchronized synchronizeMailboxSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZZ)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "folder"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p3, "loadMore"    # Z
    .param p4, "uiRefresh"    # Z
    .param p5, "autoSync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 174
    const-class v3, Lcom/kingsoft/email/service/ImapService;

    monitor-enter v3

    :try_start_0
    invoke-static {p0, p1}, Lcom/kingsoft/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v4

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 175
    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 177
    .local v1, "nc":Lcom/kingsoft/email/NotificationController;
    :try_start_1
    sget-object v4, Lcom/kingsoft/email/service/ImapService;->_flagChangedSet:Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->validate(Ljava/lang/String;)V

    .line 178
    sget-object v4, Lcom/kingsoft/email/service/ImapService;->_flagDeletedSet:Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->validate(Ljava/lang/String;)V

    .line 180
    invoke-static {p0, p1, p2}, Lcom/kingsoft/email/service/ImapService;->processPendingActionsSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 181
    invoke-static/range {p0 .. p5}, Lcom/kingsoft/email/service/ImapService;->synchronizeMailboxGeneric(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZZ)V

    .line 183
    iget-wide v4, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v1, v4, v5}, Lcom/kingsoft/email/NotificationController;->cancelLoginFailedNotification(J)V
    :try_end_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :goto_0
    monitor-exit v3

    return v2

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_2
    sget-boolean v2, Lcom/kingsoft/emailcommon/Logging;->LOGD:Z

    if-eqz v2, :cond_0

    .line 186
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "synchronizeMailboxSynchronous"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 188
    :cond_0
    instance-of v2, v0, Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;

    if-eqz v2, :cond_1

    .line 190
    iget-wide v4, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v5, v0, v2}, Lcom/kingsoft/email/NotificationController;->showLoginFailedNotification(JLcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V

    .line 191
    const/4 v2, 0x4

    goto :goto_0

    .line 193
    :cond_1
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    .end local v0    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .end local v1    # "nc":Lcom/kingsoft/email/NotificationController;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kingsoft/email/service/ImapService;->mBinder:Lcom/kingsoft/email/service/EmailServiceStub;

    invoke-virtual {v0, p0}, Lcom/kingsoft/email/service/EmailServiceStub;->init(Landroid/content/Context;)V

    .line 158
    iget-object v0, p0, Lcom/kingsoft/email/service/ImapService;->mBinder:Lcom/kingsoft/email/service/EmailServiceStub;

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method
