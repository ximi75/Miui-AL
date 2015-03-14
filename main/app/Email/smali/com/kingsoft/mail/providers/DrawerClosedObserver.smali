.class public abstract Lcom/kingsoft/mail/providers/DrawerClosedObserver;
.super Landroid/database/DataSetObserver;
.source "DrawerClosedObserver.java"


# instance fields
.field private mController:Lcom/kingsoft/mail/ui/AccountController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public initialize(Lcom/kingsoft/mail/ui/AccountController;)V
    .locals 1
    .param p1, "controller"    # Lcom/kingsoft/mail/ui/AccountController;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/kingsoft/mail/providers/DrawerClosedObserver;->mController:Lcom/kingsoft/mail/ui/AccountController;

    .line 47
    iget-object v0, p0, Lcom/kingsoft/mail/providers/DrawerClosedObserver;->mController:Lcom/kingsoft/mail/ui/AccountController;

    invoke-interface {v0, p0}, Lcom/kingsoft/mail/ui/AccountController;->registerDrawerClosedObserver(Landroid/database/DataSetObserver;)V

    .line 48
    return-void
.end method

.method public final onChanged()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingsoft/mail/providers/DrawerClosedObserver;->mController:Lcom/kingsoft/mail/ui/AccountController;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/DrawerClosedObserver;->onDrawerClosed()V

    .line 61
    :cond_0
    return-void
.end method

.method public abstract onDrawerClosed()V
.end method

.method public unregisterAndDestroy()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingsoft/mail/providers/DrawerClosedObserver;->mController:Lcom/kingsoft/mail/ui/AccountController;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/kingsoft/mail/providers/DrawerClosedObserver;->mController:Lcom/kingsoft/mail/ui/AccountController;

    invoke-interface {v0, p0}, Lcom/kingsoft/mail/ui/AccountController;->unregisterDrawerClosedObserver(Landroid/database/DataSetObserver;)V

    .line 70
    :cond_0
    return-void
.end method
