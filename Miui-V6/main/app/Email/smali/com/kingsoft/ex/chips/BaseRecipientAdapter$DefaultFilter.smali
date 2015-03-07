.class final Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;
.super Landroid/widget/Filter;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultFilter"
.end annotation


# instance fields
.field galthread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;


# direct methods
.method private constructor <init>(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
    .param p2, "x1"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;-><init>(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "resultValue"    # Ljava/lang/Object;

    .prologue
    .line 549
    move-object v2, p1

    check-cast v2, Lcom/kingsoft/ex/chips/RecipientEntry;

    .line 550
    .local v2, "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    invoke-virtual {v2}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "emailAddress":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 556
    .end local v1    # "emailAddress":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .restart local v1    # "emailAddress":Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/text/util/Rfc822Token;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 25
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 303
    new-instance v24, Landroid/widget/Filter$FilterResults;

    invoke-direct/range {v24 .. v24}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 304
    .local v24, "results":Landroid/widget/Filter$FilterResults;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 497
    :goto_0
    return-object v24

    .line 308
    :cond_0
    const/4 v15, 0x0

    .line 309
    .local v15, "defaultDirectoryCursor":Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 310
    .local v16, "directoryCursor":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 312
    .local v14, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    .line 313
    .local v20, "key":Ljava/lang/String;
    sget-object v3, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/kingsoft/mail/utils/ContactHelper;->getAllAddressFuzzybykey(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 314
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_4

    .line 316
    const-string/jumbo v3, "BaseRecipientAdapter"

    const-string/jumbo v8, "null cursor returned for default Email filter query."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 319
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iput-object v3, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 320
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iput v3, v0, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :goto_1
    if-eqz v15, :cond_1

    .line 370
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 371
    const/4 v15, 0x0

    .line 373
    :cond_1
    if-eqz v16, :cond_2

    .line 374
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 375
    const/16 v16, 0x0

    .line 377
    :cond_2
    if-eqz v14, :cond_3

    .line 378
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_3
    new-instance v3, Ljava/lang/Thread;

    new-instance v8, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v8, v0, v1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter$1;-><init>(Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;Ljava/lang/CharSequence;)V

    invoke-direct {v3, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->galthread:Ljava/lang/Thread;

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->galthread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 322
    :cond_4
    :try_start_1
    new-instance v18, Ljava/util/LinkedHashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedHashMap;-><init>()V

    .line 323
    .local v18, "entryMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v23, "nonAggregatedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 325
    .local v19, "existingDestinations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 326
    const-string/jumbo v3, "email"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 328
    .local v7, "mail":Ljava/lang/String;
    const-string/jumbo v3, "name"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v3, "myemail"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 332
    .local v22, "mymail":Ljava/lang/String;
    sget-object v3, Lcom/kingsoft/mail/compose/ComposeActivity;->from_email:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 334
    const-string/jumbo v3, "id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 336
    .local v4, "id":J
    new-instance v3, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    const/4 v8, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    # invokes: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->putOneEntry(Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    invoke-static {v3, v8, v0, v1, v2}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$200(Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 369
    .end local v4    # "id":J
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "mail":Ljava/lang/String;
    .end local v18    # "entryMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;>;"
    .end local v19    # "existingDestinations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "key":Ljava/lang/String;
    .end local v22    # "mymail":Ljava/lang/String;
    .end local v23    # "nonAggregatedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_6

    .line 370
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 371
    const/4 v15, 0x0

    .line 373
    :cond_6
    if-eqz v16, :cond_7

    .line 374
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 375
    const/16 v16, 0x0

    .line 377
    :cond_7
    if-eqz v14, :cond_8

    .line 378
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    .line 341
    .restart local v18    # "entryMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;>;"
    .restart local v19    # "existingDestinations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "key":Ljava/lang/String;
    .restart local v23    # "nonAggregatedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    # invokes: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->constructEntryList(Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;
    invoke-static {v3, v0, v1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$300(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;

    move-result-object v17

    .line 343
    .local v17, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I
    invoke-static {v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$400(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)I

    move-result v3

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->size()I

    move-result v8

    sub-int v21, v3, v8

    .line 346
    .local v21, "limit":I
    if-lez v21, :cond_a

    .line 348
    const-string/jumbo v3, "BaseRecipientAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "More entries should be needed (current: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", remaining limit: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$500(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryListQuery;->URI:Landroid/net/Uri;

    sget-object v10, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryListQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 358
    sget-object v3, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;
    invoke-static {v8}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$600(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Landroid/accounts/Account;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-static {v3, v0, v8}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->setupOtherDirectories(Landroid/content/Context;Landroid/database/Cursor;Landroid/accounts/Account;)Ljava/util/List;

    move-result-object v13

    .line 363
    .local v13, "paramsList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    :goto_3
    new-instance v8, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v23

    move-object/from16 v12, v19

    invoke-direct/range {v8 .. v13}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;-><init>(Ljava/util/List;Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V

    move-object/from16 v0, v24

    iput-object v8, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 366
    const/4 v3, 0x1

    move-object/from16 v0, v24

    iput v3, v0, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 361
    .end local v13    # "paramsList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    :cond_a
    const/4 v13, 0x0

    .restart local v13    # "paramsList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    goto :goto_3
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 510
    iget-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # setter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;
    invoke-static {v2, p1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$702(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 512
    iget-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # invokes: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->clearTempEntries()V
    invoke-static {v2}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$800(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)V

    .line 514
    iget-object v2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 515
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;

    .line 516
    .local v0, "defaultFilterResult":Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;
    iget-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    iget-object v3, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->entryMap:Ljava/util/LinkedHashMap;

    # setter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mEntryMap:Ljava/util/LinkedHashMap;
    invoke-static {v2, v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$902(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 517
    iget-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    iget-object v3, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->nonAggregatedEntries:Ljava/util/List;

    # setter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mNonAggregatedEntries:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$1002(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/util/List;)Ljava/util/List;

    .line 518
    iget-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    iget-object v3, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->existingDestinations:Ljava/util/Set;

    # setter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mExistingDestinations:Ljava/util/Set;
    invoke-static {v2, v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$1102(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/util/Set;)Ljava/util/Set;

    .line 524
    iget-object v2, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->paramsList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # invokes: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->cacheCurrentEntries()V
    invoke-static {v2}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$100(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)V

    .line 529
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    iget-object v3, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->entries:Ljava/util/List;

    # invokes: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->updateEntries(Ljava/util/List;)V
    invoke-static {v2, v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$1200(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/util/List;)V

    .line 533
    iget-object v2, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->paramsList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 534
    iget-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I
    invoke-static {v2}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$400(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)I

    move-result v2

    iget-object v3, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->existingDestinations:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    sub-int v1, v2, v3

    .line 536
    .local v1, "limit":I
    iget-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    iget-object v3, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->paramsList:Ljava/util/List;

    invoke-virtual {v2, p1, v3, v1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->startSearchOtherDirectories(Ljava/lang/CharSequence;Ljava/util/List;I)V

    .line 545
    .end local v0    # "defaultFilterResult":Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;
    .end local v1    # "limit":I
    :cond_1
    :goto_0
    return-void

    .line 540
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;
    invoke-static {v2}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$000(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 541
    iget-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;
    invoke-static {v2}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$000(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 543
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v2}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
