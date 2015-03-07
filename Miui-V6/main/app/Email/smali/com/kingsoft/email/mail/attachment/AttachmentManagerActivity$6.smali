.class Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;
.super Ljava/lang/Object;
.source "AttachmentManagerActivity.java"

# interfaces
.implements Lmiui/view/SearchActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "actionMode"    # Landroid/view/ActionMode;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "actionMode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 517
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # setter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSearchActionMode:Landroid/view/ActionMode;
    invoke-static {v2, p1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$1802(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    move-object v1, p1

    .line 518
    check-cast v1, Lmiui/view/SearchActionMode;

    .line 519
    .local v1, "searchActionMode":Lmiui/view/SearchActionMode;
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSearchWidgetAnchorView:Landroid/view/View;
    invoke-static {v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$1900(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/view/SearchActionMode;->setAnchorView(Landroid/view/View;)V

    .line 520
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/view/SearchActionMode;->setAnimateView(Landroid/view/View;)V

    .line 522
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 524
    invoke-interface {v1}, Lmiui/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    .line 525
    .local v0, "input":Landroid/widget/EditText;
    new-instance v2, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6$1;

    invoke-direct {v2, p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6$1;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 540
    new-instance v2, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6$2;

    invoke-direct {v2, p0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6$2;-><init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 549
    const/4 v2, 0x1

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "actionMode"    # Landroid/view/ActionMode;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$6;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 567
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "actionMode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 555
    const/4 v0, 0x0

    return v0
.end method
