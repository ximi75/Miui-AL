.class Lcom/kingsoft/email/activity/InsertQuickResponseDialog$1;
.super Ljava/lang/Object;
.source "InsertQuickResponseDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/InsertQuickResponseDialog;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/InsertQuickResponseDialog;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$1;->this$0:Lcom/kingsoft/email/activity/InsertQuickResponseDialog;

    iput-object p2, p0, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 110
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 111
    .local v0, "c":Landroid/database/Cursor;
    const-string/jumbo v2, "quickResponse"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "quickResponseText":Ljava/lang/String;
    iget-object v2, p0, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$1;->this$0:Lcom/kingsoft/email/activity/InsertQuickResponseDialog;

    # invokes: Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->getCallback()Lcom/kingsoft/email/activity/InsertQuickResponseDialog$Callback;
    invoke-static {v2}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->access$000(Lcom/kingsoft/email/activity/InsertQuickResponseDialog;)Lcom/kingsoft/email/activity/InsertQuickResponseDialog$Callback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$Callback;->onQuickResponseSelected(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, p0, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$1;->this$0:Lcom/kingsoft/email/activity/InsertQuickResponseDialog;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->dismiss()V

    .line 115
    return-void
.end method
