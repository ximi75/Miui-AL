.class Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter$1;
.super Ljava/lang/Object;
.source "BaseRecipientAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;

.field final synthetic val$constraint:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter$1;->this$1:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;

    iput-object p2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter$1;->val$constraint:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 39

    .prologue
    .line 387
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v9

    sput v9, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->runingTask:I

    .line 388
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter$1;->val$constraint:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v29

    .line 391
    .local v29, "filter":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter$1;->this$1:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;

    iget-object v9, v9, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;
    invoke-static {v9}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$600(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Landroid/accounts/Account;

    move-result-object v9

    iget-object v9, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v10, "com.android.exchange"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_0

    .line 396
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter$1;->this$1:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;

    iget-object v9, v9, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;
    invoke-static {v9}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$600(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Landroid/accounts/Account;

    move-result-object v9

    iget-object v0, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 398
    .local v23, "accountName":Ljava/lang/String;
    const/16 v38, -0x1

    .line 399
    .local v38, "type":I
    const/16 v9, 0x40

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 401
    .local v27, "domain":Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/utils/ContactHelper;->getCrowdMap()Ljava/util/HashMap;

    move-result-object v25

    .line 403
    .local v25, "csoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/provider/CrowdSourcingObject;>;"
    if-eqz v25, :cond_2

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 404
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/kingsoft/email/provider/CrowdSourcingObject;

    .line 405
    .local v24, "cso":Lcom/kingsoft/email/provider/CrowdSourcingObject;
    if-eqz v24, :cond_2

    .line 406
    invoke-virtual/range {v24 .. v24}, Lcom/kingsoft/email/provider/CrowdSourcingObject;->getSourceTypeId()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 407
    invoke-virtual/range {v24 .. v24}, Lcom/kingsoft/email/provider/CrowdSourcingObject;->getData2()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    .line 412
    .end local v24    # "cso":Lcom/kingsoft/email/provider/CrowdSourcingObject;
    :cond_2
    const/16 v35, 0x3e8

    .line 413
    .local v35, "limit":I
    sget-object v4, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v7, "emailAddress=?"

    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v23, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static/range {v4 .. v11}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 427
    .local v21, "accountId":J
    const/16 v26, 0x0

    .line 430
    .local v26, "data":Lcom/kingsoft/exchange/provider/GalResult;
    :try_start_0
    sget-object v9, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v21

    move-object/from16 v2, v29

    move/from16 v3, v35

    invoke-static {v9, v0, v1, v2, v3}, Lcom/kingsoft/exchange/EasSyncService;->searchGal(Landroid/content/Context;JLjava/lang/String;I)Lcom/kingsoft/exchange/provider/GalResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v26

    .line 441
    if-eqz v26, :cond_0

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/kingsoft/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    .line 443
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/kingsoft/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    .line 444
    .local v30, "galData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/provider/GalResult$GalData;>;"
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v36, "mTemp":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    const/16 v31, 0x0

    .line 446
    .local v31, "i":I
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/kingsoft/exchange/provider/GalResult$GalData;

    .line 447
    .local v34, "item":Lcom/kingsoft/exchange/provider/GalResult$GalData;
    add-int/lit8 v32, v31, 0x1

    .end local v31    # "i":I
    .local v32, "i":I
    const/16 v9, 0x14

    move/from16 v0, v31

    if-le v0, v9, :cond_3

    move/from16 v31, v32

    .line 448
    .end local v32    # "i":I
    .restart local v31    # "i":I
    goto/16 :goto_0

    .line 436
    .end local v30    # "galData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/provider/GalResult$GalData;>;"
    .end local v31    # "i":I
    .end local v33    # "i$":Ljava/util/Iterator;
    .end local v34    # "item":Lcom/kingsoft/exchange/provider/GalResult$GalData;
    .end local v36    # "mTemp":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    :catch_0
    move-exception v28

    .line 438
    .local v28, "e":Ljava/lang/Exception;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 449
    .end local v28    # "e":Ljava/lang/Exception;
    .restart local v30    # "galData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/provider/GalResult$GalData;>;"
    .restart local v32    # "i":I
    .restart local v33    # "i$":Ljava/util/Iterator;
    .restart local v34    # "item":Lcom/kingsoft/exchange/provider/GalResult$GalData;
    .restart local v36    # "mTemp":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v9

    sget v10, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->runingTask:I

    if-ne v9, v10, :cond_0

    .line 451
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/kingsoft/exchange/provider/GalResult$GalData;->emailAddress:Ljava/lang/String;

    .line 452
    .local v8, "mail":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    move/from16 v31, v32

    .line 453
    .end local v32    # "i":I
    .restart local v31    # "i":I
    goto :goto_1

    .line 456
    .end local v31    # "i":I
    .restart local v32    # "i":I
    :cond_4
    move-object/from16 v0, v34

    iget-object v9, v0, Lcom/kingsoft/exchange/provider/GalResult$GalData;->displayName:Ljava/lang/String;

    move/from16 v0, v38

    invoke-static {v9, v0}, Lcom/kingsoft/mail/utils/ContactHelper;->checkoutChenBoStyle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 457
    .local v7, "name":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 458
    move-object/from16 v0, v34

    iget-object v9, v0, Lcom/kingsoft/exchange/provider/GalResult$GalData;->displayName:Ljava/lang/String;

    invoke-static {v9, v8}, Lcom/kingsoft/mail/utils/ContactHelper;->getFrendlyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 460
    :cond_5
    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/kingsoft/exchange/provider/GalResult$GalData;->_id:J

    .line 461
    .local v5, "id":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kingsoft/email/provider/ContactProvider;->showLog(Ljava/lang/String;)V

    .line 463
    sget-object v9, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-static {v9, v8, v0}, Lcom/kingsoft/mail/utils/ContactHelper;->isExistByMailHost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    move/from16 v31, v32

    .line 465
    .end local v32    # "i":I
    .restart local v31    # "i":I
    goto :goto_1

    .line 467
    .end local v31    # "i":I
    .restart local v32    # "i":I
    :cond_6
    new-instance v4, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 470
    .local v4, "entry":Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;
    sget-object v9, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/kingsoft/email/provider/EmailSmallBean;

    invoke-direct {v10, v8, v7}, Lcom/kingsoft/email/provider/EmailSmallBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v11, 0x0

    move-object/from16 v0, v23

    invoke-static {v9, v10, v0, v11, v12}, Lcom/kingsoft/mail/utils/ContactHelper;->insertByEmailSmllBeanOnly(Landroid/content/Context;Lcom/kingsoft/email/provider/EmailSmallBean;Ljava/lang/String;J)V

    .line 472
    iget-object v9, v4, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    iget v10, v4, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayNameSource:I

    iget-object v11, v4, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    iget v12, v4, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    iget-object v13, v4, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    iget-wide v14, v4, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    iget-wide v0, v4, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    move-wide/from16 v16, v0

    iget-object v0, v4, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    iget-boolean v0, v4, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->isGalContact:Z

    move/from16 v20, v0

    invoke-static/range {v9 .. v20}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructSecondLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;ZZ)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v28

    .line 479
    .local v28, "e":Lcom/kingsoft/ex/chips/RecipientEntry;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v9

    sget v10, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->runingTask:I

    if-ne v9, v10, :cond_0

    .line 481
    new-instance v37, Landroid/os/Message;

    invoke-direct/range {v37 .. v37}, Landroid/os/Message;-><init>()V

    .line 482
    .local v37, "message":Landroid/os/Message;
    const/4 v9, 0x2

    move-object/from16 v0, v37

    iput v9, v0, Landroid/os/Message;->what:I

    .line 483
    move-object/from16 v0, v28

    move-object/from16 v1, v37

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 484
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter$1;->this$1:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;

    iget-object v9, v9, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    iget-object v9, v9, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mGALHandler:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$GALHandler;

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$GALHandler;->sendMessage(Landroid/os/Message;)Z

    move/from16 v31, v32

    .line 486
    .end local v32    # "i":I
    .restart local v31    # "i":I
    goto/16 :goto_1
.end method
