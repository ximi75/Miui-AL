.class public Lcom/kingsoft/email/mail/store/imap/ImapSimpleString;
.super Lcom/kingsoft/email/mail/store/imap/ImapString;
.source "ImapSimpleString.java"


# instance fields
.field private mString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapString;-><init>()V

    .line 31
    if-eqz p1, :cond_0

    .end local p1    # "string":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/kingsoft/email/mail/store/imap/ImapSimpleString;->mString:Ljava/lang/String;

    .line 32
    return-void

    .line 31
    .restart local p1    # "string":Ljava/lang/String;
    :cond_0
    const-string/jumbo p1, ""

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/imap/ImapSimpleString;->mString:Ljava/lang/String;

    .line 37
    invoke-super {p0}, Lcom/kingsoft/email/mail/store/imap/ImapString;->destroy()V

    .line 38
    return-void
.end method

.method public getAsStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 48
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/imap/ImapSimpleString;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [B

    .line 49
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/imap/ImapSimpleString;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/imap/ImapSimpleString;->mString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v2
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/imap/ImapSimpleString;->mString:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/mail/store/imap/ImapSimpleString;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
