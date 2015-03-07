.class public Lcom/kingsoft/mail/ui/MiuiNavigationLayout;
.super Ljava/lang/Object;
.source "MiuiNavigationLayout.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/UIDrawerLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/MiuiNavigationLayout$InternalDrawerListener;
    }
.end annotation


# instance fields
.field private mNavigationLayout:Lmiui/widget/NavigationLayout;


# direct methods
.method public constructor <init>(Lmiui/widget/NavigationLayout;)V
    .locals 0
    .param p1, "navigationLayout"    # Lmiui/widget/NavigationLayout;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MiuiNavigationLayout;->mNavigationLayout:Lmiui/widget/NavigationLayout;

    .line 18
    return-void
.end method


# virtual methods
.method public closeDrawer()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MiuiNavigationLayout;->mNavigationLayout:Lmiui/widget/NavigationLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    .line 43
    return-void
.end method

.method public isDrawerOpen()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MiuiNavigationLayout;->mNavigationLayout:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->isNavigationDrawerOpen()Z

    move-result v0

    return v0
.end method

.method public openDrawer()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MiuiNavigationLayout;->mNavigationLayout:Lmiui/widget/NavigationLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/NavigationLayout;->openNavigationDrawer(Z)V

    .line 38
    return-void
.end method

.method public setDrawerListener(Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MiuiNavigationLayout;->mNavigationLayout:Lmiui/widget/NavigationLayout;

    new-instance v1, Lcom/kingsoft/mail/ui/MiuiNavigationLayout$InternalDrawerListener;

    invoke-direct {v1, p0, p1}, Lcom/kingsoft/mail/ui/MiuiNavigationLayout$InternalDrawerListener;-><init>(Lcom/kingsoft/mail/ui/MiuiNavigationLayout;Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;)V

    invoke-virtual {v0, v1}, Lmiui/widget/NavigationLayout;->setNavigationListener(Lmiui/widget/NavigationLayout$NavigationListener;)V

    .line 28
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1
    .param p1, "lockMode"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MiuiNavigationLayout;->mNavigationLayout:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0, p1}, Lmiui/widget/NavigationLayout;->setDrawerLockMode(I)V

    .line 33
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "shadowDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MiuiNavigationLayout;->mNavigationLayout:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0, p1}, Lmiui/widget/NavigationLayout;->setNavigationShadow(Landroid/graphics/drawable/Drawable;)V

    .line 23
    return-void
.end method
