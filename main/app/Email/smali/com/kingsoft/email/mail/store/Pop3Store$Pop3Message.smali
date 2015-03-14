.class public Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
.super Lcom/kingsoft/emailcommon/internet/MimeMessage;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/store/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pop3Message"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "folder"    # Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;

    .prologue
    .line 888
    invoke-direct {p0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;-><init>()V

    .line 889
    iput-object p1, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->mUid:Ljava/lang/String;

    .line 890
    iput-object p2, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->mFolder:Lcom/kingsoft/emailcommon/mail/Folder;

    .line 891
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->mSize:I

    .line 892
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
    .line 900
    invoke-super {p0, p1}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 901
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

    .line 905
    invoke-super {p0, p1, p2}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setFlag(Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    .line 906
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->mFolder:Lcom/kingsoft/emailcommon/mail/Folder;

    new-array v1, v2, [Lcom/kingsoft/emailcommon/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Lcom/kingsoft/emailcommon/mail/Flag;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/kingsoft/emailcommon/mail/Folder;->setFlags([Lcom/kingsoft/emailcommon/mail/Message;[Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    .line 907
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 895
    iput p1, p0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->mSize:I

    .line 896
    return-void
.end method
