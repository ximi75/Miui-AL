.class Lcom/kingsoft/mail/compose/ContactListActivity$2;
.super Ljava/lang/Object;
.source "ContactListActivity.java"

# interfaces
.implements Lmiui/view/SearchActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/compose/ContactListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/ContactListActivity;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/ContactListActivity;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ContactListActivity$2;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "actionMode"    # Landroid/view/ActionMode;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "actionMode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 219
    move-object v0, p1

    check-cast v0, Lmiui/view/SearchActionMode;

    .line 220
    .local v0, "searchActionMode":Lmiui/view/SearchActionMode;
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity$2;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    # getter for: Lcom/kingsoft/mail/compose/ContactListActivity;->mSearchWidgetAnchorView:Landroid/view/View;
    invoke-static {v1}, Lcom/kingsoft/mail/compose/ContactListActivity;->access$000(Lcom/kingsoft/mail/compose/ContactListActivity;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/view/SearchActionMode;->setAnchorView(Landroid/view/View;)V

    .line 221
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity$2;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    # getter for: Lcom/kingsoft/mail/compose/ContactListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/kingsoft/mail/compose/ContactListActivity;->access$100(Lcom/kingsoft/mail/compose/ContactListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/view/SearchActionMode;->setAnimateView(Landroid/view/View;)V

    .line 223
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity$2;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    invoke-interface {v0}, Lmiui/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v2

    # setter for: Lcom/kingsoft/mail/compose/ContactListActivity;->searchEDT:Landroid/widget/EditText;
    invoke-static {v1, v2}, Lcom/kingsoft/mail/compose/ContactListActivity;->access$202(Lcom/kingsoft/mail/compose/ContactListActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 224
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity$2;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    # getter for: Lcom/kingsoft/mail/compose/ContactListActivity;->searchEDT:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/kingsoft/mail/compose/ContactListActivity;->access$200(Lcom/kingsoft/mail/compose/ContactListActivity;)Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x7f10013c

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 225
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity$2;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    # getter for: Lcom/kingsoft/mail/compose/ContactListActivity;->searchEDT:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/kingsoft/mail/compose/ContactListActivity;->access$200(Lcom/kingsoft/mail/compose/ContactListActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ContactListActivity$2;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 226
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity$2;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    # getter for: Lcom/kingsoft/mail/compose/ContactListActivity;->searchEDT:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/kingsoft/mail/compose/ContactListActivity;->access$200(Lcom/kingsoft/mail/compose/ContactListActivity;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/kingsoft/mail/compose/ContactListActivity$2$1;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/compose/ContactListActivity$2$1;-><init>(Lcom/kingsoft/mail/compose/ContactListActivity$2;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 235
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "actionMode"    # Landroid/view/ActionMode;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity$2;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    # getter for: Lcom/kingsoft/mail/compose/ContactListActivity;->searchEDT:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/kingsoft/mail/compose/ContactListActivity;->access$200(Lcom/kingsoft/mail/compose/ContactListActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 253
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "actionMode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method
