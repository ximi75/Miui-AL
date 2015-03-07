.class Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$1;
.super Ljava/lang/Object;
.source "LimitedMultiSelectDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$adapter:Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;

.field final synthetic val$selectedValues:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;Ljava/util/Set;Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$1;->this$0:Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$1;->val$selectedValues:Ljava/util/Set;

    iput-object p3, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$1;->val$adapter:Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    .local v0, "entryValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$1;->val$selectedValues:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$1;->val$selectedValues:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$1;->val$adapter:Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->removeSelected(Ljava/lang/String;)V

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$1;->this$0:Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "selectedValues"

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$1;->val$selectedValues:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 114
    iget-object v1, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$1;->val$adapter:Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->notifyDataSetChanged()V

    .line 115
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$1;->val$selectedValues:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$1;->val$adapter:Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->addSelected(Ljava/lang/String;)V

    goto :goto_0
.end method
