.class final Lcom/kingsoft/email/mail/store/imap/ImapElement$1;
.super Lcom/kingsoft/email/mail/store/imap/ImapElement;
.source "ImapElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/store/imap/ImapElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapElement;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public equalsForTest(Lcom/kingsoft/email/mail/store/imap/ImapElement;)Z
    .locals 1
    .param p1, "that"    # Lcom/kingsoft/email/mail/store/imap/ImapElement;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/kingsoft/email/mail/store/imap/ImapElement;->equalsForTest(Lcom/kingsoft/email/mail/store/imap/ImapElement;)Z

    move-result v0

    return v0
.end method

.method public isList()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public isString()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "[NO ELEMENT]"

    return-object v0
.end method
