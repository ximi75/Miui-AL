.class public Lcom/kingsoft/mail/chat/ChatViewFragment;
.super Lmiui/app/Fragment;
.source "ChatViewFragment.java"

# interfaces
.implements Lcom/kingsoft/mail/chat/ChatViewControllerCallback;


# instance fields
.field private mViewController:Lcom/kingsoft/mail/chat/ChatViewController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lmiui/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/kingsoft/mail/chat/ChatViewFragment;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 26
    new-instance v0, Lcom/kingsoft/mail/chat/ChatViewFragment;

    invoke-direct {v0}, Lcom/kingsoft/mail/chat/ChatViewFragment;-><init>()V

    .line 27
    .local v0, "fragment":Lcom/kingsoft/mail/chat/ChatViewFragment;
    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/chat/ChatViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v0
.end method


# virtual methods
.method public getAccount()Lcom/kingsoft/mail/providers/Account;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewFragment;->mViewController:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-static {}, Lcom/kingsoft/mail/chat/ChatViewController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    return-object v0
.end method

.method public getChatController()Lcom/kingsoft/mail/chat/ChatViewController;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewFragment;->mViewController:Lcom/kingsoft/mail/chat/ChatViewController;

    return-object v0
.end method

.method public bridge synthetic getFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatViewFragment;->getFragment()Lmiui/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Lmiui/app/Fragment;
    .locals 0

    .prologue
    .line 107
    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lmiui/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 62
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewFragment;->mViewController:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/chat/ChatViewController;->onActivityCreate(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lmiui/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 68
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewFragment;->mViewController:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/chat/ChatViewController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 69
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lmiui/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f1100bb

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/chat/ChatViewFragment;->setThemeRes(I)V

    .line 35
    new-instance v0, Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/chat/ChatViewController;-><init>(Lcom/kingsoft/mail/chat/ChatViewControllerCallback;)V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewFragment;->mViewController:Lcom/kingsoft/mail/chat/ChatViewController;

    .line 36
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewFragment;->mViewController:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/chat/ChatViewController;->onCreate(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 1
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    .line 52
    if-nez p3, :cond_0

    .line 53
    invoke-super {p0, p1, p2, p3}, Lmiui/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewFragment;->mViewController:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingsoft/mail/chat/ChatViewController;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lmiui/app/Fragment;->onDestroy()V

    .line 98
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewFragment;->mViewController:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->onDestroy()V

    .line 99
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewFragment;->mViewController:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->onDestroyView()V

    .line 92
    invoke-super {p0}, Lmiui/app/Fragment;->onDestroyView()V

    .line 93
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewFragment;->mViewController:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingsoft/mail/chat/ChatViewController;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lmiui/app/Fragment;->onPause()V

    .line 80
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewFragment;->mViewController:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->onPause()V

    .line 81
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lmiui/app/Fragment;->onResume()V

    .line 86
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewFragment;->mViewController:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->onResume()V

    .line 87
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lmiui/app/Fragment;->onStart()V

    .line 74
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewFragment;->mViewController:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->onStart()V

    .line 75
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lmiui/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewFragment;->mViewController:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatViewFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/chat/ChatViewController;->ensureActionbarHasInited(Landroid/app/ActionBar;)V

    .line 43
    return-void
.end method
