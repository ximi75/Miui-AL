.class Lcom/kingsoft/mail/ui/AbstractActivityController$4;
.super Landroid/os/AsyncTask;
.source "AbstractActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/kingsoft/mail/providers/Folder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V
    .locals 0

    .prologue
    .line 1757
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$4;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/kingsoft/mail/providers/Folder;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$4;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$4;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Settings;->moveToInbox:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/Utils;->getFolder(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1757
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController$4;->doInBackground([Ljava/lang/Void;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 6
    .param p1, "moveToInbox"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    const/4 v3, 0x1

    .line 1767
    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1769
    .local v1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/ui/FolderOperation;>;"
    new-instance v0, Lcom/kingsoft/mail/ui/FolderOperation;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/kingsoft/mail/ui/FolderOperation;-><init>(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/Boolean;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1770
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$4;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$4;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-static {v2}, Lcom/kingsoft/mail/providers/Conversation;->listOf(Lcom/kingsoft/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v2

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/AbstractActivityController;->assignFolder(Ljava/util/Collection;Ljava/util/Collection;ZZZ)V

    .line 1772
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1757
    check-cast p1, Lcom/kingsoft/mail/providers/Folder;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController$4;->onPostExecute(Lcom/kingsoft/mail/providers/Folder;)V

    return-void
.end method
