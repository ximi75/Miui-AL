.class public Lcom/kingsoft/email/mail/attachment/AttachmentFilter;
.super Ljava/lang/Object;
.source "AttachmentFilter.java"


# static fields
.field public static final APPLE_TRASH_ATTACHMENT_POSTFIX:Ljava/lang/String; = "..HTM"

.field public static final APPLE_TRASH_ATTACHMENT_PREFIX:Ljava/lang/String; = "ATT00"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isATT00HTM(Ljava/lang/String;)Z
    .locals 4
    .param p0, "attachmentName"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string/jumbo v2, "^ATT00.*\\.\\.HTM$"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 31
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 33
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    return v2
.end method

.method private static isEmptyString(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 45
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static isFilterOut(Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z
    .locals 2
    .param p0, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 15
    .local v0, "attachmentName":Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentFilter;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentFilter;->isATT00HTM(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    const/4 v1, 0x1

    .line 18
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFilterOut(Lcom/kingsoft/mail/providers/Attachment;)Z
    .locals 2
    .param p0, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "attachmentName":Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentFilter;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentFilter;->isATT00HTM(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    const/4 v1, 0x1

    .line 26
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIMAGE00(Ljava/lang/String;)Z
    .locals 2
    .param p0, "attachmentName"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "image00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
