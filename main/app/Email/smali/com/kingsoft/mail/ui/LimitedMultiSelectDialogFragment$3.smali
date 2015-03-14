.class Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$3;
.super Ljava/lang/Object;
.source "LimitedMultiSelectDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;

.field final synthetic val$selectedValues:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$3;->this$0:Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$3;->val$selectedValues:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 132
    iget-object v1, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$3;->this$0:Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;

    # getter for: Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;->mListener:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;->access$000(Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$3;->this$0:Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;

    # getter for: Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;->mListener:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;->access$000(Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectDialogListener;

    .line 134
    .local v0, "listener":Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectDialogListener;
    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$3;->val$selectedValues:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectDialogListener;->onSelectionChanged(Ljava/util/Set;)V

    .line 138
    .end local v0    # "listener":Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectDialogListener;
    :cond_0
    return-void
.end method
