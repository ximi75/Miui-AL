.class public Lcom/kingsoft/mail/chat/ChatMessage;
.super Lcom/kingsoft/mail/providers/Message;
.source "ChatMessage.java"


# static fields
.field public static final MESSAGE_ACCOUNT_URI_COLUMN:I = 0x1a

.field public static final MESSAGE_ALWAYS_SHOW_IMAGES_COLUMN:I = 0x13

.field public static final MESSAGE_APPEND_REF_MESSAGE_CONTENT_COLUMN:I = 0xf

.field public static final MESSAGE_ATTACHMENTS_COLUMN:I = 0x18

.field public static final MESSAGE_ATTACHMENT_LIST_URI_COLUMN:I = 0x11

.field public static final MESSAGE_BCC_COLUMN:I = 0x9

.field public static final MESSAGE_BODY_SIZE:I = 0x27

.field public static final MESSAGE_CC_COLUMN:I = 0x8

.field public static final MESSAGE_CONVERSATION_URI_COLUMN:I = 0x3

.field public static final MESSAGE_CUSTOM_FROM_ADDRESS_COLUMN:I = 0x19

.field public static final MESSAGE_DATE_RECEIVED_MS_COLUMN:I = 0xb

.field public static final MESSAGE_DRAFT_TYPE_COLUMN:I = 0xe

.field public static final MESSAGE_EMBEDS_EXTERNAL_RESOURCES_COLUMN:I = 0xc

.field public static final MESSAGE_EVENT_INTENT_COLUMN:I = 0x1b

.field public static final MESSAGE_FLAGS_COLUMN:I = 0x12

.field public static final MESSAGE_FLAG_CALC_BODY:I = 0x21

.field public static final MESSAGE_FLAG_LOADED:I = 0x24

.field public static final MESSAGE_FROM_COLUMN:I = 0x6

.field public static final MESSAGE_HAS_ATTACHMENTS_COLUMN:I = 0x10

.field public static final MESSAGE_ID_COLUMN:I = 0x0

.field public static final MESSAGE_IS_SENDING_COLUMN:I = 0x20

.field public static final MESSAGE_MAILBOX_KEY:I = 0x25

.field public static final MESSAGE_PROJECTION:[Ljava/lang/String;

.field public static final MESSAGE_QUOTE_INDEX:I = 0x22

.field public static final MESSAGE_READ_COLUMN:I = 0x14

.field public static final MESSAGE_REF_MESSAGE_URI_COLUMN:I = 0xd

.field public static final MESSAGE_REPLY_TO_COLUMN:I = 0xa

.field public static final MESSAGE_SEEN_COLUMN:I = 0x15

.field public static final MESSAGE_SERVER_ID_COLUMN:I = 0x1

.field public static final MESSAGE_SHORT_BODY:I = 0x23

.field public static final MESSAGE_SNIPPET_COLUMN:I = 0x5

.field public static final MESSAGE_SPAM_WARNING_LEVEL_COLUMN:I = 0x1d

.field public static final MESSAGE_SPAM_WARNING_LINK_TYPE_COLUMN:I = 0x1e

.field public static final MESSAGE_SPAM_WARNING_STRING_ID_COLUMN:I = 0x1c

.field public static final MESSAGE_STARRED_COLUMN:I = 0x16

.field public static final MESSAGE_SUBJECT_COLUMN:I = 0x4

.field public static final MESSAGE_TO_COLUMN:I = 0x7

.field public static final MESSAGE_URI_COLUMN:I = 0x2

.field public static final MESSAGE_VIA_DOMAIN_COLUMN:I = 0x1f

.field public static final QUOTED_TEXT_OFFSET_COLUMN:I = 0x17

.field public static final TURNCATED:I = 0x26


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 131
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "serverMessageId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "messageUri"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "conversationId"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "snippet"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "fromAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "toAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "ccAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "bccAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "replyToAddress"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "dateReceivedMs"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "bodyEmbedsExternalResources"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "refMessageId"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "draftType"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "appendRefMessageContent"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "hasAttachments"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "attachmentListUri"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "messageFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "alwaysShowImages"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "seen"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "starred"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "quotedTextStartPos"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "attachments"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "customFrom"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "messageAccountUri"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "eventIntentUri"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "spamWarningString"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "spamWarningLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "spamWarningLinkType"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "viaDomain"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "isSending"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "flagCalcBody"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "quoteIndex"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "shortBody"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "flagLoaded"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "turncated"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "messageSize"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/mail/chat/ChatMessage;->MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 67
    invoke-direct {p0}, Lcom/kingsoft/mail/providers/Message;-><init>()V

    .line 68
    if-eqz p1, :cond_2

    .line 69
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/kingsoft/mail/chat/ChatMessage;->id:J

    .line 70
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->serverId:Ljava/lang/String;

    .line 71
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "messageUriStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :goto_0
    iput-object v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->uri:Landroid/net/Uri;

    .line 73
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "convUriStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->conversationUri:Landroid/net/Uri;

    .line 75
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->subject:Ljava/lang/String;

    .line 76
    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->snippet:Ljava/lang/String;

    .line 77
    const/4 v5, 0x6

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->mFrom:Ljava/lang/String;

    .line 78
    const/4 v5, 0x7

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->mTo:Ljava/lang/String;

    .line 79
    const/16 v5, 0x8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->mCc:Ljava/lang/String;

    .line 80
    const/16 v5, 0x9

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->mBcc:Ljava/lang/String;

    .line 81
    const/16 v5, 0xa

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->mReplyTo:Ljava/lang/String;

    .line 82
    const/16 v5, 0xb

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/kingsoft/mail/chat/ChatMessage;->dateReceivedMs:J

    .line 85
    const/16 v5, 0xc

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v7

    :goto_2
    iput-boolean v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->embedsExternalResources:Z

    .line 87
    const/16 v5, 0xd

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "refMessageUriStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :goto_3
    iput-object v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->refMessageUri:Landroid/net/Uri;

    .line 91
    const/16 v5, 0xe

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->draftType:I

    .line 92
    const/16 v5, 0xf

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_7

    move v5, v7

    :goto_4
    iput-boolean v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->appendRefMessageContent:Z

    .line 94
    const/16 v5, 0x10

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_8

    move v5, v7

    :goto_5
    iput-boolean v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->hasAttachments:Z

    .line 95
    const/16 v5, 0x11

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "attachmentsUri":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->hasAttachments:Z

    if-eqz v5, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :goto_6
    iput-object v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->attachmentListUri:Landroid/net/Uri;

    .line 99
    const/16 v5, 0x12

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/kingsoft/mail/chat/ChatMessage;->messageFlags:J

    .line 100
    const/16 v5, 0x13

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_a

    move v5, v7

    :goto_7
    iput-boolean v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->alwaysShowImages:Z

    .line 101
    const/16 v5, 0x14

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_b

    move v5, v7

    :goto_8
    iput-boolean v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->read:Z

    .line 102
    const/16 v5, 0x15

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_c

    move v5, v7

    :goto_9
    iput-boolean v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->seen:Z

    .line 103
    const/16 v5, 0x16

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_d

    move v5, v7

    :goto_a
    iput-boolean v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->starred:Z

    .line 104
    const/16 v5, 0x17

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->quotedTextOffset:I

    .line 105
    const/16 v5, 0x18

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->attachmentsJson:Ljava/lang/String;

    .line 106
    iget-boolean v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->hasAttachments:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->attachmentsJson:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 107
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v5

    iget-wide v9, p0, Lcom/kingsoft/mail/chat/ChatMessage;->id:J

    invoke-virtual {p0, v5, v9, v10}, Lcom/kingsoft/mail/chat/ChatMessage;->getAchmentJson(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->attachmentsJson:Ljava/lang/String;

    .line 109
    :cond_0
    const/16 v5, 0x1a

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "accountUriString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :cond_1
    iput-object v6, p0, Lcom/kingsoft/mail/chat/ChatMessage;->accountUri:Landroid/net/Uri;

    .line 111
    const/16 v5, 0x1b

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->eventIntentUri:Landroid/net/Uri;

    .line 113
    const/16 v5, 0x1c

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->spamWarningString:Ljava/lang/String;

    .line 115
    const/16 v5, 0x1d

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->spamWarningLevel:I

    .line 116
    const/16 v5, 0x1e

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->spamLinkType:I

    .line 117
    const/16 v5, 0x1f

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->viaDomain:Ljava/lang/String;

    .line 118
    const/16 v5, 0x20

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_e

    move v5, v7

    :goto_b
    iput-boolean v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->isSending:Z

    .line 119
    const/16 v5, 0x21

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_f

    :goto_c
    iput-boolean v7, p0, Lcom/kingsoft/mail/chat/ChatMessage;->isBodyCalc:Z

    .line 120
    const/16 v5, 0x22

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->quoteIndex:J

    .line 121
    const/16 v5, 0x23

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->shortBody:Ljava/lang/String;

    .line 123
    const/16 v5, 0x24

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->flagLoaded:I

    .line 124
    const/16 v5, 0x25

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->mailBoxKey:J

    .line 126
    const/16 v5, 0x26

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->turncated:I

    .line 127
    const/16 v5, 0x27

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/kingsoft/mail/chat/ChatMessage;->messageSize:I

    .line 129
    .end local v0    # "accountUriString":Ljava/lang/String;
    .end local v1    # "attachmentsUri":Ljava/lang/String;
    .end local v2    # "convUriStr":Ljava/lang/String;
    .end local v3    # "messageUriStr":Ljava/lang/String;
    .end local v4    # "refMessageUriStr":Ljava/lang/String;
    :cond_2
    return-void

    .restart local v3    # "messageUriStr":Ljava/lang/String;
    :cond_3
    move-object v5, v6

    .line 72
    goto/16 :goto_0

    .restart local v2    # "convUriStr":Ljava/lang/String;
    :cond_4
    move-object v5, v6

    .line 74
    goto/16 :goto_1

    :cond_5
    move v5, v8

    .line 85
    goto/16 :goto_2

    .restart local v4    # "refMessageUriStr":Ljava/lang/String;
    :cond_6
    move-object v5, v6

    .line 89
    goto/16 :goto_3

    :cond_7
    move v5, v8

    .line 92
    goto/16 :goto_4

    :cond_8
    move v5, v8

    .line 94
    goto/16 :goto_5

    .restart local v1    # "attachmentsUri":Ljava/lang/String;
    :cond_9
    move-object v5, v6

    .line 97
    goto/16 :goto_6

    :cond_a
    move v5, v8

    .line 100
    goto/16 :goto_7

    :cond_b
    move v5, v8

    .line 101
    goto/16 :goto_8

    :cond_c
    move v5, v8

    .line 102
    goto/16 :goto_9

    :cond_d
    move v5, v8

    .line 103
    goto/16 :goto_a

    .restart local v0    # "accountUriString":Ljava/lang/String;
    :cond_e
    move v5, v8

    .line 118
    goto :goto_b

    :cond_f
    move v7, v8

    .line 119
    goto :goto_c
.end method
