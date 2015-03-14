.class public Lcom/kingsoft/common/widget/GroupingListAdapterTests;
.super Landroid/test/AndroidTestCase;
.source "GroupingListAdapterTests.java"


# static fields
.field private static final GROUPING_COLUMN_INDEX:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

.field private mCursor:Landroid/database/MatrixCursor;

.field private mNextId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "group"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    .line 51
    new-instance v0, Lcom/kingsoft/common/widget/GroupingListAdapterTests$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests$1;-><init>(Lcom/kingsoft/common/widget/GroupingListAdapterTests;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    return-void
.end method

.method private assertPositionMetadata(IIZI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "itemType"    # I
    .param p3, "isExpanded"    # Z
    .param p4, "cursorPosition"    # I

    .prologue
    .line 303
    new-instance v0, Lcom/kingsoft/common/widget/GroupingListAdapter$PositionMetadata;

    invoke-direct {v0}, Lcom/kingsoft/common/widget/GroupingListAdapter$PositionMetadata;-><init>()V

    .line 304
    .local v0, "metadata":Lcom/kingsoft/common/widget/GroupingListAdapter$PositionMetadata;
    iget-object v1, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v1, v0, p1}, Lcom/kingsoft/common/widget/GroupingListAdapter;->obtainPositionMetadata(Lcom/kingsoft/common/widget/GroupingListAdapter$PositionMetadata;I)V

    .line 305
    iget v1, v0, Lcom/kingsoft/common/widget/GroupingListAdapter$PositionMetadata;->itemType:I

    invoke-static {p2, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertEquals(II)V

    .line 306
    iget v1, v0, Lcom/kingsoft/common/widget/GroupingListAdapter$PositionMetadata;->itemType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 307
    iget-boolean v1, v0, Lcom/kingsoft/common/widget/GroupingListAdapter$PositionMetadata;->isExpanded:Z

    invoke-static {p3, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertEquals(ZZ)V

    .line 309
    :cond_0
    iget v1, v0, Lcom/kingsoft/common/widget/GroupingListAdapter$PositionMetadata;->cursorPosition:I

    invoke-static {p4, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertEquals(II)V

    .line 310
    return-void
.end method

.method private varargs buildCursor([Ljava/lang/String;)V
    .locals 11
    .param p1, "numbers"    # [Ljava/lang/String;

    .prologue
    const-wide/16 v9, 0x1

    .line 108
    new-instance v4, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v4, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mCursor:Landroid/database/MatrixCursor;

    .line 109
    iput-wide v9, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mNextId:J

    .line 110
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 111
    .local v3, "number":Ljava/lang/String;
    iget-object v4, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mCursor:Landroid/database/MatrixCursor;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mNextId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 112
    iget-wide v4, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mNextId:J

    add-long/2addr v4, v9

    iput-wide v4, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mNextId:J

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v3    # "number":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public testGroupDescriptorArrayGrowth()V
    .locals 4

    .prologue
    .line 288
    const/16 v2, 0x1f4

    new-array v1, v2, [Ljava/lang/String;

    .line 289
    .local v1, "numbers":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 292
    div-int/lit8 v2, v0, 0x2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    invoke-direct {p0, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->buildCursor([Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    iget-object v3, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v2, v3}, Lcom/kingsoft/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 298
    const/16 v2, 0xfa

    iget-object v3, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v3}, Lcom/kingsoft/common/widget/GroupingListAdapter;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertEquals(II)V

    .line 299
    return-void
.end method

.method public testGroupingWithCollapsedGroupAtTheBeginning()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2"

    aput-object v1, v0, v4

    invoke-direct {p0, v0}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->buildCursor([Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    iget-object v1, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, v1}, Lcom/kingsoft/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 130
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/common/widget/GroupingListAdapter;->getCount()I

    move-result v0

    invoke-static {v4, v0}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertEquals(II)V

    .line 131
    invoke-direct {p0, v2, v3, v2, v2}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 132
    invoke-direct {p0, v3, v2, v2, v4}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 133
    return-void
.end method

.method public testGroupingWithCollapsedGroupAtTheEnd()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "3"

    aput-object v1, v0, v5

    const-string/jumbo v1, "3"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "3"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->buildCursor([Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    iget-object v1, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, v1}, Lcom/kingsoft/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 186
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/common/widget/GroupingListAdapter;->getCount()I

    move-result v0

    invoke-static {v6, v0}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertEquals(II)V

    .line 187
    invoke-direct {p0, v3, v3, v3, v3}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 188
    invoke-direct {p0, v4, v3, v3, v4}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 189
    invoke-direct {p0, v5, v4, v3, v5}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 190
    return-void
.end method

.method public testGroupingWithCollapsedGroupInTheMiddle()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "2"

    aput-object v1, v0, v5

    const-string/jumbo v1, "3"

    aput-object v1, v0, v6

    invoke-direct {p0, v0}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->buildCursor([Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    iget-object v1, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, v1}, Lcom/kingsoft/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 162
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/common/widget/GroupingListAdapter;->getCount()I

    move-result v0

    invoke-static {v5, v0}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertEquals(II)V

    .line 163
    invoke-direct {p0, v2, v2, v2, v2}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 164
    invoke-direct {p0, v3, v3, v2, v3}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 165
    invoke-direct {p0, v4, v2, v2, v6}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 166
    return-void
.end method

.method public testGroupingWithExpandCollapseCycleAtTheBeginning()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2"

    aput-object v1, v0, v4

    invoke-direct {p0, v0}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->buildCursor([Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    iget-object v1, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, v1}, Lcom/kingsoft/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 150
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v0, v2}, Lcom/kingsoft/common/widget/GroupingListAdapter;->toggleGroup(I)V

    .line 151
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v0, v2}, Lcom/kingsoft/common/widget/GroupingListAdapter;->toggleGroup(I)V

    .line 153
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/common/widget/GroupingListAdapter;->getCount()I

    move-result v0

    invoke-static {v4, v0}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertEquals(II)V

    .line 154
    invoke-direct {p0, v2, v3, v2, v2}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 155
    invoke-direct {p0, v3, v2, v2, v4}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 156
    return-void
.end method

.method public testGroupingWithExpandedGroupAtTheBeginning()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2"

    aput-object v1, v0, v4

    invoke-direct {p0, v0}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->buildCursor([Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    iget-object v1, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, v1}, Lcom/kingsoft/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 138
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v0, v2}, Lcom/kingsoft/common/widget/GroupingListAdapter;->toggleGroup(I)V

    .line 140
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v1}, Lcom/kingsoft/common/widget/GroupingListAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertEquals(II)V

    .line 141
    invoke-direct {p0, v2, v3, v3, v2}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 142
    invoke-direct {p0, v3, v4, v2, v2}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 143
    invoke-direct {p0, v4, v4, v2, v3}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 144
    invoke-direct {p0, v5, v2, v2, v4}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 145
    return-void
.end method

.method public testGroupingWithExpandedGroupAtTheEnd()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 193
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "3"

    aput-object v1, v0, v3

    const-string/jumbo v1, "3"

    aput-object v1, v0, v5

    const-string/jumbo v1, "3"

    aput-object v1, v0, v6

    invoke-direct {p0, v0}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->buildCursor([Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    iget-object v1, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, v1}, Lcom/kingsoft/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 195
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v0, v3}, Lcom/kingsoft/common/widget/GroupingListAdapter;->toggleGroup(I)V

    .line 197
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v1}, Lcom/kingsoft/common/widget/GroupingListAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertEquals(II)V

    .line 198
    invoke-direct {p0, v2, v2, v2, v2}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 199
    invoke-direct {p0, v4, v2, v2, v4}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 200
    invoke-direct {p0, v3, v4, v4, v3}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 201
    invoke-direct {p0, v5, v3, v2, v3}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 202
    invoke-direct {p0, v6, v3, v2, v5}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 203
    const/4 v0, 0x5

    invoke-direct {p0, v0, v3, v2, v6}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 204
    return-void
.end method

.method public testGroupingWithExpandedGroupInTheMiddle()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "2"

    aput-object v1, v0, v5

    const-string/jumbo v1, "3"

    aput-object v1, v0, v6

    invoke-direct {p0, v0}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->buildCursor([Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    iget-object v1, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, v1}, Lcom/kingsoft/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 171
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v0, v3}, Lcom/kingsoft/common/widget/GroupingListAdapter;->toggleGroup(I)V

    .line 173
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v1}, Lcom/kingsoft/common/widget/GroupingListAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertEquals(II)V

    .line 174
    invoke-direct {p0, v2, v2, v2, v2}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 175
    invoke-direct {p0, v3, v3, v3, v3}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 176
    invoke-direct {p0, v4, v4, v2, v3}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 177
    invoke-direct {p0, v5, v4, v2, v4}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 178
    invoke-direct {p0, v6, v4, v2, v5}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 179
    const/4 v0, 0x5

    invoke-direct {p0, v0, v2, v2, v6}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 180
    return-void
.end method

.method public testGroupingWithMultipleCollapsedGroups()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 207
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "2"

    aput-object v2, v0, v1

    const-string/jumbo v1, "3"

    aput-object v1, v0, v5

    const-string/jumbo v1, "4"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const-string/jumbo v1, "5"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->buildCursor([Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    iget-object v1, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, v1}, Lcom/kingsoft/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 210
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/common/widget/GroupingListAdapter;->getCount()I

    move-result v0

    invoke-static {v7, v0}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertEquals(II)V

    .line 211
    invoke-direct {p0, v3, v3, v3, v3}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 212
    invoke-direct {p0, v4, v4, v3, v4}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 213
    const/4 v0, 0x2

    invoke-direct {p0, v0, v3, v3, v5}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 214
    invoke-direct {p0, v5, v4, v3, v6}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 215
    invoke-direct {p0, v6, v4, v3, v7}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 216
    const/4 v0, 0x5

    const/16 v1, 0x8

    invoke-direct {p0, v0, v3, v3, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 217
    return-void
.end method

.method public testGroupingWithMultipleExpandedGroups()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 220
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "2"

    aput-object v1, v0, v5

    const-string/jumbo v1, "3"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const-string/jumbo v1, "5"

    aput-object v1, v0, v6

    const/4 v1, 0x7

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->buildCursor([Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    iget-object v1, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, v1}, Lcom/kingsoft/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 222
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v0, v4}, Lcom/kingsoft/common/widget/GroupingListAdapter;->toggleGroup(I)V

    .line 226
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v0, v6}, Lcom/kingsoft/common/widget/GroupingListAdapter;->toggleGroup(I)V

    .line 228
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v1}, Lcom/kingsoft/common/widget/GroupingListAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertEquals(II)V

    .line 229
    invoke-direct {p0, v3, v3, v3, v3}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 230
    invoke-direct {p0, v4, v4, v4, v4}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 231
    invoke-direct {p0, v5, v5, v3, v4}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 232
    invoke-direct {p0, v7, v5, v3, v5}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 233
    const/4 v0, 0x4

    invoke-direct {p0, v0, v3, v3, v7}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 234
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-direct {p0, v0, v4, v3, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 235
    invoke-direct {p0, v6, v4, v4, v6}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 236
    const/4 v0, 0x7

    invoke-direct {p0, v0, v5, v3, v6}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 237
    const/16 v0, 0x8

    const/4 v1, 0x7

    invoke-direct {p0, v0, v5, v3, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 238
    const/16 v0, 0x9

    const/16 v1, 0x8

    invoke-direct {p0, v0, v3, v3, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 239
    return-void
.end method

.method public testGroupingWithoutGroups()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "3"

    aput-object v1, v0, v4

    invoke-direct {p0, v0}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->buildCursor([Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    iget-object v1, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, v1}, Lcom/kingsoft/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 120
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/common/widget/GroupingListAdapter;->getCount()I

    move-result v0

    invoke-static {v5, v0}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertEquals(II)V

    .line 121
    invoke-direct {p0, v2, v2, v2, v2}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 122
    invoke-direct {p0, v3, v2, v2, v3}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 123
    invoke-direct {p0, v4, v2, v2, v4}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 124
    return-void
.end method

.method public testPositionCache()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "2"

    aput-object v1, v0, v5

    const-string/jumbo v1, "3"

    aput-object v1, v0, v6

    const-string/jumbo v1, "4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->buildCursor([Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    iget-object v1, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, v1}, Lcom/kingsoft/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 246
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v1}, Lcom/kingsoft/common/widget/GroupingListAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertEquals(II)V

    .line 247
    invoke-direct {p0, v3, v3, v3, v3}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 248
    invoke-direct {p0, v4, v4, v3, v4}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 249
    invoke-direct {p0, v5, v3, v3, v6}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 250
    invoke-direct {p0, v6, v4, v3, v7}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 251
    const/4 v0, 0x6

    invoke-direct {p0, v7, v4, v3, v0}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 252
    const/4 v0, 0x5

    const/16 v1, 0x8

    invoke-direct {p0, v0, v3, v3, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 255
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v1}, Lcom/kingsoft/common/widget/GroupingListAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertEquals(II)V

    .line 256
    invoke-direct {p0, v3, v3, v3, v3}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 257
    invoke-direct {p0, v4, v4, v3, v4}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 258
    invoke-direct {p0, v5, v3, v3, v6}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 259
    invoke-direct {p0, v6, v4, v3, v7}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 260
    const/4 v0, 0x6

    invoke-direct {p0, v7, v4, v3, v0}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 261
    const/4 v0, 0x5

    const/16 v1, 0x8

    invoke-direct {p0, v0, v3, v3, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 264
    iget-object v0, p0, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->mAdapter:Lcom/kingsoft/common/widget/GroupingListAdapter;

    invoke-virtual {v0, v4}, Lcom/kingsoft/common/widget/GroupingListAdapter;->toggleGroup(I)V

    .line 267
    invoke-direct {p0, v3, v3, v3, v3}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 268
    invoke-direct {p0, v4, v4, v4, v4}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 269
    invoke-direct {p0, v5, v5, v3, v4}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 270
    invoke-direct {p0, v6, v5, v3, v5}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 271
    invoke-direct {p0, v7, v3, v3, v6}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 272
    const/4 v0, 0x5

    invoke-direct {p0, v0, v4, v3, v7}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 273
    const/4 v0, 0x6

    const/4 v1, 0x6

    invoke-direct {p0, v0, v4, v3, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 274
    const/4 v0, 0x7

    const/16 v1, 0x8

    invoke-direct {p0, v0, v3, v3, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 277
    invoke-direct {p0, v3, v3, v3, v3}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 278
    invoke-direct {p0, v4, v4, v4, v4}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 279
    invoke-direct {p0, v5, v5, v3, v4}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 280
    invoke-direct {p0, v6, v5, v3, v5}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 281
    invoke-direct {p0, v7, v3, v3, v6}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 282
    const/4 v0, 0x5

    invoke-direct {p0, v0, v4, v3, v7}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 283
    const/4 v0, 0x6

    const/4 v1, 0x6

    invoke-direct {p0, v0, v4, v3, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 284
    const/4 v0, 0x7

    const/16 v1, 0x8

    invoke-direct {p0, v0, v3, v3, v1}, Lcom/kingsoft/common/widget/GroupingListAdapterTests;->assertPositionMetadata(IIZI)V

    .line 285
    return-void
.end method
