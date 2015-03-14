.class Lcom/kingsoft/email/service/AttachmentDownloadService$AccountManagerStub;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountManagerStub"
.end annotation


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private mNumberOfAccounts:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    if-eqz p1, :cond_0

    .line 280
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$AccountManagerStub;->mAccountManager:Landroid/accounts/AccountManager;

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$AccountManagerStub;->mAccountManager:Landroid/accounts/AccountManager;

    goto :goto_0
.end method


# virtual methods
.method getNumberOfAccounts()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$AccountManagerStub;->mAccountManager:Landroid/accounts/AccountManager;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$AccountManagerStub;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    .line 290
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$AccountManagerStub;->mNumberOfAccounts:I

    goto :goto_0
.end method

.method setNumberOfAccounts(I)V
    .locals 0
    .param p1, "numberOfAccounts"    # I

    .prologue
    .line 295
    iput p1, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$AccountManagerStub;->mNumberOfAccounts:I

    .line 296
    return-void
.end method
