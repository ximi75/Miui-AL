.class public final Lcom/android/emailcommon/provider/EmailContent$Message;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/emailcommon/provider/EmailContent$MessageColumns;
.implements Lcom/android/emailcommon/provider/EmailContent$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field public static final ACCOUNT_KEY_SELECTION:Ljava/lang/String; = "accountKey=?"

.field public static final ALL_DRAFT_SELECTION:Ljava/lang/String; = "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 3) AND flagLoaded IN (2,1)"

.field public static final ALL_FAVORITE_SELECTION:Ljava/lang/String; = "flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1)"

.field public static final ALL_INBOX_SELECTION:Ljava/lang/String; = "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1)"

.field public static final ALL_OUTBOX_SELECTION:Ljava/lang/String; = "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 4)"

.field public static final ALL_UNREAD_SELECTION:Ljava/lang/String; = "flagRead=0 AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1)"

.field private static final ATTACHMENT_INDEX_OFFSET:I = 0x2

.field public static final CONTENT_ACCOUNT_KEY_COLUMN:I = 0xd

.field public static final CONTENT_BCC_LIST_COLUMN:I = 0x11

.field public static final CONTENT_CC_LIST_COLUMN:I = 0x10

.field public static final CONTENT_DISPLAY_NAME_COLUMN:I = 0x1

.field public static final CONTENT_DRAFT_INFO_COLUMN:I = 0xa

.field public static final CONTENT_FLAGS_COLUMN:I = 0x8

.field public static final CONTENT_FLAG_ATTACHMENT_COLUMN:I = 0x7

.field public static final CONTENT_FLAG_CALC_BODY:I = 0x1c

.field public static final CONTENT_FLAG_FAVORITE_COLUMN:I = 0x6

.field public static final CONTENT_FLAG_LOADED_COLUMN:I = 0x5

.field public static final CONTENT_FLAG_READ_COLUMN:I = 0x4

.field public static final CONTENT_FLAG_SEEN_COLUMN:I = 0x19

.field public static final CONTENT_FROM_LIST_COLUMN:I = 0xe

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_MAILBOX_KEY_COLUMN:I = 0xc

.field public static final CONTENT_MAIN_MAILBOX_KEY_COLUMN:I = 0x1a

.field public static final CONTENT_MEETING_INFO_COLUMN:I = 0x14

.field public static final CONTENT_MESSAGE_ID_COLUMN:I = 0xb

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_PROTOCOL_SEARCH_INFO_COLUMN:I = 0x16

.field public static final CONTENT_RAWSUBJECT_COLUMN:I = 0x1b

.field public static final CONTENT_REPLY_TO_COLUMN:I = 0x12

.field public static final CONTENT_SERVER_ID_COLUMN:I = 0x9

.field public static final CONTENT_SERVER_TIMESTAMP_COLUMN:I = 0x13

.field public static final CONTENT_SNIPPET_COLUMN:I = 0x15

.field public static final CONTENT_SUBJECT_COLUMN:I = 0x3

.field public static final CONTENT_SYNC_DATA_COLUMN:I = 0x18

.field public static final CONTENT_THREAD_TOPIC_COLUMN:I = 0x17

.field public static final CONTENT_TIMESTAMP_COLUMN:I = 0x2

.field public static final CONTENT_TO_LIST_COLUMN:I = 0xf

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static CONTENT_URI_LIMIT_1:Landroid/net/Uri; = null

.field public static DELETED_CONTENT_URI:Landroid/net/Uri; = null

.field public static final DELETED_TABLE_NAME:Ljava/lang/String; = "Message_Deletes"

.field public static final DRAFT_INFO_APPEND_REF_MESSAGE:I = 0x1000000

.field public static final DRAFT_INFO_QUOTE_POS_MASK:I = 0xffffff

.field public static final FLAG_FORWARDED:I = 0x80000

.field public static final FLAG_INCOMING_MEETING_CANCEL:I = 0x8

.field public static final FLAG_INCOMING_MEETING_INVITE:I = 0x4

.field public static final FLAG_INCOMING_MEETING_MASK:I = 0xc

.field public static final FLAG_LOADED_COMPLETE:I = 0x1

.field public static final FLAG_LOADED_DELETED:I = 0x3

.field public static final FLAG_LOADED_HEADER_ONLY:I = 0x5

.field public static final FLAG_LOADED_PARTIAL:I = 0x2

.field public static final FLAG_LOADED_SELECTION:Ljava/lang/String; = "flagLoaded IN (2,1)"

.field public static final FLAG_LOADED_UNKNOWN:I = 0x4

.field public static final FLAG_LOADED_UNLOADED:I = 0x0

.field public static final FLAG_NOT_INCLUDE_QUOTED_TEXT:I = 0x20000

.field public static final FLAG_OUTGOING_MEETING_ACCEPT:I = 0x40

.field public static final FLAG_OUTGOING_MEETING_CANCEL:I = 0x20

.field public static final FLAG_OUTGOING_MEETING_DECLINE:I = 0x80

.field public static final FLAG_OUTGOING_MEETING_INVITE:I = 0x10

.field public static final FLAG_OUTGOING_MEETING_MASK:I = 0x1f0

.field public static final FLAG_OUTGOING_MEETING_REQUEST_MASK:I = 0x30

.field public static final FLAG_OUTGOING_MEETING_TENTATIVE:I = 0x100

.field public static final FLAG_READ_RECEIPT:I = 0x800000

.field public static final FLAG_REPLIED_TO:I = 0x40000

.field public static final FLAG_SYNC_ADAPTER_MASK:I = 0x1fe00

.field public static final FLAG_SYNC_ADAPTER_SHIFT:I = 0x9

.field public static final FLAG_TYPE_FEEDBACK:I = 0x2000000

.field public static final FLAG_TYPE_FORWARD:I = 0x2

.field public static final FLAG_TYPE_MASK:I = 0x3

.field public static final FLAG_TYPE_ORIGINAL:I = 0x100000

.field public static final FLAG_TYPE_REPLY:I = 0x1

.field public static final FLAG_TYPE_REPLY_ALL:I = 0x200000

.field public static final ID_COLUMNS_ID_COLUMN:I = 0x0

.field public static final ID_COLUMNS_PROJECTION:[Ljava/lang/String;

.field public static final ID_COLUMNS_SYNC_SERVER_ID:I = 0x1

.field public static final ID_COLUMN_PROJECTION:[Ljava/lang/String;

.field public static final KEY_TIMESTAMP_DESC:Ljava/lang/String; = "timeStamp desc"

.field public static final LIST_ACCOUNT_KEY_COLUMN:I = 0xa

.field public static final LIST_ATTACHMENT_COLUMN:I = 0x7

.field public static final LIST_DISPLAY_NAME_COLUMN:I = 0x1

.field public static final LIST_FAVORITE_COLUMN:I = 0x6

.field public static final LIST_FLAGS_COLUMN:I = 0x8

.field public static final LIST_ID_COLUMN:I = 0x0

.field public static final LIST_LOADED_COLUMN:I = 0x5

.field public static final LIST_MAILBOX_KEY_COLUMN:I = 0x9

.field public static final LIST_PROJECTION:[Ljava/lang/String;

.field public static final LIST_READ_COLUMN:I = 0x4

.field public static final LIST_SERVER_ID_COLUMN:I = 0xb

.field public static final LIST_SNIPPET_COLUMN:I = 0xc

.field public static final LIST_SUBJECT_COLUMN:I = 0x3

.field public static final LIST_TIMESTAMP_COLUMN:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "Email"

.field public static final MAILBOX_KEY_PROJECTION:[Ljava/lang/String;

.field public static final MAILBOX_SELECTION:Ljava/lang/String; = "mailboxKey=?"

.field public static NOTIFIER_URI:Landroid/net/Uri; = null

.field public static final NO_MESSAGE:J = -0x1L

.field public static final PER_ACCOUNT_FAVORITE_SELECTION:Ljava/lang/String; = "accountKey=? AND flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1)"

.field public static final PER_ACCOUNT_INBOX_SELECTION:Ljava/lang/String; = "accountKey=? AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1)"

.field public static final PER_ACCOUNT_UNREAD_SELECTION:Ljava/lang/String; = "accountKey=? AND flagRead=0 AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1)"

.field public static final READ:I = 0x1

.field public static SELECTED_MESSAGE_CONTENT_URI:Landroid/net/Uri; = null

.field public static SYNCED_CONTENT_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "Message"

.field public static final TURNCATED:I = 0x1

.field public static final UNREAD:I = 0x0

.field public static UPDATED_CONTENT_URI:Landroid/net/Uri; = null

.field public static final UPDATED_TABLE_NAME:Ljava/lang/String; = "Message_Updates"


# instance fields
.field public isBodyCalc:Z

.field public mAccountKey:J

.field public transient mAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public mBcc:Ljava/lang/String;

.field public mBodySize:I

.field public mCc:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mDraftInfo:I

.field public mFlagAttachment:Z

.field public mFlagFavorite:Z

.field public mFlagLoaded:I

.field public mFlagRead:Z

.field public mFlagSeen:Z

.field public mFlags:I

.field public mFrom:Ljava/lang/String;

.field public transient mHtml:Ljava/lang/String;

.field public transient mHtmlReply:Ljava/lang/String;

.field public transient mIntroText:Ljava/lang/String;

.field public mMailboxKey:J

.field public mMainMailboxKey:J

.field public mMeetingInfo:Ljava/lang/String;

.field public mMessageId:Ljava/lang/String;

.field public mProtocolSearchInfo:Ljava/lang/String;

.field public transient mQuoteIndex:J

.field public transient mQuotedTextStartPos:I

.field public mRawSubject:Ljava/lang/String;

.field public mReplyTo:Ljava/lang/String;

.field public mServerConversationId:Ljava/lang/String;

.field public mServerId:Ljava/lang/String;

.field public mServerTimeStamp:J

.field public transient mShortBody:Ljava/lang/String;

.field public mSnippet:Ljava/lang/String;

.field public transient mSourceKey:J

.field public mSubject:Ljava/lang/String;

.field public mSyncData:Ljava/lang/String;

.field public transient mText:Ljava/lang/String;

.field public transient mTextReply:Ljava/lang/String;

.field public mThreadTopic:Ljava/lang/String;

.field public mTimeStamp:J

.field public mTo:Ljava/lang/String;

.field public mTurncated:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 767
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "displayName"

    aput-object v1, v0, v4

    const-string/jumbo v1, "timeStamp"

    aput-object v1, v0, v5

    const-string/jumbo v1, "subject"

    aput-object v1, v0, v6

    const-string/jumbo v1, "flagRead"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "clientId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "messageId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "fromList"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "toList"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "ccList"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "bccList"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "replyToList"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "syncServerTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "meetingInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "substr(snippet, 1, 1000) as snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "protocolSearchInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "threadTopic"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "syncData"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "flagSeen"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "mainMailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "rawSubject"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "flagCalcBody"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "messageSize"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "turncated"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 804
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "displayName"

    aput-object v1, v0, v4

    const-string/jumbo v1, "timeStamp"

    aput-object v1, v0, v5

    const-string/jumbo v1, "subject"

    aput-object v1, v0, v6

    const-string/jumbo v1, "flagRead"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "rawSubject"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    .line 817
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "syncServerId"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    .line 821
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    .line 826
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "mailboxKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->MAILBOX_KEY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1020
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 894
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 895
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagSeen:Z

    .line 896
    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 897
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 898
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 899
    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 901
    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBodySize:I

    .line 902
    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTurncated:I

    .line 946
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 1021
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBaseUri:Landroid/net/Uri;

    .line 1022
    return-void
.end method

.method public static buildMessageListSelection(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "mailboxId"    # J

    .prologue
    const/16 v3, 0x3d

    .line 1311
    const-wide/16 v1, -0x2

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    .line 1312
    const-string/jumbo v1, "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1)"

    .line 1345
    :goto_0
    return-object v1

    .line 1314
    :cond_0
    const-wide/16 v1, -0x5

    cmp-long v1, p3, v1

    if-nez v1, :cond_1

    .line 1315
    const-string/jumbo v1, "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 3) AND flagLoaded IN (2,1)"

    goto :goto_0

    .line 1317
    :cond_1
    const-wide/16 v1, -0x6

    cmp-long v1, p3, v1

    if-nez v1, :cond_2

    .line 1318
    const-string/jumbo v1, "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 4)"

    goto :goto_0

    .line 1320
    :cond_2
    const-wide/16 v1, -0x3

    cmp-long v1, p3, v1

    if-nez v1, :cond_3

    .line 1321
    const-string/jumbo v1, "flagRead=0 AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1)"

    goto :goto_0

    .line 1325
    :cond_3
    const-wide/16 v1, -0x4

    cmp-long v1, p3, v1

    if-nez v1, :cond_5

    .line 1326
    const-wide/high16 v1, 0x1000000000000000L

    cmp-long v1, p1, v1

    if-nez v1, :cond_4

    .line 1327
    const-string/jumbo v1, "flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1)"

    goto :goto_0

    .line 1330
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1331
    .local v0, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "accountKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1338
    .end local v0    # "selection":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1340
    .restart local v0    # "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mailboxKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1342
    invoke-static {p0, p3, p4}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    .line 1343
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "flagLoaded IN (2,1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFavoriteMessageCount(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1283
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1)"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFavoriteMessageCount(Landroid/content/Context;J)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 1290
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "accountKey=? AND flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getKeyColumnLong(Landroid/content/Context;JLjava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J
    .param p3, "column"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1295
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p3, v2, v3

    invoke-static {p0, v1, p1, p2, v2}, Lcom/kingsoft/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1297
    .local v0, "columns":[Ljava/lang/String;
    if-eqz v0, :cond_0

    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    .line 1298
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1300
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public static initMessage()V
    .locals 2

    .prologue
    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    .line 722
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->uriWithLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI_LIMIT_1:Landroid/net/Uri;

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/syncedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/messageBySelection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->SELECTED_MESSAGE_CONTENT_URI:Landroid/net/Uri;

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/deletedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/updatedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_NOTIFIER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    .line 733
    return-void
.end method

.method public static restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 1063
    const-class v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method


# virtual methods
.method public addSaveOps(Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1195
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v10

    if-nez v10, :cond_c

    const/4 v8, 0x1

    .line 1198
    .local v8, "isNew":Z
    :goto_0
    if-eqz v8, :cond_d

    .line 1199
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBaseUri:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 1205
    .local v2, "b":Landroid/content/ContentProviderOperation$Builder;
    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 1206
    const/4 v7, 0x0

    .line 1207
    .local v7, "info":Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 1208
    new-instance v5, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-direct {v5, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1209
    .local v5, "htmlBuffer":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v12

    invoke-static {v10, v11, v5, v12}, Lcom/kingsoft/emailcommon/utility/SnippetUtility;->makeSnippetFromHtmlText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Landroid/content/Context;)Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;

    move-result-object v7

    .line 1210
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 1216
    .end local v5    # "htmlBuffer":Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {v7}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->getSnippet()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 1217
    invoke-virtual {v7}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->getNoQuoteText()Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mShortBody:Ljava/lang/String;

    .line 1218
    invoke-virtual {v7}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->getBodyCalc()Z

    move-result v10

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->isBodyCalc:Z

    .line 1219
    invoke-virtual {v7}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->getQuoteIdx()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mQuoteIndex:J

    .line 1221
    .end local v7    # "info":Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1225
    .local v4, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 1226
    const-string/jumbo v10, "textContent"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 1229
    const-string/jumbo v10, "htmlContent"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    :cond_2
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3

    .line 1232
    const-string/jumbo v10, "sourceMessageKey"

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1234
    :cond_3
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mQuotedTextStartPos:I

    if-eqz v10, :cond_4

    .line 1235
    const-string/jumbo v10, "quotedTextStartPos"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mQuotedTextStartPos:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1237
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mShortBody:Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 1238
    const-string/jumbo v10, "shortBody"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mShortBody:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    :cond_5
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mQuoteIndex:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_6

    .line 1241
    const-string/jumbo v10, "quoteIndex"

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mQuoteIndex:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1244
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v9, v10, -0x1

    .line 1246
    .local v9, "messageBackValue":I
    invoke-virtual {v4}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1247
    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 1249
    if-nez v8, :cond_7

    .line 1250
    const-string/jumbo v10, "messageKey"

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1252
    :cond_7
    invoke-virtual {v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1254
    if-eqz v8, :cond_8

    .line 1255
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1256
    .local v3, "backValues":Landroid/content/ContentValues;
    const-string/jumbo v10, "messageKey"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1257
    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1260
    .end local v3    # "backValues":Landroid/content/ContentValues;
    :cond_8
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v10, :cond_10

    .line 1265
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1266
    .local v1, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v8, :cond_a

    .line 1267
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v10, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 1269
    :cond_a
    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 1271
    if-eqz v8, :cond_b

    .line 1272
    const-string/jumbo v10, "messageKey"

    invoke-virtual {v2, v10, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1274
    :cond_b
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1195
    .end local v1    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2    # "b":Landroid/content/ContentProviderOperation$Builder;
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "isNew":Z
    .end local v9    # "messageBackValue":I
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1201
    .restart local v8    # "isNew":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBaseUri:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string/jumbo v11, "_id=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .restart local v2    # "b":Landroid/content/ContentProviderOperation$Builder;
    goto/16 :goto_1

    .line 1211
    .restart local v7    # "info":Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 1212
    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/kingsoft/emailcommon/utility/SnippetUtility;->makeSnippetFromText(Ljava/lang/StringBuffer;)Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;

    move-result-object v7

    goto/16 :goto_2

    .line 1214
    :cond_f
    new-instance v10, Ljava/lang/StringBuffer;

    const-string/jumbo v11, ""

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/kingsoft/emailcommon/utility/SnippetUtility;->makeSnippetFromText(Ljava/lang/StringBuffer;)Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;

    move-result-object v7

    goto/16 :goto_2

    .line 1277
    .end local v7    # "info":Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
    .restart local v4    # "cv":Landroid/content/ContentValues;
    .restart local v9    # "messageBackValue":I
    :cond_10
    return-void
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1069
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBaseUri:Landroid/net/Uri;

    .line 1070
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    .line 1071
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 1072
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 1073
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1074
    const/16 v0, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mRawSubject:Ljava/lang/String;

    .line 1075
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 1076
    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagSeen:Z

    .line 1077
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1078
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 1079
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 1080
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1081
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 1082
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    .line 1083
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDraftInfo:I

    .line 1084
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 1085
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 1086
    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMainMailboxKey:J

    .line 1087
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 1088
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 1089
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 1090
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 1091
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 1092
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    .line 1093
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 1094
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 1095
    const/16 v0, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_4

    :goto_4
    iput-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->isBodyCalc:Z

    .line 1096
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    .line 1097
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadTopic:Ljava/lang/String;

    .line 1098
    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSyncData:Ljava/lang/String;

    .line 1099
    return-void

    :cond_0
    move v0, v2

    .line 1075
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 1076
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 1078
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 1079
    goto/16 :goto_3

    :cond_4
    move v2, v1

    .line 1095
    goto :goto_4
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1110
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v14

    if-nez v14, :cond_2

    const/4 v4, 0x1

    .line 1115
    .local v4, "doSave":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1117
    :cond_0
    if-eqz v4, :cond_3

    .line 1118
    invoke-super/range {p0 .. p1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v13

    .line 1185
    :cond_1
    :goto_1
    return-object v13

    .line 1110
    .end local v4    # "doSave":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1123
    .restart local v4    # "doSave":Z
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 1124
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v13

    goto :goto_1

    .line 1126
    :cond_4
    const/4 v13, 0x0

    goto :goto_1

    .line 1130
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1132
    .local v8, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)V

    .line 1134
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/android/emailcommon/provider/EmailContent$Message;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v14, v15, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v10

    .line 1137
    .local v10, "results":[Landroid/content/ContentProviderResult;
    if-eqz v4, :cond_8

    .line 1138
    const/4 v14, 0x0

    aget-object v14, v10, v14

    iget-object v13, v14, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 1139
    .local v13, "u":Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    .line 1140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v14, :cond_1

    .line 1142
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_1

    .line 1143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1145
    .local v2, "a":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    add-int/lit8 v9, v5, 0x2

    .line 1147
    .local v9, "resultIndex":I
    array-length v14, v10

    if-ge v9, v14, :cond_7

    .line 1148
    aget-object v14, v10, v9

    iget-object v13, v14, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 1158
    :goto_3
    if-eqz v13, :cond_6

    iget-wide v14, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_6

    .line 1159
    iget-wide v11, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    .line 1160
    .local v11, "sourceAttId":J
    invoke-virtual {v13}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1164
    .local v6, "newAttId":J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1165
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v14, "sourceAttId"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1167
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v15, v3, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1173
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v6    # "newAttId":J
    .end local v11    # "sourceAttId":J
    :cond_6
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v14, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 1142
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1151
    :cond_7
    const-string/jumbo v14, "Email"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Invalid index into ContentProviderResults: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    const/4 v13, 0x0

    goto :goto_3

    .line 1178
    .end local v2    # "a":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v5    # "i":I
    .end local v9    # "resultIndex":I
    .end local v13    # "u":Landroid/net/Uri;
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1182
    .end local v10    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v14

    .line 1185
    :goto_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1180
    :catch_1
    move-exception v14

    goto :goto_4
.end method

.method public setFlags(ZZ)V
    .locals 2
    .param p1, "quotedReply"    # Z
    .param p2, "quotedForward"    # Z

    .prologue
    .line 1350
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 1351
    :cond_0
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1352
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1356
    :cond_1
    return-void

    .line 1352
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 1026
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1029
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "displayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const-string/jumbo v1, "timeStamp"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1031
    const-string/jumbo v1, "subject"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const-string/jumbo v1, "rawSubject"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mRawSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string/jumbo v1, "flagRead"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1034
    const-string/jumbo v1, "flagSeen"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagSeen:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1035
    const-string/jumbo v1, "flagLoaded"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1036
    const-string/jumbo v1, "flagFavorite"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1037
    const-string/jumbo v1, "flagAttachment"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1038
    const-string/jumbo v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1039
    const-string/jumbo v1, "syncServerId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const-string/jumbo v1, "syncServerTimeStamp"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1041
    const-string/jumbo v1, "clientId"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDraftInfo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1042
    const-string/jumbo v1, "messageId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    const-string/jumbo v1, "mailboxKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1044
    const-string/jumbo v1, "accountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1045
    const-string/jumbo v1, "fromList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string/jumbo v1, "toList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string/jumbo v1, "ccList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const-string/jumbo v1, "bccList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string/jumbo v1, "replyToList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string/jumbo v1, "meetingInfo"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const-string/jumbo v1, "snippet"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const-string/jumbo v1, "flagCalcBody"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->isBodyCalc:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1053
    const-string/jumbo v1, "protocolSearchInfo"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v1, "threadTopic"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadTopic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const-string/jumbo v1, "syncData"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSyncData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-string/jumbo v1, "mainMailboxKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMainMailboxKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1057
    const-string/jumbo v1, "messageSize"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBodySize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1058
    const-string/jumbo v1, "turncated"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTurncated:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1059
    return-object v0
.end method
