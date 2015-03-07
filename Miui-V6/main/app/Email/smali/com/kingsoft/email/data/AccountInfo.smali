.class public Lcom/kingsoft/email/data/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/kingsoft/email/data/AccountInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mId:J

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public protocal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/kingsoft/email/data/AccountInfo$1;

    invoke-direct {v0}, Lcom/kingsoft/email/data/AccountInfo$1;-><init>()V

    sput-object v0, Lcom/kingsoft/email/data/AccountInfo;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/data/AccountInfo;->name:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/data/AccountInfo;->protocal:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/data/AccountInfo;->password:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/email/data/AccountInfo;->mId:J

    .line 21
    return-void
.end method

.method public static createAccountInfoByIntent(Landroid/content/Intent;)Lcom/kingsoft/email/data/AccountInfo;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v3, -0x1

    .line 28
    new-instance v0, Lcom/kingsoft/email/data/AccountInfo;

    invoke-direct {v0}, Lcom/kingsoft/email/data/AccountInfo;-><init>()V

    .line 29
    .local v0, "info":Lcom/kingsoft/email/data/AccountInfo;
    const-string/jumbo v1, "name"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingsoft/email/data/AccountInfo;->name:Ljava/lang/String;

    .line 30
    const-string/jumbo v1, "password"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingsoft/email/data/AccountInfo;->password:Ljava/lang/String;

    .line 31
    const-string/jumbo v1, "mId"

    invoke-virtual {p0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/kingsoft/email/data/AccountInfo;->mId:J

    .line 32
    const-string/jumbo v1, "protocal"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingsoft/email/data/AccountInfo;->protocal:Ljava/lang/String;

    .line 33
    iget-wide v1, v0, Lcom/kingsoft/email/data/AccountInfo;->mId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 36
    .end local v0    # "info":Lcom/kingsoft/email/data/AccountInfo;
    :goto_0
    return-object v0

    .restart local v0    # "info":Lcom/kingsoft/email/data/AccountInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeAccountCallBack(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mUiAccount"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 46
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingsoft/email/data/AccountInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/kingsoft/email/data/AccountInfo;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-wide v0, p0, Lcom/kingsoft/email/data/AccountInfo;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    iget-object v0, p0, Lcom/kingsoft/email/data/AccountInfo;->protocal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return-void
.end method
