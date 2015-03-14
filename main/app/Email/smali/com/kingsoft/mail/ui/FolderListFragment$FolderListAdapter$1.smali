.class Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter$1;
.super Lcom/kingsoft/mail/providers/RecentFolderObserver;
.source "FolderListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;
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
    .line 665
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter$1;->this$1:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;

    invoke-direct {p0}, Lcom/kingsoft/mail/providers/RecentFolderObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter$1;->this$1:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;

    # invokes: Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->isCursorInvalid()Z
    invoke-static {v0}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->access$500(Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter$1;->this$1:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;

    # invokes: Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->recalculateList()V
    invoke-static {v0}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->access$600(Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;)V

    .line 671
    :cond_0
    return-void
.end method
