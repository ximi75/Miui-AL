.class public Lcom/kingsoft/exchange/adapter/EmailSyncParser;
.super Lcom/kingsoft/exchange/adapter/AbstractSyncParser;
.source "EmailSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;
    }
.end annotation


# static fields
.field public static final EAS_SYNC_STATUS_BAD_CLIENT_DATA:I = 0x6

.field public static final EAS_SYNC_STATUS_BAD_HEARTBEAT_VALUE:I = 0xe

.field public static final EAS_SYNC_STATUS_BAD_SYNC_KEY:I = 0x3

.field public static final EAS_SYNC_STATUS_CANNOT_COMPLETE:I = 0x9

.field public static final EAS_SYNC_STATUS_CONFLICT:I = 0x7

.field public static final EAS_SYNC_STATUS_FOLDER_SYNC_NEEDED:I = 0xc

.field public static final EAS_SYNC_STATUS_INCOMPLETE_REQUEST:I = 0xd

.field public static final EAS_SYNC_STATUS_OBJECT_NOT_FOUND:I = 0x8

.field public static final EAS_SYNC_STATUS_PROTOCOL_ERROR:I = 0x4

.field public static final EAS_SYNC_STATUS_RETRY:I = 0x10

.field public static final EAS_SYNC_STATUS_SERVER_ERROR:I = 0x5

.field public static final EAS_SYNC_STATUS_SUCCESS:I = 0x1

.field public static final EAS_SYNC_STATUS_TOO_MANY_COLLECTIONS:I = 0xf

.field static final LAST_VERB_FORWARD:I = 0x3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LAST_VERB_REPLY:I = 0x1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LAST_VERB_REPLY_ALL:I = 0x2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_OPS_PER_BATCH:I = 0x32

.field private static final MAX_RETRIES:I = 0xa

.field private static final MESSAGE_ID_SUBJECT_ID_COLUMN:I = 0x0

.field private static final MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

.field private static final MESSAGE_ID_SUBJECT_SUBJECT_COLUMN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Exchange"

.field private static final WHERE_SERVER_ID_AND_MAILBOX_KEY:Ljava/lang/String; = "syncServerId=? and mailboxKey=?"


# instance fields
.field private final changedEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;",
            ">;"
        }
    .end annotation
.end field

.field private final deletedEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final fetchedEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mFetchNeeded:Z

.field private mIsHeaderOnly:Z

.field private final mMailboxIdAsString:Ljava/lang/String;

.field private final mMessageUpdateStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicy:Lcom/android/emailcommon/provider/Policy;

.field private final newEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "subject"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p5, "account"    # Lcom/android/emailcommon/provider/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct/range {p0 .. p5}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->newEmails:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    .line 95
    iput-boolean v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mFetchNeeded:Z

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMessageUpdateStatus:Ljava/util/Map;

    .line 100
    iput-boolean v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mIsHeaderOnly:Z

    .line 106
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/kingsoft/exchange/adapter/Parser;Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;)V
    .locals 4
    .param p1, "parser"    # Lcom/kingsoft/exchange/adapter/Parser;
    .param p2, "adapter"    # Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;-><init>(Lcom/kingsoft/exchange/adapter/Parser;Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->newEmails:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    .line 95
    iput-boolean v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mFetchNeeded:Z

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMessageUpdateStatus:Ljava/util/Map;

    .line 100
    iput-boolean v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mIsHeaderOnly:Z

    .line 126
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "adapter"    # Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->newEmails:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    .line 95
    iput-boolean v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mFetchNeeded:Z

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMessageUpdateStatus:Ljava/util/Map;

    .line 100
    iput-boolean v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mIsHeaderOnly:Z

    .line 116
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    goto :goto_0
.end method

.method private addParser()Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 417
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 418
    .local v0, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 419
    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 422
    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-ne v2, v5, :cond_0

    .line 423
    iput v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 429
    :goto_0
    const/4 v1, 0x1

    .line 431
    .local v1, "status":I
    :goto_1
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 432
    iget v2, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 443
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->skipTag()V

    goto :goto_1

    .line 425
    .end local v1    # "status":I
    :cond_0
    iput v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    goto :goto_0

    .line 434
    .restart local v1    # "status":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    goto :goto_1

    .line 437
    :sswitch_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValueInt()I

    move-result v1

    .line 438
    goto :goto_1

    .line 440
    :sswitch_2
    iget v2, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    invoke-virtual {p0, v0, v2}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->addData(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    goto :goto_1

    .line 447
    :cond_1
    if-eq v1, v4, :cond_2

    .line 448
    new-instance v2, Lcom/kingsoft/exchange/CommandStatusException;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lcom/kingsoft/exchange/CommandStatusException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 450
    :cond_2
    return-object v0

    .line 432
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0x1d -> :sswitch_2
    .end sparse-switch
.end method

.method private applyBatchIfNeeded(Ljava/util/ArrayList;IZ)V
    .locals 9
    .param p2, "maxOpsPerBatch"    # I
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;IZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v8, 0x0

    .line 1016
    if-nez p3, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, p2, :cond_3

    .line 1018
    :cond_0
    const-string/jumbo v3, "Exchange"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1020
    .local v2, "parcel":Landroid/os/Parcel;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProviderOperation;

    .line 1021
    .local v1, "op":Landroid/content/ContentProviderOperation;
    invoke-virtual {v1, v2, v8}, Landroid/content/ContentProviderOperation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1023
    .end local v1    # "op":Landroid/content/ContentProviderOperation;
    :cond_1
    const-string/jumbo v3, "Exchange"

    const-string/jumbo v4, "Committing %d ops total size=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1025
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1027
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "parcel":Landroid/os/Parcel;
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1028
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1030
    :cond_3
    return-void
.end method

.method private attachmentParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 11
    .param p2, "msg"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    const/4 v6, 0x1

    .line 557
    const/4 v2, 0x0

    .line 558
    .local v2, "fileName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 559
    .local v4, "length":Ljava/lang/String;
    const/4 v5, 0x0

    .line 560
    .local v5, "location":Ljava/lang/String;
    const/4 v3, 0x0

    .line 561
    .local v3, "isInline":Z
    const/4 v1, 0x0

    .line 563
    .local v1, "contentId":Ljava/lang/String;
    :goto_0
    const/16 v7, 0x85

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->nextTag(I)I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    .line 564
    iget v7, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    sparse-switch v7, :sswitch_data_0

    .line 585
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->skipTag()V

    goto :goto_0

    .line 568
    :sswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 569
    goto :goto_0

    .line 572
    :sswitch_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 573
    goto :goto_0

    .line 576
    :sswitch_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 577
    goto :goto_0

    .line 579
    :sswitch_3
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValueInt()I

    move-result v7

    if-ne v7, v6, :cond_0

    move v3, v6

    .line 580
    :goto_1
    goto :goto_0

    .line 579
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 582
    :sswitch_4
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 583
    goto :goto_0

    .line 589
    :cond_1
    if-eqz v2, :cond_6

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 590
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 591
    .local v0, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const-string/jumbo v7, "base64"

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 592
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 593
    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 594
    iput-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 595
    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 596
    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 607
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 608
    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 612
    :cond_2
    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    if-eqz v7, :cond_4

    .line 613
    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    iget-boolean v7, v7, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    iget v7, v7, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-lez v7, :cond_4

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    iget-object v9, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    iget v9, v9, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    .line 615
    :cond_3
    const/16 v7, 0x200

    iput v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 619
    :cond_4
    if-eqz v3, :cond_7

    .line 620
    iget-object v6, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v6, v6, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_5

    iget-boolean v6, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mIsHeaderOnly:Z

    if-nez v6, :cond_6

    .line 621
    :cond_5
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    .end local v0    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_6
    :goto_2
    return-void

    .line 624
    .restart local v0    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_7
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    iput-boolean v6, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    goto :goto_2

    .line 564
    :sswitch_data_0
    .sparse-switch
        0x87 -> :sswitch_1
        0x88 -> :sswitch_2
        0x90 -> :sswitch_0
        0x44c -> :sswitch_2
        0x450 -> :sswitch_0
        0x451 -> :sswitch_1
        0x453 -> :sswitch_4
        0x455 -> :sswitch_3
    .end sparse-switch
.end method

.method private attachmentsParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .locals 2
    .param p2, "msg"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p3, "attachmentFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    .local p1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :goto_0
    invoke-virtual {p0, p3}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 544
    iget v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 550
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->skipTag()V

    goto :goto_0

    .line 547
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->attachmentParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_0

    .line 553
    :cond_0
    return-void

    .line 544
    nop

    :sswitch_data_0
    .sparse-switch
        0x85 -> :sswitch_0
        0x44f -> :sswitch_0
    .end sparse-switch
.end method

.method private bodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 6
    .param p1, "msg"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 469
    const-string/jumbo v1, "1"

    .line 470
    .local v1, "bodyType":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 471
    .local v0, "body":Ljava/lang/String;
    :goto_0
    const/16 v3, 0x8c

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    .line 472
    iget v3, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    packed-switch v3, :pswitch_data_0

    .line 496
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->skipTag()V

    goto :goto_0

    .line 474
    :pswitch_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 475
    goto :goto_0

    .line 477
    :pswitch_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 478
    goto :goto_0

    .line 480
    :pswitch_3
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValueInt()I

    move-result v3

    iput v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBodySize:I

    goto :goto_0

    .line 483
    :pswitch_4
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    .line 485
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 487
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 488
    iput v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTurncated:I

    goto :goto_0

    .line 489
    :cond_1
    const-string/jumbo v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 490
    iput v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTurncated:I

    goto :goto_0

    .line 492
    :cond_2
    const/4 v3, 0x0

    iput v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTurncated:I

    goto :goto_0

    .line 500
    .end local v2    # "value":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 501
    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 505
    :goto_1
    return-void

    .line 503
    :cond_4
    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto :goto_1

    .line 472
    :pswitch_data_0
    .packed-switch 0x446
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private changeApplicationDataParser(Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;IJ)V
    .locals 8
    .param p2, "oldRead"    # Ljava/lang/Boolean;
    .param p3, "oldFlag"    # Ljava/lang/Boolean;
    .param p4, "oldFlags"    # I
    .param p5, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "IJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;>;"
    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 750
    const/4 v4, 0x0

    .line 751
    .local v4, "read":Ljava/lang/Boolean;
    const/4 v5, 0x0

    .line 752
    .local v5, "flag":Ljava/lang/Boolean;
    const/4 v6, 0x0

    .line 753
    .local v6, "flags":Ljava/lang/Integer;
    :cond_0
    :goto_0
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->nextTag(I)I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 754
    iget v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 774
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->skipTag()V

    goto :goto_0

    .line 756
    :sswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValueInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 757
    goto :goto_0

    .line 756
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 759
    :sswitch_1
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->flagParser()Ljava/lang/Boolean;

    move-result-object v5

    .line 760
    goto :goto_0

    .line 762
    :sswitch_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValueInt()I

    move-result v7

    .line 764
    .local v7, "val":I
    const v0, -0xc0001

    and-int/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 766
    if-eq v7, v1, :cond_2

    const/4 v0, 0x2

    if-ne v7, v0, :cond_3

    .line 768
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 769
    :cond_3
    if-ne v7, v3, :cond_0

    .line 770
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 778
    .end local v7    # "val":I
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {p2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {p3, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    if-eqz v6, :cond_8

    .line 780
    :cond_7
    new-instance v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;

    move-object v1, p0

    move-wide v2, p5

    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;-><init>(Lcom/kingsoft/exchange/adapter/EmailSyncParser;JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    :cond_8
    return-void

    .line 754
    nop

    :sswitch_data_0
    .sparse-switch
        0x95 -> :sswitch_0
        0xba -> :sswitch_1
        0x58b -> :sswitch_2
    .end sparse-switch
.end method

.method private flagParser()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 455
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 456
    .local v0, "state":Ljava/lang/Boolean;
    :goto_0
    const/16 v1, 0xba

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->nextTag(I)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    .line 457
    iget v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 462
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->skipTag()V

    goto :goto_0

    .line 459
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValueInt()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 460
    goto :goto_0

    :cond_0
    move v1, v2

    .line 459
    goto :goto_1

    .line 465
    :cond_1
    return-object v0

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0xbb
        :pswitch_0
    .end packed-switch
.end method

.method private getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 663
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "syncServerId=? and mailboxKey=?"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    aput-object p1, v4, v8

    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    aput-object v2, v4, v7

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 666
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v0

    .line 667
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v7, :cond_1

    .line 668
    new-array v0, v7, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Multiple messages with the same serverId/mailbox: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 670
    :cond_1
    return-object v6
.end method

.method private meetingRequestParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 3
    .param p1, "msg"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    new-instance v0, Lcom/kingsoft/emailcommon/mail/PackedString$Builder;

    invoke-direct {v0}, Lcom/kingsoft/emailcommon/mail/PackedString$Builder;-><init>()V

    .line 354
    .local v0, "packedString":Lcom/kingsoft/emailcommon/mail/PackedString$Builder;
    :cond_0
    :goto_0
    const/16 v1, 0xa2

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 355
    iget v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 390
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->skipTag()V

    goto :goto_0

    .line 357
    :sswitch_0
    const-string/jumbo v1, "DTSTAMP"

    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :sswitch_1
    const-string/jumbo v1, "DTSTART"

    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :sswitch_2
    const-string/jumbo v1, "DTEND"

    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :sswitch_3
    const-string/jumbo v1, "ORGMAIL"

    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :sswitch_4
    const-string/jumbo v1, "LOC"

    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :sswitch_5
    const-string/jumbo v1, "UID"

    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getUidFromGlobalObjId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :sswitch_6
    iget v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->skipParser(I)V

    goto :goto_0

    .line 379
    :sswitch_7
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->recurrencesParser()V

    goto :goto_0

    .line 382
    :sswitch_8
    const-string/jumbo v1, "RESPONSE"

    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :sswitch_9
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValueInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 386
    const-string/jumbo v1, "ALLDAY"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_1
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 394
    const-string/jumbo v1, "TITLE"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_2
    invoke-virtual {v0}, Lcom/kingsoft/emailcommon/mail/PackedString$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 397
    return-void

    .line 355
    :sswitch_data_0
    .sparse-switch
        0x9a -> :sswitch_9
        0x9b -> :sswitch_6
        0x9d -> :sswitch_0
        0x9e -> :sswitch_2
        0xa1 -> :sswitch_4
        0xa3 -> :sswitch_3
        0xa6 -> :sswitch_8
        0xa7 -> :sswitch_7
        0xb1 -> :sswitch_1
        0xb4 -> :sswitch_5
    .end sparse-switch
.end method

.method private static mimeBodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;)V
    .locals 10
    .param p0, "msg"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p1, "mimeData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 518
    .local v3, "in":Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/kingsoft/emailcommon/internet/MimeMessage;

    invoke-direct {v4, v3}, Lcom/kingsoft/emailcommon/internet/MimeMessage;-><init>(Ljava/io/InputStream;)V

    .line 520
    .local v4, "mimeMessage":Lcom/kingsoft/emailcommon/internet/MimeMessage;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v5, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v0, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    invoke-static {v4, v5, v0}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->collectParts(Lcom/kingsoft/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 525
    iget-object v6, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v5, v6, v7, v8, v9}, Lcom/kingsoft/emailcommon/utility/ConversionUtilities;->parseBodyFields(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;

    move-result-object v1

    .line 528
    .local v1, "data":Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;
    iget-boolean v6, v1, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->isQuotedReply:Z

    iget-boolean v7, v1, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->isQuotedForward:Z

    invoke-virtual {p0, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->setFlags(ZZ)V

    .line 529
    iget-object v6, v1, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->snippet:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 530
    iget-object v6, v1, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->shortBody:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mShortBody:Ljava/lang/String;

    .line 531
    iget-object v6, v1, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->htmlContent:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 532
    iget-object v6, v1, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->textContent:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 533
    iget-wide v6, v1, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->quoteIndex:J

    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mQuoteIndex:J

    .line 534
    iget-boolean v6, v1, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->isBodyCalc:Z

    iput-boolean v6, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->isBodyCalc:Z
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    return-void

    .line 535
    .end local v0    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    .end local v1    # "data":Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v4    # "mimeMessage":Lcom/kingsoft/emailcommon/internet/MimeMessage;
    .end local v5    # "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    :catch_0
    move-exception v2

    .line 537
    .local v2, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private recurrencesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    :goto_0
    const/16 v0, 0xa7

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 401
    iget v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 406
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->skipTag()V

    goto :goto_0

    .line 403
    :pswitch_0
    iget v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->skipParser(I)V

    goto :goto_0

    .line 409
    :cond_0
    return-void

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
    .end packed-switch
.end method

.method public static shouldRetry(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 818
    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addData(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .locals 17
    .param p1, "msg"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p2, "endingTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v4, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    const/4 v10, 0x0

    .line 181
    .local v10, "truncated":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v2, "allCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->nextTag(I)I

    move-result v14

    const/4 v15, 0x3

    if-eq v14, v15, :cond_c

    .line 184
    move-object/from16 v0, p0

    iget v14, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    sparse-switch v14, :sswitch_data_0

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->skipTag()V

    goto :goto_0

    .line 186
    :sswitch_0
    const/16 v14, 0x86

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v14}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->attachmentsParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    goto :goto_0

    .line 189
    :sswitch_1
    const/16 v14, 0x44e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v14}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->attachmentsParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    goto :goto_0

    .line 193
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/kingsoft/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v14

    invoke-static {v14}, Lcom/kingsoft/emailcommon/mail/Address;->pack([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    goto :goto_0

    .line 199
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x98

    invoke-static {v14, v15}, Lcom/kingsoft/emailcommon/mail/Address;->parse(Ljava/lang/String;I)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v6

    .line 201
    .local v6, "froms":[Lcom/kingsoft/emailcommon/mail/Address;
    if-eqz v6, :cond_1

    array-length v14, v6

    if-lez v14, :cond_1

    .line 202
    const/4 v14, 0x0

    aget-object v14, v6, v14

    invoke-virtual {v14}, Lcom/kingsoft/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 204
    :cond_1
    invoke-static {v6}, Lcom/kingsoft/emailcommon/mail/Address;->pack([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    goto :goto_0

    .line 208
    .end local v6    # "froms":[Lcom/kingsoft/emailcommon/mail/Address;
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/kingsoft/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v14

    invoke-static {v14}, Lcom/kingsoft/emailcommon/mail/Address;->pack([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    goto :goto_0

    .line 213
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/kingsoft/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v14

    invoke-static {v14}, Lcom/kingsoft/emailcommon/mail/Address;->pack([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    goto :goto_0

    .line 217
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/kingsoft/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    goto/16 :goto_0

    .line 220
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_0

    .line 223
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValueInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 224
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eqz v14, :cond_0

    .line 226
    const/4 v14, 0x1

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagSeen:Z

    goto/16 :goto_0

    .line 223
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 231
    :sswitch_9
    const/4 v14, 0x5

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v14, v14, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v15, 0x5

    if-eq v14, v15, :cond_3

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mIsHeaderOnly:Z

    if-nez v14, :cond_5

    .line 233
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->bodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 234
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-nez v14, :cond_4

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v14, :cond_0

    .line 235
    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    goto/16 :goto_0

    .line 239
    :cond_5
    sget-object v14, Lcom/kingsoft/email/EmailApplication;->mEasSyncedMessageSet:Ljava/util/HashSet;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 240
    :goto_2
    const/16 v14, 0x8c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->nextTag(I)I

    move-result v14

    const/4 v15, 0x3

    if-eq v14, v15, :cond_0

    .line 241
    move-object/from16 v0, p0

    iget v14, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    const/16 v15, 0x44c

    if-ne v14, v15, :cond_6

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 243
    .local v12, "value":J
    long-to-int v14, v12

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBodySize:I

    goto :goto_2

    .line 245
    .end local v12    # "value":J
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->skipTag()V

    goto :goto_2

    .line 253
    :sswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->flagParser()Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    goto/16 :goto_0

    .line 256
    :sswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValueInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    const/4 v10, 0x1

    .line 257
    :goto_3
    goto/16 :goto_0

    .line 256
    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    .line 261
    :sswitch_c
    if-eqz v10, :cond_8

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    .line 268
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "Partially loaded: "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 269
    const/4 v14, 0x2

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 270
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mFetchNeeded:Z

    goto/16 :goto_0

    .line 272
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mimeBodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 276
    :sswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 277
    .local v9, "text":Ljava/lang/String;
    move-object/from16 v0, p1

    iput-object v9, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto/16 :goto_0

    .line 280
    .end local v9    # "text":Ljava/lang/String;
    :sswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 281
    .local v8, "messageClass":Ljava/lang/String;
    const-string/jumbo v14, "IPM.Schedule.Meeting.Request"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 282
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v14, v14, 0x4

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_0

    .line 283
    :cond_9
    const-string/jumbo v14, "IPM.Schedule.Meeting.Canceled"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 284
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v14, v14, 0x8

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_0

    .line 288
    .end local v8    # "messageClass":Ljava/lang/String;
    :sswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->meetingRequestParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto/16 :goto_0

    .line 291
    :sswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadTopic:Ljava/lang/String;

    goto/16 :goto_0

    .line 294
    :sswitch_11
    move-object/from16 v0, p0

    iget v14, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->skipParser(I)V

    goto/16 :goto_0

    .line 297
    :sswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValueBytes()[B

    move-result-object v14

    const/16 v15, 0x8

    invoke-static {v14, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerConversationId:Ljava/lang/String;

    goto/16 :goto_0

    .line 302
    :sswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValueBytes()[B

    goto/16 :goto_0

    .line 305
    :sswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValueInt()I

    move-result v11

    .line 306
    .local v11, "val":I
    const/4 v14, 0x1

    if-eq v11, v14, :cond_a

    const/4 v14, 0x2

    if-ne v11, v14, :cond_b

    .line 308
    :cond_a
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v15, 0x40000

    or-int/2addr v14, v15

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_0

    .line 309
    :cond_b
    const/4 v14, 0x3

    if-ne v11, v14, :cond_0

    .line 310
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v15, 0x80000

    or-int/2addr v14, v15

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_0

    .line 318
    .end local v11    # "val":I
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_10

    .line 319
    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 322
    if-eqz p1, :cond_d

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v14, :cond_d

    .line 323
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-static {v14}, Lcom/kingsoft/email/provider/Utilities;->getAllCids(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 326
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 327
    .local v3, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v2, :cond_f

    iget-object v14, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 329
    iget v14, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    if-nez v14, :cond_e

    .line 330
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static/range {v14 .. v16}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getFolder(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v5

    .line 331
    .local v5, "folder":Lcom/kingsoft/mail/providers/Folder;
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Folder;->isSent()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 332
    const/4 v14, 0x2

    iput v14, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    goto :goto_4

    .line 339
    .end local v5    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_f
    const/4 v14, 0x0

    iput-object v14, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 340
    const/4 v14, 0x1

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    goto :goto_4

    .line 344
    .end local v3    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_10
    return-void

    .line 184
    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_0
        0x8c -> :sswitch_d
        0x8f -> :sswitch_6
        0x93 -> :sswitch_e
        0x94 -> :sswitch_7
        0x95 -> :sswitch_8
        0x96 -> :sswitch_2
        0x97 -> :sswitch_4
        0x98 -> :sswitch_3
        0x99 -> :sswitch_5
        0xa2 -> :sswitch_f
        0xb5 -> :sswitch_10
        0xb6 -> :sswitch_c
        0xb7 -> :sswitch_b
        0xba -> :sswitch_a
        0x44a -> :sswitch_9
        0x44e -> :sswitch_1
        0x589 -> :sswitch_12
        0x58a -> :sswitch_13
        0x58b -> :sswitch_14
        0x608 -> :sswitch_11
    .end sparse-switch
.end method

.method changeParser(Ljava/util/ArrayList;)V
    .locals 13
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;>;"
    const/16 v12, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 716
    const/4 v8, 0x0

    .line 717
    .local v8, "serverId":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 718
    .local v2, "oldRead":Ljava/lang/Boolean;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 719
    .local v3, "oldFlag":Ljava/lang/Boolean;
    const/4 v4, 0x0

    .line 720
    .local v4, "flags":I
    const-wide/16 v5, 0x0

    .line 721
    .local v5, "id":J
    :goto_0
    invoke-virtual {p0, v12}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 722
    iget v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 743
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->skipTag()V

    goto :goto_0

    .line 724
    :sswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 725
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v8, v0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 727
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v11, "Changing "

    aput-object v11, v0, v1

    const/4 v1, 0x1

    aput-object v8, v0, v1

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 729
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_1

    move v0, v9

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 731
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_2

    move v0, v9

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 732
    const/16 v0, 0x8

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 733
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v5

    .line 736
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    move v0, v10

    .line 729
    goto :goto_1

    :cond_2
    move v0, v10

    .line 731
    goto :goto_2

    .line 736
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v7    # "c":Landroid/database/Cursor;
    :sswitch_1
    move-object v0, p0

    move-object v1, p1

    .line 740
    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->changeApplicationDataParser(Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;IJ)V

    goto :goto_0

    .line 746
    :cond_3
    return-void

    .line 722
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public commandsParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 789
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 790
    iget v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 791
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->newEmails:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->addParser()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 792
    :cond_0
    iget v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    iget v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->deleteParser(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 794
    :cond_2
    iget v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 795
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->changeParser(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 797
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->skipTag()V

    goto :goto_0

    .line 799
    :cond_4
    return-void
.end method

.method public commit()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 894
    const/16 v1, 0x32

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->commitImpl(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    :goto_0
    return-void

    .line 895
    :catch_0
    move-exception v0

    .line 899
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "Transaction too large, retrying in single mode"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 900
    invoke-virtual {p0, v5}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->commitImpl(I)V

    goto :goto_0
.end method

.method public commitImpl(I)V
    .locals 18
    .param p1, "maxOpsPerBatch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 907
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 910
    .local v12, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 911
    .local v11, "numFetched":I
    const-string/jumbo v13, "Exchange"

    const-string/jumbo v14, "commitImpl: maxOpsPerBatch=%d numFetched=%d numNew=%d numDeleted=%d numChanged=%d"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->newEmails:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 918
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 920
    .local v10, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v13, v10, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    sget-object v14, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 921
    .local v3, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 923
    .local v8, "id":Ljava/lang/String;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 924
    const/4 v13, 0x0

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 925
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 927
    const/4 v13, 0x0

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 929
    .local v6, "dupId":Ljava/lang/Long;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Delete duplicate with id: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 934
    .end local v6    # "dupId":Ljava/lang/Long;
    :catchall_0
    move-exception v13

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v13

    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 939
    if-eqz v8, :cond_1

    .line 940
    const-string/jumbo v13, "Exchange"

    const-string/jumbo v14, "Fetched body successfully for %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    invoke-static {v13, v14, v15}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 941
    const/4 v13, 0x1

    new-array v2, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v8, v2, v13

    .line 942
    .local v2, "bindArgument":[Ljava/lang/String;
    sget-object v13, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string/jumbo v14, "messageKey=?"

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string/jumbo v14, "textContent"

    iget-object v15, v10, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    sget-object v13, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string/jumbo v14, "_id=?"

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string/jumbo v14, "flagLoaded"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    .end local v2    # "bindArgument":[Ljava/lang/String;
    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v12, v1, v13}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->applyBatchIfNeeded(Ljava/util/ArrayList;IZ)V

    goto/16 :goto_0

    .line 955
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v8    # "id":Ljava/lang/String;
    .end local v10    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->newEmails:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 956
    .restart local v10    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v13, v10, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    sget-object v14, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 958
    .restart local v3    # "c":Landroid/database/Cursor;
    :goto_3
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 959
    sget-object v13, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 962
    :catchall_1
    move-exception v13

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v13

    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 964
    invoke-virtual {v10, v12}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)V

    .line 965
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v12, v1, v13}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->applyBatchIfNeeded(Ljava/util/ArrayList;IZ)V

    .line 966
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/kingsoft/emailcommon/utility/Utility;->isHeaderOnly(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 967
    sget-object v13, Lcom/kingsoft/email/EmailApplication;->mEasSyncedMessageSet:Ljava/util/HashSet;

    iget-object v14, v10, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 968
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mContext:Landroid/content/Context;

    iget v14, v10, Lcom/android/emailcommon/provider/EmailContent$Message;->mBodySize:I

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/kingsoft/emailcommon/utility/Utility;->increaseMessageCountAndFlowSavedSize(Landroid/content/Context;IZ)V

    goto :goto_2

    .line 972
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v10    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 973
    .local v8, "id":Ljava/lang/Long;
    sget-object v13, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v14, v14, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v13 .. v17}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 976
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v12, v1, v13}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->applyBatchIfNeeded(Ljava/util/ArrayList;IZ)V

    goto :goto_4

    .line 979
    .end local v8    # "id":Ljava/lang/Long;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b

    .line 981
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;

    .line 982
    .local v4, "change":Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 983
    .local v5, "cv":Landroid/content/ContentValues;
    iget-object v13, v4, Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;->read:Ljava/lang/Boolean;

    if-eqz v13, :cond_7

    .line 984
    const-string/jumbo v13, "flagRead"

    iget-object v14, v4, Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;->read:Ljava/lang/Boolean;

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 986
    :cond_7
    iget-object v13, v4, Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;->flag:Ljava/lang/Boolean;

    if-eqz v13, :cond_8

    .line 987
    const-string/jumbo v13, "flagFavorite"

    iget-object v14, v4, Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;->flag:Ljava/lang/Boolean;

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 989
    :cond_8
    iget-object v13, v4, Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;->flags:Ljava/lang/Integer;

    if-eqz v13, :cond_9

    .line 990
    const-string/jumbo v13, "flags"

    iget-object v14, v4, Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;->flags:Ljava/lang/Integer;

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 992
    :cond_9
    sget-object v13, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v14, v4, Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;->id:J

    invoke-static {v13, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 997
    .end local v4    # "change":Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;
    .end local v5    # "cv":Landroid/content/ContentValues;
    :cond_a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v12, v1, v13}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->applyBatchIfNeeded(Ljava/util/ArrayList;IZ)V

    .line 1001
    :cond_b
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1002
    .local v9, "mailboxValues":Landroid/content/ContentValues;
    const-string/jumbo v13, "syncKey"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v14, v14, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    sget-object v13, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v14, v14, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v13, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v12, v1, v13}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->applyBatchIfNeeded(Ljava/util/ArrayList;IZ)V

    .line 1008
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v15, v15, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string/jumbo v15, " SyncKey saved as: "

    aput-object v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v15, v15, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 1009
    return-void
.end method

.method deleteParser(Ljava/util/ArrayList;I)V
    .locals 6
    .param p2, "entryTag"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    .local p1, "deletes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    invoke-virtual {p0, p2}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 676
    iget v2, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 694
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->skipTag()V

    goto :goto_0

    .line 678
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, "serverId":Ljava/lang/String;
    sget-object v2, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 682
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 683
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    sget-boolean v2, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_0

    .line 685
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Deleting "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 697
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "serverId":Ljava/lang/String;
    :cond_1
    return-void

    .line 676
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public fetchNeeded()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mFetchNeeded:Z

    return v0
.end method

.method public getMessageStatuses()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMessageUpdateStatus:Ljava/util/Map;

    return-object v0
.end method

.method public getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 645
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 646
    .local v1, "lastDot":I
    const/4 v0, 0x0

    .line 647
    .local v0, "extension":Ljava/lang/String;
    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 648
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 650
    :cond_0
    if-nez v0, :cond_2

    .line 652
    const-string/jumbo v2, "application/octet-stream"

    .line 659
    .local v2, "mimeType":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 654
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 655
    .restart local v2    # "mimeType":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 656
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "application/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public messageUpdateParser(I)V
    .locals 4
    .param p1, "endTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 828
    const/4 v0, 0x0

    .line 829
    .local v0, "serverId":Ljava/lang/String;
    const/4 v1, -0x1

    .line 830
    .local v1, "status":I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 831
    iget v2, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValueInt()I

    move-result v1

    goto :goto_0

    .line 833
    :cond_0
    iget v2, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 834
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 836
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->skipTag()V

    goto :goto_0

    .line 839
    :cond_2
    if-eqz v0, :cond_3

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 840
    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMessageUpdateStatus:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    :cond_3
    return-void
.end method

.method public parse()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 875
    invoke-super {p0}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->parse()Z

    move-result v0

    .line 876
    .local v0, "result":Z
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->fetchNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public responsesParser()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    .line 846
    :cond_0
    :goto_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 847
    iget v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    if-eq v1, v7, :cond_1

    iget v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    .line 848
    :cond_1
    iget v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->messageUpdateParser(I)V

    goto :goto_0

    .line 849
    :cond_2
    iget v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->tag:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 851
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->addParser()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, "sse":Lcom/kingsoft/exchange/CommandStatusException;
    iget v1, v0, Lcom/kingsoft/exchange/CommandStatusException;->mStatus:I

    if-ne v1, v7, :cond_0

    .line 857
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "syncServerId=? and mailboxKey=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/kingsoft/exchange/CommandStatusException;->mItemId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 864
    .end local v0    # "sse":Lcom/kingsoft/exchange/CommandStatusException;
    :cond_3
    return-void
.end method

.method public setIsHeaderOnly(Z)V
    .locals 0
    .param p1, "headonly"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mIsHeaderOnly:Z

    .line 137
    return-void
.end method

.method protected wipe()V
    .locals 4

    .prologue
    .line 868
    const-string/jumbo v0, "Exchange"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wiping mailbox "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 869
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string/jumbo v3, "com.android.exchange"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->resyncMailbox(Landroid/content/ContentResolver;Landroid/accounts/Account;J)V

    .line 871
    return-void
.end method
