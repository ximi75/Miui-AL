.class public Lcom/kingsoft/mail/providers/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/kingsoft/mail/ui/HtmlMessage;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingsoft/mail/providers/Message;",
            ">;"
        }
    .end annotation
.end field

.field private static INLINE_IMAGE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public accountUri:Landroid/net/Uri;

.field public alwaysShowImages:Z

.field public appendRefMessageContent:Z

.field public attachmentListUri:Landroid/net/Uri;

.field public attachmentsJson:Ljava/lang/String;

.field public bodyHtml:Ljava/lang/String;

.field public bodyText:Ljava/lang/String;

.field public conversationUri:Landroid/net/Uri;

.field public dateReceivedMs:J

.field public draftType:I

.field public embedsExternalResources:Z

.field public eventIntentUri:Landroid/net/Uri;

.field public flagLoaded:I

.field public hasAttachments:Z

.field public id:J

.field public isBodyCalc:Z

.field public isSending:Z

.field private transient mAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public mBcc:Ljava/lang/String;

.field private transient mBccAddresses:[Ljava/lang/String;

.field public mCc:Ljava/lang/String;

.field private transient mCcAddresses:[Ljava/lang/String;

.field public mFrom:Ljava/lang/String;

.field private transient mFromAddresses:[Ljava/lang/String;

.field public mReplyTo:Ljava/lang/String;

.field private transient mReplyToAddresses:[Ljava/lang/String;

.field public mTo:Ljava/lang/String;

.field private transient mToAddresses:[Ljava/lang/String;

.field public mailBoxKey:J

.field public messageFlags:J

.field public messageSize:I

.field public quoteIndex:J

.field public quotedTextOffset:I

.field public read:Z

.field public refMessageUri:Landroid/net/Uri;

.field public seen:Z

.field public serverId:Ljava/lang/String;

.field public shortBody:Ljava/lang/String;

.field public snippet:Ljava/lang/String;

.field public spamLinkType:I

.field public spamWarningLevel:I

.field public spamWarningString:Ljava/lang/String;

.field public starred:Z

.field public subject:Ljava/lang/String;

.field public turncated:I

.field public uri:Landroid/net/Uri;

.field public viaDomain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v0, "<img\\s+[^>]*src="

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/Message;->INLINE_IMAGE_PATTERN:Ljava/util/regex/Pattern;

    .line 375
    new-instance v0, Lcom/kingsoft/mail/providers/Message$1;

    invoke-direct {v0}, Lcom/kingsoft/mail/providers/Message$1;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/providers/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mFromAddresses:[Ljava/lang/String;

    .line 238
    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mToAddresses:[Ljava/lang/String;

    .line 239
    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mCcAddresses:[Ljava/lang/String;

    .line 240
    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mBccAddresses:[Ljava/lang/String;

    .line 241
    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mReplyToAddresses:[Ljava/lang/String;

    .line 243
    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mAttachments:Ljava/util/List;

    .line 350
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kingsoft/emailcommon/internet/MimeMessage;Landroid/net/Uri;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mimeMessage"    # Lcom/kingsoft/emailcommon/internet/MimeMessage;
    .param p3, "emlFileUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Message;->mFromAddresses:[Ljava/lang/String;

    .line 238
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Message;->mToAddresses:[Ljava/lang/String;

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Message;->mCcAddresses:[Ljava/lang/String;

    .line 240
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Message;->mBccAddresses:[Ljava/lang/String;

    .line 241
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Message;->mReplyToAddresses:[Ljava/lang/String;

    .line 243
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Message;->mAttachments:Ljava/util/List;

    .line 485
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getFrom()[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/emailcommon/mail/Address;->pack([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/providers/Message;->setFrom(Ljava/lang/String;)V

    .line 486
    sget-object v1, Lcom/kingsoft/emailcommon/mail/Message$RecipientType;->TO:Lcom/kingsoft/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getRecipients(Lcom/kingsoft/emailcommon/mail/Message$RecipientType;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/emailcommon/mail/Address;->pack([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/providers/Message;->setTo(Ljava/lang/String;)V

    .line 488
    sget-object v1, Lcom/kingsoft/emailcommon/mail/Message$RecipientType;->CC:Lcom/kingsoft/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getRecipients(Lcom/kingsoft/emailcommon/mail/Message$RecipientType;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/emailcommon/mail/Address;->pack([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/providers/Message;->setCc(Ljava/lang/String;)V

    .line 490
    sget-object v1, Lcom/kingsoft/emailcommon/mail/Message$RecipientType;->BCC:Lcom/kingsoft/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getRecipients(Lcom/kingsoft/emailcommon/mail/Message$RecipientType;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/emailcommon/mail/Address;->pack([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/providers/Message;->setBcc(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getReplyTo()[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/emailcommon/mail/Address;->pack([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/providers/Message;->setReplyTo(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getSubject()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Message;->subject:Ljava/lang/String;

    .line 494
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getSentDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 495
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getSentDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/kingsoft/mail/providers/Message;->dateReceivedMs:J

    .line 499
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Message;->alwaysShowImages:Z

    .line 500
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Message;->viaDomain:Ljava/lang/String;

    .line 501
    const/4 v1, 0x0

    iput v1, p0, Lcom/kingsoft/mail/providers/Message;->draftType:I

    .line 502
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Message;->isSending:Z

    .line 503
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Message;->starred:Z

    .line 504
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Message;->spamWarningString:Ljava/lang/String;

    .line 505
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/kingsoft/mail/providers/Message;->messageFlags:J

    .line 506
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Message;->hasAttachments:Z

    .line 510
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v12, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v7, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    move-object/from16 v0, p2

    invoke-static {v0, v12, v7}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->collectParts(Lcom/kingsoft/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 514
    iget-object v1, p0, Lcom/kingsoft/mail/providers/Message;->mFrom:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Message;->subject:Ljava/lang/String;

    const-wide/16 v13, -0x1

    invoke-static {v12, v1, v2, v13, v14}, Lcom/kingsoft/emailcommon/utility/ConversionUtilities;->parseBodyFields(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;

    move-result-object v8

    .line 517
    .local v8, "data":Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;
    iget-object v1, v8, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->snippet:Ljava/lang/String;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Message;->snippet:Ljava/lang/String;

    .line 518
    iget-object v1, v8, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->textContent:Ljava/lang/String;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Message;->bodyText:Ljava/lang/String;

    .line 519
    iget-object v1, v8, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->htmlContent:Ljava/lang/String;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    .line 522
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Message;->mAttachments:Ljava/util/List;

    .line 524
    const/4 v10, 0x0

    .line 525
    .local v10, "partId":I
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    move-result-object v5

    .line 526
    .local v5, "messageId":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/emailcommon/mail/Part;

    .line 527
    .local v3, "attachmentPart":Lcom/kingsoft/emailcommon/mail/Part;
    iget-object v13, p0, Lcom/kingsoft/mail/providers/Message;->mAttachments:Ljava/util/List;

    new-instance v1, Lcom/kingsoft/mail/providers/Attachment;

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "partId":I
    .local v11, "partId":I
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/kingsoft/mail/providers/Attachment;-><init>(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/Part;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v10, v11

    .line 529
    .end local v11    # "partId":I
    .restart local v10    # "partId":I
    goto :goto_0

    .line 531
    .end local v3    # "attachmentPart":Lcom/kingsoft/emailcommon/mail/Part;
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/providers/Message;->mAttachments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Message;->hasAttachments:Z

    .line 533
    iget-boolean v1, p0, Lcom/kingsoft/mail/providers/Message;->hasAttachments:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/kingsoft/mail/providers/EmlAttachmentProvider;->getAttachmentsListUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    .line 535
    return-void

    .line 531
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 533
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object v6, p0, Lcom/kingsoft/mail/providers/Message;->mFromAddresses:[Ljava/lang/String;

    .line 238
    iput-object v6, p0, Lcom/kingsoft/mail/providers/Message;->mToAddresses:[Ljava/lang/String;

    .line 239
    iput-object v6, p0, Lcom/kingsoft/mail/providers/Message;->mCcAddresses:[Ljava/lang/String;

    .line 240
    iput-object v6, p0, Lcom/kingsoft/mail/providers/Message;->mBccAddresses:[Ljava/lang/String;

    .line 241
    iput-object v6, p0, Lcom/kingsoft/mail/providers/Message;->mReplyToAddresses:[Ljava/lang/String;

    .line 243
    iput-object v6, p0, Lcom/kingsoft/mail/providers/Message;->mAttachments:Ljava/util/List;

    .line 390
    if-eqz p1, :cond_2

    .line 391
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/kingsoft/mail/providers/Message;->id:J

    .line 392
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->serverId:Ljava/lang/String;

    .line 393
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "messageUriStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :goto_0
    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    .line 395
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "convUriStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->conversationUri:Landroid/net/Uri;

    .line 397
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->subject:Ljava/lang/String;

    .line 398
    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->snippet:Ljava/lang/String;

    .line 399
    const/4 v5, 0x6

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->mFrom:Ljava/lang/String;

    .line 400
    const/4 v5, 0x7

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->mTo:Ljava/lang/String;

    .line 401
    const/16 v5, 0x8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->mCc:Ljava/lang/String;

    .line 402
    const/16 v5, 0x9

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->mBcc:Ljava/lang/String;

    .line 403
    const/16 v5, 0xa

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->mReplyTo:Ljava/lang/String;

    .line 404
    const/16 v5, 0xb

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/kingsoft/mail/providers/Message;->dateReceivedMs:J

    .line 405
    const/16 v5, 0xc

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    .line 406
    const/16 v5, 0xd

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->bodyText:Ljava/lang/String;

    .line 407
    const/16 v5, 0xe

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v7

    :goto_2
    iput-boolean v5, p0, Lcom/kingsoft/mail/providers/Message;->embedsExternalResources:Z

    .line 409
    const/16 v5, 0xf

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 411
    .local v4, "refMessageUriStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :goto_3
    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->refMessageUri:Landroid/net/Uri;

    .line 413
    const/16 v5, 0x10

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/kingsoft/mail/providers/Message;->draftType:I

    .line 414
    const/16 v5, 0x11

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_7

    move v5, v7

    :goto_4
    iput-boolean v5, p0, Lcom/kingsoft/mail/providers/Message;->appendRefMessageContent:Z

    .line 416
    const/16 v5, 0x12

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_8

    move v5, v7

    :goto_5
    iput-boolean v5, p0, Lcom/kingsoft/mail/providers/Message;->hasAttachments:Z

    .line 417
    const/16 v5, 0x13

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "attachmentsUri":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/kingsoft/mail/providers/Message;->hasAttachments:Z

    if-eqz v5, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :goto_6
    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    .line 421
    const/16 v5, 0x14

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/kingsoft/mail/providers/Message;->messageFlags:J

    .line 422
    const/16 v5, 0x15

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_a

    move v5, v7

    :goto_7
    iput-boolean v5, p0, Lcom/kingsoft/mail/providers/Message;->alwaysShowImages:Z

    .line 423
    const/16 v5, 0x16

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_b

    move v5, v7

    :goto_8
    iput-boolean v5, p0, Lcom/kingsoft/mail/providers/Message;->read:Z

    .line 424
    const/16 v5, 0x17

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_c

    move v5, v7

    :goto_9
    iput-boolean v5, p0, Lcom/kingsoft/mail/providers/Message;->seen:Z

    .line 425
    const/16 v5, 0x18

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_d

    move v5, v7

    :goto_a
    iput-boolean v5, p0, Lcom/kingsoft/mail/providers/Message;->starred:Z

    .line 426
    const/16 v5, 0x19

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/kingsoft/mail/providers/Message;->quotedTextOffset:I

    .line 427
    const/16 v5, 0x1a

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->attachmentsJson:Ljava/lang/String;

    .line 428
    iget-boolean v5, p0, Lcom/kingsoft/mail/providers/Message;->hasAttachments:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/kingsoft/mail/providers/Message;->attachmentsJson:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 429
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v5

    iget-wide v9, p0, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-virtual {p0, v5, v9, v10}, Lcom/kingsoft/mail/providers/Message;->getAchmentJson(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->attachmentsJson:Ljava/lang/String;

    .line 431
    :cond_0
    const/16 v5, 0x1c

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "accountUriString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :cond_1
    iput-object v6, p0, Lcom/kingsoft/mail/providers/Message;->accountUri:Landroid/net/Uri;

    .line 433
    const/16 v5, 0x1d

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->eventIntentUri:Landroid/net/Uri;

    .line 435
    const/16 v5, 0x1e

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->spamWarningString:Ljava/lang/String;

    .line 437
    const/16 v5, 0x1f

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/kingsoft/mail/providers/Message;->spamWarningLevel:I

    .line 438
    const/16 v5, 0x20

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/kingsoft/mail/providers/Message;->spamLinkType:I

    .line 439
    const/16 v5, 0x21

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->viaDomain:Ljava/lang/String;

    .line 440
    const/16 v5, 0x22

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_e

    move v5, v7

    :goto_b
    iput-boolean v5, p0, Lcom/kingsoft/mail/providers/Message;->isSending:Z

    .line 441
    const/16 v5, 0x23

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_f

    :goto_c
    iput-boolean v7, p0, Lcom/kingsoft/mail/providers/Message;->isBodyCalc:Z

    .line 442
    const/16 v5, 0x24

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/kingsoft/mail/providers/Message;->quoteIndex:J

    .line 443
    const/16 v5, 0x25

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->shortBody:Ljava/lang/String;

    .line 445
    const/16 v5, 0x26

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/kingsoft/mail/providers/Message;->flagLoaded:I

    .line 446
    const/16 v5, 0x27

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/kingsoft/mail/providers/Message;->mailBoxKey:J

    .line 448
    const/16 v5, 0x28

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/kingsoft/mail/providers/Message;->turncated:I

    .line 449
    const/16 v5, 0x29

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/kingsoft/mail/providers/Message;->messageSize:I

    .line 451
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

    .line 394
    goto/16 :goto_0

    .restart local v2    # "convUriStr":Ljava/lang/String;
    :cond_4
    move-object v5, v6

    .line 396
    goto/16 :goto_1

    :cond_5
    move v5, v8

    .line 407
    goto/16 :goto_2

    .restart local v4    # "refMessageUriStr":Ljava/lang/String;
    :cond_6
    move-object v5, v6

    .line 411
    goto/16 :goto_3

    :cond_7
    move v5, v8

    .line 414
    goto/16 :goto_4

    :cond_8
    move v5, v8

    .line 416
    goto/16 :goto_5

    .restart local v1    # "attachmentsUri":Ljava/lang/String;
    :cond_9
    move-object v5, v6

    .line 419
    goto/16 :goto_6

    :cond_a
    move v5, v8

    .line 422
    goto/16 :goto_7

    :cond_b
    move v5, v8

    .line 423
    goto/16 :goto_8

    :cond_c
    move v5, v8

    .line 424
    goto/16 :goto_9

    :cond_d
    move v5, v8

    .line 425
    goto/16 :goto_a

    .restart local v0    # "accountUriString":Ljava/lang/String;
    :cond_e
    move v5, v8

    .line 440
    goto :goto_b

    :cond_f
    move v7, v8

    .line 441
    goto :goto_c
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->mFromAddresses:[Ljava/lang/String;

    .line 238
    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->mToAddresses:[Ljava/lang/String;

    .line 239
    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->mCcAddresses:[Ljava/lang/String;

    .line 240
    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->mBccAddresses:[Ljava/lang/String;

    .line 241
    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->mReplyToAddresses:[Ljava/lang/String;

    .line 243
    iput-object v5, p0, Lcom/kingsoft/mail/providers/Message;->mAttachments:Ljava/util/List;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/kingsoft/mail/providers/Message;->id:J

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->serverId:Ljava/lang/String;

    .line 308
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    .line 309
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->conversationUri:Landroid/net/Uri;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->subject:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->snippet:Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mFrom:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mTo:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mCc:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mBcc:Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mReplyTo:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/kingsoft/mail/providers/Message;->dateReceivedMs:J

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->bodyText:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Message;->embedsExternalResources:Z

    .line 321
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->refMessageUri:Landroid/net/Uri;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Message;->draftType:I

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Message;->appendRefMessageContent:Z

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Message;->hasAttachments:Z

    .line 325
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/kingsoft/mail/providers/Message;->messageFlags:J

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Message;->alwaysShowImages:Z

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Message;->quotedTextOffset:I

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->attachmentsJson:Ljava/lang/String;

    .line 330
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->accountUri:Landroid/net/Uri;

    .line 331
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->eventIntentUri:Landroid/net/Uri;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->spamWarningString:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Message;->spamWarningLevel:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Message;->spamLinkType:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->viaDomain:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/Message;->isSending:Z

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Message;->isBodyCalc:Z

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/mail/providers/Message;->quoteIndex:J

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->shortBody:Ljava/lang/String;

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Message;->flagLoaded:I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/mail/providers/Message;->mailBoxKey:J

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Message;->turncated:I

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/providers/Message;->messageSize:I

    .line 346
    return-void

    :cond_0
    move v0, v2

    .line 320
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 323
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 324
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 327
    goto :goto_3

    :cond_4
    move v0, v2

    .line 336
    goto :goto_4

    :cond_5
    move v1, v2

    .line 337
    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kingsoft/mail/providers/Message$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/kingsoft/mail/providers/Message$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/providers/Message;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static shouldShowImagePrompt(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bodyHtml"    # Ljava/lang/String;

    .prologue
    .line 740
    invoke-static {p0}, Lcom/kingsoft/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "<img[^>]*src=\"cid(?-i):([^\"]*)\""

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 747
    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static tokenizeAddresses(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "addresses"    # Ljava/lang/String;

    .prologue
    .line 688
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 689
    const/4 v3, 0x0

    new-array v1, v3, [Ljava/lang/String;

    .line 697
    :cond_0
    return-object v1

    .line 692
    :cond_1
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 693
    .local v2, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v3, v2

    new-array v1, v3, [Ljava/lang/String;

    .line 694
    .local v1, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 695
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 694
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static tokenizeAddressesEMailAndName(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "addresses"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "addressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 368
    :goto_0
    return-void

    .line 357
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 358
    .local v2, "set":Ljava/util/Set;
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 359
    .local v3, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 360
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "address":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 363
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 367
    .end local v0    # "address":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method

.method private static unescapeAddresses([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "escaped"    # [Ljava/lang/String;

    .prologue
    .line 679
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/String;

    .line 680
    .local v2, "unescaped":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 681
    aget-object v3, p0, v1

    const-string/jumbo v4, "<"

    const-string/jumbo v5, "&lt;"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ">"

    const-string/jumbo v5, "&gt;"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "escapeMore":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 684
    .end local v0    # "escapeMore":Ljava/lang/String;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public embedsExternalResources()Z
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Message;->embedsExternalResources:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 252
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/kingsoft/mail/providers/Message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    check-cast p1, Lcom/kingsoft/mail/providers/Message;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAchmentJson(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageId"    # J

    .prologue
    .line 455
    const/4 v2, 0x0

    .line 456
    .local v2, "attachmentJson":Ljava/lang/String;
    invoke-static {p1, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    .line 458
    .local v3, "atts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v3, :cond_2

    array-length v8, v3

    if-lez v8, :cond_2

    .line 459
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v7, "uiAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Attachment;>;"
    move-object v0, v3

    .local v0, "arr$":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 461
    .local v1, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    new-instance v6, Lcom/kingsoft/mail/providers/Attachment;

    invoke-direct {v6}, Lcom/kingsoft/mail/providers/Attachment;-><init>()V

    .line 462
    .local v6, "uiAtt":Lcom/kingsoft/mail/providers/Attachment;
    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/kingsoft/mail/providers/Attachment;->setName(Ljava/lang/String;)Z

    .line 463
    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/kingsoft/mail/providers/Attachment;->setContentType(Ljava/lang/String;)V

    .line 464
    iget-wide v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v8, v8

    iput v8, v6, Lcom/kingsoft/mail/providers/Attachment;->size:I

    .line 465
    const-string/jumbo v8, "uiattachment"

    iget-wide v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v8, v9, v10}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v6, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 466
    iget v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    iput v8, v6, Lcom/kingsoft/mail/providers/Attachment;->flags:I

    .line 467
    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    iput-object v8, v6, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    .line 468
    iget v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    iput v8, v6, Lcom/kingsoft/mail/providers/Attachment;->state:I

    .line 469
    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    iput-object v8, v6, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    .line 470
    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    :goto_1
    iput-object v8, v6, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 471
    iget v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    iput v8, v6, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    .line 472
    iget v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDownloadedSize:I

    iput v8, v6, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    .line 473
    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->iDownloadFailureReason:Ljava/lang/Integer;

    iput-object v8, v6, Lcom/kingsoft/mail/providers/Attachment;->iDownloadFailureReason:Ljava/lang/Integer;

    .line 474
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 470
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 476
    .end local v1    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v6    # "uiAtt":Lcom/kingsoft/mail/providers/Attachment;
    :cond_1
    invoke-static {v7}, Lcom/kingsoft/mail/providers/Attachment;->toJSONArray(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    .line 479
    .end local v0    # "arr$":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "uiAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Attachment;>;"
    :cond_2
    return-object v2
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 701
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mAttachments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->attachmentsJson:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->attachmentsJson:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Attachment;->fromJSONArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mAttachments:Ljava/util/List;

    .line 708
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mAttachments:Ljava/util/List;

    return-object v0

    .line 705
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mAttachments:Ljava/util/List;

    goto :goto_0
.end method

.method public getBcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mBcc:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getBccAddresses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mBccAddresses:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mBcc:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Message;->tokenizeAddresses(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mBccAddresses:[Ljava/lang/String;

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mBccAddresses:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBccAddressesUnescaped()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Message;->getBccAddresses()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Message;->unescapeAddresses([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodyAsHtml()Ljava/lang/String;
    .locals 3

    .prologue
    .line 774
    const-string/jumbo v0, ""

    .line 775
    .local v0, "body":Ljava/lang/String;
    iget-object v2, p0, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 776
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    .line 784
    :cond_0
    :goto_0
    return-object v0

    .line 777
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/providers/Message;->bodyText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 778
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Message;->bodyText:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 780
    .local v1, "spannable":Landroid/text/SpannableString;
    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 782
    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mCc:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getCcAddresses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mCcAddresses:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mCc:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Message;->tokenizeAddresses(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mCcAddresses:[Ljava/lang/String;

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mCcAddresses:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCcAddressesUnescaped()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Message;->getCcAddresses()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Message;->unescapeAddresses([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mFrom:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getFromAddresses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mFromAddresses:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mFrom:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Message;->tokenizeAddresses(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mFromAddresses:[Ljava/lang/String;

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mFromAddresses:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFromAddressesUnescaped()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Message;->getFromAddresses()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Message;->unescapeAddresses([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 789
    iget-wide v0, p0, Lcom/kingsoft/mail/providers/Message;->id:J

    return-wide v0
.end method

.method public getQuoteIndex()J
    .locals 2

    .prologue
    .line 638
    iget-wide v0, p0, Lcom/kingsoft/mail/providers/Message;->quoteIndex:J

    return-wide v0
.end method

.method public getRegularAttachments()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Message;->getAttachments()Ljava/util/List;

    move-result-object v0

    .line 714
    .local v0, "allAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 715
    .local v2, "deleteList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kingsoft/mail/providers/Attachment;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 716
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Attachment;

    .line 717
    .local v1, "attachment":Lcom/kingsoft/mail/providers/Attachment;
    iget-object v4, v1, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 718
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 721
    .end local v1    # "attachment":Lcom/kingsoft/mail/providers/Attachment;
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 722
    return-object v0
.end method

.method public getReplyTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mReplyTo:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getReplyToAddresses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mReplyToAddresses:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Message;->tokenizeAddresses(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mReplyToAddresses:[Ljava/lang/String;

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mReplyToAddresses:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 668
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReplyToAddressesUnescaped()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Message;->getReplyToAddresses()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Message;->unescapeAddresses([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mTo:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getToAddresses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mToAddresses:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Message;->tokenizeAddresses(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mToAddresses:[Ljava/lang/String;

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mToAddresses:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getToAddressesUnescaped()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Message;->getToAddresses()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Message;->unescapeAddresses([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isBodyCalc()Z
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Message;->isBodyCalc:Z

    return v0
.end method

.method public isFlaggedCalendarInvite()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x10

    .line 548
    iget-wide v0, p0, Lcom/kingsoft/mail/providers/Message;->messageFlags:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlaggedCalendarInviteIncoming()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 552
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Message;->isFlaggedCalendarInvite()Z

    move-result v1

    .line 553
    .local v1, "isInvite":Z
    if-eqz v1, :cond_0

    .line 554
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/email/EmailApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/kingsoft/mail/providers/Message;->mailBoxKey:J

    invoke-static {v3, v4, v5}, Lcom/kingsoft/email/provider/EmailProvider;->getFolder(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    .line 555
    .local v0, "folder":Lcom/kingsoft/mail/providers/Folder;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Folder;->isSent()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 557
    .end local v0    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_0
    return v2
.end method

.method public isFlaggedForwarded()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x8

    .line 543
    iget-wide v0, p0, Lcom/kingsoft/mail/providers/Message;->messageFlags:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlaggedReplied()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x4

    .line 538
    iget-wide v0, p0, Lcom/kingsoft/mail/providers/Message;->messageFlags:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markAlwaysShowImages(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;)V
    .locals 7
    .param p1, "handler"    # Landroid/content/AsyncQueryHandler;
    .param p2, "token"    # I
    .param p3, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 764
    iput-boolean v1, p0, Lcom/kingsoft/mail/providers/Message;->alwaysShowImages:Z

    .line 766
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 767
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "alwaysShowImages"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 769
    iget-object v3, p0, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    move-object v0, p1

    move v1, p2

    move-object v2, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public declared-synchronized setBcc(Ljava/lang/String;)V
    .locals 1
    .param p1, "bcc"    # Ljava/lang/String;

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Message;->mBcc:Ljava/lang/String;

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mBccAddresses:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    monitor-exit p0

    return-void

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBodyCalc(Z)V
    .locals 0
    .param p1, "isBodyCalc"    # Z

    .prologue
    .line 634
    iput-boolean p1, p0, Lcom/kingsoft/mail/providers/Message;->isBodyCalc:Z

    .line 635
    return-void
.end method

.method public declared-synchronized setCc(Ljava/lang/String;)V
    .locals 1
    .param p1, "cc"    # Ljava/lang/String;

    .prologue
    .line 584
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Message;->mCc:Ljava/lang/String;

    .line 585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mCcAddresses:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    monitor-exit p0

    return-void

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFrom(Ljava/lang/String;)V
    .locals 1
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 566
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Message;->mFrom:Ljava/lang/String;

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mFromAddresses:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    monitor-exit p0

    return-void

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setQuoteIndex(J)V
    .locals 0
    .param p1, "quoteIndex"    # J

    .prologue
    .line 642
    iput-wide p1, p0, Lcom/kingsoft/mail/providers/Message;->quoteIndex:J

    .line 643
    return-void
.end method

.method public declared-synchronized setReplyTo(Ljava/lang/String;)V
    .locals 1
    .param p1, "replyTo"    # Ljava/lang/String;

    .prologue
    .line 602
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Message;->mReplyTo:Ljava/lang/String;

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mReplyToAddresses:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    monitor-exit p0

    return-void

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTo(Ljava/lang/String;)V
    .locals 1
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Message;->mTo:Ljava/lang/String;

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mToAddresses:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    monitor-exit p0

    return-void

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[message id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 263
    iget-wide v3, p0, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 264
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->serverId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 266
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->conversationUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 267
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->snippet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mFrom:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mTo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mCc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mBcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->mReplyTo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-wide v3, p0, Lcom/kingsoft/mail/providers/Message;->dateReceivedMs:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 275
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->bodyText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Message;->embedsExternalResources:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->refMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 279
    iget v0, p0, Lcom/kingsoft/mail/providers/Message;->draftType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Message;->appendRefMessageContent:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Message;->hasAttachments:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 283
    iget-wide v3, p0, Lcom/kingsoft/mail/providers/Message;->messageFlags:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 284
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Message;->alwaysShowImages:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget v0, p0, Lcom/kingsoft/mail/providers/Message;->quotedTextOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->attachmentsJson:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->accountUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 288
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->eventIntentUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 289
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->spamWarningString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget v0, p0, Lcom/kingsoft/mail/providers/Message;->spamWarningLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget v0, p0, Lcom/kingsoft/mail/providers/Message;->spamLinkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->viaDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Message;->isSending:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-boolean v0, p0, Lcom/kingsoft/mail/providers/Message;->isBodyCalc:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-wide v0, p0, Lcom/kingsoft/mail/providers/Message;->quoteIndex:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 296
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Message;->shortBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget v0, p0, Lcom/kingsoft/mail/providers/Message;->flagLoaded:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-wide v0, p0, Lcom/kingsoft/mail/providers/Message;->mailBoxKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 301
    iget v0, p0, Lcom/kingsoft/mail/providers/Message;->turncated:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget v0, p0, Lcom/kingsoft/mail/providers/Message;->messageSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    return-void

    :cond_0
    move v0, v2

    .line 277
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 280
    goto :goto_1

    :cond_2
    move v0, v2

    .line 281
    goto :goto_2

    :cond_3
    move v0, v2

    .line 284
    goto :goto_3

    :cond_4
    move v0, v2

    .line 293
    goto :goto_4

    :cond_5
    move v1, v2

    .line 294
    goto :goto_5
.end method
