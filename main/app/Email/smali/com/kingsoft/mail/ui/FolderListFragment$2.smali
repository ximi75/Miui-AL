.class Lcom/kingsoft/mail/ui/FolderListFragment$2;
.super Lcom/kingsoft/mail/providers/AccountObserver;
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
    .line 311
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$2;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    invoke-direct {p0}, Lcom/kingsoft/mail/providers/AccountObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/kingsoft/mail/providers/Account;)V
    .locals 2
    .param p1, "newAccount"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$2;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    const/4 v1, 0x0

    # invokes: Lcom/kingsoft/mail/ui/FolderListFragment;->setSelectedAccount(Lcom/kingsoft/mail/providers/Account;Z)V
    invoke-static {v0, p1, v1}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$100(Lcom/kingsoft/mail/ui/FolderListFragment;Lcom/kingsoft/mail/providers/Account;Z)V

    .line 315
    return-void
.end method
