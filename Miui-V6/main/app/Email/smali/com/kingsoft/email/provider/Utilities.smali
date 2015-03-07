.class public Lcom/kingsoft/email/provider/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SendEMailDownloadProcessBroadcast(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "process"    # I

    .prologue
    .line 372
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 373
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.mail.ui.ConversationListFragment.downloadEmail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string/jumbo v1, "Download_Process_Key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 376
    return-void
.end method

.method public static copyOneMessageToProvider(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p3, "folder"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p4, "loadStatus"    # I

    .prologue
    .line 69
    const/4 v8, 0x0

    .line 70
    .local v8, "localMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    const/4 v7, 0x0

    .line 72
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "accountKey=? AND mailboxKey=? AND syncServerId=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v10, p2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v6

    const/4 v6, 0x1

    iget-wide v10, p3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p1}, Lcom/kingsoft/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 84
    if-nez v7, :cond_1

    .line 97
    if-eqz v7, :cond_0

    .line 98
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    const-class v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v7, v1}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object v8, v0

    .line 93
    :goto_1
    iget-wide v1, p3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iput-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 94
    iget-wide v1, p2, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 95
    move/from16 v0, p4

    invoke-static {p0, p1, v8, v0}, Lcom/kingsoft/email/provider/Utilities;->copyOneMessageToProvider(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    if-eqz v7, :cond_0

    .line 98
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 90
    :cond_2
    const/4 v1, 0x5

    move/from16 v0, p4

    if-eq v1, v0, :cond_3

    .line 97
    if-eqz v7, :cond_0

    .line 98
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 91
    :cond_3
    :try_start_2
    new-instance v9, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v8    # "localMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    .local v9, "localMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    move-object v8, v9

    .end local v9    # "localMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v8    # "localMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    goto :goto_1

    .line 97
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    .line 98
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static copyOneMessageToProvider(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "localMessage"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p3, "loadStatus"    # I

    .prologue
    .line 233
    const/4 v11, 0x0

    .line 234
    .local v11, "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    :try_start_0
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    .line 235
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v11

    move-object v12, v11

    .line 244
    .end local v11    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    .local v12, "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    :goto_0
    if-nez v12, :cond_7

    .line 245
    :try_start_1
    new-instance v11, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-direct {v11}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 249
    .end local v12    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    .restart local v11    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    :goto_1
    :try_start_2
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-static/range {v4 .. v9}, Lcom/kingsoft/email/LegacyConversions;->updateMessageFields(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/emailcommon/mail/Message;JJ)Z

    .line 252
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v19, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v10, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->collectParts(Lcom/kingsoft/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 256
    const/4 v4, 0x5

    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    .line 257
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, v19

    invoke-static {v0, v4, v5, v6, v7}, Lcom/kingsoft/emailcommon/utility/ConversionUtilities;->parseBodyFields(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;

    move-result-object v14

    .line 260
    .local v14, "data":Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;
    iget-boolean v4, v14, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->isQuotedReply:Z

    iget-boolean v5, v14, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->isQuotedForward:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->setFlags(ZZ)V

    .line 261
    iget-object v4, v14, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->snippet:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 262
    iget-object v4, v14, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->textContent:Ljava/lang/String;

    iput-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 264
    iget-object v4, v14, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->htmlContent:Ljava/lang/String;

    iput-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 265
    iget-object v4, v14, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->htmlReply:Ljava/lang/String;

    iput-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    .line 266
    iget-object v4, v14, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->textReply:Ljava/lang/String;

    iput-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .line 267
    iget-object v4, v14, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->introText:Ljava/lang/String;

    iput-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    .line 269
    iget-wide v4, v14, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->quoteIndex:J

    iput-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent$Body;->mQuoteIndex:J

    .line 270
    iget-object v4, v14, Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;->shortBody:Ljava/lang/String;

    iput-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Body;->mShortBody:Ljava/lang/String;

    .line 273
    .end local v14    # "data":Lcom/kingsoft/emailcommon/utility/ConversionUtilities$BodyFieldData;
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/kingsoft/email/provider/Utilities;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 274
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    .line 275
    move-object/from16 v0, p0

    invoke-static {v11, v0}, Lcom/kingsoft/email/provider/Utilities;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 276
    const/4 v4, 0x5

    move/from16 v0, p3

    if-eq v0, v4, :cond_1

    .line 277
    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v4, v0, v10}, Lcom/kingsoft/email/provider/Utilities;->negotiate(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 279
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v11}, Lcom/kingsoft/email/LegacyConversions;->updateViewables(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;ILcom/android/emailcommon/provider/EmailContent$Body;)V

    .line 281
    const/4 v4, 0x2

    move/from16 v0, p3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    move/from16 v0, p3

    if-eq v0, v4, :cond_2

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v10}, Lcom/kingsoft/email/LegacyConversions;->updateAttachments(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)V

    .line 318
    :cond_2
    const/4 v4, 0x5

    move/from16 v0, p3

    if-eq v0, v4, :cond_3

    .line 319
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v4

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v11}, Lcom/kingsoft/email/EmailApplication;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    :cond_3
    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    if-nez v4, :cond_4

    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 323
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iput v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 330
    :goto_2
    move/from16 v0, p3

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 332
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 333
    .local v13, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "flagAttachment"

    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 334
    const-string/jumbo v4, "flagLoaded"

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 337
    .local v18, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v13, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 339
    const/4 v4, 0x5

    move/from16 v0, p3

    if-eq v0, v4, :cond_5

    .line 340
    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 341
    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 342
    iget-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent$Body;->mQuoteIndex:J

    move-object/from16 v0, p2

    iput-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mQuoteIndex:J

    .line 343
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/preferences/MailPrefs;->getShowChatView()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 344
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->updateChatCache(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 360
    .end local v10    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    :cond_5
    :goto_3
    return-void

    .line 325
    .restart local v10    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    .restart local v19    # "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    :cond_6
    move/from16 v0, p3

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I
    :try_end_2
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 349
    .end local v10    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    .end local v19    # "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    :catch_0
    move-exception v16

    .line 350
    .local v16, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_3
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error while copying downloaded message."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 353
    .end local v16    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v17

    .line 354
    .local v17, "rte":Ljava/lang/RuntimeException;
    :goto_4
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RuntimeException rte Error while storing downloaded message."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " localMessage.mId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 357
    .end local v17    # "rte":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v15

    .line 358
    .local v15, "ioe":Ljava/io/IOException;
    :goto_5
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error while storing attachment."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 357
    .end local v11    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v15    # "ioe":Ljava/io/IOException;
    .restart local v12    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    :catch_3
    move-exception v15

    move-object v11, v12

    .end local v12    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    .restart local v11    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    goto :goto_5

    .line 353
    .end local v11    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    .restart local v12    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    :catch_4
    move-exception v17

    move-object v11, v12

    .end local v12    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    .restart local v11    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    goto :goto_4

    .end local v11    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    .restart local v12    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    :cond_7
    move-object v11, v12

    .end local v12    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    .restart local v11    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    goto/16 :goto_1

    :cond_8
    move-object v12, v11

    .end local v11    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    .restart local v12    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    goto/16 :goto_0
.end method

.method public static getAllCids(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "html"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "allCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 107
    const/4 v3, 0x0

    .line 108
    .local v3, "p":Ljava/util/regex/Pattern;
    const/4 v2, 0x0

    .line 110
    .local v2, "m":Ljava/util/regex/Matcher;
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "allCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .restart local v0    # "allCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "<img[^>]*src=\"cid(?-i):([^\"]*)\""

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 114
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 116
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "cid":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    .end local v1    # "cid":Ljava/lang/String;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    :cond_1
    return-object v0
.end method

.method public static isAppOnForeground()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 398
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingsoft/email/EmailApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 399
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingsoft/email/EmailApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 403
    .local v2, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_1

    .line 414
    :cond_0
    :goto_0
    return v5

    .line 406
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 408
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_2

    .line 410
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 381
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 382
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    const/4 v2, 0x1

    .line 387
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static negotiate(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .param p0, "html"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/emailcommon/mail/Part;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/emailcommon/mail/Part;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    .local p2, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    const/4 v0, 0x0

    .line 140
    .local v0, "allCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 141
    :cond_0
    sget-object v9, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "viewable or attachment is null"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 217
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-static {p0}, Lcom/kingsoft/email/provider/Utilities;->getAllCids(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 150
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v5, "lastAttachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v6, "lastViewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kingsoft/emailcommon/mail/Part;

    .line 156
    .local v8, "p":Lcom/kingsoft/emailcommon/mail/Part;
    invoke-interface {v8}, Lcom/kingsoft/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "text"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 158
    invoke-interface {v8}, Lcom/kingsoft/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "contentType":Ljava/lang/String;
    const-string/jumbo v9, "name"

    invoke-static {v2, v9}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 161
    invoke-interface {v8}, Lcom/kingsoft/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "contentDisposition":Ljava/lang/String;
    const-string/jumbo v9, "filename"

    invoke-static {v1, v9}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 165
    .end local v1    # "contentDisposition":Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Lcom/kingsoft/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    .line 167
    if-eqz v7, :cond_4

    .line 168
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/kingsoft/emailcommon/mail/Part;->setBody(Lcom/kingsoft/emailcommon/mail/Body;)V
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 208
    .end local v2    # "contentType":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "p":Lcom/kingsoft/emailcommon/mail/Part;
    :catch_0
    move-exception v3

    .line 209
    .local v3, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    invoke-virtual {v3}, Lcom/kingsoft/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 212
    .end local v3    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 213
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 215
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 216
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 173
    .restart local v2    # "contentType":Ljava/lang/String;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "p":Lcom/kingsoft/emailcommon/mail/Part;
    :cond_4
    :try_start_1
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 178
    :cond_5
    if-eqz v7, :cond_7

    if-eqz v0, :cond_6

    invoke-interface {v8}, Lcom/kingsoft/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 180
    :cond_6
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/kingsoft/emailcommon/mail/Part;->setBody(Lcom/kingsoft/emailcommon/mail/Body;)V

    goto :goto_1

    .line 185
    :cond_7
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    .end local v2    # "contentType":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    :cond_8
    if-eqz v0, :cond_9

    invoke-interface {v8}, Lcom/kingsoft/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 191
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 194
    :cond_9
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/kingsoft/emailcommon/mail/Part;->setBody(Lcom/kingsoft/emailcommon/mail/Body;)V

    .line 195
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 200
    .end local v8    # "p":Lcom/kingsoft/emailcommon/mail/Part;
    :cond_a
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kingsoft/emailcommon/mail/Part;

    .line 201
    .restart local v8    # "p":Lcom/kingsoft/emailcommon/mail/Part;
    if-eqz v0, :cond_b

    invoke-interface {v8}, Lcom/kingsoft/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 202
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 205
    :cond_b
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V
    .locals 1
    .param p0, "content"    # Lcom/android/emailcommon/provider/EmailContent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0
.end method
