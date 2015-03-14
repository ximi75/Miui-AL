.class Lcom/kingsoft/mail/ui/FolderSelectionDialog$1;
.super Ljava/lang/Object;
.source "FolderSelectionDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/FolderSelectionDialog;->showInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/FolderSelectionDialog;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/FolderSelectionDialog;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog$1;->this$0:Lcom/kingsoft/mail/ui/FolderSelectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 118
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectionDialog$1;->this$0:Lcom/kingsoft/mail/ui/FolderSelectionDialog;

    invoke-virtual {v0, p3}, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->onListItemClick(I)V

    .line 119
    return-void
.end method
