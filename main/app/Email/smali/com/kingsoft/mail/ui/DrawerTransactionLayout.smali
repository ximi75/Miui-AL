.class public Lcom/kingsoft/mail/ui/DrawerTransactionLayout;
.super Ljava/lang/Object;
.source "DrawerTransactionLayout.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/UIDrawerLayout;


# instance fields
.field private mContentId:I

.field private mDrawerFragment:Lcom/kingsoft/mail/ui/DrawerFragment;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mIsOpen:Z

.field private mListener:Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;I)V
    .locals 1
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "contentId"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/DrawerTransactionLayout;->mDrawerFragment:Lcom/kingsoft/mail/ui/DrawerFragment;

    .line 25
    iput-object p1, p0, Lcom/kingsoft/mail/ui/DrawerTransactionLayout;->mFragmentManager:Landroid/app/FragmentManager;

    .line 26
    iput p2, p0, Lcom/kingsoft/mail/ui/DrawerTransactionLayout;->mContentId:I

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/DrawerTransactionLayout;->mIsOpen:Z

    .line 28
    return-void
.end method


# virtual methods
.method public closeDrawer()V
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/DrawerTransactionLayout;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DrawerTransactionLayout;->mListener:Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;->onDrawerClosed()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/DrawerTransactionLayout;->mIsOpen:Z

    goto :goto_0
.end method

.method public isDrawerOpen()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/DrawerTransactionLayout;->mIsOpen:Z

    return v0
.end method

.method public openDrawer()V
    .locals 3

    .prologue
    .line 49
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/DrawerTransactionLayout;->mIsOpen:Z

    if-eqz v1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/DrawerTransactionLayout;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 57
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/DrawerTransactionLayout;->mDrawerFragment:Lcom/kingsoft/mail/ui/DrawerFragment;

    if-nez v1, :cond_1

    .line 59
    new-instance v1, Lcom/kingsoft/mail/ui/DrawerFragment;

    invoke-direct {v1}, Lcom/kingsoft/mail/ui/DrawerFragment;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/DrawerTransactionLayout;->mDrawerFragment:Lcom/kingsoft/mail/ui/DrawerFragment;

    .line 61
    :cond_1
    iget v1, p0, Lcom/kingsoft/mail/ui/DrawerTransactionLayout;->mContentId:I

    iget-object v2, p0, Lcom/kingsoft/mail/ui/DrawerTransactionLayout;->mDrawerFragment:Lcom/kingsoft/mail/ui/DrawerFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 62
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 63
    iget-object v1, p0, Lcom/kingsoft/mail/ui/DrawerTransactionLayout;->mListener:Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;->onDrawerOpened()V

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/DrawerTransactionLayout;->mIsOpen:Z

    goto :goto_0
.end method

.method public setDrawerListener(Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/kingsoft/mail/ui/DrawerTransactionLayout;->mListener:Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;

    .line 38
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1
    .param p1, "lockMode"    # I

    .prologue
    .line 42
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/DrawerTransactionLayout;->closeDrawer()V

    .line 45
    :cond_0
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "shadowDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 33
    return-void
.end method
