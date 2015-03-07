.class public Lcom/kingsoft/email/mail/store/Pop3Store;
.super Lcom/kingsoft/email/mail/Store;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/mail/store/Pop3Store$Pop3ResponseInputStream;,
        Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Capabilities;,
        Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;,
        Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;
    }
.end annotation


# static fields
.field private static DEBUG_FORCE_SINGLE_LINE_UIDL:Z = false

.field private static DEBUG_LOG_RAW_STREAM:Z = false

.field private static final PERMANENT_FLAGS:[Lcom/kingsoft/emailcommon/mail/Flag;

.field private static final POP3_MAILBOX_NAME:Ljava/lang/String; = "INBOX"


# instance fields
.field private final mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/emailcommon/mail/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private final mOneMessage:[Lcom/kingsoft/emailcommon/mail/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    sput-boolean v2, Lcom/kingsoft/email/mail/store/Pop3Store;->DEBUG_FORCE_SINGLE_LINE_UIDL:Z

    .line 63
    sput-boolean v2, Lcom/kingsoft/email/mail/store/Pop3Store;->DEBUG_LOG_RAW_STREAM:Z

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/kingsoft/emailcommon/mail/Flag;

    sget-object v1, Lcom/kingsoft/emailcommon/mail/Flag;->DELETED:Lcom/kingsoft/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kingsoft/email/mail/store/Pop3Store;->PERMANENT_FLAGS:[Lcom/kingsoft/emailcommon/mail/Flag;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 81
    invoke-direct {p0}, Lcom/kingsoft/email/mail/Store;-><init>()V

    .line 68
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mFolders:Ljava/util/HashMap;

    .line 69
    new-array v2, v4, [Lcom/kingsoft/emailcommon/mail/Message;

    iput-object v2, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mOneMessage:[Lcom/kingsoft/emailcommon/mail/Message;

    .line 82
    iput-object p1, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 85
    invoke-virtual {p2, p1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 86
    .local v0, "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    new-instance v2, Lcom/kingsoft/email/mail/transport/MailTransport;

    const-string/jumbo v3, "POP3"

    invoke-direct {v2, p1, v3, v0}, Lcom/kingsoft/email/mail/transport/MailTransport;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;)V

    iput-object v2, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    .line 87
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/HostAuth;->getLogin()[Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "userInfoParts":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 89
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mUsername:Ljava/lang/String;

    .line 90
    aget-object v2, v1, v4

    iput-object v2, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mPassword:Ljava/lang/String;

    .line 92
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/kingsoft/email/mail/store/Pop3Store;->DEBUG_FORCE_SINGLE_LINE_UIDL:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/android/emailcommon/provider/Account;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/kingsoft/email/mail/store/Pop3Store;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/kingsoft/email/mail/store/Pop3Store;->DEBUG_LOG_RAW_STREAM:Z

    return v0
.end method

.method static synthetic access$200(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/kingsoft/email/mail/store/Pop3Store;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/kingsoft/email/mail/store/Pop3Store;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200()[Lcom/kingsoft/emailcommon/mail/Flag;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/kingsoft/email/mail/store/Pop3Store;->PERMANENT_FLAGS:[Lcom/kingsoft/emailcommon/mail/Flag;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/kingsoft/email/mail/store/Pop3Store;)[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mOneMessage:[Lcom/kingsoft/emailcommon/mail/Message;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kingsoft/email/mail/store/Pop3Store;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/kingsoft/email/mail/store/Pop3Store;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/kingsoft/email/mail/store/Pop3Store;)Lcom/kingsoft/email/mail/transport/MailTransport;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/Pop3Store;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    return-object v0
.end method

.method public static newInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;
    .locals 1
    .param p0, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/kingsoft/email/mail/store/Pop3Store;

    invoke-direct {v0, p1, p0}, Lcom/kingsoft/email/mail/store/Pop3Store;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    return-object v0
.end method


# virtual methods
.method public checkSettings()Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 139
    new-instance v1, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;

    const-string/jumbo v2, "INBOX"

    invoke-direct {v1, p0, v2}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;-><init>(Lcom/kingsoft/email/mail/store/Pop3Store;Ljava/lang/String;)V

    .line 140
    .local v1, "folder":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;
    const/4 v0, 0x0

    .line 142
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/transport/MailTransport;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {v1, v3}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->close(Z)V

    .line 146
    :cond_0
    :try_start_0
    sget-object v2, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V

    .line 147
    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->checkSettings()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 149
    invoke-virtual {v1, v3}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->close(Z)V

    .line 151
    return-object v0

    .line 149
    :catchall_0
    move-exception v2

    invoke-virtual {v1, v3}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->close(Z)V

    throw v2
.end method

.method public getFolder(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Folder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    const-string/jumbo v1, "INBOX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const-string/jumbo p1, "INBOX"

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/emailcommon/mail/Folder;

    .line 109
    .local v0, "folder":Lcom/kingsoft/emailcommon/mail/Folder;
    if-nez v0, :cond_1

    .line 110
    new-instance v0, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;

    .end local v0    # "folder":Lcom/kingsoft/emailcommon/mail/Folder;
    invoke-direct {v0, p0, p1}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;-><init>(Lcom/kingsoft/email/mail/store/Pop3Store;Ljava/lang/String;)V

    .line 111
    .restart local v0    # "folder":Lcom/kingsoft/emailcommon/mail/Folder;
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/kingsoft/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_1
    return-object v0
.end method

.method setTransport(Lcom/kingsoft/email/mail/transport/MailTransport;)V
    .locals 0
    .param p1, "testTransport"    # Lcom/kingsoft/email/mail/transport/MailTransport;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    .line 101
    return-void
.end method

.method public updateFolders()[Lcom/kingsoft/emailcommon/mail/Folder;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 118
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 119
    .local v0, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->newSystemMailbox(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 122
    :cond_0
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Mailbox;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 127
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/kingsoft/emailcommon/mail/Folder;

    iget-object v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/mail/store/Pop3Store;->getFolder(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Folder;

    move-result-object v2

    aput-object v2, v1, v4

    return-object v1

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/Pop3Store;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0
.end method
