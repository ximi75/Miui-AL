.class public Lcom/kingsoft/email/mail/transport/MailTransport;
.super Ljava/lang/Object;
.source "MailTransport.java"


# static fields
.field private static final HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

.field public static SOCKET_CONNECT_TIMEOUT:I

.field public static SOCKET_READ_TIMEOUT:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDebugLabel:Ljava/lang/String;

.field private final mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private mSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x2710

    sput v0, Lcom/kingsoft/email/mail/transport/MailTransport;->SOCKET_CONNECT_TIMEOUT:I

    .line 52
    const v0, 0xea60

    sput v0, Lcom/kingsoft/email/mail/transport/MailTransport;->SOCKET_READ_TIMEOUT:I

    .line 54
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/mail/transport/MailTransport;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "debugLabel"    # Ljava/lang/String;
    .param p3, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 70
    return-void
.end method

.method private InputStreamToByte(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 313
    .local v0, "bytestream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "ch":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 314
    int-to-char v6, v1

    const/16 v7, 0xd

    if-eq v6, v7, :cond_0

    .line 316
    int-to-char v6, v1

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2

    .line 322
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 323
    .local v4, "imgdata":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 324
    const-string/jumbo v2, "gb2312"

    .line 325
    .local v2, "code":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 328
    .end local v1    # "ch":I
    .end local v2    # "code":Ljava/lang/String;
    .end local v4    # "imgdata":[B
    :goto_1
    return-object v5

    .line 319
    .restart local v1    # "ch":I
    :cond_2
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    .end local v1    # "ch":I
    :catch_0
    move-exception v3

    .line 328
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, ""

    goto :goto_1
.end method

.method private static verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 5
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    move-object v1, p0

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 214
    .local v1, "ssl":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 216
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 217
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-nez v0, :cond_0

    .line 218
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string/jumbo v3, "Cannot verify SSL socket without session"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :cond_0
    sget-object v2, Lcom/kingsoft/email/mail/transport/MailTransport;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    invoke-interface {v2, p1, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Certificate hostname not useable for server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    :cond_1
    return-void
.end method


# virtual methods
.method public canTrustAllCertificates()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canTrySslSecurity()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canTryTlsSecurity()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clone()Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 4

    .prologue
    .line 81
    new-instance v0, Lcom/kingsoft/email/mail/transport/MailTransport;

    iget-object v1, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/email/mail/transport/MailTransport;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/transport/MailTransport;->clone()Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 260
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 265
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 269
    :goto_2
    iput-object v1, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    .line 270
    iput-object v1, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    .line 271
    iput-object v1, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    .line 272
    return-void

    .line 266
    :catch_0
    move-exception v0

    goto :goto_2

    .line 261
    :catch_1
    move-exception v0

    goto :goto_1

    .line 256
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/transport/MailTransport;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 366
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;,
            Lcom/kingsoft/emailcommon/mail/CertificateValidationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 110
    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 111
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "*** "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/transport/MailTransport;->getPort()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 116
    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/transport/MailTransport;->getPort()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 118
    .local v3, "socketAddress":Ljava/net/SocketAddress;
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/transport/MailTransport;->canTrySslSecurity()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    iget-object v4, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/kingsoft/emailcommon/utility/SSLUtils;->getSSLSocketFactory(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Z)Landroid/net/SSLCertificateSocketFactory;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/SSLCertificateSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    .line 124
    :goto_0
    iget-object v4, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    sget v5, Lcom/kingsoft/email/mail/transport/MailTransport;->SOCKET_CONNECT_TIMEOUT:I

    invoke-virtual {v4, v3, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 127
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/transport/MailTransport;->canTrySslSecurity()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v4

    if-nez v4, :cond_1

    .line 128
    iget-object v4, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kingsoft/email/mail/transport/MailTransport;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 130
    :cond_1
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/16 v6, 0x400

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v4, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    .line 131
    new-instance v4, Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const/16 v6, 0x200

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v4, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    .line 132
    iget-object v4, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    sget v5, Lcom/kingsoft/email/mail/transport/MailTransport;->SOCKET_READ_TIMEOUT:I

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 151
    return-void

    .line 122
    :cond_2
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    iput-object v4, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 133
    .end local v3    # "socketAddress":Ljava/net/SocketAddress;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljavax/net/ssl/SSLException;
    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 135
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 137
    :cond_3
    new-instance v4, Lcom/kingsoft/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/kingsoft/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 138
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    :catch_1
    move-exception v2

    .line 139
    .local v2, "ioe":Ljava/io/IOException;
    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 140
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 142
    :cond_4
    new-instance v4, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/16 v5, 0x21

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 144
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 145
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 146
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    :cond_5
    new-instance v4, Lcom/kingsoft/emailcommon/mail/MessagingException;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method public readLine(Z)Ljava/lang/String;
    .locals 6
    .param p1, "loggable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 339
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/transport/MailTransport;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 341
    .local v0, "in":Ljava/io/InputStream;
    invoke-direct {p0, v0}, Lcom/kingsoft/email/mail/transport/MailTransport;->InputStreamToByte(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "ret":Ljava/lang/String;
    if-eqz p1, :cond_0

    sget-boolean v3, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 357
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<<< "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 359
    :cond_0
    return-object v1
.end method

.method public reopenTls()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 165
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/kingsoft/emailcommon/utility/SSLUtils;->getSSLSocketFactory(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Z)Landroid/net/SSLCertificateSocketFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/transport/MailTransport;->getPort()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    .line 168
    iget-object v2, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    sget v3, Lcom/kingsoft/email/mail/transport/MailTransport;->SOCKET_READ_TIMEOUT:I

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 169
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v2, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    .line 170
    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljavax/net/ssl/SSLException;
    sget-boolean v2, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 174
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 176
    :cond_0
    new-instance v2, Lcom/kingsoft/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/kingsoft/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 177
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    :catch_1
    move-exception v1

    .line 178
    .local v1, "ioe":Ljava/io/IOException;
    sget-boolean v2, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 179
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 181
    :cond_1
    new-instance v2, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/16 v3, 0x21

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public setSoTimeout(I)V
    .locals 1
    .param p1, "timeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/kingsoft/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 242
    return-void
.end method

.method public writeLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "sensitiveReplacement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 287
    sget-boolean v2, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 288
    if-eqz p2, :cond_1

    sget-boolean v2, Lcom/kingsoft/emailcommon/Logging;->DEBUG_SENSITIVE:Z

    if-nez v2, :cond_1

    .line 289
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ">>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 296
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/transport/MailTransport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 297
    .local v1, "out":Ljava/io/OutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 298
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 299
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 300
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    return-void

    .line 291
    .end local v1    # "out":Ljava/io/OutputStream;
    :cond_1
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ">>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 303
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/transport/MailTransport;->close()V

    .line 304
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 305
    throw v0
.end method
