.class final Lcom/kingsoft/email/mail/store/imap/ImapString$1;
.super Lcom/kingsoft/email/mail/store/imap/ImapString;
.source "ImapString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/store/imap/ImapString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapString;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public getAsStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/io/ByteArrayInputStream;

    # getter for: Lcom/kingsoft/email/mail/store/imap/ImapString;->EMPTY_BYTES:[B
    invoke-static {}, Lcom/kingsoft/email/mail/store/imap/ImapString;->access$000()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, ""

    return-object v0
.end method
