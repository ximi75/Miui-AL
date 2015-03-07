.class public abstract Lcom/kingsoft/email/mail/Store;
.super Ljava/lang/Object;
.source "Store.java"


# static fields
.field public static final FETCH_BODY_SANE_SUGGESTED_SIZE:I = 0x1f400

.field static final sStoreClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingsoft/email/mail/Store;",
            ">;>;"
        }
    .end annotation
.end field

.field static final sStores:Ljava/util/HashMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/emailcommon/provider/HostAuth;",
            "Lcom/kingsoft/email/mail/Store;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAccount:Lcom/android/emailcommon/provider/Account;

.field protected mContext:Landroid/content/Context;

.field protected mPassword:Ljava/lang/String;

.field protected mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

.field protected mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingsoft/email/mail/Store;->sStores:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingsoft/email/mail/Store;->sStoreClasses:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;
    .locals 12
    .param p0, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 90
    const-class v7, Lcom/kingsoft/email/mail/Store;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lcom/kingsoft/email/mail/Store;->sStores:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    sget-object v6, Lcom/kingsoft/email/mail/Store;->sStoreClasses:Ljava/util/HashMap;

    const v8, 0x7f100305

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/kingsoft/email/mail/store/Pop3Store;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v6, Lcom/kingsoft/email/mail/Store;->sStoreClasses:Ljava/util/HashMap;

    const v8, 0x7f100304

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/kingsoft/email/mail/store/ImapStore;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 96
    .local v2, "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    if-nez v2, :cond_2

    .line 116
    :cond_1
    :goto_0
    monitor-exit v7

    return-object v5

    .line 97
    :cond_2
    :try_start_1
    sget-object v6, Lcom/kingsoft/email/mail/Store;->sStores:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/email/mail/Store;

    .line 98
    .local v5, "store":Lcom/kingsoft/email/mail/Store;
    if-nez v5, :cond_1

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    .local v0, "appContext":Landroid/content/Context;
    sget-object v6, Lcom/kingsoft/email/mail/Store;->sStoreClasses:Ljava/util/HashMap;

    iget-object v8, v2, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 101
    .local v3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/kingsoft/email/mail/Store;>;"
    if-nez v3, :cond_3

    .line 102
    const-class v3, Lcom/kingsoft/email/mail/store/ServiceStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :cond_3
    :try_start_2
    const-string/jumbo v6, "newInstance"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Lcom/android/emailcommon/provider/Account;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 107
    .local v4, "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-virtual {v4, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "store":Lcom/kingsoft/email/mail/Store;
    check-cast v5, Lcom/kingsoft/email/mail/Store;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    .restart local v5    # "store":Lcom/kingsoft/email/mail/Store;
    :try_start_3
    iget-wide v8, v2, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1

    .line 113
    sget-object v6, Lcom/kingsoft/email/mail/Store;->sStores:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 90
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v2    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v3    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/kingsoft/email/mail/Store;>;"
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "store":Lcom/kingsoft/email/mail/Store;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 108
    .restart local v0    # "appContext":Landroid/content/Context;
    .restart local v2    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .restart local v3    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/kingsoft/email/mail/Store;>;"
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v6, Lcom/kingsoft/emailcommon/mail/MessagingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can\'t instantiate Store for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method static newInstance(Lcom/android/emailcommon/provider/Account;)Lcom/kingsoft/email/mail/Store;
    .locals 3
    .param p0, "account"    # Lcom/android/emailcommon/provider/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/kingsoft/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Store#newInstance: Unknown scheme in "

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

.method public static declared-synchronized removeInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;
    .locals 4
    .param p0, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 130
    const-class v1, Lcom/kingsoft/email/mail/Store;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingsoft/email/mail/Store;->sStores:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v2, v3}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/mail/Store;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static updateMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;JLjava/lang/String;CZI)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p2, "accountId"    # J
    .param p4, "mailboxPath"    # Ljava/lang/String;
    .param p5, "delimiter"    # C
    .param p6, "selectable"    # Z
    .param p7, "type"    # I

    .prologue
    const/4 v4, 0x1

    .line 180
    iput-wide p2, p1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 181
    iput p5, p1, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    .line 182
    move-object v1, p4

    .line 183
    .local v1, "displayPath":Ljava/lang/String;
    invoke-virtual {p4, p5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 184
    .local v2, "pathIndex":I
    if-lez v2, :cond_0

    .line 185
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    :cond_0
    iput-object v1, p1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 188
    if-eqz p6, :cond_1

    .line 189
    const/16 v3, 0x18

    iput v3, p1, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 191
    :cond_1
    iput-boolean v4, p1, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 194
    iput-object p4, p1, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 200
    if-eq p7, v4, :cond_2

    if-eqz p7, :cond_2

    .line 202
    invoke-static {p0, p2, p3, p7}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 204
    .local v0, "box":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 206
    const/4 p7, 0x1

    .line 209
    .end local v0    # "box":Lcom/android/emailcommon/provider/Mailbox;
    :cond_2
    iput p7, p1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 211
    return-void
.end method


# virtual methods
.method public autoDiscover(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract checkSettings()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getAccount()Lcom/android/emailcommon/provider/Account;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingsoft/email/mail/Store;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Folder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public requireCopyMessageToSentFolder()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public updateFolders()[Lcom/kingsoft/emailcommon/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method
