.class Lcom/kingsoft/mail/ui/MiuiNavigationLayout$InternalDrawerListener;
.super Ljava/lang/Object;
.source "MiuiNavigationLayout.java"

# interfaces
.implements Lmiui/widget/NavigationLayout$NavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/MiuiNavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalDrawerListener"
.end annotation


# instance fields
.field private mListener:Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;

.field final synthetic this$0:Lcom/kingsoft/mail/ui/MiuiNavigationLayout;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/ui/MiuiNavigationLayout;Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MiuiNavigationLayout$InternalDrawerListener;->this$0:Lcom/kingsoft/mail/ui/MiuiNavigationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/kingsoft/mail/ui/MiuiNavigationLayout$InternalDrawerListener;->mListener:Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;

    .line 56
    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MiuiNavigationLayout$InternalDrawerListener;->mListener:Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;->onDrawerClosed()V

    .line 61
    return-void
.end method

.method public onDrawerDragStateChanged(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MiuiNavigationLayout$InternalDrawerListener;->mListener:Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;->onDrawerStateChanged(I)V

    .line 76
    return-void
.end method

.method public onDrawerEnableStateChange(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 81
    return-void
.end method

.method public onDrawerOpened()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MiuiNavigationLayout$InternalDrawerListener;->mListener:Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;->onDrawerOpened()V

    .line 66
    return-void
.end method

.method public onDrawerSlide(F)V
    .locals 1
    .param p1, "slideOffset"    # F

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MiuiNavigationLayout$InternalDrawerListener;->mListener:Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/ui/UIDrawerLayout$UIDrawerListener;->onDrawerSlide(F)V

    .line 71
    return-void
.end method
