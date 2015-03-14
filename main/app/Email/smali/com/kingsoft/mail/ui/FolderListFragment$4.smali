.class Lcom/kingsoft/mail/ui/FolderListFragment$4;
.super Lcom/kingsoft/mail/providers/DrawerClosedObserver;
.source "FolderListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/FolderListFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/FolderListFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/FolderListFragment;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$4;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    invoke-direct {p0}, Lcom/kingsoft/mail/providers/DrawerClosedObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$4;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mNextFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$300(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$4;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mFolderChanger:Lcom/kingsoft/mail/ui/FolderSelector;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$400(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/ui/FolderSelector;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$4;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mNextFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$300(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/ui/FolderSelector;->onFolderSelected(Lcom/kingsoft/mail/providers/Folder;)V

    .line 357
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$4;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mNextFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$302(Lcom/kingsoft/mail/ui/FolderListFragment;Lcom/kingsoft/mail/providers/Folder;)Lcom/kingsoft/mail/providers/Folder;

    .line 366
    :cond_0
    return-void
.end method
