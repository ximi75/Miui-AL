.class Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;
.super Lcom/kingsoft/emailcommon/internet/MimeMessage;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapMessage"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/kingsoft/email/mail/store/ImapFolder;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "folder"    # Lcom/kingsoft/email/mail/store/ImapFolder;

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;-><init>()V

    .line 717
    iput-object p1, p0, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;->mUid:Ljava/lang/String;

    .line 718
    iput-object p2, p0, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;->mFolder:Lcom/kingsoft/emailcommon/mail/Folder;

    .line 719
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 727
    invoke-super {p0, p1}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 728
    return-void
.end method

.method public setFlag(Lcom/kingsoft/emailcommon/mail/Flag;Z)V
    .locals 4
    .param p1, "flag"    # Lcom/kingsoft/emailcommon/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 736
    invoke-super {p0, p1, p2}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setFlag(Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    .line 737
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;->mFolder:Lcom/kingsoft/emailcommon/mail/Folder;

    new-array v1, v2, [Lcom/kingsoft/emailcommon/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Lcom/kingsoft/emailcommon/mail/Flag;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/kingsoft/emailcommon/mail/Folder;->setFlags([Lcom/kingsoft/emailcommon/mail/Message;[Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    .line 738
    return-void
.end method

.method public setFlagInternal(Lcom/kingsoft/emailcommon/mail/Flag;Z)V
    .locals 0
    .param p1, "flag"    # Lcom/kingsoft/emailcommon/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 731
    invoke-super {p0, p1, p2}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setFlag(Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    .line 732
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 722
    iput p1, p0, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;->mSize:I

    .line 723
    return-void
.end method
