.class Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;
.super Ljava/lang/Object;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncRequestMessage"
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAuthority:Ljava/lang/String;

.field private final mMailboxId:J

.field final synthetic this$0:Lcom/kingsoft/email/provider/EmailProvider;


# direct methods
.method private constructor <init>(Lcom/kingsoft/email/provider/EmailProvider;Ljava/lang/String;Landroid/accounts/Account;J)V
    .locals 0
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "mailboxId"    # J

    .prologue
    .line 8771
    iput-object p1, p0, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->this$0:Lcom/kingsoft/email/provider/EmailProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8772
    iput-object p2, p0, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->mAuthority:Ljava/lang/String;

    .line 8773
    iput-object p3, p0, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->mAccount:Landroid/accounts/Account;

    .line 8774
    iput-wide p4, p0, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->mMailboxId:J

    .line 8775
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/email/provider/EmailProvider;Ljava/lang/String;Landroid/accounts/Account;JLcom/kingsoft/email/provider/EmailProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/email/provider/EmailProvider;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/accounts/Account;
    .param p4, "x3"    # J
    .param p6, "x4"    # Lcom/kingsoft/email/provider/EmailProvider$1;

    .prologue
    .line 8765
    invoke-direct/range {p0 .. p5}, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;-><init>(Lcom/kingsoft/email/provider/EmailProvider;Ljava/lang/String;Landroid/accounts/Account;J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;

    .prologue
    .line 8765
    iget-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;)J
    .locals 2
    .param p0, "x0"    # Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;

    .prologue
    .line 8765
    iget-wide v0, p0, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->mMailboxId:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;

    .prologue
    .line 8765
    iget-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->mAuthority:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8779
    if-ne p0, p1, :cond_1

    .line 8788
    :cond_0
    :goto_0
    return v1

    .line 8782
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 8783
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 8786
    check-cast v0, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;

    .line 8788
    .local v0, "that":Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;
    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->mAccount:Landroid/accounts/Account;

    iget-object v4, v0, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v3, p0, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->mMailboxId:J

    iget-wide v5, v0, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->mMailboxId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->mAuthority:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->mAuthority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 8795
    iget-object v1, p0, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 8796
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2}, Landroid/accounts/Account;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 8797
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->mMailboxId:J

    iget-wide v4, p0, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;->mMailboxId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 8798
    return v0
.end method
