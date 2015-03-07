.class Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhotoViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternetStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;


# direct methods
.method private constructor <init>(Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;
    .param p2, "x1"    # Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment$1;

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;-><init>(Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 598
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 600
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 601
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 602
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;

    iput-boolean v5, v2, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;->mConnected:Z

    .line 615
    :cond_1
    :goto_0
    return-void

    .line 605
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;

    iget-boolean v2, v2, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;->mConnected:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;

    invoke-virtual {v2}, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;->isPhotoBound()Z

    move-result v2

    if-nez v2, :cond_1

    .line 606
    iget-object v2, p0, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;

    iget-boolean v2, v2, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;->mThumbnailShown:Z

    if-nez v2, :cond_3

    .line 607
    iget-object v2, p0, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;

    invoke-virtual {v2}, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;

    invoke-virtual {v2, v3, v6, v4}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 610
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;

    invoke-virtual {v2}, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;

    invoke-virtual {v2, v3, v6, v4}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 612
    iget-object v2, p0, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;->mConnected:Z

    .line 613
    iget-object v2, p0, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;

    iget-object v2, v2, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;->mPhotoProgressBar:Lcom/kingsoft/ex/photo/views/ProgressBarWrapper;

    invoke-virtual {v2, v5}, Lcom/kingsoft/ex/photo/views/ProgressBarWrapper;->setVisibility(I)V

    goto :goto_0
.end method
