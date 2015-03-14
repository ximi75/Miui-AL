.class Lcom/kingsoft/mail/chat/ChatViewAdapter$3;
.super Ljava/lang/Object;
.source "ChatViewAdapter.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/chat/ChatViewAdapter;->initAttachment(Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;)V
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
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

.field final synthetic val$attHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

.field final synthetic val$uiMessage:Lcom/kingsoft/mail/providers/Message;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewAdapter;Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$3;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    iput-object p2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$3;->val$uiMessage:Lcom/kingsoft/mail/providers/Message;

    iput-object p3, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$3;->val$attHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Lcom/kingsoft/mail/browse/AttachmentLoader;

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$3;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->access$100(Lcom/kingsoft/mail/chat/ChatViewAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$3;->val$uiMessage:Lcom/kingsoft/mail/providers/Message;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/browse/AttachmentLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 7
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$3;->val$uiMessage:Lcom/kingsoft/mail/providers/Message;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_0

    instance-of v3, p2, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 382
    check-cast v2, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    .line 384
    .local v2, "mAttachmentsCursor":Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    .end local v2    # "mAttachmentsCursor":Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;
    :cond_0
    :goto_0
    return-void

    .line 388
    .restart local v2    # "mAttachmentsCursor":Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;
    :cond_1
    const/4 v1, -0x1

    .line 389
    .local v1, "i":I
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 390
    .local v0, "atts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 391
    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;->get()Lcom/kingsoft/mail/providers/Attachment;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 394
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$3;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$3;->val$uiMessage:Lcom/kingsoft/mail/providers/Message;

    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$3;->val$attHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    const/4 v6, 0x1

    # invokes: Lcom/kingsoft/mail/chat/ChatViewAdapter;->renderAttachments(Ljava/util/List;Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;Z)V
    invoke-static {v3, v0, v4, v5, v6}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->access$200(Lcom/kingsoft/mail/chat/ChatViewAdapter;Ljava/util/List;Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 371
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/chat/ChatViewAdapter$3;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
