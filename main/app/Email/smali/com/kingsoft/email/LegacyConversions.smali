.class public Lcom/kingsoft/email/LegacyConversions;
.super Ljava/lang/Object;
.source "LegacyConversions.java"


# static fields
.field static final BODY_QUOTED_PART_FORWARD:Ljava/lang/String; = "quoted-forward"

.field static final BODY_QUOTED_PART_INTRO:Ljava/lang/String; = "quoted-intro"

.field static final BODY_QUOTED_PART_REPLY:Ljava/lang/String; = "quoted-reply"

.field private static final DEBUG_ATTACHMENTS:Z

.field private static final sServerMailboxNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingsoft/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOneAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/emailcommon/mail/Part;I)V
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localMessage"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p2, "part"    # Lcom/kingsoft/emailcommon/mail/Part;
    .param p3, "partPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    new-instance v17, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct/range {v17 .. v17}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 539
    .local v17, "localAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-interface/range {p2 .. p2}, Lcom/kingsoft/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 540
    .local v13, "contentType":Ljava/lang/String;
    const-string/jumbo v3, "name"

    invoke-static {v13, v3}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 541
    .local v19, "name":Ljava/lang/String;
    if-nez v19, :cond_0

    .line 542
    invoke-interface/range {p2 .. p2}, Lcom/kingsoft/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 543
    .local v11, "contentDisposition":Ljava/lang/String;
    const-string/jumbo v3, "filename"

    invoke-static {v11, v3}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 545
    invoke-static/range {v19 .. v19}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getFileNameUnknown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 548
    .end local v11    # "contentDisposition":Ljava/lang/String;
    :cond_0
    const-wide/16 v23, 0x0

    .line 549
    .local v23, "size":J
    invoke-interface/range {p2 .. p2}, Lcom/kingsoft/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v16

    .line 550
    .local v16, "disposition":Ljava/lang/String;
    if-eqz v16, :cond_1

    .line 551
    const-string/jumbo v3, "size"

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 552
    .local v22, "s":Ljava/lang/String;
    if-eqz v22, :cond_1

    .line 553
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    .line 559
    new-instance v10, Ljava/math/BigDecimal;

    move-wide/from16 v0, v23

    invoke-direct {v10, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    .line 560
    .local v10, "bigDecimal":Ljava/math/BigDecimal;
    invoke-virtual {v10}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v23

    .line 566
    .end local v10    # "bigDecimal":Ljava/math/BigDecimal;
    .end local v22    # "s":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/kingsoft/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 567
    .local v21, "partIds":[Ljava/lang/String;
    if-eqz v21, :cond_8

    const/4 v3, 0x0

    aget-object v20, v21, v3

    .line 568
    .local v20, "partId":Ljava/lang/String;
    :goto_0
    if-nez v20, :cond_2

    .line 569
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .line 574
    :cond_2
    invoke-interface/range {p2 .. p2}, Lcom/kingsoft/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 575
    .local v18, "mimeType":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 576
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 577
    move-wide/from16 v0, v23

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 578
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 579
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->setContentUri(Ljava/lang/String;)V

    .line 580
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-object/from16 v0, v17

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 581
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 583
    const-string/jumbo v3, "Content-Transfer-Encoding"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/kingsoft/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 584
    .local v12, "contentTransferEncoding":[Ljava/lang/String;
    if-eqz v12, :cond_9

    array-length v3, v12

    if-lez v3, :cond_9

    .line 585
    const/4 v3, 0x0

    aget-object v3, v12, v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 590
    :goto_1
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, v17

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 601
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 602
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 604
    .local v14, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 605
    .local v9, "attachmentFoundInDb":Z
    if-eqz v14, :cond_5

    .line 607
    :cond_3
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 608
    new-instance v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v15}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 609
    .local v15, "dbAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {v15, v14}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)V

    .line 612
    iget-object v3, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/kingsoft/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 613
    iget-object v3, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/kingsoft/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 614
    iget-object v3, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/kingsoft/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 615
    iget-object v3, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/kingsoft/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 617
    const/4 v9, 0x1

    .line 618
    iget-wide v5, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    move-object/from16 v0, v17

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    .end local v15    # "dbAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 630
    :cond_5
    if-nez v9, :cond_6

    .line 631
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 634
    :cond_6
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2, v5, v6}, Lcom/kingsoft/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V

    .line 635
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    .line 636
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 638
    :cond_7
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 640
    return-void

    .line 567
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v9    # "attachmentFoundInDb":Z
    .end local v12    # "contentTransferEncoding":[Ljava/lang/String;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v18    # "mimeType":Ljava/lang/String;
    .end local v20    # "partId":Ljava/lang/String;
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 588
    .restart local v12    # "contentTransferEncoding":[Ljava/lang/String;
    .restart local v18    # "mimeType":Ljava/lang/String;
    .restart local v20    # "partId":Ljava/lang/String;
    :cond_9
    const-string/jumbo v3, "B"

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 625
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v9    # "attachmentFoundInDb":Z
    .restart local v14    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public static addOneAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/emailcommon/mail/Part;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localMessage"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p2, "part"    # Lcom/kingsoft/emailcommon/mail/Part;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "contentUri"    # Ljava/lang/String;
    .param p6, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 199
    :cond_0
    sget-object v2, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "local message shouldn\'t be null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 279
    :goto_0
    return-void

    .line 202
    :cond_1
    new-instance v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v11}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 206
    .local v11, "localAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const-string/jumbo v2, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/kingsoft/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 207
    .local v14, "partIds":[Ljava/lang/String;
    if-eqz v14, :cond_7

    const/4 v2, 0x0

    aget-object v13, v14, v2

    .line 211
    .local v13, "partId":Ljava/lang/String;
    :goto_1
    invoke-interface/range {p2 .. p2}, Lcom/kingsoft/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 212
    .local v12, "mimeType":Ljava/lang/String;
    iput-object v12, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 213
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 214
    move-wide/from16 v0, p6

    iput-wide v0, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 215
    move-wide/from16 v0, p6

    long-to-int v2, v0

    iput v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDownloadedSize:I

    .line 216
    invoke-interface/range {p2 .. p2}, Lcom/kingsoft/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 217
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->setContentUri(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 219
    iput-object v13, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 220
    const-string/jumbo v2, "B"

    iput-object v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 221
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 222
    const-string/jumbo v2, ""

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-wide/16 v4, 0x0

    cmp-long v2, p6, v4

    if-nez v2, :cond_8

    .line 223
    const/4 v2, 0x0

    iput v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    .line 224
    const/4 v2, 0x0

    iput v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    .line 229
    :goto_2
    const/4 v2, 0x0

    iput v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mDeleted:I

    .line 240
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 241
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 243
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 244
    .local v8, "attachmentFoundInDb":Z
    if-eqz v9, :cond_4

    .line 246
    :cond_2
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 247
    new-instance v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v10}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 248
    .local v10, "dbAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {v10, v9}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)V

    .line 251
    iget-object v2, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/kingsoft/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 252
    iget-object v2, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/kingsoft/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 253
    iget-object v2, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/kingsoft/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 254
    iget-object v2, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/kingsoft/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 256
    const/4 v8, 0x1

    .line 257
    iget-wide v4, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    iput-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    .end local v10    # "dbAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_4
    if-nez v8, :cond_5

    .line 270
    invoke-virtual {v11, p0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 273
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-nez v2, :cond_6

    .line 274
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 277
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    goto/16 :goto_0

    .line 207
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v8    # "attachmentFoundInDb":Z
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v13    # "partId":Ljava/lang/String;
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 226
    .restart local v12    # "mimeType":Ljava/lang/String;
    .restart local v13    # "partId":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x1

    iput v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    .line 227
    const/4 v2, 0x3

    iput v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    goto/16 :goto_2

    .line 264
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v8    # "attachmentFoundInDb":Z
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static addOneViewable(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/emailcommon/mail/Part;ILcom/android/emailcommon/provider/EmailContent$Body;)V
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localMessage"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p2, "part"    # Lcom/kingsoft/emailcommon/mail/Part;
    .param p3, "loadStatus"    # I
    .param p4, "body"    # Lcom/android/emailcommon/provider/EmailContent$Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-interface/range {p2 .. p2}, Lcom/kingsoft/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface/range {p2 .. p2}, Lcom/kingsoft/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "text"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/kingsoft/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 305
    .local v13, "contentType":Ljava/lang/String;
    const-string/jumbo v3, "name"

    invoke-static {v13, v3}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 306
    .local v19, "name":Ljava/lang/String;
    if-nez v19, :cond_2

    .line 307
    invoke-interface/range {p2 .. p2}, Lcom/kingsoft/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 309
    .local v12, "contentDisposition":Ljava/lang/String;
    const-string/jumbo v3, "filename"

    invoke-static {v12, v3}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 312
    if-nez v19, :cond_2

    .line 313
    const-string/jumbo v19, ""

    .line 316
    .end local v12    # "contentDisposition":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "\\?"

    const-string/jumbo v5, "_"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 320
    const-wide/16 v23, 0x0

    .line 321
    .local v23, "size":J
    invoke-interface/range {p2 .. p2}, Lcom/kingsoft/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v16

    .line 322
    .local v16, "disposition":Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 323
    const-string/jumbo v3, "size"

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 324
    .local v22, "s":Ljava/lang/String;
    if-eqz v22, :cond_3

    .line 325
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    .line 329
    .end local v22    # "s":Ljava/lang/String;
    :cond_3
    new-instance v17, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct/range {v17 .. v17}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 334
    .local v17, "localAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const-string/jumbo v3, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/kingsoft/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 336
    .local v21, "partIds":[Ljava/lang/String;
    if-eqz v21, :cond_a

    const/4 v3, 0x0

    aget-object v20, v21, v3

    .line 341
    .local v20, "partId":Ljava/lang/String;
    :goto_1
    invoke-interface/range {p2 .. p2}, Lcom/kingsoft/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 343
    .local v18, "mimeType":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 344
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 345
    move-wide/from16 v0, v23

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 346
    move-wide/from16 v0, v23

    long-to-int v3, v0

    move-object/from16 v0, v17

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDownloadedSize:I

    .line 347
    invoke-interface/range {p2 .. p2}, Lcom/kingsoft/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 348
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->setContentUri(Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-object/from16 v0, v17

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 351
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 352
    const-string/jumbo v3, "B"

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 353
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, v17

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 354
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    .line 355
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    .line 356
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mDeleted:I

    .line 368
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 370
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 372
    .local v14, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 373
    .local v11, "attachmentFoundInDb":Z
    if-eqz v14, :cond_6

    .line 375
    :cond_4
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 376
    new-instance v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v15}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 377
    .local v15, "dbAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {v15, v14}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)V

    .line 381
    iget-object v3, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/kingsoft/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 384
    iget-object v3, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/kingsoft/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 387
    iget-object v3, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/kingsoft/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 390
    iget-object v3, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/kingsoft/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 395
    const/4 v11, 0x1

    .line 396
    iget-wide v5, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    move-object/from16 v0, v17

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    .end local v15    # "dbAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_6
    if-nez v11, :cond_7

    .line 410
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 413
    :cond_7
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_8

    .line 414
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, v17

    move-object/from16 v10, p4

    invoke-static/range {v5 .. v10}, Lcom/kingsoft/email/LegacyConversions;->saveViewableBody(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;JLcom/android/emailcommon/provider/EmailContent$Body;)V

    .line 417
    :cond_8
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-nez v3, :cond_9

    .line 418
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 421
    :cond_9
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    goto/16 :goto_0

    .line 336
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v11    # "attachmentFoundInDb":Z
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v18    # "mimeType":Ljava/lang/String;
    .end local v20    # "partId":Ljava/lang/String;
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 404
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v11    # "attachmentFoundInDb":Z
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "mimeType":Ljava/lang/String;
    .restart local v20    # "partId":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private static addTextBodyPart(Lcom/kingsoft/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "mp"    # Lcom/kingsoft/emailcommon/internet/MimeMultipart;
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "quotedPartTag"    # Ljava/lang/String;
    .param p3, "partText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 798
    if-nez p3, :cond_0

    .line 807
    :goto_0
    return-void

    .line 801
    :cond_0
    new-instance v0, Lcom/kingsoft/emailcommon/internet/TextBody;

    invoke-direct {v0, p3}, Lcom/kingsoft/emailcommon/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 802
    .local v0, "body":Lcom/kingsoft/emailcommon/internet/TextBody;
    new-instance v1, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;

    invoke-direct {v1, v0, p1}, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;-><init>(Lcom/kingsoft/emailcommon/mail/Body;Ljava/lang/String;)V

    .line 803
    .local v1, "bp":Lcom/kingsoft/emailcommon/internet/MimeBodyPart;
    if-eqz p2, :cond_1

    .line 804
    const-string/jumbo v2, "X-Android-Body-Quoted-Part"

    invoke-virtual {v1, v2, p2}, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    :cond_1
    invoke-virtual {p0, v1}, Lcom/kingsoft/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/kingsoft/emailcommon/mail/BodyPart;)V

    goto :goto_0
.end method

.method public static declared-synchronized inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailboxName"    # Ljava/lang/String;

    .prologue
    .line 814
    const-class v18, Lcom/kingsoft/email/LegacyConversions;

    monitor-enter v18

    :try_start_0
    sget-object v17, Lcom/kingsoft/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v17

    if-nez v17, :cond_3

    .line 816
    sget-object v17, Lcom/kingsoft/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v19, 0x7f10022b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    sget-object v17, Lcom/kingsoft/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v19, 0x7f10022d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    sget-object v17, Lcom/kingsoft/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v19, 0x7f10022a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    sget-object v17, Lcom/kingsoft/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v19, 0x7f100230

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    sget-object v17, Lcom/kingsoft/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v19, 0x7f10022e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    sget-object v17, Lcom/kingsoft/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v19, 0x7f10022c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x7

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 837
    .local v11, "res":Landroid/content/res/Resources;
    const v17, 0x7f090012

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 838
    .local v13, "sentNameArray":[Ljava/lang/String;
    move-object v3, v13

    .local v3, "arr$":[Ljava/lang/String;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v12, v3, v6

    .line 840
    .local v12, "sendName":Ljava/lang/String;
    sget-object v17, Lcom/kingsoft/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 842
    .end local v12    # "sendName":Ljava/lang/String;
    :cond_0
    const v17, 0x7f090010

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 843
    .local v5, "draftNameArray":[Ljava/lang/String;
    move-object v3, v5

    array-length v9, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_1

    aget-object v4, v3, v6

    .line 845
    .local v4, "draftName":Ljava/lang/String;
    sget-object v17, Lcom/kingsoft/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 847
    .end local v4    # "draftName":Ljava/lang/String;
    :cond_1
    const v17, 0x7f090013

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 848
    .local v15, "trashNameArray":[Ljava/lang/String;
    move-object v3, v15

    array-length v9, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v9, :cond_2

    aget-object v14, v3, v6

    .line 850
    .local v14, "trashName":Ljava/lang/String;
    sget-object v17, Lcom/kingsoft/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 852
    .end local v14    # "trashName":Ljava/lang/String;
    :cond_2
    const v17, 0x7f090011

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 853
    .local v8, "junkNameArray":[Ljava/lang/String;
    move-object v3, v8

    array-length v9, v3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v9, :cond_3

    aget-object v7, v3, v6

    .line 855
    .local v7, "junkName":Ljava/lang/String;
    sget-object v17, Lcom/kingsoft/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x7

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 859
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "draftNameArray":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "junkName":Ljava/lang/String;
    .end local v8    # "junkNameArray":[Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v11    # "res":Landroid/content/res/Resources;
    .end local v13    # "sentNameArray":[Ljava/lang/String;
    .end local v15    # "trashNameArray":[Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    if-nez v17, :cond_5

    .line 860
    :cond_4
    const/16 v17, 0x1

    .line 867
    :goto_4
    monitor-exit v18

    return v17

    .line 862
    :cond_5
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 863
    .local v10, "lowerCaseName":Ljava/lang/String;
    sget-object v17, Lcom/kingsoft/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 864
    .local v16, "type":Ljava/lang/Integer;
    if-eqz v16, :cond_6

    .line 865
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v17

    goto :goto_4

    .line 867
    :cond_6
    const/16 v17, 0x1

    goto :goto_4

    .line 814
    .end local v10    # "lowerCaseName":Ljava/lang/String;
    .end local v16    # "type":Ljava/lang/Integer;
    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17
.end method

.method public static makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/kingsoft/emailcommon/mail/Message;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localMessage"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 702
    new-instance v3, Lcom/kingsoft/emailcommon/internet/MimeMessage;

    invoke-direct {v3}, Lcom/kingsoft/emailcommon/internet/MimeMessage;-><init>()V

    .line 705
    .local v3, "message":Lcom/kingsoft/emailcommon/internet/MimeMessage;
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-nez v7, :cond_3

    const-string/jumbo v7, ""

    :goto_0
    invoke-virtual {v3, v7}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 706
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/kingsoft/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v0

    .line 707
    .local v0, "from":[Lcom/kingsoft/emailcommon/mail/Address;
    array-length v7, v0

    if-lez v7, :cond_0

    .line 708
    aget-object v7, v0, v9

    invoke-virtual {v3, v7}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setFrom(Lcom/kingsoft/emailcommon/mail/Address;)V

    .line 710
    :cond_0
    new-instance v7, Ljava/util/Date;

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V

    .line 711
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setUid(Ljava/lang/String;)V

    .line 712
    sget-object v10, Lcom/kingsoft/emailcommon/mail/Flag;->DELETED:Lcom/kingsoft/emailcommon/mail/Flag;

    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v11, 0x3

    if-ne v7, v11, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {v3, v10, v7}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setFlag(Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    .line 714
    sget-object v7, Lcom/kingsoft/emailcommon/mail/Flag;->SEEN:Lcom/kingsoft/emailcommon/mail/Flag;

    iget-boolean v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v3, v7, v10}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setFlag(Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    .line 715
    sget-object v7, Lcom/kingsoft/emailcommon/mail/Flag;->FLAGGED:Lcom/kingsoft/emailcommon/mail/Flag;

    iget-boolean v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v3, v7, v10}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setFlag(Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    .line 717
    sget-object v7, Lcom/kingsoft/emailcommon/mail/Message$RecipientType;->TO:Lcom/kingsoft/emailcommon/mail/Message$RecipientType;

    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v10}, Lcom/kingsoft/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setRecipients(Lcom/kingsoft/emailcommon/mail/Message$RecipientType;[Lcom/kingsoft/emailcommon/mail/Address;)V

    .line 718
    sget-object v7, Lcom/kingsoft/emailcommon/mail/Message$RecipientType;->CC:Lcom/kingsoft/emailcommon/mail/Message$RecipientType;

    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v10}, Lcom/kingsoft/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setRecipients(Lcom/kingsoft/emailcommon/mail/Message$RecipientType;[Lcom/kingsoft/emailcommon/mail/Address;)V

    .line 719
    sget-object v7, Lcom/kingsoft/emailcommon/mail/Message$RecipientType;->BCC:Lcom/kingsoft/emailcommon/mail/Message$RecipientType;

    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v10}, Lcom/kingsoft/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setRecipients(Lcom/kingsoft/emailcommon/mail/Message$RecipientType;[Lcom/kingsoft/emailcommon/mail/Address;)V

    .line 720
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7}, Lcom/kingsoft/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setReplyTo([Lcom/kingsoft/emailcommon/mail/Address;)V

    .line 721
    new-instance v7, Ljava/util/Date;

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setInternalDate(Ljava/util/Date;)V

    .line 722
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setMessageId(Ljava/lang/String;)V

    .line 725
    const-string/jumbo v7, "Content-Type"

    const-string/jumbo v10, "multipart/mixed"

    invoke-virtual {v3, v7, v10}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    new-instance v4, Lcom/kingsoft/emailcommon/internet/MimeMultipart;

    invoke-direct {v4}, Lcom/kingsoft/emailcommon/internet/MimeMultipart;-><init>()V

    .line 727
    .local v4, "mp":Lcom/kingsoft/emailcommon/internet/MimeMultipart;
    const-string/jumbo v7, "mixed"

    invoke-virtual {v4, v7}, Lcom/kingsoft/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v3, v4}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setBody(Lcom/kingsoft/emailcommon/mail/Body;)V

    .line 731
    :try_start_0
    const-string/jumbo v7, "text/html"

    const/4 v10, 0x0

    iget-wide v11, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v7, v10, v11}, Lcom/kingsoft/email/LegacyConversions;->addTextBodyPart(Lcom/kingsoft/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_2
    :try_start_1
    const-string/jumbo v7, "text/plain"

    const/4 v10, 0x0

    iget-wide v11, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v7, v10, v11}, Lcom/kingsoft/email/LegacyConversions;->addTextBodyPart(Lcom/kingsoft/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 744
    :goto_3
    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    move v2, v8

    .line 745
    .local v2, "isReply":Z
    :goto_4
    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    move v1, v8

    .line 750
    .local v1, "isForward":Z
    :goto_5
    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    .line 752
    :cond_1
    :try_start_2
    const-string/jumbo v7, "text/plain"

    const-string/jumbo v8, "quoted-intro"

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreIntroTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v7, v8, v10}, Lcom/kingsoft/email/LegacyConversions;->addTextBodyPart(Lcom/kingsoft/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 758
    :goto_6
    if-eqz v2, :cond_7

    const-string/jumbo v5, "quoted-reply"

    .line 760
    .local v5, "replyTag":Ljava/lang/String;
    :goto_7
    :try_start_3
    const-string/jumbo v7, "text/html"

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v5, v8}, Lcom/kingsoft/email/LegacyConversions;->addTextBodyPart(Lcom/kingsoft/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 767
    :goto_8
    :try_start_4
    const-string/jumbo v7, "text/plain"

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v5, v8}, Lcom/kingsoft/email/LegacyConversions;->addTextBodyPart(Lcom/kingsoft/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 785
    .end local v5    # "replyTag":Ljava/lang/String;
    :cond_2
    :goto_9
    return-object v3

    .line 705
    .end local v0    # "from":[Lcom/kingsoft/emailcommon/mail/Address;
    .end local v1    # "isForward":Z
    .end local v2    # "isReply":Z
    .end local v4    # "mp":Lcom/kingsoft/emailcommon/internet/MimeMultipart;
    :cond_3
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_0

    .restart local v0    # "from":[Lcom/kingsoft/emailcommon/mail/Address;
    :cond_4
    move v7, v9

    .line 712
    goto/16 :goto_1

    .line 733
    .restart local v4    # "mp":Lcom/kingsoft/emailcommon/internet/MimeMultipart;
    :catch_0
    move-exception v6

    .line 734
    .local v6, "rte":Ljava/lang/RuntimeException;
    sget-object v7, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception while reading html body "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v7, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 740
    .end local v6    # "rte":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    .line 741
    .restart local v6    # "rte":Ljava/lang/RuntimeException;
    sget-object v7, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception while reading text body "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v7, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_3

    .end local v6    # "rte":Ljava/lang/RuntimeException;
    :cond_5
    move v2, v9

    .line 744
    goto/16 :goto_4

    .restart local v2    # "isReply":Z
    :cond_6
    move v1, v9

    .line 745
    goto :goto_5

    .line 754
    .restart local v1    # "isForward":Z
    :catch_2
    move-exception v6

    .line 755
    .restart local v6    # "rte":Ljava/lang/RuntimeException;
    sget-object v7, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception while reading text reply "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v10}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_6

    .line 758
    .end local v6    # "rte":Ljava/lang/RuntimeException;
    :cond_7
    const-string/jumbo v5, "quoted-forward"

    goto/16 :goto_7

    .line 762
    .restart local v5    # "replyTag":Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 763
    .restart local v6    # "rte":Ljava/lang/RuntimeException;
    sget-object v7, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception while reading html reply "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v10}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_8

    .line 769
    .end local v6    # "rte":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v6

    .line 770
    .restart local v6    # "rte":Ljava/lang/RuntimeException;
    sget-object v7, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception while reading text reply "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_9
.end method

.method public static saveAttachmentBody(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "part"    # Lcom/kingsoft/emailcommon/mail/Part;
    .param p2, "localAttachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .param p3, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 658
    invoke-interface/range {p1 .. p1}, Lcom/kingsoft/emailcommon/mail/Part;->getBody()Lcom/kingsoft/emailcommon/mail/Body;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 659
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    .line 661
    .local v4, "attachmentId":J
    invoke-interface/range {p1 .. p1}, Lcom/kingsoft/emailcommon/mail/Part;->getBody()Lcom/kingsoft/emailcommon/mail/Body;

    move-result-object v15

    invoke-interface {v15}, Lcom/kingsoft/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 663
    .local v10, "in":Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v13

    .line 664
    .local v13, "saveIn":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 665
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 668
    :cond_0
    const/4 v12, 0x0

    .line 669
    .local v12, "saveAs":Ljava/io/File;
    const/4 v3, 0x0

    .line 670
    .local v3, "attDestination":I
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v4, v5}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 672
    .local v6, "contentUriString":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v12

    .line 674
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 675
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 676
    .local v11, "out":Ljava/io/FileOutputStream;
    invoke-static {v10, v11}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v15

    int-to-long v7, v15

    .line 677
    .local v7, "copySize":J
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 678
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 680
    move-object/from16 v0, p2

    iput-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 681
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->setContentUri(Ljava/lang/String;)V

    .line 684
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 685
    .local v9, "cv":Landroid/content/ContentValues;
    const-string/jumbo v15, "size"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 686
    const-string/jumbo v15, "uiDownloadedSize"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 687
    const-string/jumbo v15, "uiDestination"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 688
    const-string/jumbo v15, "contentUri"

    invoke-virtual {v9, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string/jumbo v15, "uiState"

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 690
    const-string/jumbo v15, "isDeleted"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 691
    sget-object v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 692
    .local v14, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v14, v9, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 694
    .end local v3    # "attDestination":I
    .end local v4    # "attachmentId":J
    .end local v6    # "contentUriString":Ljava/lang/String;
    .end local v7    # "copySize":J
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .end local v12    # "saveAs":Ljava/io/File;
    .end local v13    # "saveIn":Ljava/io/File;
    .end local v14    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public static saveViewableBody(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;JLcom/android/emailcommon/provider/EmailContent$Body;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "part"    # Lcom/kingsoft/emailcommon/mail/Part;
    .param p2, "localAttachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .param p3, "accountId"    # J
    .param p5, "body"    # Lcom/android/emailcommon/provider/EmailContent$Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-interface/range {p1 .. p1}, Lcom/kingsoft/emailcommon/mail/Part;->getBody()Lcom/kingsoft/emailcommon/mail/Body;

    move-result-object v22

    if-eqz v22, :cond_2

    .line 430
    :try_start_0
    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    .line 432
    .local v5, "attachmentId":J
    invoke-interface/range {p1 .. p1}, Lcom/kingsoft/emailcommon/mail/Part;->getBody()Lcom/kingsoft/emailcommon/mail/Body;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/kingsoft/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    .line 434
    .local v16, "in":Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v19

    .line 436
    .local v19, "saveIn":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_0

    .line 437
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    .line 439
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5, v6}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v18

    .line 441
    .local v18, "saveAs":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->createNewFile()Z

    .line 442
    new-instance v17, Ljava/io/FileOutputStream;

    invoke-direct/range {v17 .. v18}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 443
    .local v17, "out":Ljava/io/FileOutputStream;
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v22

    move/from16 v0, v22

    int-to-long v9, v0

    .line 444
    .local v9, "copySize":J
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 445
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 448
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v5, v6}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 451
    .local v8, "contentUriString":Ljava/lang/String;
    move-object/from16 v0, p2

    iput-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 452
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->setContentUri(Ljava/lang/String;)V

    .line 455
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 456
    .local v11, "cv":Landroid/content/ContentValues;
    const-string/jumbo v22, "size"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 457
    const-string/jumbo v22, "contentUri"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string/jumbo v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    const-wide/16 v22, 0x0

    cmp-long v22, v9, v22

    if-nez v22, :cond_3

    .line 459
    const-string/jumbo v22, "uiState"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    :goto_0
    sget-object v22, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 468
    .local v21, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 470
    const-string/jumbo v4, ""

    .line 474
    .local v4, "absContentUri":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    if-eqz p0, :cond_1

    .line 475
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAbsolutePathFromInternalUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 481
    :cond_1
    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 482
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 483
    move-object/from16 v0, p5

    iget-object v15, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 484
    .local v15, "html":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "\\s+(?i)src=\"cid(?-i):\\Q"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {p1 .. p1}, Lcom/kingsoft/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\\E\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 486
    .local v7, "contentIdRe":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v23, "\\"

    const-string/jumbo v24, "\\\\"

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 487
    .local v14, "escapedContentId":Ljava/lang/String;
    const-string/jumbo v22, "$"

    const-string/jumbo v23, "\\$"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 488
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, " src=\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " data-cid=\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 489
    .local v20, "srcContentUri":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v15, v7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 490
    move-object/from16 v0, p5

    iput-object v15, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 491
    const-string/jumbo v22, "htmlContent"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    sget-object v23, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p5

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mId:J

    move-wide/from16 v24, v0

    invoke-static/range {v23 .. v25}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 496
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 498
    .local v12, "cvAtt":Landroid/content/ContentValues;
    const-string/jumbo v22, "contentUri"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 513
    .end local v4    # "absContentUri":Ljava/lang/String;
    .end local v5    # "attachmentId":J
    .end local v7    # "contentIdRe":Ljava/lang/String;
    .end local v8    # "contentUriString":Ljava/lang/String;
    .end local v9    # "copySize":J
    .end local v11    # "cv":Landroid/content/ContentValues;
    .end local v12    # "cvAtt":Landroid/content/ContentValues;
    .end local v14    # "escapedContentId":Ljava/lang/String;
    .end local v15    # "html":Ljava/lang/String;
    .end local v16    # "in":Ljava/io/InputStream;
    .end local v17    # "out":Ljava/io/FileOutputStream;
    .end local v18    # "saveAs":Ljava/io/File;
    .end local v19    # "saveIn":Ljava/io/File;
    .end local v20    # "srcContentUri":Ljava/lang/String;
    .end local v21    # "uri":Landroid/net/Uri;
    :cond_2
    return-void

    .line 462
    .restart local v5    # "attachmentId":J
    .restart local v8    # "contentUriString":Ljava/lang/String;
    .restart local v9    # "copySize":J
    .restart local v11    # "cv":Landroid/content/ContentValues;
    .restart local v16    # "in":Ljava/io/InputStream;
    .restart local v17    # "out":Ljava/io/FileOutputStream;
    .restart local v18    # "saveAs":Ljava/io/File;
    .restart local v19    # "saveIn":Ljava/io/File;
    :cond_3
    const-string/jumbo v22, "uiState"

    const/16 v23, 0x3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 502
    .end local v5    # "attachmentId":J
    .end local v8    # "contentUriString":Ljava/lang/String;
    .end local v9    # "copySize":J
    .end local v11    # "cv":Landroid/content/ContentValues;
    .end local v16    # "in":Ljava/io/InputStream;
    .end local v17    # "out":Ljava/io/FileOutputStream;
    .end local v18    # "saveAs":Ljava/io/File;
    .end local v19    # "saveIn":Ljava/io/File;
    :catch_0
    move-exception v13

    .line 503
    .local v13, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 504
    throw v13

    .line 505
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v13

    .line 506
    .local v13, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    invoke-virtual {v13}, Lcom/kingsoft/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 507
    throw v13

    .line 508
    .end local v13    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :catch_2
    move-exception v13

    .line 509
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 510
    throw v13
.end method

.method static stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 647
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 650
    :cond_0
    :goto_0
    return v0

    .line 648
    :cond_1
    if-nez p0, :cond_2

    const-string/jumbo p0, ""

    .line 649
    :cond_2
    if-nez p1, :cond_3

    const-string/jumbo p1, ""

    .line 650
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static updateAttachments(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localMessage"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/emailcommon/mail/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    .local p2, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 178
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/emailcommon/mail/Part;

    invoke-static {p0, p1, v1, v0}, Lcom/kingsoft/email/LegacyConversions;->addOneAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/emailcommon/mail/Part;I)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method public static updateMessageFields(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/emailcommon/mail/Message;JJ)Z
    .locals 15
    .param p0, "localMessage"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p1, "message"    # Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "accountId"    # J
    .param p4, "mailboxId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/emailcommon/mail/Message;->getFrom()[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v4

    .line 91
    .local v4, "from":[Lcom/kingsoft/emailcommon/mail/Address;
    sget-object v11, Lcom/kingsoft/emailcommon/mail/Message$RecipientType;->TO:Lcom/kingsoft/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/kingsoft/emailcommon/mail/Message;->getRecipients(Lcom/kingsoft/emailcommon/mail/Message$RecipientType;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v10

    .line 92
    .local v10, "to":[Lcom/kingsoft/emailcommon/mail/Address;
    sget-object v11, Lcom/kingsoft/emailcommon/mail/Message$RecipientType;->CC:Lcom/kingsoft/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/kingsoft/emailcommon/mail/Message;->getRecipients(Lcom/kingsoft/emailcommon/mail/Message$RecipientType;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v3

    .line 93
    .local v3, "cc":[Lcom/kingsoft/emailcommon/mail/Address;
    sget-object v11, Lcom/kingsoft/emailcommon/mail/Message$RecipientType;->BCC:Lcom/kingsoft/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/kingsoft/emailcommon/mail/Message;->getRecipients(Lcom/kingsoft/emailcommon/mail/Message$RecipientType;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v2

    .line 94
    .local v2, "bcc":[Lcom/kingsoft/emailcommon/mail/Address;
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/emailcommon/mail/Message;->getReplyTo()[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v7

    .line 95
    .local v7, "replyTo":[Lcom/kingsoft/emailcommon/mail/Address;
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/emailcommon/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "subject":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/emailcommon/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v8

    .line 97
    .local v8, "sentDate":Ljava/util/Date;
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v5

    .line 99
    .local v5, "internalDate":Ljava/util/Date;
    if-eqz v4, :cond_0

    array-length v11, v4

    if-lez v11, :cond_0

    .line 101
    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-virtual {v11}, Lcom/kingsoft/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 104
    :cond_0
    if-eqz v5, :cond_f

    const-wide/16 v11, 0x0

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_f

    .line 105
    sget-object v11, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "No sentDate, falling back to internalDate"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 106
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 111
    :cond_1
    :goto_0
    if-eqz v9, :cond_2

    .line 112
    iput-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 114
    :cond_2
    iget-wide v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    const-wide/16 v13, -0x1

    cmp-long v11, v11, v13

    if-nez v11, :cond_6

    .line 115
    sget-object v11, Lcom/kingsoft/emailcommon/mail/Flag;->SEEN:Lcom/kingsoft/emailcommon/mail/Flag;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/kingsoft/emailcommon/mail/Message;->isSet(Lcom/kingsoft/emailcommon/mail/Flag;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 116
    iget-boolean v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eqz v11, :cond_3

    .line 117
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagSeen:Z

    .line 119
    :cond_3
    sget-object v11, Lcom/kingsoft/emailcommon/mail/Flag;->ANSWERED:Lcom/kingsoft/emailcommon/mail/Flag;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/kingsoft/emailcommon/mail/Message;->isSet(Lcom/kingsoft/emailcommon/mail/Flag;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 120
    iget v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v12, 0x40000

    or-int/2addr v11, v12

    iput v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 122
    :cond_4
    sget-object v11, Lcom/kingsoft/emailcommon/mail/Flag;->FLAGGED:Lcom/kingsoft/emailcommon/mail/Flag;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/kingsoft/emailcommon/mail/Message;->isSet(Lcom/kingsoft/emailcommon/mail/Flag;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v11, p1

    .line 124
    check-cast v11, Lcom/kingsoft/emailcommon/internet/MimeMessage;

    invoke-virtual {v11}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "messageId":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 126
    iput-object v6, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 128
    :cond_5
    move-wide/from16 v0, p4

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 129
    move-wide/from16 v0, p2

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 133
    .end local v6    # "messageId":Ljava/lang/String;
    :cond_6
    iget v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_8

    .line 134
    iget-object v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    if-eqz v11, :cond_7

    const-string/jumbo v11, ""

    iget-object v12, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 135
    :cond_7
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 142
    :cond_8
    :goto_1
    if-eqz v5, :cond_9

    .line 143
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    .line 146
    :cond_9
    if-eqz v4, :cond_a

    array-length v11, v4

    if-lez v11, :cond_a

    .line 147
    invoke-static {v4}, Lcom/kingsoft/emailcommon/mail/Address;->pack([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 150
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/emailcommon/mail/Message;->getSize()I

    move-result v11

    iput v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBodySize:I

    .line 151
    if-eqz v10, :cond_b

    array-length v11, v10

    if-lez v11, :cond_b

    .line 152
    invoke-static {v10}, Lcom/kingsoft/emailcommon/mail/Address;->pack([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 154
    :cond_b
    if-eqz v3, :cond_c

    array-length v11, v3

    if-lez v11, :cond_c

    .line 155
    invoke-static {v3}, Lcom/kingsoft/emailcommon/mail/Address;->pack([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 157
    :cond_c
    if-eqz v2, :cond_d

    array-length v11, v2

    if-lez v11, :cond_d

    .line 158
    invoke-static {v2}, Lcom/kingsoft/emailcommon/mail/Address;->pack([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 160
    :cond_d
    if-eqz v7, :cond_e

    array-length v11, v7

    if-lez v11, :cond_e

    .line 161
    invoke-static {v7}, Lcom/kingsoft/emailcommon/mail/Address;->pack([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    .line 163
    :cond_e
    const/4 v11, 0x1

    return v11

    .line 107
    :cond_f
    if-eqz v8, :cond_1

    .line 108
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    goto/16 :goto_0

    .line 138
    :cond_10
    const/4 v11, 0x5

    iput v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    goto :goto_1
.end method

.method public static updateViewables(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;ILcom/android/emailcommon/provider/EmailContent$Body;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localMessage"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p3, "loadStatus"    # I
    .param p4, "body"    # Lcom/android/emailcommon/provider/EmailContent$Body;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/emailcommon/mail/Part;",
            ">;I",
            "Lcom/android/emailcommon/provider/EmailContent$Body;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    .local p2, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 285
    :cond_0
    sget-object v2, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "local message or viewables shouldn\'t be null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 294
    :cond_1
    return-void

    .line 290
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 291
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/emailcommon/mail/Part;

    .line 292
    .local v1, "p":Lcom/kingsoft/emailcommon/mail/Part;
    invoke-static {p0, p1, v1, p3, p4}, Lcom/kingsoft/email/LegacyConversions;->addOneViewable(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/emailcommon/mail/Part;ILcom/android/emailcommon/provider/EmailContent$Body;)V

    goto :goto_0
.end method
