.class public Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;
.super Landroid/test/AndroidTestCase;
.source "CompositeCursorAdapterTest.java"


# annotations
.annotation runtime Landroid/test/suitebuilder/annotation/SmallTest;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    .line 38
    return-void
.end method

.method private makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 251
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v2, v5, [Ljava/lang/String;

    aput-object p1, v2, v4

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 252
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 253
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_0
    return-object v0
.end method


# virtual methods
.method public testAreAllItemsEnabledFalse()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 221
    new-instance v0, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;

    invoke-direct {v0, p0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;-><init>(Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;)V

    .line 222
    .local v0, "adapter":Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 223
    invoke-virtual {v0, v2, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 225
    invoke-virtual {v0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->areAllItemsEnabled()Z

    move-result v1

    invoke-static {v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertFalse(Z)V

    .line 226
    return-void
.end method

.method public testAreAllItemsEnabledTrue()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 229
    new-instance v0, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;

    invoke-direct {v0, p0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;-><init>(Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;)V

    .line 230
    .local v0, "adapter":Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;
    invoke-virtual {v0, v2, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 231
    invoke-virtual {v0, v2, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 233
    invoke-virtual {v0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->areAllItemsEnabled()Z

    move-result v1

    invoke-static {v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertTrue(Z)V

    .line 234
    return-void
.end method

.method public testGetCountNoEmptySections()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    new-instance v0, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;

    invoke-direct {v0, p0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;-><init>(Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;)V

    .line 82
    .local v0, "adapter":Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;
    invoke-virtual {v0, v3, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 83
    invoke-virtual {v0, v3, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 85
    const-string/jumbo v1, "a"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 86
    const/4 v1, 0x1

    const-string/jumbo v2, "b"

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 88
    const/4 v1, 0x5

    invoke-virtual {v0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertEquals(II)V

    .line 89
    return-void
.end method

.method public testGetCountWithHeadersAndNoEmptySections()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    new-instance v0, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;

    invoke-direct {v0, p0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;-><init>(Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;)V

    .line 108
    .local v0, "adapter":Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;
    invoke-virtual {v0, v3, v4}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 109
    invoke-virtual {v0, v3, v4}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 111
    const-string/jumbo v1, "a"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 112
    const-string/jumbo v1, "b"

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 114
    const/4 v1, 0x7

    invoke-virtual {v0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertEquals(II)V

    .line 115
    return-void
.end method

.method public testGetCountWithHiddenEmptySection()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 133
    new-instance v0, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;

    invoke-direct {v0, p0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;-><init>(Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;)V

    .line 134
    .local v0, "adapter":Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;
    invoke-virtual {v0, v1, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 135
    invoke-virtual {v0, v1, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 137
    const-string/jumbo v1, "a"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 139
    const/4 v1, 0x3

    invoke-virtual {v0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertEquals(II)V

    .line 140
    return-void
.end method

.method public testGetCountWithShownEmptySection()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 197
    new-instance v0, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;

    invoke-direct {v0, p0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;-><init>(Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;)V

    .line 198
    .local v0, "adapter":Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;
    invoke-virtual {v0, v3, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 199
    invoke-virtual {v0, v3, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 201
    const-string/jumbo v1, "a"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 203
    const/4 v1, 0x4

    invoke-virtual {v0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertEquals(II)V

    .line 204
    return-void
.end method

.method public testGetOffsetForPosition()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 157
    new-instance v0, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;

    invoke-direct {v0, p0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;-><init>(Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;)V

    .line 158
    .local v0, "adapter":Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;
    invoke-virtual {v0, v3, v4}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 159
    invoke-virtual {v0, v3, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 161
    const-string/jumbo v1, "a"

    invoke-direct {p0, v1, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 162
    const-string/jumbo v1, "b"

    invoke-direct {p0, v1, v5}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 164
    invoke-virtual {v0, v4}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getOffsetInPartition(I)I

    move-result v1

    invoke-static {v4, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertEquals(II)V

    .line 165
    const/4 v1, -0x1

    invoke-virtual {v0, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getOffsetInPartition(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertEquals(II)V

    .line 166
    invoke-virtual {v0, v5}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getOffsetInPartition(I)I

    move-result v1

    invoke-static {v4, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertEquals(II)V

    .line 167
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getOffsetInPartition(I)I

    move-result v1

    invoke-static {v3, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertEquals(II)V

    .line 168
    return-void
.end method

.method public testGetPartitionForPosition()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 143
    new-instance v0, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;

    invoke-direct {v0, p0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;-><init>(Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;)V

    .line 144
    .local v0, "adapter":Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;
    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 145
    invoke-virtual {v0, v2, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 147
    const-string/jumbo v1, "a"

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 148
    const-string/jumbo v1, "b"

    invoke-direct {p0, v1, v4}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 150
    invoke-virtual {v0, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getPartitionForPosition(I)I

    move-result v1

    invoke-static {v3, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertEquals(II)V

    .line 151
    invoke-virtual {v0, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getPartitionForPosition(I)I

    move-result v1

    invoke-static {v2, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertEquals(II)V

    .line 152
    invoke-virtual {v0, v4}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getPartitionForPosition(I)I

    move-result v1

    invoke-static {v2, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertEquals(II)V

    .line 153
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getPartitionForPosition(I)I

    move-result v1

    invoke-static {v2, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertEquals(II)V

    .line 154
    return-void
.end method

.method public testGetPositionForPartition()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 171
    new-instance v0, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;

    invoke-direct {v0, p0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;-><init>(Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;)V

    .line 172
    .local v0, "adapter":Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;
    invoke-virtual {v0, v2, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 173
    invoke-virtual {v0, v2, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 175
    const-string/jumbo v1, "a"

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 176
    const-string/jumbo v1, "b"

    invoke-direct {p0, v1, v4}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 178
    invoke-virtual {v0, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getPositionForPartition(I)I

    move-result v1

    invoke-static {v3, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertEquals(II)V

    .line 179
    invoke-virtual {v0, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getPositionForPartition(I)I

    move-result v1

    invoke-static {v4, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertEquals(II)V

    .line 180
    return-void
.end method

.method public testGetViewNoEmptySections()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    new-instance v0, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;

    invoke-direct {v0, p0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;-><init>(Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;)V

    .line 93
    .local v0, "adapter":Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;
    invoke-virtual {v0, v3, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 94
    invoke-virtual {v0, v3, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 96
    const-string/jumbo v2, "a"

    invoke-direct {p0, v2, v4}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 97
    const-string/jumbo v2, "b"

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 99
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 100
    invoke-virtual {v0, v1, v5, v5}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    const-string/jumbo v2, "0a[0] 1b[0] 1b[1]"

    invoke-virtual {v0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public testGetViewWithHeadersNoEmptySections()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 118
    new-instance v0, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;

    invoke-direct {v0, p0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;-><init>(Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;)V

    .line 119
    .local v0, "adapter":Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;
    invoke-virtual {v0, v3, v4}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 120
    invoke-virtual {v0, v3, v4}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 122
    const-string/jumbo v2, "a"

    invoke-direct {p0, v2, v4}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 123
    const-string/jumbo v2, "b"

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 126
    invoke-virtual {v0, v1, v5, v5}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_0
    const-string/jumbo v2, "0a[H] 0a[0] 1b[H] 1b[0] 1b[1]"

    invoke-virtual {v0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public testGetViewWithHiddenEmptySections()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 183
    new-instance v0, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;

    invoke-direct {v0, p0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;-><init>(Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;)V

    .line 184
    .local v0, "adapter":Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;
    invoke-virtual {v0, v2, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 185
    invoke-virtual {v0, v2, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 187
    const/4 v2, 0x1

    const-string/jumbo v3, "b"

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 190
    invoke-virtual {v0, v1, v5, v5}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_0
    const-string/jumbo v2, "1b[0] 1b[1]"

    invoke-virtual {v0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public testGetViewWithShownEmptySections()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 207
    new-instance v0, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;

    invoke-direct {v0, p0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;-><init>(Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;)V

    .line 208
    .local v0, "adapter":Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;
    invoke-virtual {v0, v4, v4}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 209
    invoke-virtual {v0, v4, v4}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 211
    const-string/jumbo v2, "b"

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 213
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 214
    invoke-virtual {v0, v1, v5, v5}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_0
    const-string/jumbo v2, "0[H] 1b[H] 1b[0] 1b[1]"

    invoke-virtual {v0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public testIsEnabled()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 237
    new-instance v0, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;

    invoke-direct {v0, p0}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;-><init>(Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;)V

    .line 238
    .local v0, "adapter":Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;
    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 239
    invoke-virtual {v0, v2, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->addPartition(ZZ)V

    .line 241
    const-string/jumbo v1, "a"

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 242
    const-string/jumbo v1, "b"

    invoke-direct {p0, v1, v4}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->makeCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 244
    invoke-virtual {v0, v3}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->isEnabled(I)Z

    move-result v1

    invoke-static {v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertTrue(Z)V

    .line 245
    invoke-virtual {v0, v2}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->isEnabled(I)Z

    move-result v1

    invoke-static {v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertFalse(Z)V

    .line 246
    invoke-virtual {v0, v4}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->isEnabled(I)Z

    move-result v1

    invoke-static {v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertTrue(Z)V

    .line 247
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest$TestCompositeCursorAdapter;->isEnabled(I)Z

    move-result v1

    invoke-static {v1}, Lcom/kingsoft/common/widget/CompositeCursorAdapterTest;->assertTrue(Z)V

    .line 248
    return-void
.end method
