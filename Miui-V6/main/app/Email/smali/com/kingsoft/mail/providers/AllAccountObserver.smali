.class public abstract Lcom/kingsoft/mail/providers/AllAccountObserver;
.super Landroid/database/DataSetObserver;
.source "AllAccountObserver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mController:Lcom/kingsoft/mail/ui/AccountController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/AllAccountObserver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public final getAllAccounts()[Lcom/kingsoft/mail/providers/Account;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingsoft/mail/providers/AllAccountObserver;->mController:Lcom/kingsoft/mail/ui/AccountController;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/AllAccountObserver;->mController:Lcom/kingsoft/mail/ui/AccountController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/AccountController;->getAllAccounts()[Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    goto :goto_0
.end method

.method public initialize(Lcom/kingsoft/mail/ui/AccountController;)[Lcom/kingsoft/mail/providers/Account;
    .locals 3
    .param p1, "controller"    # Lcom/kingsoft/mail/ui/AccountController;

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    sget-object v0, Lcom/kingsoft/mail/providers/AllAccountObserver;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "AllAccountObserver initialized with null controller!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/mail/providers/AllAccountObserver;->mController:Lcom/kingsoft/mail/ui/AccountController;

    .line 60
    iget-object v0, p0, Lcom/kingsoft/mail/providers/AllAccountObserver;->mController:Lcom/kingsoft/mail/ui/AccountController;

    invoke-interface {v0, p0}, Lcom/kingsoft/mail/ui/AccountController;->registerAllAccountObserver(Landroid/database/DataSetObserver;)V

    .line 61
    iget-object v0, p0, Lcom/kingsoft/mail/providers/AllAccountObserver;->mController:Lcom/kingsoft/mail/ui/AccountController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/AccountController;->getAllAccounts()[Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    return-object v0
.end method

.method public final onChanged()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingsoft/mail/providers/AllAccountObserver;->mController:Lcom/kingsoft/mail/ui/AccountController;

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/AllAccountObserver;->mController:Lcom/kingsoft/mail/ui/AccountController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/AccountController;->getAllAccounts()[Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/providers/AllAccountObserver;->onChanged([Lcom/kingsoft/mail/providers/Account;)V

    goto :goto_0
.end method

.method public abstract onChanged([Lcom/kingsoft/mail/providers/Account;)V
.end method

.method public unregisterAndDestroy()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingsoft/mail/providers/AllAccountObserver;->mController:Lcom/kingsoft/mail/ui/AccountController;

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/AllAccountObserver;->mController:Lcom/kingsoft/mail/ui/AccountController;

    invoke-interface {v0, p0}, Lcom/kingsoft/mail/ui/AccountController;->unregisterAllAccountObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method
