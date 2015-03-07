.class Lcom/kingsoft/mail/compose/ContactListActivity$GALHandler;
.super Landroid/os/Handler;
.source "ContactListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/compose/ContactListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GALHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/ContactListActivity;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/ContactListActivity;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ContactListActivity$GALHandler;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 631
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 657
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 658
    return-void

    .line 635
    :pswitch_0
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 636
    .local v1, "mTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ContactListActivity$GALHandler;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    # getter for: Lcom/kingsoft/mail/compose/ContactListActivity;->mAdapter:Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;
    invoke-static {v2}, Lcom/kingsoft/mail/compose/ContactListActivity;->access$600(Lcom/kingsoft/mail/compose/ContactListActivity;)Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;->getlist()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 637
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ContactListActivity$GALHandler;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    # getter for: Lcom/kingsoft/mail/compose/ContactListActivity;->mAdapter:Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;
    invoke-static {v2}, Lcom/kingsoft/mail/compose/ContactListActivity;->access$600(Lcom/kingsoft/mail/compose/ContactListActivity;)Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 638
    .end local v1    # "mTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    :catch_0
    move-exception v2

    goto :goto_0

    .line 646
    :pswitch_1
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingsoft/email/provider/EmailSmallBean;

    .line 647
    .local v0, "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ContactListActivity$GALHandler;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    # getter for: Lcom/kingsoft/mail/compose/ContactListActivity;->mAdapter:Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;
    invoke-static {v2}, Lcom/kingsoft/mail/compose/ContactListActivity;->access$600(Lcom/kingsoft/mail/compose/ContactListActivity;)Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;->getlist()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ContactListActivity$GALHandler;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    # getter for: Lcom/kingsoft/mail/compose/ContactListActivity;->mAdapter:Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;
    invoke-static {v2}, Lcom/kingsoft/mail/compose/ContactListActivity;->access$600(Lcom/kingsoft/mail/compose/ContactListActivity;)Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/compose/ContactListActivity$ContactAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 649
    .end local v0    # "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    :catch_1
    move-exception v2

    goto :goto_0

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
