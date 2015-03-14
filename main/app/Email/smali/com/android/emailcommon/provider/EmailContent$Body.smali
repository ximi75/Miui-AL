.class public final Lcom/android/emailcommon/provider/EmailContent$Body;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/emailcommon/provider/EmailContent$BodyColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Body"
.end annotation


# static fields
.field public static final COMMON_PROJECTION_COLUMN_TEXT:I = 0x1

.field public static final COMMON_PROJECTION_HTML:[Ljava/lang/String;

.field public static final COMMON_PROJECTION_INTRO:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMMON_PROJECTION_REPLY_HTML:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMMON_PROJECTION_REPLY_TEXT:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMMON_PROJECTION_SHORT:[Ljava/lang/String;

.field public static final COMMON_PROJECTION_SOURCE:[Ljava/lang/String;

.field public static final COMMON_PROJECTION_TEXT:[Ljava/lang/String;

.field public static final CONTENT_HTML_CONTENT_COLUMN:I = 0x2

.field public static final CONTENT_HTML_REPLY_COLUMN:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_INTRO_TEXT_COLUMN:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_MESSAGE_KEY_COLUMN:I = 0x1

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_QUOTED_TEXT_START_POS_COLUMN:I = 0x8

.field public static final CONTENT_QUOTE_INDEX:I = 0xa

.field public static final CONTENT_SHORT_BODY:I = 0x9

.field public static final CONTENT_SOURCE_KEY_COLUMN:I = 0x6

.field public static final CONTENT_TEXT_CONTENT_COLUMN:I = 0x3

.field public static final CONTENT_TEXT_REPLY_COLUMN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field private static final PROJECTION_SOURCE_KEY:[Ljava/lang/String;

.field public static final SELECTION_BY_MESSAGE_KEY:Ljava/lang/String; = "messageKey=?"

.field public static final TABLE_NAME:Ljava/lang/String; = "Body"


# instance fields
.field public mHtmlContent:Ljava/lang/String;

.field public mHtmlReply:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mIntroText:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mMessageKey:J

.field public mQuoteIndex:J

.field public mQuotedTextStartPos:I

.field public mShortBody:Ljava/lang/String;

.field public mSourceKey:J

.field public mTextContent:Ljava/lang/String;

.field public mTextReply:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 395
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "messageKey"

    aput-object v1, v0, v4

    const-string/jumbo v1, "substr(htmlContent, 1, 300000) as htmlContent"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "textContent"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "htmlReply"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "textReply"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "sourceMessageKey"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "introText"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "quotedTextStartPos"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "substr(shortBody, 1, 1000) as shortBody"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "quoteIndex"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 409
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "textContent"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_TEXT:[Ljava/lang/String;

    .line 412
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "htmlContent"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_HTML:[Ljava/lang/String;

    .line 415
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "shortBody"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_SHORT:[Ljava/lang/String;

    .line 419
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "textReply"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_REPLY_TEXT:[Ljava/lang/String;

    .line 423
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "htmlReply"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_REPLY_HTML:[Ljava/lang/String;

    .line 427
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "introText"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_INTRO:[Ljava/lang/String;

    .line 430
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sourceMessageKey"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_SOURCE:[Ljava/lang/String;

    .line 435
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "sourceMessageKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->PROJECTION_SOURCE_KEY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 460
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mBaseUri:Landroid/net/Uri;

    .line 461
    return-void
.end method

.method public static initBody()V
    .locals 2

    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/body"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    .line 378
    return-void
.end method

.method public static lookupBodyIdWithMessageId(Landroid/content/Context;J)J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    const/4 v6, 0x0

    .line 527
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "messageKey=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    .line 580
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_HTML:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreTextWithMessageId(Landroid/content/Context;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static restoreBodySourceKey(Landroid/content/Context;J)J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 553
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->PROJECTION_SOURCE_KEY:[Ljava/lang/String;

    const-string/jumbo v3, "messageKey=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    .line 576
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_TEXT:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreTextWithMessageId(Landroid/content/Context;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static restoreBodyWithCursor(Landroid/database/Cursor;)Lcom/android/emailcommon/provider/EmailContent$Body;
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 487
    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    const-class v1, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-static {p0, v1}, Lcom/android/emailcommon/provider/EmailContent$Body;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Body;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    if-eqz p0, :cond_0

    .line 497
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v1

    .line 496
    :cond_1
    if-eqz p0, :cond_2

    .line 497
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v1, v2

    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "ie":Ljava/lang/IllegalStateException;
    :try_start_1
    const-string/jumbo v1, "Bug4516"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    if-eqz p0, :cond_3

    .line 497
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v1, v2

    goto :goto_0

    .line 496
    .end local v0    # "ie":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    if-eqz p0, :cond_4

    .line 497
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static restoreBodyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    const/4 v3, 0x0

    .line 503
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 504
    .local v1, "u":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 506
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v0

    .line 507
    :cond_0
    invoke-static {v6}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithCursor(Landroid/database/Cursor;)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v0

    return-object v0
.end method

.method public static restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 511
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "messageKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 515
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 517
    const-string/jumbo v0, "EMail"

    const-string/jumbo v1, "curosr c == null"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 520
    :goto_0
    return-object v5

    :cond_0
    invoke-static {v6}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithCursor(Landroid/database/Cursor;)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v5

    goto :goto_0
.end method

.method public static restoreIntroTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 595
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_INTRO:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreTextWithMessageId(Landroid/content/Context;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 590
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_REPLY_HTML:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreTextWithMessageId(Landroid/content/Context;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static restoreReplyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 585
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->COMMON_PROJECTION_REPLY_TEXT:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreTextWithMessageId(Landroid/content/Context;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static restoreTextWithMessageId(Landroid/content/Context;J[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J
    .param p3, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 561
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "messageKey=?"

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 563
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v0

    .line 565
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 571
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v5

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static updateBodyWithMessageId(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x0

    .line 540
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 541
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Body;->lookupBodyIdWithMessageId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 542
    .local v0, "bodyId":J
    const-string/jumbo v4, "messageKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 543
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 544
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 549
    :goto_0
    return-void

    .line 546
    :cond_0
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 547
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v2, v3, p3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public restore(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 600
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mBaseUri:Landroid/net/Uri;

    .line 601
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    .line 602
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 603
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 604
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    .line 605
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .line 606
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    .line 607
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    .line 608
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mQuotedTextStartPos:I

    .line 609
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mShortBody:Ljava/lang/String;

    .line 610
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mQuoteIndex:J

    .line 611
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 465
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 468
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "messageKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 469
    const-string/jumbo v1, "htmlContent"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string/jumbo v1, "textContent"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string/jumbo v1, "htmlReply"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string/jumbo v1, "textReply"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string/jumbo v1, "sourceMessageKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 474
    const-string/jumbo v1, "introText"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string/jumbo v1, "shortBody"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mShortBody:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string/jumbo v1, "quoteIndex"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mQuoteIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 477
    return-object v0
.end method
