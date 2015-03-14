.class public Lcom/kingsoft/exchange/EasResponse;
.super Ljava/lang/Object;
.source "EasResponse.java"


# static fields
.field private static final HTTP_NEED_PROVISIONING:I = 0x1c1

.field private static final HTTP_REDIRECT:I = 0x1c3


# instance fields
.field private final mClientCertRequested:Z

.field private mClosed:Z

.field private final mEntity:Lorg/apache/http/HttpEntity;

.field private mInputStream:Ljava/io/InputStream;

.field private final mLength:I

.field private final mResponse:Lorg/apache/http/HttpResponse;

.field private final mStatus:I


# direct methods
.method private constructor <init>(Lorg/apache/http/HttpResponse;Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;J)V
    .locals 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "connManager"    # Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    .param p3, "reqTime"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/kingsoft/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    .line 61
    if-nez p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/kingsoft/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    .line 62
    iget-object v1, p0, Lcom/kingsoft/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/kingsoft/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, p0, Lcom/kingsoft/exchange/EasResponse;->mLength:I

    .line 67
    :goto_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 68
    .local v0, "status":I
    invoke-static {v0}, Lcom/kingsoft/exchange/EasResponse;->isAuthError(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, p3, p4}, Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;->hasDetectedUnsatisfiedCertReq(J)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/kingsoft/exchange/EasResponse;->mClientCertRequested:Z

    .line 70
    iget-boolean v1, p0, Lcom/kingsoft/exchange/EasResponse;->mClientCertRequested:Z

    if-eqz v1, :cond_0

    .line 71
    const/16 v0, 0x191

    .line 72
    iput-boolean v2, p0, Lcom/kingsoft/exchange/EasResponse;->mClosed:Z

    .line 74
    :cond_0
    iput v0, p0, Lcom/kingsoft/exchange/EasResponse;->mStatus:I

    .line 75
    return-void

    .line 61
    .end local v0    # "status":I
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    goto :goto_0

    .line 65
    :cond_2
    iput v3, p0, Lcom/kingsoft/exchange/EasResponse;->mLength:I

    goto :goto_1

    .restart local v0    # "status":I
    :cond_3
    move v1, v3

    .line 68
    goto :goto_2
.end method

.method public static fromHttpRequest(Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/kingsoft/exchange/EasResponse;
    .locals 7
    .param p0, "connManager"    # Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 83
    .local v1, "reqTime":J
    :try_start_0
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 89
    .local v3, "response":Lorg/apache/http/HttpResponse;
    new-instance v4, Lcom/kingsoft/exchange/EasResponse;

    invoke-direct {v4, v3, p0, v1, v2}, Lcom/kingsoft/exchange/EasResponse;-><init>(Lorg/apache/http/HttpResponse;Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;J)V

    return-object v4

    .line 84
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/AssertionError;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EasResponse fromHttpRequest failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 86
    .end local v0    # "e":Ljava/lang/AssertionError;
    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EasResponse fromHttpRequest failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static isAuthError(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 127
    const/16 v0, 0x191

    if-eq p0, v0, :cond_0

    const/16 v0, 0x193

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/kingsoft/exchange/EasResponse;->mClosed:Z

    if-nez v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/kingsoft/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/exchange/EasResponse;->mInputStream:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/util/zip/GZIPInputStream;

    if-eqz v0, :cond_1

    .line 203
    :try_start_1
    iget-object v0, p0, Lcom/kingsoft/exchange/EasResponse;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    :cond_1
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/exchange/EasResponse;->mClosed:Z

    .line 210
    :cond_2
    return-void

    .line 204
    :catch_0
    move-exception v0

    goto :goto_1

    .line 197
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/kingsoft/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 148
    iget-object v4, p0, Lcom/kingsoft/exchange/EasResponse;->mInputStream:Ljava/io/InputStream;

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/kingsoft/exchange/EasResponse;->mClosed:Z

    if-eqz v4, :cond_1

    .line 149
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Can\'t reuse stream or get closed stream"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 150
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    if-nez v4, :cond_2

    .line 151
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Can\'t get input stream without entity"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 153
    :cond_2
    const/4 v2, 0x0

    .line 156
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/kingsoft/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 157
    iget-object v4, p0, Lcom/kingsoft/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    const-string/jumbo v5, "Content-Encoding"

    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 158
    .local v0, "ceHeader":Lorg/apache/http/Header;
    if-eqz v0, :cond_3

    .line 159
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "encoding":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 162
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    move-object v2, v3

    .line 168
    .end local v0    # "ceHeader":Lorg/apache/http/Header;
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_3
    :goto_0
    iput-object v2, p0, Lcom/kingsoft/exchange/EasResponse;->mInputStream:Ljava/io/InputStream;

    .line 169
    return-object v2

    .line 166
    :catch_0
    move-exception v4

    goto :goto_0

    .line 165
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/kingsoft/exchange/EasResponse;->mLength:I

    return v0
.end method

.method public getRedirectAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    const-string/jumbo v1, "X-MS-Location"

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 136
    .local v0, "locHeader":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 139
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/kingsoft/exchange/EasResponse;->mStatus:I

    return v0
.end method

.method public isAuthError()Z
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lcom/kingsoft/exchange/EasResponse;->mStatus:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/kingsoft/exchange/EasResponse;->mLength:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForbidden()Z
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lcom/kingsoft/exchange/EasResponse;->mStatus:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMissingCertificate()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/kingsoft/exchange/EasResponse;->mClientCertRequested:Z

    return v0
.end method

.method public isProvisionError()Z
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/kingsoft/exchange/EasResponse;->mStatus:I

    const/16 v1, 0x1c1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/exchange/EasResponse;->isForbidden()Z

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

.method public isRedirectError()Z
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lcom/kingsoft/exchange/EasResponse;->mStatus:I

    const/16 v1, 0x1c3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/kingsoft/exchange/EasResponse;->mStatus:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
