.class public abstract Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;
.super Lcom/kingsoft/common/widget/CompositeCursorAdapter;
.source "BaseEmailAddressAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;,
        Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;,
        Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryListQuery;,
        Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$EmailQuery;,
        Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    }
.end annotation


# static fields
.field private static final ALLOWANCE_FOR_DUPLICATES:I = 0x5

.field private static final DEFAULT_PREFERRED_MAX_RESULT_COUNT:I = 0xa

.field private static final DIRECTORY_LOCAL_INVISIBLE:J = 0x1L

.field private static final DIRECTORY_PARAM_KEY:Ljava/lang/String; = "directory"

.field private static final LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field private static final MESSAGE_SEARCH_PENDING:I = 0x1

.field private static final MESSAGE_SEARCH_PENDING_DELAY:I = 0x3e8

.field private static final PRIMARY_ACCOUNT_NAME:Ljava/lang/String; = "name_for_primary_account"

.field private static final PRIMARY_ACCOUNT_TYPE:Ljava/lang/String; = "type_for_primary_account"

.field private static final SEARCHING_CURSOR_MARKER:Ljava/lang/String; = "searching"

.field private static final TAG:Ljava/lang/String; = "BaseEmailAddressAdapter"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field protected final mContentResolver:Landroid/content/ContentResolver;

.field private mDirectoriesLoaded:Z

.field private mHandler:Landroid/os/Handler;

.field private mPreferredMaxResultCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;-><init>(Landroid/content/Context;I)V

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredMaxResultCount"    # I

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/kingsoft/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;)V

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 267
    iput p2, p0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->mPreferredMaxResultCount:I

    .line 269
    new-instance v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$1;-><init>(Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;)V

    iput-object v0, p0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    .line 276
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->mDirectoriesLoaded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->mDirectoriesLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;

    .prologue
    .line 52
    iget v0, p0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->mPreferredMaxResultCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createLoadingCursor()Landroid/database/Cursor;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 496
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "searching"

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 497
    .local v0, "cursor":Landroid/database/MatrixCursor;
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 498
    return-object v0
.end method

.method private hasDuplicates(Landroid/database/Cursor;I)Z
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "partition"    # I

    .prologue
    const/4 v1, 0x1

    .line 556
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 557
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 558
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "emailAddress":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->isDuplicate(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    .end local v0    # "emailAddress":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDuplicate(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "excludePartition"    # I

    .prologue
    const/4 v4, 0x1

    .line 571
    invoke-virtual {p0}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v3

    .line 572
    .local v3, "partitionCount":I
    const/4 v2, 0x0

    .local v2, "partition":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 573
    if-eq v2, p2, :cond_1

    invoke-direct {p0, v2}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->isLoading(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 574
    invoke-virtual {p0, v2}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 575
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 576
    const/4 v5, -0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 577
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 578
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, "address":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 587
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "cursor":Landroid/database/Cursor;
    :goto_1
    return v4

    .line 572
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 587
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isLoading(I)Z
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcom/kingsoft/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    iget-boolean v0, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    return v0
.end method

.method private final makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 591
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "searching"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 592
    const-string/jumbo v1, ""

    .line 600
    :cond_0
    :goto_0
    return-object v1

    .line 595
    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "displayName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "emailAddress":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 600
    new-instance v2, Landroid/text/util/Rfc822Token;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private removeDuplicatesAndTruncate(ILandroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8
    .param p1, "partition"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 530
    if-nez p2, :cond_1

    .line 531
    const/4 p2, 0x0

    .line 552
    .end local p2    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object p2

    .line 534
    .restart local p2    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gt v4, v7, :cond_2

    invoke-direct {p0, p2, p1}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->hasDuplicates(Landroid/database/Cursor;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 539
    :cond_2
    const/4 v0, 0x0

    .line 540
    .local v0, "count":I
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$EmailQuery;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 541
    .local v3, "newCursor":Landroid/database/MatrixCursor;
    const/4 v4, -0x1

    invoke-interface {p2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 542
    :cond_3
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    if-ge v0, v7, :cond_4

    .line 543
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, "displayName":Ljava/lang/String;
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "emailAddress":Ljava/lang/String;
    invoke-direct {p0, v2, p1}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->isDuplicate(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 546
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 550
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "emailAddress":Ljava/lang/String;
    :cond_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    move-object p2, v3

    .line 552
    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 327
    invoke-virtual {p0, p2}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcom/kingsoft/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 328
    .local v6, "directoryPartition":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    iget-object v2, v6, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->directoryType:Ljava/lang/String;

    .line 329
    .local v2, "directoryType":Ljava/lang/String;
    iget-object v3, v6, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->displayName:Ljava/lang/String;

    .line 330
    .local v3, "directoryName":Ljava/lang/String;
    iget-boolean v0, v6, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0, p1, v2, v3}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->bindViewLoading(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_0
    return-void

    .line 333
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "displayName":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 335
    .local v5, "emailAddress":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    :cond_1
    move-object v4, v5

    .line 337
    const/4 v5, 0x0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    .line 339
    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->bindView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract bindView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract bindViewLoading(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 360
    new-instance v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;-><init>(Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$1;)V

    return-object v0
.end method

.method protected getItemViewType(II)I
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "position"    # I

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcom/kingsoft/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 311
    .local v0, "partition":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    iget-boolean v1, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract inflateItemView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract inflateItemViewLoading(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected isEnabled(II)Z
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "position"    # I

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->isLoading(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 317
    invoke-virtual {p0, p2}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcom/kingsoft/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 318
    .local v0, "partition":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    iget-boolean v1, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {p0, p5}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->inflateItemViewLoading(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 321
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p5}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->inflateItemView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDirectoryLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 24
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "directoryCursor"    # Landroid/database/Cursor;
    .param p3, "defaultPartitionCursor"    # Landroid/database/Cursor;

    .prologue
    .line 369
    if-eqz p2, :cond_5

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 371
    .local v14, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    .line 372
    .local v17, "preferredDirectory":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v6, "directories":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;>;"
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 374
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 378
    .local v10, "id":J
    const-wide/16 v20, 0x1

    cmp-long v20, v10, v20

    if-eqz v20, :cond_0

    .line 382
    new-instance v16, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    invoke-direct/range {v16 .. v16}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;-><init>()V

    .line 383
    .local v16, "partition":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    move-object/from16 v0, v16

    iput-wide v10, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->directoryId:J

    .line 384
    const/16 v20, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->displayName:Ljava/lang/String;

    .line 385
    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->accountName:Ljava/lang/String;

    .line 386
    const/16 v20, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->accountType:Ljava/lang/String;

    .line 387
    const/16 v20, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 388
    .local v15, "packageName":Ljava/lang/String;
    const/16 v20, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 389
    .local v18, "resourceId":I
    if-eqz v15, :cond_1

    if-eqz v18, :cond_1

    .line 391
    :try_start_0
    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v19

    .line 393
    .local v19, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->directoryType:Ljava/lang/String;

    .line 394
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->directoryType:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 395
    const-string/jumbo v20, "BaseEmailAddressAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Cannot resolve directory name: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "@"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v19    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->accountName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->accountType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 409
    move-object/from16 v17, v16

    goto/16 :goto_0

    .line 398
    :catch_0
    move-exception v7

    .line 399
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v20, "BaseEmailAddressAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Cannot resolve directory name: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "@"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v7, v22, v23

    invoke-static/range {v20 .. v22}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 411
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 415
    .end local v10    # "id":J
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "partition":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    .end local v18    # "resourceId":I
    :cond_3
    if-eqz v17, :cond_4

    .line 416
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v6, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 419
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 420
    .restart local v16    # "partition":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->addPartition(Lcom/kingsoft/common/widget/CompositeCursorAdapter$Partition;)V

    goto :goto_2

    .line 424
    .end local v6    # "directories":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v14    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v16    # "partition":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    .end local v17    # "preferredDirectory":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v4

    .line 425
    .local v4, "count":I
    const/4 v12, 0x0

    .line 429
    .local v12, "limit":I
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->setNotificationsEnabled(Z)V

    .line 432
    if-eqz p3, :cond_6

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v20

    if-lez v20, :cond_6

    .line 433
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 436
    :cond_6
    if-nez p3, :cond_8

    const/4 v5, 0x0

    .line 439
    .local v5, "defaultPartitionCount":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->mPreferredMaxResultCount:I

    move/from16 v20, v0

    sub-int v12, v20, v5

    .line 443
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_4
    if-ge v8, v4, :cond_a

    .line 444
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcom/kingsoft/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v16

    check-cast v16, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 445
    .restart local v16    # "partition":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    .line 447
    if-lez v12, :cond_9

    .line 448
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    move/from16 v20, v0

    if-nez v20, :cond_7

    .line 449
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    .line 450
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 443
    :cond_7
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 436
    .end local v5    # "defaultPartitionCount":I
    .end local v8    # "i":I
    .end local v16    # "partition":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_8
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    goto :goto_3

    .line 453
    .restart local v5    # "defaultPartitionCount":I
    .restart local v8    # "i":I
    .restart local v16    # "partition":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_9
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    .line 454
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 458
    .end local v5    # "defaultPartitionCount":I
    .end local v8    # "i":I
    .end local v16    # "partition":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :catchall_0
    move-exception v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->setNotificationsEnabled(Z)V

    throw v20

    .restart local v5    # "defaultPartitionCount":I
    .restart local v8    # "i":I
    :cond_a
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->setNotificationsEnabled(Z)V

    .line 463
    const/4 v8, 0x1

    :goto_6
    if-ge v8, v4, :cond_e

    .line 464
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcom/kingsoft/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v16

    check-cast v16, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 465
    .restart local v16    # "partition":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 468
    .local v13, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x3e8

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 469
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    .line 470
    new-instance v20, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->directoryId:J

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-wide/from16 v2, v21

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;-><init>(Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;IJ)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    .line 472
    :cond_b
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->setLimit(I)V

    .line 473
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    .line 463
    .end local v13    # "msg":Landroid/os/Message;
    :cond_c
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 475
    :cond_d
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 477
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->filter:Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 481
    .end local v16    # "partition":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_e
    return-void
.end method

.method public onPartitionLoadFinished(Ljava/lang/CharSequence;ILandroid/database/Cursor;)V
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 504
    invoke-virtual {p0, p2}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcom/kingsoft/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 509
    .local v0, "partition":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    iget-boolean v1, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 510
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    .line 511
    iget-object v1, p0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 512
    invoke-direct {p0, p2, p3}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->removeDuplicatesAndTruncate(ILandroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 523
    .end local v0    # "partition":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_0
    :goto_0
    return-void

    .line 516
    .restart local v0    # "partition":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_1
    if-eqz p3, :cond_0

    .line 517
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 520
    .end local v0    # "partition":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_2
    if-eqz p3, :cond_0

    .line 521
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    .line 284
    return-void
.end method

.method showSearchPendingIfNotComplete(I)V
    .locals 2
    .param p1, "partitionIndex"    # I

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->getPartitionCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 485
    invoke-virtual {p0, p1}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->getPartition(I)Lcom/kingsoft/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 486
    .local v0, "partition":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    iget-boolean v1, v0, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->createLoadingCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 490
    .end local v0    # "partition":Lcom/kingsoft/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
    :cond_0
    return-void
.end method
