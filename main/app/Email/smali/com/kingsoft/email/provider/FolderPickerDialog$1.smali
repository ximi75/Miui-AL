.class Lcom/kingsoft/email/provider/FolderPickerDialog$1;
.super Ljava/lang/Object;
.source "FolderPickerDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/provider/FolderPickerDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/provider/FolderPickerDialog;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/provider/FolderPickerDialog;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/kingsoft/email/provider/FolderPickerDialog$1;->this$0:Lcom/kingsoft/email/provider/FolderPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 83
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerDialog$1;->this$0:Lcom/kingsoft/email/provider/FolderPickerDialog;

    # getter for: Lcom/kingsoft/email/provider/FolderPickerDialog;->mAdapter:Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;
    invoke-static {v1}, Lcom/kingsoft/email/provider/FolderPickerDialog;->access$000(Lcom/kingsoft/email/provider/FolderPickerDialog;)Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/kingsoft/email/provider/FolderPickerDialog$1;->this$0:Lcom/kingsoft/email/provider/FolderPickerDialog;

    check-cast v0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    .end local v0    # "item":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/kingsoft/email/provider/FolderPickerDialog;->update(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;)V

    .line 87
    :cond_0
    return-void
.end method
