.class public Lcom/kingsoft/email/mail/store/imap/ImapMemoryLiteral;
.super Lcom/kingsoft/email/mail/store/imap/ImapString;
.source "ImapMemoryLiteral.java"


# static fields
.field public static final GB10830LowerString:Ljava/lang/String; = "charset=\"gb10830\""

.field public static final GB10830UpString:Ljava/lang/String; = "charset=\"GB10830\""

.field public static final GB2312LowerString:Ljava/lang/String; = "charset=\"gb2312\""

.field public static final GB2312UpString:Ljava/lang/String; = "charset=\"GB2312\""


# instance fields
.field private mData:[B


# direct methods
.method constructor <init>(Lcom/kingsoft/email/FixedLengthInputStream;JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 10
    .param p1, "in"    # Lcom/kingsoft/email/FixedLengthInputStream;
    .param p2, "attId"    # J
    .param p4, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L

    .line 51
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapString;-><init>()V

    .line 55
    invoke-virtual {p1}, Lcom/kingsoft/email/FixedLengthInputStream;->getLength()I

    move-result v0

    .line 56
    .local v0, "mSize":I
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/kingsoft/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "pos":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 59
    invoke-static {p2, p3}, Lcom/kingsoft/email/service/AttachmentDownloadService;->isCancelingDownload(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    new-instance v3, Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;

    const-string/jumbo v4, "cancel"

    invoke-direct {v3, v4}, Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    iget-object v4, p0, Lcom/kingsoft/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v4, v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v3, v1, v4}, Lcom/kingsoft/email/FixedLengthInputStream;->read([BII)I

    move-result v2

    .line 64
    .local v2, "read":I
    if-gez v2, :cond_4

    .line 78
    .end local v2    # "read":I
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v3, v3

    if-eq v1, v3, :cond_3

    .line 79
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 81
    :cond_3
    return-void

    .line 67
    .restart local v2    # "read":I
    :cond_4
    add-int/2addr v1, v2

    .line 68
    if-eqz p4, :cond_0

    .line 69
    if-nez v0, :cond_5

    .line 70
    const-wide/high16 v3, 0x4059000000000000L

    int-to-double v5, v1

    div-double v5, v7, v5

    sub-double v5, v7, v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-interface {p4, v9, v3}, Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentStatus(II)V

    goto :goto_0

    .line 73
    :cond_5
    invoke-interface {p4, v9, v1}, Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentStatus(II)V

    goto :goto_0
.end method

.method public static isEncodeByGB2312OrGB18030(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string/jumbo v0, "charset=\"GB2312\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "charset=\"GB10830\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "charset=\"gb2312\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "charset=\"gb10830\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    .line 86
    invoke-super {p0}, Lcom/kingsoft/email/mail/store/imap/ImapString;->destroy()V

    .line 87
    return-void
.end method

.method public getAsStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/kingsoft/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/kingsoft/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/kingsoft/email/mail/store/imap/ImapMemoryLiteral;->isEncodeByGB2312OrGB18030(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/Utility;->fromGB18030([B)Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/Utility;->fromAscii([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    const-string/jumbo v0, "{%d byte literal(memory)}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingsoft/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
