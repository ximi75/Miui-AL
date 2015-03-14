.class Lcom/kingsoft/mail/ui/FolderListFragment$3;
.super Lcom/kingsoft/mail/providers/AllAccountObserver;
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
    .line 322
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$3;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    invoke-direct {p0}, Lcom/kingsoft/mail/providers/AllAccountObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged([Lcom/kingsoft/mail/providers/Account;)V
    .locals 9
    .param p1, "allAccounts"    # [Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 325
    iget-object v7, p0, Lcom/kingsoft/mail/ui/FolderListFragment$3;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;
    invoke-static {v7}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$200(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    move-result-object v7

    invoke-interface {v7}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->notifyAllAccountsChanged()V

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v0, "AccountString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 329
    .local v3, "i":I
    const/4 v6, 0x0

    .line 330
    .local v6, "selected":I
    move-object v2, p1

    .local v2, "arr$":[Lcom/kingsoft/mail/providers/Account;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v2, v4

    .line 331
    .local v1, "account":Lcom/kingsoft/mail/providers/Account;
    iget-object v7, v1, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v7, v1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/kingsoft/mail/ui/FolderListFragment$3;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v8, v8, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v8, v8, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 333
    move v6, v3

    .line 334
    iget-object v7, p0, Lcom/kingsoft/mail/ui/FolderListFragment$3;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iput-object v1, v7, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    .line 337
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 330
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 339
    .end local v1    # "account":Lcom/kingsoft/mail/providers/Account;
    :cond_1
    iget-object v7, p0, Lcom/kingsoft/mail/ui/FolderListFragment$3;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v7, v7, Lcom/kingsoft/mail/ui/FolderListFragment;->actionBarTitle:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 340
    iget-object v7, p0, Lcom/kingsoft/mail/ui/FolderListFragment$3;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v7, v7, Lcom/kingsoft/mail/ui/FolderListFragment;->actionBarTitle:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/kingsoft/mail/ui/FolderListFragment$3;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v8, v8, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v8, v8, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :cond_2
    iget-object v7, p0, Lcom/kingsoft/mail/ui/FolderListFragment$3;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v7, v7, Lcom/kingsoft/mail/ui/FolderListFragment;->mDropDownSingleChoiceMenu:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    if-eqz v7, :cond_3

    .line 342
    iget-object v7, p0, Lcom/kingsoft/mail/ui/FolderListFragment$3;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v7, v7, Lcom/kingsoft/mail/ui/FolderListFragment;->mDropDownSingleChoiceMenu:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    invoke-virtual {v7, v0}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->setItems(Ljava/util/List;)V

    .line 343
    iget-object v7, p0, Lcom/kingsoft/mail/ui/FolderListFragment$3;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v7, v7, Lcom/kingsoft/mail/ui/FolderListFragment;->mDropDownSingleChoiceMenu:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    invoke-virtual {v7, v6}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->setSelectedItem(I)V

    .line 345
    :cond_3
    return-void
.end method
