.class public Lcom/kingsoft/exchange/service/EasAutoDiscover;
.super Lcom/kingsoft/exchange/service/EasServerConnection;
.source "EasAutoDiscover.java"


# static fields
.field private static final AUTO_DISCOVER_PAGE:Ljava/lang/String; = "/autodiscover/autodiscover.xml"

.field private static final AUTO_DISCOVER_SCHEMA_PREFIX:Ljava/lang/String; = "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/"

.field private static final ELEMENT_NAME_ACTION:Ljava/lang/String; = "Action"

.field private static final ELEMENT_NAME_AUTODISCOVER:Ljava/lang/String; = "Autodiscover"

.field private static final ELEMENT_NAME_DISPLAY_NAME:Ljava/lang/String; = "DisplayName"

.field private static final ELEMENT_NAME_EMAIL_ADDRESS:Ljava/lang/String; = "EMailAddress"

.field private static final ELEMENT_NAME_ERROR:Ljava/lang/String; = "Error"

.field private static final ELEMENT_NAME_MOBILE_SYNC:Ljava/lang/String; = "MobileSync"

.field private static final ELEMENT_NAME_REDIRECT:Ljava/lang/String; = "Redirect"

.field private static final ELEMENT_NAME_RESPONSE:Ljava/lang/String; = "Response"

.field private static final ELEMENT_NAME_SERVER:Ljava/lang/String; = "Server"

.field private static final ELEMENT_NAME_SETTINGS:Ljava/lang/String; = "Settings"

.field private static final ELEMENT_NAME_TYPE:Ljava/lang/String; = "Type"

.field private static final ELEMENT_NAME_URL:Ljava/lang/String; = "Url"

.field private static final ELEMENT_NAME_USER:Ljava/lang/String; = "User"

.field private static final TAG:Ljava/lang/String; = "Exchange"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Account;-><init>()V

    new-instance v1, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasServerConnection;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/HostAuth;)V

    .line 56
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasAutoDiscover;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iput-object p2, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasAutoDiscover;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iput-object p3, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasAutoDiscover;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    const/4 v1, 0x5

    iput v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 59
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasAutoDiscover;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    const/16 v1, 0x1bb

    iput v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 60
    return-void
.end method

.method private buildRequestEntity()Lorg/apache/http/entity/StringEntity;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 144
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 145
    .local v1, "s":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 146
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    const-string/jumbo v2, "UTF-8"

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v2, "UTF-8"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 148
    const/4 v2, 0x0

    const-string/jumbo v4, "Autodiscover"

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    const/4 v2, 0x0

    const-string/jumbo v4, "xmlns"

    const-string/jumbo v5, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006"

    invoke-interface {v1, v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    const/4 v2, 0x0

    const-string/jumbo v4, "Request"

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    const/4 v2, 0x0

    const-string/jumbo v4, "EMailAddress"

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    iget-object v4, p0, Lcom/kingsoft/exchange/service/EasAutoDiscover;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v4, v4, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    const/4 v4, 0x0

    const-string/jumbo v5, "EMailAddress"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    const/4 v2, 0x0

    const-string/jumbo v4, "AcceptableResponseSchema"

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    const-string/jumbo v2, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/responseschema/2006"

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    const/4 v2, 0x0

    const-string/jumbo v4, "AcceptableResponseSchema"

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    const/4 v2, 0x0

    const-string/jumbo v4, "Request"

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    const/4 v2, 0x0

    const-string/jumbo v4, "Autodiscover"

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 158
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "s":Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    return-object v2

    .line 162
    :catch_0
    move-exception v2

    :goto_1
    move-object v2, v3

    .line 165
    goto :goto_0

    .line 161
    :catch_1
    move-exception v2

    goto :goto_1

    .line 159
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method private doPost(Lorg/apache/http/client/methods/HttpPost;Z)Lcom/kingsoft/exchange/EasResponse;
    .locals 11
    .param p1, "post"    # Lorg/apache/http/client/methods/HttpPost;
    .param p2, "canRetry"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 197
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/service/EasAutoDiscover;->executePost(Lorg/apache/http/client/methods/HttpPost;)Lcom/kingsoft/exchange/EasResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 205
    .local v4, "resp":Lcom/kingsoft/exchange/EasResponse;
    invoke-virtual {v4}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v1

    .line 207
    .local v1, "code":I
    invoke-virtual {v4}, Lcom/kingsoft/exchange/EasResponse;->isRedirectError()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 208
    invoke-virtual {v4}, Lcom/kingsoft/exchange/EasResponse;->getRedirectAddress()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "loc":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string/jumbo v6, "http"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 210
    const-string/jumbo v5, "Exchange"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Posting autodiscover to redirect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 211
    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/service/EasAutoDiscover;->redirectHostAuth(Ljava/lang/String;)V

    .line 212
    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/service/EasAutoDiscover;->doPost(Lorg/apache/http/client/methods/HttpPost;Z)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v4

    .line 233
    .end local v1    # "code":I
    .end local v3    # "loc":Ljava/lang/String;
    .end local v4    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :cond_0
    :goto_0
    return-object v4

    .line 198
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 199
    goto :goto_0

    .line 200
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/security/cert/CertificateException;
    move-object v4, v5

    .line 202
    goto :goto_0

    .end local v2    # "e":Ljava/security/cert/CertificateException;
    .restart local v1    # "code":I
    .restart local v3    # "loc":Ljava/lang/String;
    .restart local v4    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :cond_1
    move-object v4, v5

    .line 215
    goto :goto_0

    .line 218
    .end local v3    # "loc":Ljava/lang/String;
    :cond_2
    const/16 v6, 0x191

    if-ne v1, v6, :cond_3

    .line 219
    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasAutoDiscover;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v5, v5, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasAutoDiscover;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v5, v5, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 222
    .local v0, "atSignIndex":I
    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasAutoDiscover;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v6, p0, Lcom/kingsoft/exchange/service/EasAutoDiscover;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v6, v6, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v6, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 223
    const-string/jumbo v5, "Exchange"

    const-string/jumbo v6, "401 received; trying username: %s"

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/kingsoft/exchange/service/EasAutoDiscover;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v8, v8, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 224
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/service/EasAutoDiscover;->resetAuthorization(Lorg/apache/http/client/methods/HttpPost;)V

    .line 225
    invoke-direct {p0, p1, v10}, Lcom/kingsoft/exchange/service/EasAutoDiscover;->doPost(Lorg/apache/http/client/methods/HttpPost;Z)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v4

    goto :goto_0

    .line 227
    .end local v0    # "atSignIndex":I
    :cond_3
    const/16 v6, 0xc8

    if-eq v1, v6, :cond_0

    .line 229
    const-string/jumbo v6, "Exchange"

    const-string/jumbo v7, "Bad response code when posting autodiscover: %d"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v4, v5

    .line 230
    goto :goto_0
.end method

.method private getDomain()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasAutoDiscover;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 132
    .local v0, "amp":I
    if-gez v0, :cond_0

    .line 133
    const/4 v1, 0x0

    .line 135
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasAutoDiscover;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getResponse(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;)Lcom/kingsoft/exchange/EasResponse;
    .locals 5
    .param p1, "post"    # Lorg/apache/http/client/methods/HttpPost;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 177
    invoke-direct {p0, p1, v4}, Lcom/kingsoft/exchange/service/EasAutoDiscover;->doPost(Lorg/apache/http/client/methods/HttpPost;Z)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v0

    .line 178
    .local v0, "resp":Lcom/kingsoft/exchange/EasResponse;
    if-nez v0, :cond_0

    .line 179
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "Error in autodiscover, trying aternate address"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https://autodiscover."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/autodiscover/autodiscover.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 181
    invoke-direct {p0, p1, v4}, Lcom/kingsoft/exchange/service/EasAutoDiscover;->doPost(Lorg/apache/http/client/methods/HttpPost;Z)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v0

    .line 183
    :cond_0
    return-object v0
.end method

.method private static parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 300
    .local v1, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Action"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    return-void

    .line 302
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 303
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "Error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    const-string/jumbo v2, "Redirect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    const-string/jumbo v2, "Exchange"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Redirect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 308
    :cond_2
    const-string/jumbo v2, "Settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    invoke-static {p0, p1}, Lcom/kingsoft/exchange/service/EasAutoDiscover;->parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method private static parseAutodiscover(Lcom/kingsoft/exchange/EasResponse;)Lcom/android/emailcommon/provider/HostAuth;
    .locals 7
    .param p0, "resp"    # Lcom/kingsoft/exchange/EasResponse;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 373
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 374
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {p0}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 375
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 405
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-object v0

    .line 378
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v6, :cond_1

    move-object v0, v3

    .line 379
    goto :goto_0

    .line 381
    :cond_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Autodiscover"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v3

    .line 382
    goto :goto_0

    .line 385
    :cond_2
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    .line 387
    .local v0, "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    :cond_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    .line 388
    .local v2, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Autodiscover"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .end local v0    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "type":I
    :goto_1
    move-object v0, v3

    .line 405
    goto :goto_0

    .line 391
    .restart local v0    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "type":I
    :cond_4
    if-ne v2, v6, :cond_3

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Response"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 393
    invoke-static {v1, v0}, Lcom/kingsoft/exchange/service/EasAutoDiscover;->parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    .line 395
    iget-object v4, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    goto :goto_0

    .line 402
    .end local v0    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "type":I
    :catch_0
    move-exception v4

    goto :goto_1

    .line 400
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private static parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 352
    .local v1, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Response"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    return-void

    .line 354
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 355
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "User"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    invoke-static {p0, p1}, Lcom/kingsoft/exchange/service/EasAutoDiscover;->parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0

    .line 358
    :cond_2
    const-string/jumbo v2, "Action"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    invoke-static {p0, p1}, Lcom/kingsoft/exchange/service/EasAutoDiscover;->parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method private static parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 247
    .local v0, "mobileSync":Z
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 248
    .local v2, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Server"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    return-void

    .line 250
    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 251
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v4, "Type"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 253
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "MobileSync"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    const/4 v0, 0x1

    goto :goto_0

    .line 256
    :cond_2
    if-eqz v0, :cond_0

    const-string/jumbo v4, "Url"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "url":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 259
    const-string/jumbo v4, "Exchange"

    const-string/jumbo v5, "Autodiscover URL: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 260
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method private static parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 278
    .local v1, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    return-void

    .line 280
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 281
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "Server"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    invoke-static {p0, p1}, Lcom/kingsoft/exchange/service/EasAutoDiscover;->parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method private static parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 326
    .local v1, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "User"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    return-void

    .line 328
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 329
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "EMailAddress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    goto :goto_0

    .line 333
    :cond_2
    const-string/jumbo v2, "DisplayName"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public doAutodiscover()Landroid/os/Bundle;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 69
    invoke-direct {p0}, Lcom/kingsoft/exchange/service/EasAutoDiscover;->getDomain()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "domain":Ljava/lang/String;
    if-nez v2, :cond_0

    move-object v0, v8

    .line 123
    :goto_0
    return-object v0

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/exchange/service/EasAutoDiscover;->buildRequestEntity()Lorg/apache/http/entity/StringEntity;

    move-result-object v4

    .line 75
    .local v4, "entity":Lorg/apache/http/entity/StringEntity;
    if-nez v4, :cond_1

    move-object v0, v8

    .line 76
    goto :goto_0

    .line 79
    :cond_1
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "https://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/autodiscover/autodiscover.xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "text/xml"

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v4, v10, v11}, Lcom/kingsoft/exchange/service/EasAutoDiscover;->makePost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v6

    .line 81
    .local v6, "post":Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {p0, v6, v2}, Lcom/kingsoft/exchange/service/EasAutoDiscover;->getResponse(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;)Lcom/kingsoft/exchange/EasResponse;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 82
    .local v7, "resp":Lcom/kingsoft/exchange/EasResponse;
    if-nez v7, :cond_2

    move-object v0, v8

    .line 83
    goto :goto_0

    .line 88
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v1

    .line 89
    .local v1, "code":I
    const/16 v9, 0x191

    if-ne v1, v9, :cond_3

    .line 90
    new-instance v0, Landroid/os/Bundle;

    const/4 v9, 0x1

    invoke-direct {v0, v9}, Landroid/os/Bundle;-><init>(I)V

    .line 91
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v9, "autodiscover_error_code"

    const/16 v10, 0xb

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    invoke-virtual {v7}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 118
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "code":I
    .end local v6    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :catch_0
    move-exception v3

    .line 121
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v9, "Exchange"

    const-string/jumbo v10, "ISE with domain: %s"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v2, v11, v12

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    move-object v0, v8

    .line 123
    goto :goto_0

    .line 95
    .restart local v1    # "code":I
    .restart local v6    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :cond_3
    :try_start_3
    invoke-static {v7}, Lcom/kingsoft/exchange/service/EasAutoDiscover;->parseAutodiscover(Lcom/kingsoft/exchange/EasResponse;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v5

    .line 96
    .local v5, "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v5, :cond_4

    .line 100
    iget-object v9, p0, Lcom/kingsoft/exchange/service/EasAutoDiscover;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v9, v9, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iput-object v9, v5, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 101
    iget-object v9, p0, Lcom/kingsoft/exchange/service/EasAutoDiscover;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v9, v9, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    iput-object v9, v5, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 104
    const/16 v9, 0x1bb

    iput v9, v5, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 105
    const-string/jumbo v9, "eas"

    iput-object v9, v5, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 106
    const/4 v9, 0x5

    iput v9, v5, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 107
    new-instance v0, Landroid/os/Bundle;

    const/4 v9, 0x2

    invoke-direct {v0, v9}, Landroid/os/Bundle;-><init>(I)V

    .line 108
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v9, "autodiscover_host_auth"

    invoke-virtual {v0, v9, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 110
    const-string/jumbo v9, "autodiscover_error_code"

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    :try_start_4
    invoke-virtual {v7}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    invoke-virtual {v7}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto :goto_1

    .end local v1    # "code":I
    .end local v5    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    :catchall_0
    move-exception v9

    invoke-virtual {v7}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v9
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
.end method
