.class public Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;
.super Landroid/test/AndroidTestCase;
.source "RecipientAlternatesAdapterTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    return-void
.end method

.method private static addRow(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;I)Landroid/database/MatrixCursor;
    .locals 3
    .param p0, "c"    # Landroid/database/MatrixCursor;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "destinationType"    # I
    .param p4, "destinationLabel"    # Ljava/lang/String;
    .param p5, "contactId"    # J
    .param p7, "dataId"    # J
    .param p9, "photoUri"    # Ljava/lang/String;
    .param p10, "displayNameSource"    # I

    .prologue
    .line 82
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object p9, v0, v1

    const/4 v1, 0x7

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 84
    return-object p0
.end method

.method private static assertRow(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;I)V
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "position"    # I
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "destinationType"    # I
    .param p5, "destinationLabel"    # Ljava/lang/String;
    .param p6, "contactId"    # J
    .param p8, "dataId"    # J
    .param p10, "photoUri"    # Ljava/lang/String;
    .param p11, "displayNameSource"    # I

    .prologue
    .line 97
    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    invoke-static {v0}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertTrue(Z)V

    .line 98
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {p4, v0}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(II)V

    .line 101
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {p6, p7, v0, v1}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(JJ)V

    .line 103
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {p8, p9, v0, v1}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(JJ)V

    .line 104
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p10, v0}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {p11, v0}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(II)V

    .line 106
    return-void
.end method


# virtual methods
.method public testGetBetterRecipient()V
    .locals 14

    .prologue
    .line 111
    const-string/jumbo v0, "1@android.com"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v12

    .line 113
    .local v12, "entry1":Lcom/kingsoft/ex/chips/RecipientEntry;
    const/4 v13, 0x0

    .line 115
    .local v13, "entry2":Lcom/kingsoft/ex/chips/RecipientEntry;
    invoke-static {v12, v13}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->getBetterRecipient(Lcom/kingsoft/ex/chips/RecipientEntry;Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    invoke-static {v13, v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->getBetterRecipient(Lcom/kingsoft/ex/chips/RecipientEntry;Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    const-string/jumbo v0, "Android"

    const/16 v1, 0x23

    const-string/jumbo v2, "1@android.com"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    check-cast v9, Landroid/net/Uri;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZ)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v12

    .line 125
    const-string/jumbo v0, "1@android.com"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v13

    .line 127
    invoke-static {v12, v13}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->getBetterRecipient(Lcom/kingsoft/ex/chips/RecipientEntry;Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    invoke-static {v13, v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->getBetterRecipient(Lcom/kingsoft/ex/chips/RecipientEntry;Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    const-string/jumbo v0, "Android"

    const/16 v1, 0x23

    const-string/jumbo v2, "1@android.com"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    check-cast v9, Landroid/net/Uri;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZ)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v12

    .line 138
    const-string/jumbo v0, "2@android.com"

    const/16 v1, 0xa

    const-string/jumbo v2, "2@android.com"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    check-cast v9, Landroid/net/Uri;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZ)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v13

    .line 143
    invoke-static {v12, v13}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->getBetterRecipient(Lcom/kingsoft/ex/chips/RecipientEntry;Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    invoke-static {v13, v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->getBetterRecipient(Lcom/kingsoft/ex/chips/RecipientEntry;Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    const-string/jumbo v0, "Android"

    const/16 v1, 0x23

    const-string/jumbo v2, "1@android.com"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-string/jumbo v9, "http://www.android.com"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZ)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v12

    .line 153
    const-string/jumbo v0, "Android"

    const/16 v1, 0xa

    const-string/jumbo v2, "2@android.com"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    check-cast v9, Landroid/net/Uri;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZ)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v13

    .line 158
    invoke-static {v12, v13}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->getBetterRecipient(Lcom/kingsoft/ex/chips/RecipientEntry;Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    invoke-static {v13, v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->getBetterRecipient(Lcom/kingsoft/ex/chips/RecipientEntry;Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public testRemoveDuplicateDestinations()V
    .locals 13

    .prologue
    .line 31
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/kingsoft/ex/chips/Queries;->EMAIL:Lcom/kingsoft/ex/chips/Queries$Query;

    invoke-virtual {v2}, Lcom/kingsoft/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 35
    .local v0, "c":Landroid/database/MatrixCursor;
    const/4 v2, 0x0

    invoke-static {v0}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->removeDuplicateDestinations(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(II)V

    .line 39
    const-string/jumbo v1, "a"

    const-string/jumbo v2, "1@android.com"

    const/4 v3, 0x1

    const-string/jumbo v4, "home"

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x7d0

    const-string/jumbo v9, "x"

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->addRow(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;I)Landroid/database/MatrixCursor;

    .line 41
    invoke-static {v0}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->removeDuplicateDestinations(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 42
    .local v1, "result":Landroid/database/Cursor;
    const/4 v2, 0x1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(II)V

    .line 43
    const/4 v2, 0x0

    const-string/jumbo v3, "a"

    const-string/jumbo v4, "1@android.com"

    const/4 v5, 0x1

    const-string/jumbo v6, "home"

    const-wide/16 v7, 0x3e8

    const-wide/16 v9, 0x7d0

    const-string/jumbo v11, "x"

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertRow(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;I)V

    .line 46
    const-string/jumbo v3, "a"

    const-string/jumbo v4, "2@android.com"

    const/4 v5, 0x1

    const-string/jumbo v6, "home"

    const-wide/16 v7, 0x3e8

    const-wide/16 v9, 0x7d0

    const-string/jumbo v11, "x"

    const/4 v12, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->addRow(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;I)Landroid/database/MatrixCursor;

    .line 48
    invoke-static {v0}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->removeDuplicateDestinations(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 49
    const/4 v2, 0x2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(II)V

    .line 50
    const/4 v2, 0x0

    const-string/jumbo v3, "a"

    const-string/jumbo v4, "1@android.com"

    const/4 v5, 0x1

    const-string/jumbo v6, "home"

    const-wide/16 v7, 0x3e8

    const-wide/16 v9, 0x7d0

    const-string/jumbo v11, "x"

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertRow(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;I)V

    .line 51
    const/4 v2, 0x1

    const-string/jumbo v3, "a"

    const-string/jumbo v4, "2@android.com"

    const/4 v5, 0x1

    const-string/jumbo v6, "home"

    const-wide/16 v7, 0x3e8

    const-wide/16 v9, 0x7d0

    const-string/jumbo v11, "x"

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertRow(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;I)V

    .line 54
    const-string/jumbo v3, "ax"

    const-string/jumbo v4, "1@android.com"

    const/16 v5, 0xb

    const-string/jumbo v6, "homex"

    const-wide/16 v7, 0x2711

    const-wide/16 v9, 0x7d0

    const-string/jumbo v11, "xx"

    const/4 v12, 0x1

    move-object v2, v0

    invoke-static/range {v2 .. v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->addRow(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;I)Landroid/database/MatrixCursor;

    .line 57
    invoke-static {v0}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->removeDuplicateDestinations(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 58
    const/4 v2, 0x2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(II)V

    .line 59
    const/4 v2, 0x0

    const-string/jumbo v3, "a"

    const-string/jumbo v4, "1@android.com"

    const/4 v5, 0x1

    const-string/jumbo v6, "home"

    const-wide/16 v7, 0x3e8

    const-wide/16 v9, 0x7d0

    const-string/jumbo v11, "x"

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertRow(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;I)V

    .line 60
    const/4 v2, 0x1

    const-string/jumbo v3, "a"

    const-string/jumbo v4, "2@android.com"

    const/4 v5, 0x1

    const-string/jumbo v6, "home"

    const-wide/16 v7, 0x3e8

    const-wide/16 v9, 0x7d0

    const-string/jumbo v11, "x"

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertRow(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;I)V

    .line 63
    const-string/jumbo v3, "ax"

    const-string/jumbo v4, "2@android.com"

    const/16 v5, 0xb

    const-string/jumbo v6, "homex"

    const-wide/16 v7, 0x2711

    const-wide/16 v9, 0x7d0

    const-string/jumbo v11, "xx"

    const/4 v12, 0x1

    move-object v2, v0

    invoke-static/range {v2 .. v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->addRow(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;I)Landroid/database/MatrixCursor;

    .line 66
    invoke-static {v0}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->removeDuplicateDestinations(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 67
    const/4 v2, 0x2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertEquals(II)V

    .line 68
    const/4 v2, 0x0

    const-string/jumbo v3, "a"

    const-string/jumbo v4, "1@android.com"

    const/4 v5, 0x1

    const-string/jumbo v6, "home"

    const-wide/16 v7, 0x3e8

    const-wide/16 v9, 0x7d0

    const-string/jumbo v11, "x"

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertRow(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;I)V

    .line 69
    const/4 v2, 0x1

    const-string/jumbo v3, "a"

    const-string/jumbo v4, "2@android.com"

    const/4 v5, 0x1

    const-string/jumbo v6, "home"

    const-wide/16 v7, 0x3e8

    const-wide/16 v9, 0x7d0

    const-string/jumbo v11, "x"

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapterTest;->assertRow(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;I)V

    .line 70
    return-void
.end method
