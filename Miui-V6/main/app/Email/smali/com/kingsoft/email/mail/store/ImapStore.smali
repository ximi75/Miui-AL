.class public Lcom/kingsoft/email/mail/store/ImapStore;
.super Lcom/kingsoft/email/mail/Store;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/mail/store/ImapStore$ImapException;,
        Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;
    }
.end annotation


# static fields
.field private static final CONTACT:Ljava/lang/String; = "wpsmail_dev_support@kingsoft.com"

.field private static final ID_NAME:Ljava/lang/String; = "WpsMail"

.field private static final ID_OS:Ljava/lang/String; = "Android"

.field public static final ID_TYPE_DEF:I = 0x0

.field public static final ID_TYPE_NETEASY:I = 0x1

.field private static final MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

.field private static final VENDOR:Ljava/lang/String; = "KSO Limited"

.field static sImapId:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field folderNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/kingsoft/email/mail/store/ImapConnection;",
            ">;"
        }
    .end annotation
.end field

.field mPathPrefix:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPathSeparator:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/beetstra/jutf7/CharsetProvider;

    invoke-direct {v0}, Lcom/beetstra/jutf7/CharsetProvider;-><init>()V

    const-string/jumbo v1, "X-RFC-3501"

    invoke-virtual {v0, v1}, Lcom/beetstra/jutf7/CharsetProvider;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/mail/store/ImapStore;->MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-direct {p0}, Lcom/kingsoft/email/mail/Store;-><init>()V

    .line 92
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 480
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/kingsoft/email/mail/store/ImapStore;->folderNames:Ljava/util/Map;

    .line 107
    iput-object p1, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 110
    invoke-virtual {p2, p1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 111
    .local v0, "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    if-nez v0, :cond_0

    .line 112
    new-instance v2, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v3, "No HostAuth in ImapStore?"

    invoke-direct {v2, v3}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_0
    new-instance v2, Lcom/kingsoft/email/mail/transport/MailTransport;

    const-string/jumbo v3, "IMAP"

    invoke-direct {v2, p1, v3, v0}, Lcom/kingsoft/email/mail/transport/MailTransport;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;)V

    iput-object v2, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    .line 116
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/HostAuth;->getLogin()[Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "userInfo":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 118
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    .line 119
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    .line 124
    :goto_0
    iget-object v2, v0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    iput-object v2, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    .line 125
    return-void

    .line 121
    :cond_1
    iput-object v4, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    .line 122
    iput-object v4, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method private addMailbox(Landroid/content/Context;JLjava/lang/String;CZLcom/android/emailcommon/provider/Mailbox;)Lcom/kingsoft/email/mail/store/ImapFolder;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountId"    # J
    .param p4, "mailboxPath"    # Ljava/lang/String;
    .param p5, "delimiter"    # C
    .param p6, "selectable"    # Z
    .param p7, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;

    .prologue
    .line 448
    invoke-virtual {p0, p4}, Lcom/kingsoft/email/mail/store/ImapStore;->getFolder(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Folder;

    move-result-object v9

    check-cast v9, Lcom/kingsoft/email/mail/store/ImapFolder;

    .line 449
    .local v9, "folder":Lcom/kingsoft/email/mail/store/ImapFolder;
    if-nez p7, :cond_0

    .line 450
    invoke-static {p1, p2, p3, p4}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxForPath(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object p7

    .line 452
    :cond_0
    invoke-virtual/range {p7 .. p7}, Lcom/android/emailcommon/provider/Mailbox;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    invoke-virtual/range {p7 .. p7}, Lcom/android/emailcommon/provider/Mailbox;->getHashes()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v9, Lcom/kingsoft/email/mail/store/ImapFolder;->mHash:[Ljava/lang/Object;

    .line 457
    :cond_1
    invoke-static {p1, p4}, Lcom/kingsoft/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    move-object v1, p1

    move-object/from16 v2, p7

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v8}, Lcom/kingsoft/email/mail/store/ImapStore;->updateMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;JLjava/lang/String;CZI)V

    .line 459
    iget-object v1, v9, Lcom/kingsoft/email/mail/store/ImapFolder;->mHash:[Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 463
    invoke-virtual/range {p7 .. p7}, Lcom/android/emailcommon/provider/Mailbox;->getHashes()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v9, Lcom/kingsoft/email/mail/store/ImapFolder;->mHash:[Ljava/lang/Object;

    .line 465
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 467
    :cond_2
    move-object/from16 v0, p7

    iput-object v0, v9, Lcom/kingsoft/email/mail/store/ImapFolder;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 468
    return-object v9
.end method

.method static createHierarchy(Ljava/util/HashMap;)V
    .locals 13
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/email/mail/store/ImapFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "mailboxes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/mail/store/ImapFolder;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 414
    .local v10, "pathnames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 415
    .local v9, "path":Ljava/lang/String;
    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/mail/store/ImapFolder;

    .line 416
    .local v1, "folder":Lcom/kingsoft/email/mail/store/ImapFolder;
    iget-object v3, v1, Lcom/kingsoft/email/mail/store/ImapFolder;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 417
    .local v3, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    iget-object v11, v3, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    iget v12, v3, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 418
    .local v0, "delimiterIdx":I
    const-wide/16 v5, -0x1

    .line 419
    .local v5, "parentKey":J
    const/4 v8, 0x0

    .line 420
    .local v8, "parentPath":Ljava/lang/String;
    const/4 v11, -0x1

    if-eq v0, v11, :cond_0

    iget v11, v3, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 421
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 422
    invoke-virtual {p0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/email/mail/store/ImapFolder;

    .line 423
    .local v4, "parentFolder":Lcom/kingsoft/email/mail/store/ImapFolder;
    if-nez v4, :cond_1

    const/4 v7, 0x0

    .line 424
    .local v7, "parentMailbox":Lcom/android/emailcommon/provider/Mailbox;
    :goto_1
    if-eqz v7, :cond_0

    .line 425
    iget-wide v5, v7, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    .line 426
    iget v11, v7, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    or-int/lit8 v11, v11, 0x3

    iput v11, v7, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 430
    .end local v4    # "parentFolder":Lcom/kingsoft/email/mail/store/ImapFolder;
    .end local v7    # "parentMailbox":Lcom/android/emailcommon/provider/Mailbox;
    :cond_0
    iput-wide v5, v3, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    .line 431
    iput-object v8, v3, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    goto :goto_0

    .line 423
    .restart local v4    # "parentFolder":Lcom/kingsoft/email/mail/store/ImapFolder;
    :cond_1
    iget-object v7, v4, Lcom/kingsoft/email/mail/store/ImapFolder;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    goto :goto_1

    .line 433
    .end local v0    # "delimiterIdx":I
    .end local v1    # "folder":Lcom/kingsoft/email/mail/store/ImapFolder;
    .end local v3    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v4    # "parentFolder":Lcom/kingsoft/email/mail/store/ImapFolder;
    .end local v5    # "parentKey":J
    .end local v8    # "parentPath":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static decodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 692
    sget-object v1, Lcom/kingsoft/email/mail/store/ImapStore;->MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0}, Lcom/kingsoft/emailcommon/utility/Utility;->toAscii(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "folder":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 696
    :cond_0
    return-object v0
.end method

.method static encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 671
    const-string/jumbo v2, "INBOX"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 683
    .end local p0    # "name":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 674
    .restart local p0    # "name":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 679
    :cond_1
    sget-object v2, Lcom/kingsoft/email/mail/store/ImapStore;->MODIFIED_UTF_7_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 680
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v0, v2, [B

    .line 681
    .local v0, "b":[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 683
    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/Utility;->fromAscii([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getImapId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;

    .prologue
    .line 176
    const-class v18, Lcom/kingsoft/email/mail/store/ImapStore;

    monitor-enter v18

    .line 177
    :try_start_0
    sget-object v3, Lcom/kingsoft/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 178
    const-string/jumbo v3, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 180
    .local v15, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v9

    .line 181
    .local v9, "networkOperator":Ljava/lang/String;
    if-nez v9, :cond_0

    const-string/jumbo v9, ""

    .line 183
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static/range {v3 .. v9}, Lcom/kingsoft/email/mail/store/ImapStore;->makeCommonImapId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/kingsoft/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    .line 187
    .end local v9    # "networkOperator":Ljava/lang/String;
    .end local v15    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/kingsoft/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .local v13, "id":Ljava/lang/StringBuilder;
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/emailcommon/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/kingsoft/emailcommon/VendorPolicyLoader;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lcom/kingsoft/emailcommon/VendorPolicyLoader;->getImapIdValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 196
    .local v17, "vendorId":Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 197
    const/16 v3, 0x20

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_2
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/email/Preferences;->getDeviceUID()Ljava/lang/String;

    move-result-object v10

    .line 205
    .local v10, "devUID":Ljava/lang/String;
    const-string/jumbo v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14

    .line 206
    .local v14, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 207
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 208
    invoke-virtual {v14}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v16

    .line 209
    .local v16, "uid":[B
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v12

    .line 210
    .local v12, "hexUid":Ljava/lang/String;
    const-string/jumbo v3, " \"AGUID\" \""

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const/16 v3, 0x22

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    .end local v10    # "devUID":Ljava/lang/String;
    .end local v12    # "hexUid":Ljava/lang/String;
    .end local v14    # "messageDigest":Ljava/security/MessageDigest;
    .end local v16    # "uid":[B
    :goto_0
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 187
    .end local v13    # "id":Ljava/lang/StringBuilder;
    .end local v17    # "vendorId":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 213
    .restart local v13    # "id":Ljava/lang/StringBuilder;
    .restart local v17    # "vendorId":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 214
    .local v11, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "couldn\'t obtain SHA-1 hash for device UID"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static getImapIdNetEasy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;

    .prologue
    .line 233
    const-class v5, Lcom/kingsoft/email/mail/store/ImapStore;

    monitor-enter v5

    .line 234
    :try_start_0
    sget-object v4, Lcom/kingsoft/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 235
    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 237
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "networkOperator":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    .line 240
    :cond_0
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/kingsoft/email/mail/store/ImapStore;->makeCommonImapIdNetEasy(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/kingsoft/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    .line 242
    .end local v1    # "networkOperator":Ljava/lang/String;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/kingsoft/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "id":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/kingsoft/emailcommon/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/kingsoft/emailcommon/VendorPolicyLoader;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3}, Lcom/kingsoft/emailcommon/VendorPolicyLoader;->getImapIdValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "vendorId":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 252
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 242
    .end local v0    # "id":Ljava/lang/StringBuilder;
    .end local v3    # "vendorId":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method static joinMessageUids([Lcom/kingsoft/emailcommon/mail/Message;)Ljava/lang/String;
    .locals 7
    .param p0, "messages"    # [Lcom/kingsoft/emailcommon/mail/Message;

    .prologue
    .line 703
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 705
    .local v4, "notFirst":Z
    move-object v0, p0

    .local v0, "arr$":[Lcom/kingsoft/emailcommon/mail/Message;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 706
    .local v3, "m":Lcom/kingsoft/emailcommon/mail/Message;
    if-eqz v4, :cond_0

    .line 707
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 709
    :cond_0
    invoke-virtual {v3}, Lcom/kingsoft/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    const/4 v4, 0x1

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    .end local v3    # "m":Lcom/kingsoft/emailcommon/mail/Message;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static makeCommonImapId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "codeName"    # Ljava/lang/String;
    .param p3, "model"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;
    .param p5, "vendor"    # Ljava/lang/String;
    .param p6, "networkOperator"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 297
    const-string/jumbo v2, "[^a-zA-Z0-9-_\\+=;:\\.,/ ]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 298
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 299
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 301
    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 302
    invoke-virtual {v0, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 303
    invoke-virtual {v0, p5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 304
    invoke-virtual {v0, p6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 307
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "\"name\" \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 308
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    const-string/jumbo v2, " \"os\" \"android\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    const-string/jumbo v2, " \"os-version\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 317
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 324
    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    :cond_0
    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 331
    const-string/jumbo v2, " \"vendor\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    :cond_1
    const-string/jumbo v2, "REL"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 339
    const-string/jumbo v2, " \"x-android-device-model\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    :cond_2
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 347
    const-string/jumbo v2, " \"x-android-mobile-net-operator\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 320
    :cond_4
    const-string/jumbo v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method static makeCommonImapIdNetEasy(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 369
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "\"name\" \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 370
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "WpsMail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    const-string/jumbo v3, " \"os\" \"Android\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    const-string/jumbo v3, " \"os-version\" \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 377
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    :goto_0
    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    invoke-static {p0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getTheAppDeviceInfo(Landroid/content/Context;)Lcom/kingsoft/email/statistics/AppDeviceInfo;

    move-result-object v0

    .line 385
    .local v0, "appDeviceInfo":Lcom/kingsoft/email/statistics/AppDeviceInfo;
    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/AppDeviceInfo;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "app_version":Ljava/lang/String;
    const-string/jumbo v3, " \"version\" \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    const-string/jumbo v3, " \"vendor\" \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    const-string/jumbo v3, "KSO Limited"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    const-string/jumbo v3, " \"contact\" \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    const-string/jumbo v3, "wpsmail_dev_support@kingsoft.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 380
    .end local v0    # "appDeviceInfo":Lcom/kingsoft/email/statistics/AppDeviceInfo;
    .end local v1    # "app_version":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "1.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static newInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;
    .locals 1
    .param p0, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/kingsoft/email/mail/store/ImapStore;

    invoke-direct {v0, p1, p0}, Lcom/kingsoft/email/mail/store/ImapStore;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    return-object v0
.end method

.method private static saveMailboxList(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/email/mail/store/ImapFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, "folderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/mail/store/ImapFolder;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/mail/store/ImapFolder;

    .line 476
    .local v1, "imapFolder":Lcom/kingsoft/email/mail/store/ImapFolder;
    invoke-virtual {v1, p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->save(Landroid/content/Context;)V

    goto :goto_0

    .line 478
    .end local v1    # "imapFolder":Lcom/kingsoft/email/mail/store/ImapFolder;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkSettings()Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 570
    const/4 v3, -0x1

    .line 571
    .local v3, "result":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 572
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Lcom/kingsoft/email/mail/store/ImapConnection;

    iget-object v4, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    invoke-direct {v1, p0, v4, v5}, Lcom/kingsoft/email/mail/store/ImapConnection;-><init>(Lcom/kingsoft/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .local v1, "connection":Lcom/kingsoft/email/mail/store/ImapConnection;
    :try_start_0
    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/ImapConnection;->open()V

    .line 575
    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/ImapConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/ImapConnection;->destroyResponses()V

    .line 582
    :goto_0
    const-string/jumbo v4, "validate_result_code"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 583
    return-object v0

    .line 576
    :catch_0
    move-exception v2

    .line 577
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v4, "validate_error_message"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    const/16 v3, 0x21

    .line 580
    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/ImapConnection;->destroyResponses()V

    goto :goto_0

    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/ImapConnection;->destroyResponses()V

    throw v4
.end method

.method cloneTransport()Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/transport/MailTransport;->clone()Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v0

    return-object v0
.end method

.method ensurePrefixIsValid()V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    .line 625
    :cond_0
    return-void
.end method

.method getConnection()Lcom/kingsoft/email/mail/store/ImapConnection;
    .locals 3

    .prologue
    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, "connection":Lcom/kingsoft/email/mail/store/ImapConnection;
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "connection":Lcom/kingsoft/email/mail/store/ImapConnection;
    check-cast v0, Lcom/kingsoft/email/mail/store/ImapConnection;

    .restart local v0    # "connection":Lcom/kingsoft/email/mail/store/ImapConnection;
    if-eqz v0, :cond_0

    .line 634
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/kingsoft/email/mail/store/ImapConnection;->setStore(Lcom/kingsoft/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string/jumbo v1, "NOOP"

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :cond_0
    if-nez v0, :cond_1

    .line 646
    new-instance v0, Lcom/kingsoft/email/mail/store/ImapConnection;

    .end local v0    # "connection":Lcom/kingsoft/email/mail/store/ImapConnection;
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/kingsoft/email/mail/store/ImapConnection;-><init>(Lcom/kingsoft/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .restart local v0    # "connection":Lcom/kingsoft/email/mail/store/ImapConnection;
    :cond_1
    return-object v0

    .line 639
    :catch_0
    move-exception v1

    .line 642
    :goto_1
    invoke-virtual {v0}, Lcom/kingsoft/email/mail/store/ImapConnection;->close()V

    .line 643
    const/4 v0, 0x0

    goto :goto_0

    .line 637
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method getConnectionPoolForTest()Ljava/util/Collection;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/email/mail/store/ImapConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Folder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 405
    new-instance v0, Lcom/kingsoft/email/mail/store/ImapFolder;

    invoke-direct {v0, p0, p1}, Lcom/kingsoft/email/mail/store/ImapFolder;-><init>(Lcom/kingsoft/email/mail/store/ImapStore;Ljava/lang/String;)V

    return-object v0
.end method

.method getFreshConnection()Lcom/kingsoft/email/mail/store/ImapConnection;
    .locals 3

    .prologue
    .line 652
    new-instance v0, Lcom/kingsoft/email/mail/store/ImapConnection;

    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/kingsoft/email/mail/store/ImapConnection;-><init>(Lcom/kingsoft/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method isUserPrefixSet()Z
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method poolConnection(Lcom/kingsoft/email/mail/store/ImapConnection;)V
    .locals 1
    .param p1, "connection"    # Lcom/kingsoft/email/mail/store/ImapConnection;

    .prologue
    .line 660
    if-eqz p1, :cond_0

    .line 661
    invoke-virtual {p1}, Lcom/kingsoft/email/mail/store/ImapConnection;->destroyResponses()V

    .line 662
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mConnectionPool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 664
    :cond_0
    return-void
.end method

.method setPathPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathPrefix"    # Ljava/lang/String;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    .line 602
    return-void
.end method

.method setPathSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathSeparator"    # Ljava/lang/String;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    .line 597
    return-void
.end method

.method setTransportForTest(Lcom/kingsoft/email/mail/transport/MailTransport;)V
    .locals 0
    .param p1, "testTransport"    # Lcom/kingsoft/email/mail/transport/MailTransport;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 140
    iput-object p1, p0, Lcom/kingsoft/email/mail/store/ImapStore;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    .line 141
    return-void
.end method

.method public updateFolders()[Lcom/kingsoft/emailcommon/mail/Folder;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/mail/store/ImapStore;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v16

    .line 486
    .local v16, "inbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v16, :cond_1

    .line 487
    const/4 v2, 0x0

    .line 563
    :cond_0
    :goto_0
    return-object v2

    .line 493
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/mail/store/ImapStore;->getConnection()Lcom/kingsoft/email/mail/store/ImapConnection;

    move-result-object v19

    .line 495
    .local v19, "connection":Lcom/kingsoft/email/mail/store/ImapConnection;
    :try_start_0
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 498
    .local v26, "mailboxes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/mail/store/ImapFolder;>;"
    const-string/jumbo v2, "NOOP"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 499
    const-string/jumbo v24, "LIST \"\" \"*\""

    .line 500
    .local v24, "imapCommand":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LIST \"\" \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "*\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 503
    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v29

    .line 504
    .local v29, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/store/ImapStore;->folderNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 505
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    .line 507
    .local v28, "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    const/4 v2, 0x0

    const-string/jumbo v3, "LIST"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 509
    const/4 v2, 0x3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v21

    .line 510
    .local v21, "encodedFolder":Lcom/kingsoft/email/mail/store/imap/ImapString;
    invoke-virtual/range {v21 .. v21}, Lcom/kingsoft/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 512
    invoke-virtual/range {v21 .. v21}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kingsoft/email/mail/store/ImapStore;->decodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 515
    .local v6, "folderName":Ljava/lang/String;
    const-string/jumbo v2, "INBOX"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 518
    move-object/from16 v18, v16

    .line 519
    .local v18, "box":Lcom/android/emailcommon/provider/Mailbox;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 521
    move-object/from16 v0, v18

    iput-object v6, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 552
    .end local v6    # "folderName":Ljava/lang/String;
    .end local v18    # "box":Lcom/android/emailcommon/provider/Mailbox;
    .end local v21    # "encodedFolder":Lcom/kingsoft/email/mail/store/imap/ImapString;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v24    # "imapCommand":Ljava/lang/String;
    .end local v26    # "mailboxes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/mail/store/ImapFolder;>;"
    .end local v28    # "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .end local v29    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    :catch_0
    move-exception v25

    .line 553
    .local v25, "ioe":Ljava/io/IOException;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/email/mail/store/ImapConnection;->close()V

    .line 554
    new-instance v2, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v3, "Unable to get folder list."

    move-object/from16 v0, v25

    invoke-direct {v2, v3, v0}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    .end local v25    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v19, :cond_4

    .line 563
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/ImapStore;->poolConnection(Lcom/kingsoft/email/mail/store/ImapConnection;)V

    :cond_4
    throw v2

    .line 525
    .restart local v6    # "folderName":Ljava/lang/String;
    .restart local v21    # "encodedFolder":Lcom/kingsoft/email/mail/store/imap/ImapString;
    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v24    # "imapCommand":Ljava/lang/String;
    .restart local v26    # "mailboxes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/mail/store/ImapFolder;>;"
    .restart local v28    # "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .restart local v29    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/store/ImapStore;->folderNames:Ljava/util/Map;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/store/ImapStore;->folderNames:Ljava/util/Map;

    invoke-interface {v2, v6, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapList;

    move-result-object v2

    const-string/jumbo v3, "\\NOSELECT"

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/mail/store/imap/ImapList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v8, 0x1

    .line 534
    .local v8, "selectable":Z
    :goto_2
    const/4 v2, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v20

    .line 535
    .local v20, "delimiter":Ljava/lang/String;
    const/4 v7, 0x0

    .line 536
    .local v7, "delimiterChar":C
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 537
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 539
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/store/ImapStore;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/kingsoft/email/mail/store/ImapStore;->addMailbox(Landroid/content/Context;JLjava/lang/String;CZLcom/android/emailcommon/provider/Mailbox;)Lcom/kingsoft/email/mail/store/ImapFolder;

    move-result-object v22

    .line 541
    .local v22, "folder":Lcom/kingsoft/email/mail/store/ImapFolder;
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 555
    .end local v6    # "folderName":Ljava/lang/String;
    .end local v7    # "delimiterChar":C
    .end local v8    # "selectable":Z
    .end local v20    # "delimiter":Ljava/lang/String;
    .end local v21    # "encodedFolder":Lcom/kingsoft/email/mail/store/imap/ImapString;
    .end local v22    # "folder":Lcom/kingsoft/email/mail/store/ImapFolder;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v24    # "imapCommand":Ljava/lang/String;
    .end local v26    # "mailboxes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/mail/store/ImapFolder;>;"
    .end local v28    # "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .end local v29    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    :catch_1
    move-exception v17

    .line 558
    .local v17, "afe":Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/email/mail/store/ImapConnection;->destroyResponses()V

    .line 559
    const/16 v19, 0x0

    .line 560
    throw v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 532
    .end local v17    # "afe":Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;
    .restart local v6    # "folderName":Ljava/lang/String;
    .restart local v21    # "encodedFolder":Lcom/kingsoft/email/mail/store/imap/ImapString;
    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v24    # "imapCommand":Ljava/lang/String;
    .restart local v26    # "mailboxes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/mail/store/ImapFolder;>;"
    .restart local v28    # "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .restart local v29    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 545
    .end local v6    # "folderName":Ljava/lang/String;
    .end local v21    # "encodedFolder":Lcom/kingsoft/email/mail/store/imap/ImapString;
    .end local v28    # "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kingsoft/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/store/ImapStore;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v11, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v16}, Lcom/kingsoft/email/mail/store/ImapStore;->addMailbox(Landroid/content/Context;JLjava/lang/String;CZLcom/android/emailcommon/provider/Mailbox;)Lcom/kingsoft/email/mail/store/ImapFolder;

    move-result-object v27

    .line 547
    .local v27, "newFolder":Lcom/kingsoft/email/mail/store/ImapFolder;
    const-string/jumbo v2, "INBOX"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-static/range {v26 .. v26}, Lcom/kingsoft/email/mail/store/ImapStore;->createHierarchy(Ljava/util/HashMap;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lcom/kingsoft/email/mail/store/ImapStore;->saveMailboxList(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 551
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/kingsoft/emailcommon/mail/Folder;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/kingsoft/emailcommon/mail/Folder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 562
    if-eqz v19, :cond_0

    .line 563
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/ImapStore;->poolConnection(Lcom/kingsoft/email/mail/store/ImapConnection;)V

    goto/16 :goto_0
.end method
