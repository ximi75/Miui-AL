.class Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment$1;
.super Ljava/lang/Object;
.source "EmptyFolderDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment$1;->this$0:Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 98
    iget-object v1, p0, Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment$1;->this$0:Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;

    # getter for: Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;->mListener:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;->access$000(Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment$1;->this$0:Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;

    # getter for: Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;->mListener:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;->access$000(Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment$EmptyFolderDialogFragmentListener;

    .line 101
    .local v0, "listener":Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment$EmptyFolderDialogFragmentListener;
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment$EmptyFolderDialogFragmentListener;->onFolderEmptied()V

    .line 105
    .end local v0    # "listener":Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment$EmptyFolderDialogFragmentListener;
    :cond_0
    return-void
.end method
