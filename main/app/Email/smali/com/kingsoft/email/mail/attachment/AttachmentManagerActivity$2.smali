.class Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;
.super Ljava/lang/Object;
.source "AttachmentManagerActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 173
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x1

    .line 217
    const/4 v2, 0x1

    .line 218
    .local v2, "handled":Z
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    .line 220
    .local v6, "itemId":I
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    const v9, 0x1020019

    if-ne v8, v9, :cond_0

    .line 221
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 222
    iget-object v8, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
    invoke-static {v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->clearPosition()V

    .line 281
    :goto_0
    return v7

    .line 224
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    const v9, 0x102001a

    if-ne v8, v9, :cond_4

    .line 225
    iget-object v8, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getCount()I

    move-result v8

    iget-object v9, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;
    invoke-static {v9}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 226
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v8, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getCount()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 227
    iget-object v8, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ListView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 226
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 229
    :cond_1
    iget-object v8, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
    invoke-static {v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setRemovedPos(Ljava/lang/Integer;)V

    goto :goto_0

    .line 232
    .end local v3    # "i":I
    :cond_2
    iget-object v8, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCheckedMap:Ljava/util/Set;
    invoke-static {v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$300(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 233
    iget-object v8, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSelectedIds:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$200(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 234
    iget-object v8, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
    invoke-static {v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->clearPosition()V

    .line 236
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v8, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getCount()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 237
    iget-object v8, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, v3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 239
    :cond_3
    iget-object v8, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
    invoke-static {v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setCheckedPos(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 244
    .end local v3    # "i":I
    :cond_4
    const v8, 0x7f0c025e

    if-ne v6, v8, :cond_5

    .line 245
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 246
    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
    invoke-static {v7}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->clearPosition()V

    .line 247
    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->deleteCheckFiles()V

    .line 248
    const/4 v2, 0x1

    :goto_3
    move v7, v2

    .line 281
    goto/16 :goto_0

    .line 250
    :cond_5
    const v8, 0x7f0c025f

    if-ne v6, v8, :cond_6

    .line 251
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 252
    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    iget-object v8, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSelectedIds:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$200(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    # invokes: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->forwardAttachmentByEmail(Ljava/util/ArrayList;)V
    invoke-static {v7, v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$800(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;Ljava/util/ArrayList;)V

    .line 253
    const/4 v2, 0x1

    goto :goto_3

    .line 255
    :cond_6
    const v8, 0x7f0c0260

    if-ne v6, v8, :cond_9

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v1, "contentUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSelectedIds:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$200(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 261
    .local v5, "id":Ljava/lang/Long;
    iget-object v8, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$500(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 263
    .local v0, "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget v8, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_7

    .line 264
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 266
    :cond_7
    iget-object v8, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    const v9, 0x7f100187

    invoke-static {v8, v9}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 271
    .end local v0    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v5    # "id":Ljava/lang/Long;
    :cond_8
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 273
    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # invokes: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->share(Ljava/util/ArrayList;)V
    invoke-static {v7, v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$900(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;Ljava/util/ArrayList;)V

    .line 275
    const/4 v2, 0x1

    .line 277
    goto :goto_3

    .line 278
    .end local v1    # "contentUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_9
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    .line 194
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-virtual {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 195
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f120000

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 197
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSelectedIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$200(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 198
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCheckedMap:Ljava/util/Set;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$300(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 199
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->clearPosition()V

    .line 200
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->clearCabSet()V

    .line 201
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$500(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100396

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->strSelectAll:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$402(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$500(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100397

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->strSelectNone:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$602(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-virtual {v1, p1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->updateTopTitles(Landroid/view/ActionMode;)V

    .line 206
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setMode(I)V

    .line 207
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ListView;

    move-result-object v1

    instance-of v1, v1, Lcom/kingsoft/email/mail/attachment/FlingListView;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/mail/attachment/FlingListView;

    invoke-virtual {v1}, Lcom/kingsoft/email/mail/attachment/FlingListView;->clearState()V

    .line 211
    :cond_0
    return v4
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/ActionMode;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCheckedMap:Ljava/util/Set;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$300(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 185
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setCheckedPos(Ljava/lang/Integer;)V

    .line 186
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->notifyDataSetChanged()V

    .line 187
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->clearCabSet()V

    .line 188
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setMode(I)V

    .line 190
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "pos"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 287
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-virtual {v1, p1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->updateTopTitles(Landroid/view/ActionMode;)V

    .line 289
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mListview:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$700(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p2, v1

    .line 291
    .local v0, "dataPostion":I
    if-eqz p5, :cond_1

    .line 292
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCheckedMap:Ljava/util/Set;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$300(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSelectedIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$200(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setCheckedPos(Ljava/lang/Integer;)V

    .line 304
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->notifyDataSetChanged()V

    .line 305
    return-void

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCheckedMap:Ljava/util/Set;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$300(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 297
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSelectedIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$200(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 298
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setRemovedPos(Ljava/lang/Integer;)V

    .line 299
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mCheckedMap:Ljava/util/Set;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$300(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mAdapter:Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->setCheckedPos(Ljava/lang/Integer;)V

    .line 301
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/ActionMode;
    .param p2, "arg1"    # Landroid/view/Menu;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$2;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    # getter for: Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->mSelectedIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;->access$200(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 179
    const/4 v0, 0x1

    return v0
.end method
