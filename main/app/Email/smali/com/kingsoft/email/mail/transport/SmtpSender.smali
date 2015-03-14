.class public Lcom/kingsoft/email/mail/transport/SmtpSender;
.super Lcom/kingsoft/email/mail/Sender;
.source "SmtpSender.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPassword:Ljava/lang/String;

.field private mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/kingsoft/email/mail/Sender;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p2, p1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 70
    .local v0, "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    new-instance v2, Lcom/kingsoft/email/mail/transport/MailTransport;

    const-string/jumbo v3, "SMTP"

    invoke-direct {v2, p1, v3, v0}, Lcom/kingsoft/email/mail/transport/MailTransport;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;)V

    iput-object v2, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    .line 71
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/HostAuth;->getLogin()[Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "userInfoParts":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 73
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    .line 74
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    .line 76
    :cond_0
    return-void
.end method

.method private executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sensitiveReplacement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 264
    if-eqz p1, :cond_0

    .line 265
    iget-object v3, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v3, p1, p2}, Lcom/kingsoft/email/mail/transport/MailTransport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v3, v5}, Lcom/kingsoft/email/mail/transport/MailTransport;->readLine(Z)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "line":Ljava/lang/String;
    move-object v2, v1

    .line 272
    .local v2, "result":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1

    .line 273
    iget-object v3, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v3, v5}, Lcom/kingsoft/email/mail/transport/MailTransport;->readLine(Z)Ljava/lang/String;

    move-result-object v1

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 278
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 279
    .local v0, "c":C
    const/16 v3, 0x34

    if-eq v0, v3, :cond_2

    const/16 v3, 0x35

    if-ne v0, v3, :cond_3

    .line 280
    :cond_2
    new-instance v3, Lcom/kingsoft/emailcommon/mail/MessagingException;

    invoke-direct {v3, v2}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 284
    .end local v0    # "c":C
    :cond_3
    return-object v2
.end method

.method private executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/email/mail/transport/SmtpSender;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Sender;
    .locals 1
    .param p0, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/kingsoft/email/mail/transport/SmtpSender;

    invoke-direct {v0, p1, p0}, Lcom/kingsoft/email/mail/transport/SmtpSender;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    return-object v0
.end method

.method private saslAuthLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;,
            Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 308
    :try_start_0
    const-string/jumbo v1, "AUTH LOGIN"

    invoke-direct {p0, v1}, Lcom/kingsoft/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/username redacted/"

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/email/mail/transport/SmtpSender;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/password redacted/"

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/email/mail/transport/SmtpSender;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    invoke-virtual {v0}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_0

    .line 318
    new-instance v1, Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_0
    throw v0
.end method

.method private saslAuthPlain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;,
            Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 327
    .local v0, "data":[B
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 329
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AUTH PLAIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "AUTH PLAIN /redacted/"

    invoke-direct {p0, v2, v3}, Lcom/kingsoft/email/mail/transport/SmtpSender;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    return-void

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    invoke-virtual {v1}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x33

    if-ne v2, v3, :cond_0

    .line 333
    new-instance v2, Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;

    invoke-virtual {v1}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 335
    :cond_0
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/transport/MailTransport;->close()V

    .line 239
    return-void
.end method

.method public open()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 90
    :try_start_0
    iget-object v8, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    const v8, 0xea60

    sput v8, Lcom/kingsoft/email/mail/transport/MailTransport;->SOCKET_READ_TIMEOUT:I

    .line 91
    iget-object v8, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v8}, Lcom/kingsoft/email/mail/transport/MailTransport;->open()V

    .line 94
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/kingsoft/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    const-string/jumbo v5, "localhost"

    .line 98
    .local v5, "localHost":Ljava/lang/String;
    iget-object v8, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v8}, Lcom/kingsoft/email/mail/transport/MailTransport;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 99
    .local v4, "localAddress":Ljava/net/InetAddress;
    if-eqz v4, :cond_1

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/16 v8, 0x5b

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    instance-of v8, v4, Ljava/net/Inet6Address;

    if-eqz v8, :cond_0

    .line 104
    const-string/jumbo v8, "IPv6:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_0
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 110
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "EHLO "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/kingsoft/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "result":Ljava/lang/String;
    iget-object v8, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v8}, Lcom/kingsoft/email/mail/transport/MailTransport;->canTryTlsSecurity()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 121
    const-string/jumbo v8, "STARTTLS"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 122
    const-string/jumbo v8, "STARTTLS"

    invoke-direct {p0, v8}, Lcom/kingsoft/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    iget-object v8, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v8}, Lcom/kingsoft/email/mail/transport/MailTransport;->reopenTls()V

    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "EHLO "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/kingsoft/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 140
    :cond_2
    const-string/jumbo v8, ".*AUTH.*LOGIN.*$"

    invoke-virtual {v6, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 141
    .local v0, "authLoginSupported":Z
    const-string/jumbo v8, ".*AUTH.*PLAIN.*$"

    invoke-virtual {v6, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 143
    .local v1, "authPlainSupported":Z
    iget-object v8, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 145
    if-eqz v1, :cond_7

    .line 146
    iget-object v8, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    iget-object v9, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/kingsoft/email/mail/transport/SmtpSender;->saslAuthPlain(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_3
    :goto_0
    return-void

    .line 130
    .end local v0    # "authLoginSupported":Z
    .end local v1    # "authPlainSupported":Z
    :cond_4
    sget-boolean v8, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v8, :cond_5

    .line 131
    sget-object v8, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "TLS not supported but required"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 133
    :cond_5
    new-instance v8, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(I)V

    throw v8
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    .end local v4    # "localAddress":Ljava/net/InetAddress;
    .end local v5    # "localHost":Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 159
    .local v2, "e":Ljavax/net/ssl/SSLException;
    sget-boolean v8, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v8, :cond_6

    .line 160
    sget-object v8, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 162
    :cond_6
    new-instance v8, Lcom/kingsoft/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Lcom/kingsoft/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 148
    .end local v2    # "e":Ljavax/net/ssl/SSLException;
    .restart local v0    # "authLoginSupported":Z
    .restart local v1    # "authPlainSupported":Z
    .restart local v4    # "localAddress":Ljava/net/InetAddress;
    .restart local v5    # "localHost":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_7
    if-eqz v0, :cond_9

    .line 149
    :try_start_1
    iget-object v8, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    iget-object v9, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/kingsoft/email/mail/transport/SmtpSender;->saslAuthLogin(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 163
    .end local v0    # "authLoginSupported":Z
    .end local v1    # "authPlainSupported":Z
    .end local v4    # "localAddress":Ljava/net/InetAddress;
    .end local v5    # "localHost":Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 164
    .local v3, "ioe":Ljava/io/IOException;
    sget-boolean v8, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v8, :cond_8

    .line 165
    sget-object v8, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 167
    :cond_8
    new-instance v8, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/16 v9, 0x21

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 152
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v0    # "authLoginSupported":Z
    .restart local v1    # "authPlainSupported":Z
    .restart local v4    # "localAddress":Ljava/net/InetAddress;
    .restart local v5    # "localHost":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_9
    :try_start_2
    sget-boolean v8, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v8, :cond_a

    .line 153
    sget-object v8, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "No valid authentication mechanism found."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 155
    :cond_a
    new-instance v8, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(I)V

    throw v8
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method public sendMessage(J)V
    .locals 22
    .param p1, "messageId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/mail/transport/SmtpSender;->close()V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/mail/transport/SmtpSender;->open()V

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    .line 177
    .local v3, "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v3, :cond_0

    .line 178
    new-instance v2, Lcom/kingsoft/emailcommon/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Trying to send non-existent message id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0008

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    .line 183
    .local v16, "isConversationCacheAvailable":Z
    const-wide/16 v19, -0x1

    .line 184
    .local v19, "resourceKey":J
    if-eqz v16, :cond_1

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    iget-wide v4, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v2, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodySourceKey(Landroid/content/Context;J)J

    move-result-wide v19

    .line 187
    :cond_1
    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingsoft/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v13

    .line 188
    .local v13, "from":Lcom/kingsoft/emailcommon/mail/Address;
    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingsoft/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v21

    .line 189
    .local v21, "to":[Lcom/kingsoft/emailcommon/mail/Address;
    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingsoft/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v12

    .line 190
    .local v12, "cc":[Lcom/kingsoft/emailcommon/mail/Address;
    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingsoft/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v11

    .line 193
    .local v11, "bcc":[Lcom/kingsoft/emailcommon/mail/Address;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MAIL FROM:<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/kingsoft/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kingsoft/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    move-object/from16 v10, v21

    .local v10, "arr$":[Lcom/kingsoft/emailcommon/mail/Address;
    array-length v0, v10

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_2

    aget-object v9, v10, v14

    .line 195
    .local v9, "address":Lcom/kingsoft/emailcommon/mail/Address;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RCPT TO:<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/kingsoft/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kingsoft/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 197
    .end local v9    # "address":Lcom/kingsoft/emailcommon/mail/Address;
    :cond_2
    move-object v10, v12

    array-length v0, v10

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v14, v0, :cond_3

    aget-object v9, v10, v14

    .line 198
    .restart local v9    # "address":Lcom/kingsoft/emailcommon/mail/Address;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RCPT TO:<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/kingsoft/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kingsoft/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 200
    .end local v9    # "address":Lcom/kingsoft/emailcommon/mail/Address;
    :cond_3
    move-object v10, v11

    array-length v0, v10

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    aget-object v9, v10, v14

    .line 201
    .restart local v9    # "address":Lcom/kingsoft/emailcommon/mail/Address;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RCPT TO:<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/kingsoft/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kingsoft/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 203
    .end local v9    # "address":Lcom/kingsoft/emailcommon/mail/Address;
    :cond_4
    const-string/jumbo v2, "DATA"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kingsoft/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/kingsoft/emailcommon/utility/EOLConvertingOutputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v5}, Lcom/kingsoft/email/mail/transport/MailTransport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/kingsoft/emailcommon/utility/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeTo(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/io/OutputStream;ZZLjava/util/List;Z)V

    .line 211
    const-string/jumbo v2, "\r\n."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kingsoft/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    iget v2, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v4, 0x2000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_6

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    const v4, 0x7f1001ad

    invoke-static {v2, v4}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 218
    :goto_3
    const-wide/16 v4, 0x0

    cmp-long v2, v19, v4

    if-eqz v2, :cond_5

    if-eqz v16, :cond_5

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v18

    .line 220
    .local v18, "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    iget-wide v4, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Lcom/kingsoft/mail/preferences/MailPrefs;->removeQuickReplyCache(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .end local v18    # "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->hashCode()I

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v2, v4}, Lcom/kingsoft/email/service/CheckSendResultReceiver;->clearSentAlarmById(Landroid/content/Context;I)V

    .line 229
    return-void

    .line 216
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    const v4, 0x7f10012c

    invoke-static {v2, v4}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 223
    .end local v10    # "arr$":[Lcom/kingsoft/emailcommon/mail/Address;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    :catch_0
    move-exception v15

    .line 224
    .local v15, "ioe":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v4, "Unable to send message"

    invoke-direct {v2, v4, v15}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    .end local v15    # "ioe":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->hashCode()I

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/kingsoft/email/service/CheckSendResultReceiver;->clearSentAlarmById(Landroid/content/Context;I)V

    throw v2
.end method

.method setTransport(Lcom/kingsoft/email/mail/transport/MailTransport;)V
    .locals 0
    .param p1, "testTransport"    # Lcom/kingsoft/email/mail/transport/MailTransport;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/kingsoft/email/mail/transport/SmtpSender;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    .line 85
    return-void
.end method
