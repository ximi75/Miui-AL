.class Lcom/kingsoft/mail/compose/ContactListActivity$3;
.super Ljava/lang/Object;
.source "ContactListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/ContactListActivity;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

.field final synthetic val$info:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/ContactListActivity;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ContactListActivity$3;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    iput-object p2, p0, Lcom/kingsoft/mail/compose/ContactListActivity$3;->val$info:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 401
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sput v2, Lcom/kingsoft/mail/compose/ContactListActivity;->runingTask:I

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ContactListActivity$3;->val$info:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 403
    .local v15, "filter":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    sget-object v2, Lcom/kingsoft/mail/compose/ContactListActivity;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v3, "com.android.exchange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    sget-object v2, Lcom/kingsoft/mail/compose/ContactListActivity;->mAccount:Landroid/accounts/Account;

    iget-object v12, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 408
    .local v12, "accountName":Ljava/lang/String;
    const/16 v21, 0x3e8

    .line 409
    .local v21, "limit":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ContactListActivity$3;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    # getter for: Lcom/kingsoft/mail/compose/ContactListActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/mail/compose/ContactListActivity;->access$300(Lcom/kingsoft/mail/compose/ContactListActivity;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "emailAddress=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v26, -0x1

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 421
    .local v10, "accountId":J
    const/4 v13, 0x0

    .line 424
    .local v13, "data":Lcom/kingsoft/exchange/provider/GalResult;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ContactListActivity$3;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    # getter for: Lcom/kingsoft/mail/compose/ContactListActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/mail/compose/ContactListActivity;->access$300(Lcom/kingsoft/mail/compose/ContactListActivity;)Landroid/content/Context;

    move-result-object v2

    move/from16 v0, v21

    invoke-static {v2, v10, v11, v15, v0}, Lcom/kingsoft/exchange/EasSyncService;->searchGal(Landroid/content/Context;JLjava/lang/String;I)Lcom/kingsoft/exchange/provider/GalResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 431
    if-eqz v13, :cond_0

    iget-object v2, v13, Lcom/kingsoft/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 432
    iget-object v0, v13, Lcom/kingsoft/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 433
    .local v16, "galData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/provider/GalResult$GalData;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v22, "mTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/kingsoft/exchange/provider/GalResult$GalData;

    .line 435
    .local v20, "item":Lcom/kingsoft/exchange/provider/GalResult$GalData;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sget v3, Lcom/kingsoft/mail/compose/ContactListActivity;->runingTask:I

    if-ne v2, v3, :cond_0

    .line 436
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/kingsoft/exchange/provider/GalResult$GalData;->emailAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 437
    .local v23, "mail":Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/kingsoft/exchange/provider/GalResult$GalData;->displayName:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 438
    .local v25, "name":Ljava/lang/String;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/kingsoft/exchange/provider/GalResult$GalData;->_id:J

    move-wide/from16 v18, v0

    .line 439
    .local v18, "id":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/email/provider/ContactProvider;->showLog(Ljava/lang/String;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ContactListActivity$3;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    # getter for: Lcom/kingsoft/mail/compose/ContactListActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/mail/compose/ContactListActivity;->access$300(Lcom/kingsoft/mail/compose/ContactListActivity;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-static {v2, v0, v12}, Lcom/kingsoft/mail/utils/ContactHelper;->isExistByMailHost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 444
    new-instance v14, Lcom/kingsoft/email/provider/EmailSmallBean;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v14, v0, v1}, Lcom/kingsoft/email/provider/EmailSmallBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .local v14, "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ContactListActivity$3;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    # getter for: Lcom/kingsoft/mail/compose/ContactListActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/mail/compose/ContactListActivity;->access$300(Lcom/kingsoft/mail/compose/ContactListActivity;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/kingsoft/email/provider/EmailSmallBean;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v3, v0, v1}, Lcom/kingsoft/email/provider/EmailSmallBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v12, v4, v5}, Lcom/kingsoft/mail/utils/ContactHelper;->insertByEmailSmllBeanOnly(Landroid/content/Context;Lcom/kingsoft/email/provider/EmailSmallBean;Ljava/lang/String;J)V

    .line 448
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sget v3, Lcom/kingsoft/mail/compose/ContactListActivity;->runingTask:I

    if-ne v2, v3, :cond_0

    .line 449
    new-instance v24, Landroid/os/Message;

    invoke-direct/range {v24 .. v24}, Landroid/os/Message;-><init>()V

    .line 450
    .local v24, "message":Landroid/os/Message;
    const/4 v2, 0x2

    move-object/from16 v0, v24

    iput v2, v0, Landroid/os/Message;->what:I

    .line 451
    move-object/from16 v0, v24

    iput-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/compose/ContactListActivity$3;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    # getter for: Lcom/kingsoft/mail/compose/ContactListActivity;->mGALHandler:Lcom/kingsoft/mail/compose/ContactListActivity$GALHandler;
    invoke-static {v2}, Lcom/kingsoft/mail/compose/ContactListActivity;->access$400(Lcom/kingsoft/mail/compose/ContactListActivity;)Lcom/kingsoft/mail/compose/ContactListActivity$GALHandler;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/kingsoft/mail/compose/ContactListActivity$GALHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 427
    .end local v14    # "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    .end local v16    # "galData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/provider/GalResult$GalData;>;"
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "id":J
    .end local v20    # "item":Lcom/kingsoft/exchange/provider/GalResult$GalData;
    .end local v22    # "mTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    .end local v23    # "mail":Ljava/lang/String;
    .end local v24    # "message":Landroid/os/Message;
    .end local v25    # "name":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 428
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
