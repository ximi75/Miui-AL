.class public Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;
.super Landroid/widget/Filter;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DirectoryFilter"
.end annotation


# instance fields
.field private mLimit:I

.field private final mParams:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

.field final synthetic this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;


# direct methods
.method public constructor <init>(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;)V
    .locals 0
    .param p2, "params"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 571
    iput-object p2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mParams:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    .line 572
    return-void
.end method


# virtual methods
.method public declared-synchronized getLimit()I
    .locals 1

    .prologue
    .line 579
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 9
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 585
    const-string/jumbo v3, "BaseRecipientAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DirectoryFilter#performFiltering. directoryId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mParams:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    iget-wide v5, v5, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", constraint: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 589
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 590
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 591
    iput v7, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 593
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 594
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .local v2, "tempEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;>;"
    const/4 v0, 0x0

    .line 603
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->getLimit()I

    move-result v4

    iget-object v5, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mParams:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    iget-wide v5, v5, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    # invokes: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->doQuery(Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    invoke-static {v3, p1, v4, v5}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$1300(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    .line 606
    if-eqz v0, :cond_1

    .line 607
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 608
    new-instance v3, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;-><init>(Landroid/database/Cursor;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 613
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 614
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v3

    .line 613
    :cond_1
    if-eqz v0, :cond_2

    .line 614
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 617
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 618
    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 619
    iput v8, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 624
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "tempEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;>;"
    :cond_3
    const-string/jumbo v3, "BaseRecipientAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "finished loading directory \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mParams:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    iget-object v5, v5, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " with query "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 629
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 9
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    const/4 v4, 0x0

    .line 636
    const-string/jumbo v3, "BaseRecipientAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DirectoryFilter#publishResult. constraint: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mCurrentConstraint: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;
    invoke-static {v6}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$700(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 640
    iget-object v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;
    invoke-static {v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$1400(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->removeDelayedLoadMessage()V

    .line 647
    iget-object v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$700(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 648
    iget v3, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v3, :cond_1

    .line 650
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 652
    .local v1, "tempEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;

    .line 653
    .local v2, "tempEntry":Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;
    iget-object v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mParams:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    iget-wide v5, v3, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryId:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    iget-object v5, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mEntryMap:Ljava/util/LinkedHashMap;
    invoke-static {v5}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$900(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mNonAggregatedEntries:Ljava/util/List;
    invoke-static {v6}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$1000(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mExistingDestinations:Ljava/util/Set;
    invoke-static {v7}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$1100(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/util/Set;

    move-result-object v7

    # invokes: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->putOneEntry(Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    invoke-static {v2, v3, v5, v6, v7}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$200(Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    .line 662
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "tempEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;>;"
    .end local v2    # "tempEntry":Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # operator-- for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I
    invoke-static {v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$1510(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)I

    .line 663
    iget-object v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I
    invoke-static {v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$1500(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)I

    move-result v3

    if-lez v3, :cond_2

    .line 665
    const-string/jumbo v3, "BaseRecipientAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Resend delayed load message. Current mRemainingDirectoryLoad: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I
    invoke-static {v6}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$1500(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 669
    iget-object v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;
    invoke-static {v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$1400(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->sendDelayedLoadMessage()V

    .line 675
    :cond_2
    iget v3, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I
    invoke-static {v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$1500(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)I

    move-result v3

    if-nez v3, :cond_4

    .line 677
    :cond_3
    iget-object v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # invokes: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->clearTempEntries()V
    invoke-static {v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$800(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)V

    .line 695
    :cond_4
    :goto_2
    return-void

    .line 680
    :cond_5
    iget v3, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-gtz v3, :cond_8

    .line 681
    iget-object v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mTempEntries:Ljava/util/List;
    invoke-static {v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$1600(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 682
    iget-object v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mTempEntries:Ljava/util/List;
    invoke-static {v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$1600(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 685
    :cond_6
    iget-object v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;
    invoke-static {v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$000(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 686
    iget-object v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;
    invoke-static {v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$000(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 688
    :cond_7
    iget-object v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 691
    :cond_8
    iget-object v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    iget-object v4, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    iget-object v5, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mEntryMap:Ljava/util/LinkedHashMap;
    invoke-static {v5}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$900(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mNonAggregatedEntries:Ljava/util/List;
    invoke-static {v6}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$1000(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/util/List;

    move-result-object v6

    # invokes: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->constructEntryList(Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;
    invoke-static {v4, v5, v6}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$300(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    # invokes: Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->updateEntries(Ljava/util/List;)V
    invoke-static {v3, v4}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->access$1200(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/util/List;)V

    goto :goto_2
.end method

.method public declared-synchronized setLimit(I)V
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    monitor-exit p0

    return-void

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
