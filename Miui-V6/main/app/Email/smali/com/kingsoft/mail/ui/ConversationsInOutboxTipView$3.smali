.class Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$3;
.super Ljava/lang/Object;
.source "ConversationsInOutboxTipView.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/kingsoft/mail/content/ObjectCursor",
        "<",
        "Lcom/kingsoft/mail/providers/Folder;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$3;->this$0:Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lcom/kingsoft/mail/content/ObjectCursorLoader;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$3;->this$0:Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$3;->this$0:Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;

    # getter for: Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->access$300(Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v2

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    sget-object v3, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    sget-object v4, Lcom/kingsoft/mail/providers/Folder;->FACTORY:Lcom/kingsoft/mail/content/CursorCreator;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingsoft/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/kingsoft/mail/content/CursorCreator;)V

    .line 181
    .local v0, "loader":Lcom/kingsoft/mail/content/ObjectCursorLoader;, "Lcom/kingsoft/mail/content/ObjectCursorLoader<Lcom/kingsoft/mail/providers/Folder;>;"
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/content/ObjectCursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;>;",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;>;"
    .local p2, "data":Lcom/kingsoft/mail/content/ObjectCursor;, "Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;"
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    :cond_0
    invoke-virtual {p2}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Folder;

    .line 165
    .local v0, "folder":Lcom/kingsoft/mail/providers/Folder;
    iget v1, v0, Lcom/kingsoft/mail/providers/Folder;->type:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$3;->this$0:Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;

    # setter for: Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mOutbox:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v1, v0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->access$102(Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;Lcom/kingsoft/mail/providers/Folder;)Lcom/kingsoft/mail/providers/Folder;

    .line 167
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$3;->this$0:Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;

    iget v2, v0, Lcom/kingsoft/mail/providers/Folder;->totalCount:I

    # invokes: Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->onOutboxTotalCount(I)V
    invoke-static {v1, v2}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->access$200(Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;I)V

    .line 169
    :cond_1
    invoke-virtual {p2}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    .end local v0    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_2
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 153
    check-cast p2, Lcom/kingsoft/mail/content/ObjectCursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$3;->onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/content/ObjectCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;>;"
    return-void
.end method
