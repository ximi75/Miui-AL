.class interface abstract Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;
.super Ljava/lang/Object;
.source "FolderListFragment.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/FolderListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "FolderListFragmentCursorAdapter"
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getDefaultInbox(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Folder;
.end method

.method public abstract getItemType(Lcom/kingsoft/mail/adapter/DrawerItem;)I
.end method

.method public abstract getSelectedPosition()I
.end method

.method public abstract notifyAllAccountsChanged()V
.end method

.method public abstract notifyDataSetChanged()V
.end method

.method public abstract setAllFolderListCursor(Lcom/kingsoft/mail/content/ObjectCursor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCursor(Lcom/kingsoft/mail/content/ObjectCursor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation
.end method
