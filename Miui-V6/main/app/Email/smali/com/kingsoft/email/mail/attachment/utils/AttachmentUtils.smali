.class public Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;
.super Ljava/lang/Object;
.source "AttachmentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$NetWorkBroadcastReceiver;,
        Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field public static DISK_MIN_FREE_SIZE:I = 0x0

.field private static final READ_TIMEOUT:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "AttachmentUtils"

.field public static UNIT_BYTES_CONVERT_2_GB:F

.field public static UNIT_BYTES_CONVERT_2_KB:F

.field public static UNIT_BYTES_CONVERT_2_MB:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 837
    const/16 v0, 0x400

    sput v0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->DISK_MIN_FREE_SIZE:I

    .line 838
    const/high16 v0, 0x44800000

    sput v0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->UNIT_BYTES_CONVERT_2_KB:F

    .line 839
    sget v0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->UNIT_BYTES_CONVERT_2_KB:F

    sget v1, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->UNIT_BYTES_CONVERT_2_KB:F

    mul-float/2addr v0, v1

    sput v0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->UNIT_BYTES_CONVERT_2_MB:F

    .line 840
    sget v0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->UNIT_BYTES_CONVERT_2_MB:F

    sget v1, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->UNIT_BYTES_CONVERT_2_KB:F

    mul-float/2addr v0, v1

    sput v0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->UNIT_BYTES_CONVERT_2_GB:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1010
    return-void
.end method

.method public static attachmentExists(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 329
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 332
    .local v1, "inStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 337
    :goto_0
    const/4 v3, 0x1

    .line 344
    .end local v1    # "inStream":Ljava/io/InputStream;
    :goto_1
    return v3

    .line 333
    .restart local v1    # "inStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 338
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "inStream":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 339
    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 341
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 342
    .local v2, "re":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "attachmentExists RuntimeException="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public static buildAccountEmailSelection(ZLcom/kingsoft/mail/providers/Account;)Ljava/lang/String;
    .locals 4
    .param p0, "isCombineAccount"    # Z
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    .line 258
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "accountKey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Account;->getAccountKey()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 262
    :cond_0
    const-string/jumbo v1, " 1=1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static buildEscapeParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "strSearchFilter"    # Ljava/lang/String;

    .prologue
    .line 379
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 380
    .local v5, "sbParam":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 381
    .local v2, "cSearchFilters":[C
    move-object v0, v2

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-char v1, v0, v3

    .line 382
    .local v1, "cSearchFilter":C
    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 381
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 385
    .end local v1    # "cSearchFilter":C
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static buildFilterSelection(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "inboxIds"    # Ljava/lang/String;

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "contentId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IS NULL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "UPPER(fileName)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " NOT LIKE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'ATT00%..HTM\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string/jumbo v1, " AND isDeleted != 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string/jumbo v1, " AND exists(select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mailboxKey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in (SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Mailbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " where mailboxKey in ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "messageKey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static buildJointProjection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "columnName"    # Ljava/lang/String;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .param p4, "alias"    # Ljava/lang/String;

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildSearchSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v0, "sbSQL":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "fileName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " LIKE ? escape \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "senderDisplayName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " LIKE ? escape \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static buildSenderEmailSelection(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "strSenderEmail"    # Ljava/lang/String;

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v0, "sbSQL":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "senderAddress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calculateSizeInByte(Landroid/os/StatFs;)F
    .locals 2
    .param p0, "stat"    # Landroid/os/StatFs;

    .prologue
    .line 883
    if-eqz p0, :cond_0

    .line 884
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 887
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static calculateSizeInMB(Landroid/os/StatFs;)F
    .locals 3
    .param p0, "stat"    # Landroid/os/StatFs;

    .prologue
    .line 874
    if-eqz p0, :cond_0

    .line 875
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->UNIT_BYTES_CONVERT_2_MB:F

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 877
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs createObjectAnimator(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;[F)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "values"    # [F

    .prologue
    .line 370
    invoke-static {p0, p1, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 372
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 374
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 375
    return-object v0
.end method

.method public static getAbsolutePathFromInternalUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 658
    const/4 v2, 0x0

    .line 659
    .local v2, "finalPath":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 660
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 661
    .local v7, "uriString":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "content://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "RAW"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 662
    new-instance v4, Ljava/lang/StringBuffer;

    const-string/jumbo v8, "file://"

    invoke-direct {v4, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 663
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 664
    .local v5, "segmentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 665
    .local v6, "size":I
    add-int/lit8 v8, v6, -0x3

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 666
    .local v0, "accountId":Ljava/lang/String;
    add-int/lit8 v8, v6, -0x2

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 669
    .local v1, "attId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".db_att"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->getMappedAppStorageDirectoryPerAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 671
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 678
    .end local v0    # "accountId":Ljava/lang/String;
    .end local v1    # "attId":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .end local v5    # "segmentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "size":I
    .end local v7    # "uriString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 673
    .restart local v7    # "uriString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "AttachmentUtils"

    const-string/jumbo v9, "this uri is not an internal uri : %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 674
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getAccount(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Account;
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "attAccountKey"    # J

    .prologue
    const/4 v3, 0x0

    .line 556
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "uiaccount"

    invoke-static {v1, p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 560
    .local v7, "accountCursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 573
    :goto_0
    return-object v3

    .line 564
    :cond_0
    const/4 v6, 0x0

    .line 566
    .local v6, "account":Lcom/kingsoft/mail/providers/Account;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    new-instance v6, Lcom/kingsoft/mail/providers/Account;

    .end local v6    # "account":Lcom/kingsoft/mail/providers/Account;
    invoke-direct {v6, v7}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    .restart local v6    # "account":Lcom/kingsoft/mail/providers/Account;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v6

    .line 573
    goto :goto_0

    .line 570
    .end local v6    # "account":Lcom/kingsoft/mail/providers/Account;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getAttachmentByContentIdAndMessageId(Landroid/content/Context;Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "messageId"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 478
    if-nez p0, :cond_0

    .line 479
    const-string/jumbo v0, "AttachmentUtils"

    const-string/jumbo v1, "Invalid context"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 500
    :goto_0
    return-object v5

    .line 483
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "contentId= ? AND messageKey = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    const/4 v9, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 488
    .local v8, "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 489
    .local v6, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v8, :cond_2

    .line 491
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    new-instance v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    .end local v6    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .local v7, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :try_start_1
    invoke-virtual {v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v7

    .line 496
    .end local v7    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v6    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v5, v6

    .line 500
    goto :goto_0

    .line 496
    :catchall_0
    move-exception v0

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v6    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v7    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v6    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    goto :goto_1
.end method

.method public static getAttachmentByContentUri(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 453
    if-nez p0, :cond_0

    .line 454
    const-string/jumbo v0, "AttachmentUtils"

    const-string/jumbo v1, "Invalid context"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 474
    :goto_0
    return-object v5

    .line 458
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "contentUri= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 462
    .local v8, "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 463
    .local v6, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v8, :cond_2

    .line 465
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    new-instance v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    .end local v6    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .local v7, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :try_start_1
    invoke-virtual {v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v7

    .line 470
    .end local v7    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v6    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v5, v6

    .line 474
    goto :goto_0

    .line 470
    :catchall_0
    move-exception v0

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v6    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v7    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v6    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    goto :goto_1
.end method

.method public static getAttachmentContentUri(Landroid/content/Context;Lcom/kingsoft/mail/providers/Attachment;)Landroid/net/Uri;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "att"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    .line 505
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 506
    :cond_0
    const/4 v9, 0x0

    .line 532
    :cond_1
    :goto_0
    return-object v9

    .line 509
    :cond_2
    const/4 v9, 0x0

    .line 510
    .local v9, "localFileUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "contentUri"

    aput-object v4, v2, v3

    const-string/jumbo v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentId(Lcom/kingsoft/mail/providers/Attachment;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 516
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 517
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 518
    const-string/jumbo v0, "contentUri"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 519
    .local v8, "idxUri":I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 520
    .local v10, "uri":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 521
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 526
    .end local v8    # "idxUri":I
    .end local v10    # "uri":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_1

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 523
    :catch_0
    move-exception v7

    .line 524
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    if-eqz v6, :cond_1

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 526
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getAttachmentFormatIcon(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-object v0, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->ATTACHMENT_FORMART_ICON_RES:[I

    invoke-static {p0, p1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getLocalFormat(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public static getAttachmentId(Lcom/kingsoft/mail/providers/Attachment;)J
    .locals 3
    .param p0, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    .line 447
    iget-object v1, p0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "contentUri":Ljava/lang/String;
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getAttachmentMd5(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "strFileName"    # Ljava/lang/String;

    .prologue
    .line 351
    const/4 v1, 0x0

    .line 353
    .local v1, "inStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 354
    invoke-static {v1, p2}, Lcom/kingsoft/email/mail/attachment/MD5Util;->getMD5(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 358
    if-eqz v1, :cond_0

    .line 360
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 363
    :cond_0
    :goto_0
    return-object v2

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 355
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    if-eqz v1, :cond_0

    .line 360
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 361
    :catch_2
    move-exception v0

    .line 362
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 358
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 360
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 363
    :cond_1
    :goto_1
    throw v2

    .line 361
    :catch_3
    move-exception v0

    .line 362
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getAttachmentSaveStatusIcon(Z)I
    .locals 2
    .param p0, "isSaved"    # Z

    .prologue
    .line 97
    if-eqz p0, :cond_0

    .line 98
    sget-object v0, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->ATTACHMENT_SAVE_STATES_ICON_RES:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 100
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->ATTACHMENT_SAVE_STATES_ICON_RES:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static getAvailableExternalMemorySize(Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;)F
    .locals 5
    .param p0, "unit"    # Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

    .prologue
    .line 897
    invoke-static {}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->isSDCardExist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 898
    const-string/jumbo v2, "AttachmentUtils"

    const-string/jumbo v3, "sdcard is not exist"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 899
    const/4 v2, 0x0

    .line 903
    :goto_0
    return v2

    .line 901
    :cond_0
    invoke-static {}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getExternalMemoryPath()Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getStatFs(Ljava/lang/String;)Landroid/os/StatFs;

    move-result-object v1

    .line 903
    .local v1, "stat":Landroid/os/StatFs;
    sget-object v2, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;->BYTE:Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->calculateSizeInByte(Landroid/os/StatFs;)F

    move-result v2

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->calculateSizeInMB(Landroid/os/StatFs;)F

    move-result v2

    goto :goto_0
.end method

.method public static getAvailableInternalMemorySize(Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;)F
    .locals 3
    .param p0, "unit"    # Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

    .prologue
    .line 891
    invoke-static {}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getInternalMemoryPath()Ljava/lang/String;

    move-result-object v0

    .line 892
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getStatFs(Ljava/lang/String;)Landroid/os/StatFs;

    move-result-object v1

    .line 893
    .local v1, "stat":Landroid/os/StatFs;
    sget-object v2, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;->BYTE:Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->calculateSizeInByte(Landroid/os/StatFs;)F

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->calculateSizeInMB(Landroid/os/StatFs;)F

    move-result v2

    goto :goto_0
.end method

.method public static getAvailableSDCard2MemorySize(Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;)F
    .locals 3
    .param p0, "unit"    # Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

    .prologue
    .line 910
    invoke-static {}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getSDCard2MemoryPath()Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getStatFs(Ljava/lang/String;)Landroid/os/StatFs;

    move-result-object v1

    .line 912
    .local v1, "stat":Landroid/os/StatFs;
    sget-object v2, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;->BYTE:Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->calculateSizeInByte(Landroid/os/StatFs;)F

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->calculateSizeInMB(Landroid/os/StatFs;)F

    move-result v2

    goto :goto_0
.end method

.method public static getExternalMemoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileNameUnknown(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 1027
    if-nez p0, :cond_0

    .line 1028
    const-string/jumbo p0, "Unknown"

    .line 1030
    :cond_0
    return-object p0
.end method

.method public static getFolder(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Folder;
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "attMailboxKey"    # J

    .prologue
    const/4 v3, 0x0

    .line 536
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "uifolder"

    invoke-static {v1, p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 540
    .local v7, "folderCursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 552
    :goto_0
    return-object v3

    .line 544
    :cond_0
    const/4 v6, 0x0

    .line 546
    .local v6, "folder":Lcom/kingsoft/mail/providers/Folder;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    new-instance v6, Lcom/kingsoft/mail/providers/Folder;

    .end local v6    # "folder":Lcom/kingsoft/mail/providers/Folder;
    invoke-direct {v6, v7}, Lcom/kingsoft/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    .restart local v6    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v6

    .line 552
    goto :goto_0

    .line 550
    .end local v6    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getInlineImage(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;
    .locals 13
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 628
    const-string/jumbo v0, "<img[^>]*src=\"((content|file)(?-i):[^\"]*)\""

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 630
    .local v11, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v11, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 631
    .local v10, "match":Ljava/util/regex/Matcher;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 633
    .local v9, "mapInlineImage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :cond_0
    :goto_0
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 634
    invoke-virtual {v10, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 636
    .local v8, "contentUri":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "contentUri= ? and contentId is not null "

    new-array v4, v12, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 642
    .local v7, "c":Landroid/database/Cursor;
    new-instance v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 643
    .local v6, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v7, :cond_0

    .line 645
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)V

    .line 647
    invoke-interface {v9, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 654
    .end local v6    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "contentUri":Ljava/lang/String;
    :cond_2
    return-object v9
.end method

.method public static getInternalMemoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 852
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastViewedAccount()Lcom/kingsoft/mail/providers/Account;
    .locals 2

    .prologue
    .line 292
    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->getInstance()Lcom/kingsoft/mail/providers/MailAppProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/MailAppProvider;->getLastViewedAccount()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "uriStr":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 294
    const/4 v1, 0x0

    .line 295
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/providers/MailAppProvider;->getAccountFromAccountUri(Landroid/net/Uri;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    goto :goto_0
.end method

.method private static getLocalFormat(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x3

    .line 106
    .local v0, "ret":I
    const-string/jumbo v1, "audio/amr"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const/4 v0, 0x0

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    const-string/jumbo v1, "application/vnd.android.package-archive"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    :cond_2
    const-string/jumbo v1, "application/audio"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    const/4 v0, 0x2

    goto :goto_0

    .line 112
    :cond_3
    const-string/jumbo v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    const/4 v0, 0x3

    goto :goto_0

    .line 114
    :cond_4
    const-string/jumbo v1, "application/msword"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 115
    const/4 v0, 0x4

    goto :goto_0

    .line 116
    :cond_5
    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 117
    const/4 v0, 0x4

    goto :goto_0

    .line 118
    :cond_6
    const-string/jumbo v1, "application/dps"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 119
    const/4 v0, 0x5

    goto :goto_0

    .line 120
    :cond_7
    const-string/jumbo v1, "application/dpt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 121
    const/4 v0, 0x6

    goto :goto_0

    .line 122
    :cond_8
    const-string/jumbo v1, "application/et"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 123
    const/4 v0, 0x7

    goto :goto_0

    .line 124
    :cond_9
    const-string/jumbo v1, "application/ett"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 125
    const/16 v0, 0x8

    goto :goto_0

    .line 126
    :cond_a
    const-string/jumbo v1, "application/fav"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 127
    const/16 v0, 0x9

    goto :goto_0

    .line 128
    :cond_b
    const-string/jumbo v1, "application/folder"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 129
    const/16 v0, 0xa

    goto :goto_0

    .line 130
    :cond_c
    const-string/jumbo v1, "audio/midi"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 131
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 132
    :cond_d
    const-string/jumbo v1, "audio/mpeg"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 133
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 134
    :cond_e
    const-string/jumbo v1, "application/pdf"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 135
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 136
    :cond_f
    const-string/jumbo v1, "application/pic"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 137
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 138
    :cond_10
    const-string/jumbo v1, "image/jpeg"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 139
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 140
    :cond_11
    const-string/jumbo v1, "image/x-ms-bmp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 141
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 142
    :cond_12
    const-string/jumbo v1, "image/gif"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 143
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 144
    :cond_13
    const-string/jumbo v1, "image/png"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 145
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 146
    :cond_14
    const-string/jumbo v1, "text/xml"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 147
    const/16 v0, 0x1a

    goto/16 :goto_0

    .line 148
    :cond_15
    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 149
    const/16 v0, 0x1d

    goto/16 :goto_0

    .line 150
    :cond_16
    const-string/jumbo v1, "text/html"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 151
    const/16 v0, 0x1b

    goto/16 :goto_0

    .line 152
    :cond_17
    const-string/jumbo v1, "application/zip"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 153
    const/16 v0, 0x1c

    goto/16 :goto_0

    .line 154
    :cond_18
    const-string/jumbo v1, "application/x-zip-compressed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 155
    const/16 v0, 0x1c

    goto/16 :goto_0

    .line 156
    :cond_19
    const-string/jumbo v1, "application/vnd.ms-excel"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 157
    const/16 v0, 0x1d

    goto/16 :goto_0

    .line 158
    :cond_1a
    const-string/jumbo v1, "application/vnd.ms-powerpoint"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string/jumbo v1, ".pps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 160
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 161
    :cond_1b
    const-string/jumbo v1, "application/vnd.ms-powerpoint"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string/jumbo v1, ".ppt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 163
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 164
    :cond_1c
    const-string/jumbo v1, "application/vnd.ms-powerpoint"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string/jumbo v1, ".pot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 166
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 167
    :cond_1d
    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 168
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 169
    :cond_1e
    const-string/jumbo v1, "application/rar"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 170
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 171
    :cond_1f
    const-string/jumbo v1, "application/theme"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 172
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 173
    :cond_20
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 174
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 175
    :cond_21
    const-string/jumbo v1, "text/x-vcard"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 176
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 177
    :cond_22
    const-string/jumbo v1, "application/video"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string/jumbo v1, "application/flv"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string/jumbo v1, "application/mkv"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 180
    :cond_23
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 181
    :cond_24
    if-eqz p0, :cond_25

    const-string/jumbo v1, "video"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 182
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 184
    :cond_25
    const-string/jumbo v1, "audio/x-wav"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 185
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 186
    :cond_26
    const-string/jumbo v1, "audio/x-ms-wma"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 187
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 188
    :cond_27
    const-string/jumbo v1, "application/wps"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 189
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 190
    :cond_28
    const-string/jumbo v1, "application/wpt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const/16 v0, 0x19

    goto/16 :goto_0
.end method

.method public static getSDCard2MemoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 861
    const-string/jumbo v0, "/mnt/sdcard1"

    return-object v0
.end method

.method public static getStatFs(Ljava/lang/String;)Landroid/os/StatFs;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 866
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    :goto_0
    return-object v1

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 870
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getViewConversation(Landroid/content/Context;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/Integer;Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Conversation;
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "attMessageKey"    # Ljava/lang/Integer;
    .param p3, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    const/4 v3, 0x0

    .line 600
    const/4 v6, 0x0

    .line 601
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 602
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    const-string/jumbo v0, "messageKey"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 604
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 606
    if-nez v6, :cond_0

    .line 616
    :goto_0
    return-object v3

    .line 610
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    new-instance v3, Lcom/kingsoft/mail/providers/Conversation;

    invoke-direct {v3, v6}, Lcom/kingsoft/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getViewConversationIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/Integer;Lcom/kingsoft/mail/providers/Account;)Landroid/content/Intent;
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "attMessageKey"    # Ljava/lang/Integer;
    .param p3, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    const/4 v3, 0x0

    .line 578
    const/4 v6, 0x0

    .line 579
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 580
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    const-string/jumbo v0, "messageKey"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 582
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 584
    if-nez v6, :cond_0

    .line 595
    :goto_0
    return-object v3

    .line 588
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    invoke-static {p0, p3, p1, v6}, Lcom/kingsoft/mail/utils/NotificationUtils;->createViewConversationIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;Landroid/database/Cursor;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 593
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static hasUnloadedInlineImage(Ljava/lang/String;)Z
    .locals 2
    .param p0, "bodyHtml"    # Ljava/lang/String;

    .prologue
    .line 620
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "<img[^>]*src=\"cid(?-i):([^\"]*)\""

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAttachmentSaved(Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z
    .locals 3
    .param p0, "att"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "ret":Z
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    if-ne v1, v2, :cond_0

    .line 276
    const/4 v0, 0x1

    .line 278
    :cond_0
    return v0
.end method

.method public static isEligibleForDownloadExternal(J)Z
    .locals 7
    .param p0, "attSize"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 918
    sget-object v3, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;->BYTE:Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

    invoke-static {v3}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAvailableExternalMemorySize(Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;)F

    move-result v0

    .line 919
    .local v0, "sdSize":F
    const-string/jumbo v3, "AttachmentUtils"

    const-string/jumbo v4, "SD card size:%f bytes, target size:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 920
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-gez v3, :cond_0

    .line 921
    sget v3, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->DISK_MIN_FREE_SIZE:I

    int-to-long p0, v3

    .line 924
    :cond_0
    long-to-float v3, p0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 925
    const-string/jumbo v2, "AttachmentUtils"

    const-string/jumbo v3, "Ineligible for downloading to external"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 928
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static isEligibleForDownloadInternal(J)Z
    .locals 7
    .param p0, "attSize"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 933
    sget-object v3, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;->BYTE:Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

    invoke-static {v3}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAvailableInternalMemorySize(Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;)F

    move-result v0

    .line 935
    .local v0, "sdSize":F
    const-string/jumbo v3, "AttachmentUtils"

    const-string/jumbo v4, "Internal Memory size:%f bytes, target size:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 937
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-gez v3, :cond_0

    .line 938
    sget v3, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->DISK_MIN_FREE_SIZE:I

    int-to-long p0, v3

    .line 941
    :cond_0
    long-to-float v3, p0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 942
    const-string/jumbo v2, "AttachmentUtils"

    const-string/jumbo v3, "Ineligible for downloading internal"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 945
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static isHandleableCompressedFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 282
    sget-object v0, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->HANDLEABLE_ATTACHMENT_COMPRESSED_FILE_TYPES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRarCompressedFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 287
    sget-object v0, Lcom/kingsoft/email/mail/attachment/AttachmentContants;->HANDLEABLE_ATTACHMENT_RAR_FILE_TYPES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSDCardExist()Z
    .locals 2

    .prologue
    .line 844
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    const/4 v0, 0x1

    .line 848
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeIntentStack(Landroid/content/Context;)[Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 965
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/content/Intent;

    .line 966
    .local v0, "intents":[Landroid/content/Intent;
    const/4 v1, 0x0

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/kingsoft/email2/ui/MailActivityEmail;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v2}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    .line 967
    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    .line 968
    return-object v0
.end method

.method public static mergeProjection([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "array1"    # [Ljava/lang/String;
    .param p1, "array2"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 197
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Ljava/lang/String;

    .line 198
    .local v0, "ret":[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    return-object v0
.end method

.method public static moveAttachmentToExternal(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    .line 817
    new-instance v0, Lcom/kingsoft/mail/providers/Attachment;

    invoke-direct {v0}, Lcom/kingsoft/mail/providers/Attachment;-><init>()V

    .line 818
    .local v0, "att":Lcom/kingsoft/mail/providers/Attachment;
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    .line 819
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 820
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    iput v1, v0, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    .line 821
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDownloadedSize:I

    iput v1, v0, Lcom/kingsoft/mail/providers/Attachment;->downloadedSize:I

    .line 822
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    iput v1, v0, Lcom/kingsoft/mail/providers/Attachment;->flags:I

    .line 823
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v1, v1

    iput v1, v0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    .line 824
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    iput v1, v0, Lcom/kingsoft/mail/providers/Attachment;->state:I

    .line 825
    const/4 v1, 0x0

    iput v1, v0, Lcom/kingsoft/mail/providers/Attachment;->type:I

    .line 826
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 827
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/providers/Attachment;->setName(Ljava/lang/String;)Z

    .line 829
    invoke-static {p0, v0}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->moveAttachmentToExternal(Landroid/content/Context;Lcom/kingsoft/mail/providers/Attachment;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static moveAttachmentToExternal(Landroid/content/Context;Lcom/kingsoft/mail/providers/Attachment;)Ljava/lang/String;
    .locals 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    .line 692
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/mail/providers/Attachment;->isSavedToExternal()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 693
    const-string/jumbo v24, "AttachmentUtils"

    const-string/jumbo v25, "the call was not to save to sd or already saved to sd, just bail out: %s"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 694
    const/4 v5, 0x0

    .line 812
    :cond_0
    :goto_0
    return-object v5

    .line 698
    :cond_1
    const/4 v5, 0x0

    .line 699
    .local v5, "completeFilePath":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 700
    .local v17, "oldAttUri":Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAbsolutePathFromInternalUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x7

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 701
    .local v18, "oldFilePath":Ljava/lang/String;
    const-string/jumbo v24, "AttachmentUtils"

    const-string/jumbo v25, "oldFilePath %s"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v18, v26, v27

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 704
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Lcom/kingsoft/mail/providers/Attachment;->destination:I

    .line 706
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectoryExternal(Landroid/content/Context;)Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->createUniqueAttachmentFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v23

    .line 708
    .local v23, "uniqueFile":Ljava/io/File;
    if-nez v23, :cond_2

    .line 709
    const-string/jumbo v24, "AttachmentUtils"

    const-string/jumbo v25, "Cannot create unique external file for file %s"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v18, v26, v27

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 710
    const/4 v5, 0x0

    goto :goto_0

    .line 713
    :cond_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 715
    .local v14, "newFilePath":Ljava/lang/String;
    const-string/jumbo v24, "AttachmentUtils"

    const-string/jumbo v25, "newFilePath %s"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v14, v26, v27

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 716
    const/4 v10, 0x0

    .line 717
    .local v10, "inputStream":Ljava/io/InputStream;
    const/16 v19, 0x0

    .line 721
    .local v19, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "file://"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "UTF-8"

    invoke-static/range {v25 .. v26}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "+"

    const-string/jumbo v27, "%20"

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 733
    :goto_1
    :try_start_1
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 739
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .local v11, "inputStream":Ljava/io/InputStream;
    :try_start_2
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 745
    .end local v19    # "outputStream":Ljava/io/OutputStream;
    .local v20, "outputStream":Ljava/io/OutputStream;
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 746
    .local v15, "now":J
    const/16 v24, 0x1000

    move/from16 v0, v24

    new-array v7, v0, [B

    .line 747
    .local v7, "data":[B
    const/16 v22, 0x0

    .line 749
    .local v22, "size":I
    :cond_3
    invoke-virtual {v11, v7}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .line 750
    .local v13, "len":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v13, v0, :cond_8

    .line 751
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 753
    add-int v22, v22, v13

    .line 757
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    sub-long v24, v24, v15

    const-wide/32 v26, 0x36ee80

    cmp-long v24, v24, v26

    if-lez v24, :cond_3

    .line 758
    new-instance v24, Ljava/io/IOException;

    const-string/jumbo v25, "Timed out copying attachment."

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 776
    .end local v7    # "data":[B
    .end local v13    # "len":I
    .end local v15    # "now":J
    .end local v22    # "size":I
    :catch_0
    move-exception v8

    .line 778
    .local v8, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v24, "AttachmentUtils"

    const-string/jumbo v25, "Cannot write to file %s"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v14, v26, v27

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v8, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 779
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 783
    .end local v8    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v11, :cond_4

    .line 784
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 789
    :cond_4
    :goto_3
    if-eqz v20, :cond_5

    .line 790
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 797
    :cond_5
    :goto_4
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 798
    .local v6, "cv":Landroid/content/ContentValues;
    const-string/jumbo v24, "uiDestination"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 799
    const-string/jumbo v24, "contentUri"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v21

    .line 802
    .local v21, "segmentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v22

    .line 803
    .restart local v22    # "size":I
    add-int/lit8 v24, v22, -0x2

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 805
    .local v4, "attId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    sget-object v25, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    invoke-static/range {v25 .. v27}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 810
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v27}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0

    .line 726
    .end local v4    # "attId":Ljava/lang/String;
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v20    # "outputStream":Ljava/io/OutputStream;
    .end local v21    # "segmentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "size":I
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v19    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v9

    .line 727
    .local v9, "e1":Ljava/io/UnsupportedEncodingException;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "file://"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 728
    const-string/jumbo v24, "AttachmentUtils"

    const-string/jumbo v25, "UnsupportedEncodingException %s"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v14, v26, v27

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 734
    .end local v9    # "e1":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v8

    .line 735
    .local v8, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    const-string/jumbo v24, "AttachmentUtils"

    const-string/jumbo v25, "File not found for file %s"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v18, v26, v27

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 736
    const/4 v5, 0x0

    .line 783
    .end local v5    # "completeFilePath":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 784
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 789
    :cond_6
    :goto_5
    if-eqz v19, :cond_0

    .line 790
    :try_start_9
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 792
    :catch_3
    move-exception v24

    goto/16 :goto_0

    .line 740
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "completeFilePath":Ljava/lang/String;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    :catch_4
    move-exception v8

    .line 741
    .restart local v8    # "e":Ljava/io/FileNotFoundException;
    :try_start_a
    const-string/jumbo v24, "AttachmentUtils"

    const-string/jumbo v25, "File not found for file %s"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v14, v26, v27

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 742
    const/4 v5, 0x0

    .line 783
    .end local v5    # "completeFilePath":Ljava/lang/String;
    if-eqz v11, :cond_7

    .line 784
    :try_start_b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 789
    :cond_7
    :goto_6
    if-eqz v19, :cond_0

    .line 790
    :try_start_c
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_0

    .line 792
    :catch_5
    move-exception v24

    goto/16 :goto_0

    .line 764
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .end local v19    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "completeFilePath":Ljava/lang/String;
    .restart local v7    # "data":[B
    .restart local v13    # "len":I
    .restart local v15    # "now":J
    .restart local v20    # "outputStream":Ljava/io/OutputStream;
    .restart local v22    # "size":I
    :cond_8
    :try_start_d
    const-string/jumbo v24, "AttachmentUtils"

    const-string/jumbo v25, "contentUri before parse %s"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    move-object/from16 v28, v0

    aput-object v28, v26, v27

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 765
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 766
    const-string/jumbo v24, "AttachmentUtils"

    const-string/jumbo v25, "contentUri afters parse %s"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    move-object/from16 v28, v0

    aput-object v28, v26, v27

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 770
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v24, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 771
    .local v12, "intent":Landroid/content/Intent;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 772
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 775
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 782
    .end local v7    # "data":[B
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "len":I
    .end local v15    # "now":J
    .end local v22    # "size":I
    :catchall_0
    move-exception v24

    move-object/from16 v19, v20

    .end local v20    # "outputStream":Ljava/io/OutputStream;
    .restart local v19    # "outputStream":Ljava/io/OutputStream;
    move-object v10, v11

    .line 783
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    :goto_7
    if-eqz v10, :cond_9

    .line 784
    :try_start_e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 789
    :cond_9
    :goto_8
    if-eqz v19, :cond_a

    .line 790
    :try_start_f
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 793
    :cond_a
    :goto_9
    throw v24

    .line 786
    .end local v5    # "completeFilePath":Ljava/lang/String;
    .restart local v8    # "e":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v24

    goto/16 :goto_5

    .end local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    :catch_7
    move-exception v24

    goto/16 :goto_6

    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .end local v19    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "completeFilePath":Ljava/lang/String;
    .restart local v20    # "outputStream":Ljava/io/OutputStream;
    :catch_8
    move-exception v24

    goto/16 :goto_3

    .line 792
    :catch_9
    move-exception v24

    goto/16 :goto_4

    .line 786
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v20    # "outputStream":Ljava/io/OutputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v19    # "outputStream":Ljava/io/OutputStream;
    :catch_a
    move-exception v25

    goto :goto_8

    .line 792
    :catch_b
    move-exception v25

    goto :goto_9

    .line 782
    :catchall_1
    move-exception v24

    goto :goto_7

    .end local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    :catchall_2
    move-exception v24

    move-object v10, v11

    .end local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    goto :goto_7
.end method

.method public static selectComposeAccount(Landroid/content/Context;)Lcom/kingsoft/mail/providers/Account;
    .locals 10
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 299
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v6, "lstAccount":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Account;>;"
    invoke-static {p0}, Lcom/kingsoft/mail/utils/AccountUtils;->getAccounts(Landroid/content/Context;)[Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    .line 301
    .local v1, "accounts":[Lcom/kingsoft/mail/providers/Account;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v2, "accountsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    move-object v3, v1

    .local v3, "arr$":[Lcom/kingsoft/mail/providers/Account;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v3, v4

    .line 303
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "account":Lcom/kingsoft/mail/providers/Account;
    :cond_0
    if-eqz v2, :cond_1

    .line 306
    new-instance v7, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "\u9009\u62e9\u53d1\u9001\u8d26\u6237"

    invoke-virtual {v7, v8}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    new-instance v9, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$1;

    invoke-direct {v9, v6, v1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$1;-><init>(Ljava/util/List;[Lcom/kingsoft/mail/providers/Account;)V

    invoke-virtual {v8, v7, v9}, Lmiui/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    .line 321
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kingsoft/mail/providers/Account;

    :goto_1
    return-object v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static sendMail(JLandroid/content/Context;)V
    .locals 8
    .param p0, "accountId"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 975
    const/4 v0, 0x4

    invoke-static {p2, p0, p1, v0}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v6

    .line 978
    .local v6, "outboxId":J
    const-wide/16 v3, -0x1

    cmp-long v0, v6, v3

    if-nez v0, :cond_0

    .line 985
    :goto_0
    return-void

    .line 982
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/uirefresh/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 984
    .local v1, "refreshUri":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public static sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "specific"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x1f4

    .line 950
    const-string/jumbo v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 951
    .local v0, "nm":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 952
    .local v1, "notification":Landroid/app/Notification;
    const/high16 v3, 0x7f030000

    iput v3, v1, Landroid/app/Notification;->icon:I

    .line 953
    iput-object p1, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 954
    const/16 v3, -0x100

    iput v3, v1, Landroid/app/Notification;->ledARGB:I

    .line 955
    iput v4, v1, Landroid/app/Notification;->ledOnMS:I

    .line 956
    iput v4, v1, Landroid/app/Notification;->ledOffMS:I

    .line 957
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 958
    const/4 v3, 0x0

    invoke-static {p0}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->makeIntentStack(Landroid/content/Context;)[Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000000

    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 959
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v1, p0, p1, p2, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 960
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 961
    return-void
.end method

.method public static showAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    .line 1034
    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->attachmentExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1037
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1038
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1041
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->isHandleableCompressedFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1042
    const-class v1, Lcom/kingsoft/email/mail/attachment/ZipViewerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1043
    const-string/jumbo v1, "attachmentId"

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1044
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1052
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1047
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/Utils;->setIntentDataAndTypeAndNormalize(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1050
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static startAnimation(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "animId"    # Ljava/lang/Integer;
    .param p3, "animationEndImageId"    # Ljava/lang/Integer;

    .prologue
    .line 391
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 392
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$2;

    invoke-direct {v1, p1, p3}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$2;-><init>(Landroid/widget/ImageView;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 411
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 412
    return-void
.end method

.method public static startAnimation(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "animId"    # Ljava/lang/Integer;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "mime"    # Ljava/lang/String;
    .param p5, "animationEndImageId"    # Ljava/lang/Integer;

    .prologue
    .line 419
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 420
    .local v6, "animation":Landroid/view/animation/Animation;
    new-instance v0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$3;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$3;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/Integer;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 442
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 443
    return-void
.end method
