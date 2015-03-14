.class public abstract Lcom/kingsoft/email/mail/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# static fields
.field protected static final SOCKET_CONNECT_TIMEOUT:I = 0x2710


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findSender(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Lcom/kingsoft/email/mail/Sender;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v2, 0x0

    .line 76
    .local v2, "sender":Lcom/kingsoft/email/mail/Sender;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 78
    .local v3, "xml":Landroid/content/res/XmlResourceParser;
    invoke-virtual {p2, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 80
    .local v1, "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .local v4, "xmlEventType":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    .line 81
    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    const-string/jumbo v6, "sender"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    const/4 v6, 0x0

    const-string/jumbo v7, "scheme"

    invoke-interface {v3, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "xmlScheme":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    const/4 v6, 0x0

    const-string/jumbo v7, "class"

    invoke-interface {v3, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "className":Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lcom/kingsoft/email/mail/Sender;->instantiateSender(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/kingsoft/email/mail/Sender;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 94
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v3    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v4    # "xmlEventType":I
    .end local v5    # "xmlScheme":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 97
    :cond_1
    :goto_1
    return-object v2

    .line 92
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/kingsoft/email/mail/Sender;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 111
    const-class v3, Lcom/kingsoft/email/mail/Sender;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    .local v0, "appContext":Landroid/content/Context;
    const v2, 0x7f070016

    invoke-static {v0, v2, p1}, Lcom/kingsoft/email/mail/Sender;->findSender(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Lcom/kingsoft/email/mail/Sender;

    move-result-object v1

    .line 113
    .local v1, "sender":Lcom/kingsoft/email/mail/Sender;
    if-nez v1, :cond_0

    .line 114
    const v2, 0x7f070015

    invoke-static {v0, v2, p1}, Lcom/kingsoft/email/mail/Sender;->findSender(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Lcom/kingsoft/email/mail/Sender;

    move-result-object v1

    .line 116
    :cond_0
    if-nez v1, :cond_1

    .line 117
    new-instance v2, Lcom/kingsoft/emailcommon/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot find sender for account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "sender":Lcom/kingsoft/email/mail/Sender;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 119
    .restart local v0    # "appContext":Landroid/content/Context;
    .restart local v1    # "sender":Lcom/kingsoft/email/mail/Sender;
    :cond_1
    monitor-exit v3

    return-object v1
.end method

.method private static instantiateSender(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/kingsoft/email/mail/Sender;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 49
    const/4 v3, 0x0

    .line 51
    .local v3, "o":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 53
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "newInstance"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcom/android/emailcommon/provider/Account;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 55
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p0, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 62
    instance-of v4, v3, Lcom/kingsoft/email/mail/Sender;

    if-nez v4, :cond_0

    .line 63
    new-instance v4, Lcom/kingsoft/emailcommon/mail/MessagingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " create incompatible object"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 56
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "exception %s invoking method %s#newInstance(Account, Context) for %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object p1, v6, v9

    iget-object v7, p2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 60
    new-instance v4, Lcom/kingsoft/emailcommon/mail/MessagingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "can not instantiate Sender for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 66
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "m":Ljava/lang/reflect/Method;
    :cond_0
    check-cast v3, Lcom/kingsoft/email/mail/Sender;

    .end local v3    # "o":Ljava/lang/Object;
    return-object v3
.end method

.method public static newInstance(Lcom/android/emailcommon/provider/Account;)Lcom/kingsoft/email/mail/Sender;
    .locals 3
    .param p0, "account"    # Lcom/android/emailcommon/provider/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/kingsoft/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sender.newInstance: Unknown scheme in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getSettingActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    const-class v0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;

    return-object v0
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract sendMessage(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method
