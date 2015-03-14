.class Lcom/kingsoft/mail/ui/AbstractActivityController$13;
.super Lcom/kingsoft/mail/ui/AsyncRefreshTask;
.source "AbstractActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;->requestFolderRefresh(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/net/Uri;

    .prologue
    .line 2542
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$13;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-direct {p0, p2, p3}, Lcom/kingsoft/mail/ui/AsyncRefreshTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method protected onCancelled()V
    .locals 1

    .prologue
    .line 2563
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AsyncRefreshTask;->onCancelled()V

    .line 2564
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$13;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->hideRefreshAnimation()V

    .line 2565
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2542
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController$13;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 2545
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kingsoft/mail/ui/AbstractActivityController$13$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$13$1;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController$13;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2558
    return-void
.end method
