.class Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/utils/NotificationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationKey"
.end annotation


# instance fields
.field public final account:Lcom/kingsoft/mail/providers/Account;

.field public final folder:Lcom/kingsoft/mail/providers/Folder;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 0
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 1733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1734
    iput-object p1, p0, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/kingsoft/mail/providers/Account;

    .line 1735
    iput-object p2, p0, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->folder:Lcom/kingsoft/mail/providers/Folder;

    .line 1736
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1740
    instance-of v2, p1, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;

    if-nez v2, :cond_1

    .line 1744
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1743
    check-cast v0, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;

    .line 1744
    .local v0, "key":Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;
    iget-object v2, p0, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v3, v0, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->folder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v3, v0, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->folder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1755
    iget-object v2, p0, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    .line 1756
    .local v0, "accountHashCode":I
    iget-object v2, p0, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->folder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Folder;->hashCode()I

    move-result v1

    .line 1757
    .local v1, "folderHashCode":I
    xor-int v2, v0, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/kingsoft/mail/providers/Account;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/utils/NotificationUtils$NotificationKey;->folder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
