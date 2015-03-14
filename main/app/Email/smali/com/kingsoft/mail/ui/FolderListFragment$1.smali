.class Lcom/kingsoft/mail/ui/FolderListFragment$1;
.super Lcom/kingsoft/mail/providers/FolderObserver;
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
    .line 276
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$1;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    invoke-direct {p0}, Lcom/kingsoft/mail/providers/FolderObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 1
    .param p1, "newFolder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$1;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # invokes: Lcom/kingsoft/mail/ui/FolderListFragment;->setSelectedFolder(Lcom/kingsoft/mail/providers/Folder;)V
    invoke-static {v0, p1}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$000(Lcom/kingsoft/mail/ui/FolderListFragment;Lcom/kingsoft/mail/providers/Folder;)V

    .line 280
    return-void
.end method
