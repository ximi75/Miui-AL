.class Lcom/kingsoft/ex/chips/BaseRecipientAdapter$GALHandler;
.super Landroid/os/Handler;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GALHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;


# direct methods
.method constructor <init>(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$GALHandler;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 258
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 289
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 290
    return-void

    .line 262
    :pswitch_0
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 263
    .local v1, "mTemp":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    iget-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$GALHandler;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;
    invoke-static {v2}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$000(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    iget-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$GALHandler;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # invokes: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->cacheCurrentEntries()V
    invoke-static {v2}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$100(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)V

    .line 265
    iget-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$GALHandler;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v2}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 266
    .end local v1    # "mTemp":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    :catch_0
    move-exception v2

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v2

    throw v2

    .line 274
    :pswitch_1
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingsoft/ex/chips/RecipientEntry;

    .line 275
    .local v0, "e":Lcom/kingsoft/ex/chips/RecipientEntry;
    iget-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$GALHandler;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;
    invoke-static {v2}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$000(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$GALHandler;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # invokes: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->cacheCurrentEntries()V
    invoke-static {v2}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$100(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)V

    .line 277
    iget-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$GALHandler;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v2}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 278
    .end local v0    # "e":Lcom/kingsoft/ex/chips/RecipientEntry;
    :catch_1
    move-exception v2

    goto :goto_0

    .line 280
    :catchall_1
    move-exception v2

    throw v2

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
