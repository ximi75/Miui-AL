.class public Lcom/kingsoft/mail/browse/MergeCursorWrap;
.super Landroid/database/AbstractCursor;
.source "MergeCursorWrap.java"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mCursors:[Landroid/database/Cursor;

.field private mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>([Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursors"    # [Landroid/database/Cursor;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 11
    new-instance v1, Lcom/kingsoft/mail/browse/MergeCursorWrap$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/browse/MergeCursorWrap$1;-><init>(Lcom/kingsoft/mail/browse/MergeCursorWrap;)V

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mObserver:Landroid/database/DataSetObserver;

    .line 27
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    .line 28
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursor:Landroid/database/Cursor;

    .line 30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 31
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 30
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_1

    .line 35
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/kingsoft/mail/browse/MergeCursorWrap;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/MergeCursorWrap;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mPos:I

    return p1
.end method

.method static synthetic access$102(Lcom/kingsoft/mail/browse/MergeCursorWrap;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/MergeCursorWrap;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mPos:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 154
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 155
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 156
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 155
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 159
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 160
    return-void
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 143
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 144
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 145
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    .line 144
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    .line 150
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "count":I
    iget-object v3, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    array-length v2, v3

    .line 42
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 43
    iget-object v3, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 44
    iget-object v3, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 42
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_1
    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 6
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 53
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursor:Landroid/database/Cursor;

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "cursorStartPos":I
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    array-length v2, v4

    .line 56
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 57
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    if-nez v4, :cond_0

    .line 56
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v4, v0

    if-ge p2, v4, :cond_2

    .line 62
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursor:Landroid/database/Cursor;

    .line 70
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_3

    .line 71
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursor:Landroid/database/Cursor;

    sub-int v5, p2, v0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    .line 74
    :goto_2
    return v3

    .line 66
    :cond_2
    iget-object v4, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 74
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 164
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 165
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 166
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 165
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 183
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 184
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 185
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 184
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 3

    .prologue
    .line 203
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 204
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 205
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    const/4 v2, 0x0

    .line 214
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 221
    invoke-super {p0, p1}, Landroid/database/AbstractCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 173
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 174
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 175
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 193
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 194
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 195
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergeCursorWrap;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 194
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    return-void
.end method
