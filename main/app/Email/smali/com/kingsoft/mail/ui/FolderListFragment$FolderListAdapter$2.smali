.class Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter$2;
.super Ljava/lang/Object;
.source "FolderListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter$2;->this$1:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 747
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter$2;->this$1:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFolderController()Lcom/kingsoft/mail/ui/FolderController;

    move-result-object v0

    .line 748
    .local v0, "controller":Lcom/kingsoft/mail/ui/FolderController;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter$2;->this$1:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentFolderForUnreadCheck:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1000(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/ui/FolderController;->changeFolderUnreadCount(Lcom/kingsoft/mail/providers/Folder;)V

    .line 749
    return-void
.end method
