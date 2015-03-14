.class public Lcom/kingsoft/email/callback/MessageBodySync;
.super Ljava/lang/Object;
.source "MessageBodySync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;,
        Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;,
        Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    }
.end annotation


# static fields
.field public static final MESSAGE_TIME_OUT:I = 0x3a98

.field public static final PROTO_EXCHANGE:I = 0x3

.field public static final PROTO_IMAP:I = 0x1

.field public static final PROTO_POP:I = 0x2

.field public static final STEP_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "MessageBodySync"

.field private static mInstance:Lcom/kingsoft/email/callback/MessageBodySync;


# instance fields
.field private mBodyDownloadThread:Ljava/lang/Thread;

.field private mBodyOpenLock:Ljava/util/concurrent/locks/Lock;

.field private mBodyOpenThread:Ljava/lang/Thread;

.field private mBodySyncLock:Ljava/util/concurrent/locks/Lock;

.field private mContext:Landroid/content/Context;

.field private final mOpenBodyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRemoteCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field sBodyRequest:Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/email/callback/MessageBodySync;->mInstance:Lcom/kingsoft/email/callback/MessageBodySync;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mSyncMap:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mOpenBodyMap:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mSyncRemoteCache:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;

    .line 70
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenLock:Ljava/util/concurrent/locks/Lock;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync;->sBodyRequest:Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;

    .line 77
    iput-object p1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/callback/MessageBodySync;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/callback/MessageBodySync;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/callback/MessageBodySync;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/callback/MessageBodySync;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/email/callback/MessageBodySync;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/callback/MessageBodySync;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mSyncMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/kingsoft/email/callback/MessageBodySync;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/callback/MessageBodySync;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyDownloadThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$400(Lcom/kingsoft/email/callback/MessageBodySync;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/lang/Object;I[Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/callback/MessageBodySync;
    .param p1, "x1"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "x2"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p3, "x3"    # Ljava/lang/Object;
    .param p4, "x4"    # I
    .param p5, "x5"    # [Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/kingsoft/email/callback/MessageBodySync;->downloadMessageBody(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/lang/Object;I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/kingsoft/email/callback/MessageBodySync;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/callback/MessageBodySync;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$602(Lcom/kingsoft/email/callback/MessageBodySync;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/callback/MessageBodySync;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private downloadMessageBody(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/lang/Object;I[Ljava/lang/String;)Z
    .locals 4
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p3, "remote"    # Ljava/lang/Object;
    .param p4, "proto"    # I
    .param p5, "syncServerIdList"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 407
    const/4 v1, 0x1

    if-ne v1, p4, :cond_0

    .line 408
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/kingsoft/email/callback/MessageBodySync;->downloadMessageBodyByImap(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    .line 415
    :goto_0
    return v0

    .line 409
    :cond_0
    const/4 v1, 0x2

    if-ne v1, p4, :cond_1

    .line 410
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/kingsoft/email/callback/MessageBodySync;->downloadMessageBodyByPop3(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 411
    :cond_1
    const/4 v1, 0x3

    if-ne v1, p4, :cond_2

    .line 412
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/kingsoft/email/callback/MessageBodySync;->downloadMessageBodyByExchange(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 414
    :cond_2
    const-string/jumbo v1, "MessageBodySync"

    const-string/jumbo v2, "\u534f\u8bae\u4e0d\u5bf9\uff0c\u4e0b\u8f7dbody\u5931\u8d25"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private downloadMessageBodyByExchange(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 11
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p3, "remote"    # Ljava/lang/Object;
    .param p4, "syncServerIdList"    # [Ljava/lang/String;

    .prologue
    .line 509
    move-object v2, p3

    check-cast v2, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;

    .line 511
    .local v2, "handler":Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;
    const-string/jumbo v6, "MessageBodySync"

    const-string/jumbo v7, "loadBodyByExchange list size is  %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    array-length v10, p4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 513
    const/4 v1, 0x1

    .line 514
    .local v1, "flag":Z
    move-object v0, p4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v4, v0, v3

    .line 515
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v2, v4, p2, p1}, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->performSyncMessageBody(Ljava/lang/String;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 514
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 515
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 518
    .end local v4    # "id":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private downloadMessageBodyByImap(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 14
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p3, "remote"    # Ljava/lang/Object;
    .param p4, "syncServerIdList"    # [Ljava/lang/String;

    .prologue
    .line 429
    const/4 v4, 0x0

    .line 430
    .local v4, "imapMessage":Lcom/kingsoft/emailcommon/mail/Message;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v8, "unsyncedImapMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Message;>;"
    const/4 v6, 0x0

    .line 433
    .local v6, "remoteFolder":Lcom/kingsoft/emailcommon/mail/Folder;
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/kingsoft/emailcommon/mail/Folder;

    move-object v6, v0

    .line 434
    sget-object v9, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v6, v9}, Lcom/kingsoft/emailcommon/mail/Folder;->open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V

    .line 436
    move-object/from16 v1, p4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v7, v1, v3

    .line 437
    .local v7, "serverId":Ljava/lang/String;
    invoke-virtual {v6, v7}, Lcom/kingsoft/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v4

    .line 438
    if-eqz v4, :cond_0

    .line 439
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 443
    .end local v7    # "serverId":Ljava/lang/String;
    :cond_1
    const-string/jumbo v9, "MessageBodySync"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 444
    const-string/jumbo v9, "MessageBodySync"

    const-string/jumbo v10, "loadBodyByImap list size is  %d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 448
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 449
    iget-object v9, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v9, p1, v6, v8, v0}, Lcom/kingsoft/email/service/ImapService;->loadUnsyncedMessages(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/kingsoft/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/Mailbox;)V
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_3
    const/4 v9, 0x1

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :goto_1
    return v9

    .line 452
    :catch_0
    move-exception v2

    .line 453
    .local v2, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 454
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private downloadMessageBodyByPop3(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 14
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p3, "remote"    # Ljava/lang/Object;
    .param p4, "syncServerIdList"    # [Ljava/lang/String;

    .prologue
    .line 469
    const/4 v5, 0x0

    .line 470
    .local v5, "pop3Message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v8, "unsyncedPop3Messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;>;"
    const/4 v6, 0x0

    .line 473
    .local v6, "remotePop3Folder":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;

    move-object v6, v0

    .line 475
    invoke-virtual {v6}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->isConnectionOk()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->isNeedReopen([Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 476
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->close(Z)V

    .line 479
    :cond_1
    sget-object v9, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v6, v9}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V

    .line 480
    move-object/from16 v1, p4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v7, v1, v3

    .line 481
    .local v7, "serverId":Ljava/lang/String;
    invoke-virtual {v6, v7}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->getMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    move-object v5, v0

    .line 482
    if-eqz v5, :cond_2

    .line 483
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 487
    .end local v7    # "serverId":Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "MessageBodySync"

    const-string/jumbo v10, "loadBodyByPop3 list size is  %d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 489
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 490
    iget-object v9, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v9, p1, v6, v8, v0}, Lcom/kingsoft/email/service/Pop3Service;->loadUnsyncedMessagesBody(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/Mailbox;)V
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :cond_4
    const/4 v9, 0x1

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    return v9

    .line 492
    :catch_0
    move-exception v2

    .line 493
    .local v2, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 494
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private getFromDb(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/lang/String;)Ljava/util/LinkedHashSet;
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p3, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p4, "selection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/Account;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 764
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "syncServerId"

    aput-object v0, v2, v1

    const-string/jumbo v0, "fromList"

    aput-object v0, v2, v3

    .line 765
    .local v2, "projection":[Ljava/lang/String;
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 766
    .local v8, "existIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 768
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "flagLoaded<>1 AND mailboxKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "timeStamp DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 776
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 777
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v10

    .line 779
    .local v10, "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 780
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 781
    .local v9, "from":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/kingsoft/mail/preferences/MailPrefs;->isHeaderOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 788
    .end local v9    # "from":Ljava/lang/String;
    .end local v10    # "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    :catch_0
    move-exception v7

    .line 789
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    if-eqz v6, :cond_1

    .line 792
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 796
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v8

    .line 791
    :cond_2
    if-eqz v6, :cond_1

    .line 792
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 791
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 792
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kingsoft/email/callback/MessageBodySync;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 81
    sget-object v0, Lcom/kingsoft/email/callback/MessageBodySync;->mInstance:Lcom/kingsoft/email/callback/MessageBodySync;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/kingsoft/email/callback/MessageBodySync;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/callback/MessageBodySync;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingsoft/email/callback/MessageBodySync;->mInstance:Lcom/kingsoft/email/callback/MessageBodySync;

    .line 85
    :cond_0
    sget-object v0, Lcom/kingsoft/email/callback/MessageBodySync;->mInstance:Lcom/kingsoft/email/callback/MessageBodySync;

    return-object v0
.end method

.method private getNeedLoadSetFromRequest(Landroid/content/Context;Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;)Ljava/util/LinkedHashSet;
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    const-string/jumbo v4, "syncServerId in ("

    .line 732
    .local v4, "prefix":Ljava/lang/String;
    const/4 v0, 0x0

    .line 733
    .local v0, "count":I
    const/4 v7, 0x0

    .line 734
    .local v7, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    iget-object v3, p2, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mServiceIds:Ljava/util/LinkedHashSet;

    .line 736
    .local v3, "idList":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v5, "revoveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 738
    .local v6, "sbSelection":Ljava/lang/StringBuilder;
    iget-object v8, p2, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mServiceIds:Ljava/util/LinkedHashSet;

    invoke-virtual {v8}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 739
    .local v2, "id":Ljava/lang/String;
    const-string/jumbo v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    const-string/jumbo v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    add-int/lit8 v0, v0, 0x1

    .line 745
    rem-int/lit8 v8, v0, 0x14

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->size()I

    move-result v8

    if-ne v0, v8, :cond_3

    .line 746
    :cond_0
    const-string/jumbo v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget-object v8, p2, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v9, p2, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v8, v9, v10}, Lcom/kingsoft/email/callback/MessageBodySync;->getFromDb(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v7

    .line 748
    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 757
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    iget-object v8, p2, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mServiceIds:Ljava/util/LinkedHashSet;

    invoke-virtual {v8, v5}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 758
    return-object v7

    .line 751
    .restart local v2    # "id":Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "sbSelection":Ljava/lang/StringBuilder;
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v6    # "sbSelection":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 753
    :cond_3
    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getOpenBodyMailboxKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 825
    const/4 v2, 0x0

    .line 826
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mOpenBodyMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 827
    .local v1, "it":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 828
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 830
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "key":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 833
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private getSyncMailboxKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 808
    const/4 v2, 0x0

    .line 809
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mSyncMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 810
    .local v1, "it":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 811
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 813
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "key":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 816
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private notifyStartOpenThread()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingsoft/email/callback/MessageBodySync$2;

    invoke-direct {v1, p0}, Lcom/kingsoft/email/callback/MessageBodySync$2;-><init>(Lcom/kingsoft/email/callback/MessageBodySync;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenThread:Ljava/lang/Thread;

    .line 387
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenThread:Ljava/lang/Thread;

    const-string/jumbo v1, "BodyDownloadThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private notifyStartSyncThread()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyDownloadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingsoft/email/callback/MessageBodySync$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/email/callback/MessageBodySync$1;-><init>(Lcom/kingsoft/email/callback/MessageBodySync;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyDownloadThread:Ljava/lang/Thread;

    .line 176
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyDownloadThread:Ljava/lang/Thread;

    const-string/jumbo v1, "BodyDownloadThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public add2BodyOpenRequests(JJLjava/util/Collection;Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;)Z
    .locals 9
    .param p1, "accountKey"    # J
    .param p3, "mailboxKey"    # J
    .param p6, "callback"    # Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p5, "serverIdList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 279
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v1

    .line 283
    :cond_1
    const-string/jumbo v2, "MessageBodySync"

    const-string/jumbo v3, "add2BodyOpenRequests serveridList size is  %d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 285
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mOpenBodyMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 288
    new-instance v0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;

    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;-><init>(Landroid/content/Context;JJLcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;)V

    .line 289
    .local v0, "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    iget-object v1, v0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mServiceIds:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p5}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 290
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 291
    .local v7, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mOpenBodyMap:Ljava/util/HashMap;

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    if-eqz p6, :cond_2

    .line 294
    invoke-interface {p6}, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;->onBodySyncStart()V

    .line 297
    :cond_2
    invoke-direct {p0}, Lcom/kingsoft/email/callback/MessageBodySync;->notifyStartOpenThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v1, v8

    .line 302
    goto :goto_0

    .line 299
    .end local v0    # "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    .end local v7    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public add2BodyOpenRequests(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/util/Collection;Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;)Z
    .locals 9
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p4, "callback"    # Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/Account;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p3, "serverIdList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 238
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v1

    .line 241
    :cond_1
    const/4 v3, 0x3

    iget v4, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-eq v3, v4, :cond_0

    const/4 v3, 0x4

    iget v4, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-eq v3, v4, :cond_0

    .line 245
    const-string/jumbo v3, "MessageBodySync"

    const-string/jumbo v4, "add2BodyOpenRequests serveridList size is  %d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v1

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 247
    iget-wide v3, p2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, "key":Ljava/lang/String;
    if-eqz p4, :cond_2

    .line 249
    invoke-interface {p4}, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;->onBodySyncStart()V

    .line 252
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 254
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mOpenBodyMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 255
    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "protocol":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 264
    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 259
    :cond_3
    :try_start_1
    new-instance v0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;

    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;)V

    .line 260
    .local v0, "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    iget-object v1, v0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mServiceIds:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 261
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mOpenBodyMap:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-direct {p0}, Lcom/kingsoft/email/callback/MessageBodySync;->notifyStartOpenThread()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v1, v7

    .line 267
    goto :goto_0

    .line 264
    .end local v0    # "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    .end local v2    # "protocol":Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public add2BodySyncRequests(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/util/Collection;Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;)Z
    .locals 9
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p4, "callback"    # Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/Account;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p3, "serverIdList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 100
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v1

    .line 104
    :cond_1
    const/4 v3, 0x3

    iget v4, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-eq v3, v4, :cond_0

    const/4 v3, 0x4

    iget v4, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-eq v3, v4, :cond_0

    .line 109
    const-string/jumbo v3, "MessageBodySync"

    const-string/jumbo v4, "add2BodySyncRequests serveridList size is  %d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v1

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 111
    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 113
    :try_start_0
    iget-wide v3, p2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mSyncMap:Ljava/util/HashMap;

    iget-wide v4, p2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mSyncMap:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;

    .line 117
    .local v0, "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    iget-object v1, v0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mServiceIds:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 128
    :goto_1
    invoke-direct {p0}, Lcom/kingsoft/email/callback/MessageBodySync;->notifyStartSyncThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v1, v7

    .line 132
    goto :goto_0

    .line 119
    .end local v0    # "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "protocol":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 123
    :cond_3
    :try_start_2
    new-instance v0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;

    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;)V

    .line 124
    .restart local v0    # "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    iget-object v1, v0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mServiceIds:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 125
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mSyncMap:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 130
    .end local v0    # "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    .end local v2    # "protocol":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public getBodyOpenRequest()Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 313
    :try_start_0
    invoke-direct {p0}, Lcom/kingsoft/email/callback/MessageBodySync;->getOpenBodyMailboxKey()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mOpenBodyMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    .local v1, "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    if-nez v1, :cond_0

    .line 321
    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v1, v2

    .line 336
    .end local v1    # "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    :goto_0
    return-object v1

    .line 319
    .restart local v1    # "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mOpenBodyMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 324
    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->sBodyRequest:Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->sBodyRequest:Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;

    iget-object v3, v3, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iget-wide v5, v1, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailboxKey:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 325
    const-string/jumbo v2, "MessageBodySync"

    const-string/jumbo v3, "getBodyOpenRequest use cache"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 326
    iget-object v2, p0, Lcom/kingsoft/email/callback/MessageBodySync;->sBodyRequest:Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->useCache(Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;)V

    goto :goto_0

    .line 321
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 328
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    :cond_1
    iget-object v3, v1, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-nez v3, :cond_2

    .line 329
    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->init(Landroid/content/Context;)V

    .line 331
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->getRemote(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v1, v2

    .line 332
    goto :goto_0

    .line 334
    :cond_3
    iput-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->sBodyRequest:Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;

    goto :goto_0
.end method

.method public getBodySyncRequest()Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 186
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 188
    :try_start_0
    invoke-direct {p0}, Lcom/kingsoft/email/callback/MessageBodySync;->getSyncMailboxKey()Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mSyncMap:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .local v7, "temReq":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    if-nez v7, :cond_0

    .line 219
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 221
    :goto_0
    return-object v0

    .line 195
    :cond_0
    :try_start_1
    iget-object v1, v7, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v1, :cond_1

    iget-object v1, v7, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-nez v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->init(Landroid/content/Context;)V

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mSyncRemoteCache:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mSyncRemoteCache:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mRemote:Ljava/lang/Object;

    .line 205
    :cond_2
    iget-object v1, v7, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "protocol":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 202
    .end local v2    # "protocol":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v1, v7, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mRemote:Ljava/lang/Object;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->getRemote(Landroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 209
    .restart local v2    # "protocol":Ljava/lang/String;
    :cond_4
    :try_start_3
    new-instance v0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;

    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;

    iget-object v3, v7, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v4, v7, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;)V

    .line 210
    .local v0, "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    iget-object v1, v7, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mRemote:Ljava/lang/Object;

    iput-object v1, v0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mRemote:Ljava/lang/Object;

    .line 211
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mSyncRemoteCache:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mRemote:Ljava/lang/Object;

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v7}, Lcom/kingsoft/email/callback/MessageBodySync;->getNeedLoadSetFromRequest(Landroid/content/Context;Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;)Ljava/util/LinkedHashSet;

    move-result-object v1

    iput-object v1, v0, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mServiceIds:Ljava/util/LinkedHashSet;

    .line 215
    iget-object v1, v7, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mServiceIds:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 216
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mSyncMap:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    :cond_5
    iget-object v1, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    .end local v2    # "protocol":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "temReq":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public removeMessageBodyRequestByAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Z
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    const/4 v8, 0x1

    .line 697
    iget-object v9, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 699
    :try_start_0
    iget-object v9, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mSyncMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_0

    .line 724
    iget-object v9, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 727
    :goto_0
    return v8

    .line 703
    :cond_0
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 705
    .local v4, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mSyncMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 706
    .local v3, "it":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 707
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 709
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;

    .line 710
    .local v7, "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    iget-object v9, v7, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/Account;->mId:J

    iget-wide v11, p2, Lcom/android/emailcommon/provider/Account;->mId:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    .line 711
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "key":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 712
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 720
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 722
    const/4 v8, 0x0

    .line 724
    iget-object v9, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 716
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 717
    .local v6, "mailBoxKey":Ljava/lang/String;
    iget-object v9, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mSyncMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 724
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "mailBoxKey":Ljava/lang/String;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v8

    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v9, p0, Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method
