.class public Lcom/kingsoft/email/mail/attachment/SortCursor;
.super Landroid/database/CursorWrapper;
.source "SortCursor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/CursorWrapper;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMAIL_MATCH:Ljava/lang/String; = "(?<=\\<)[^\\>]+"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mCursor:Landroid/database/Cursor;

.field mPos:I

.field sortList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;",
            ">;"
        }
    .end annotation
.end field

.field private strColumnName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/kingsoft/email/mail/attachment/SortCursor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/mail/attachment/SortCursor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/SortCursor;->sortList:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/SortCursor;->mPos:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 20
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct/range {p0 .. p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 29
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/kingsoft/email/mail/attachment/SortCursor;->sortList:Ljava/util/List;

    .line 30
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/kingsoft/email/mail/attachment/SortCursor;->mPos:I

    .line 60
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/mail/attachment/SortCursor;->strColumnName:Ljava/lang/String;

    .line 61
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/mail/attachment/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 62
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/email/mail/attachment/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/email/mail/attachment/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-lez v15, :cond_4

    .line 63
    const/4 v8, 0x0

    .line 64
    .local v8, "i":I
    const/4 v11, -0x1

    .line 65
    .local v11, "nameColumn":I
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 66
    .local v7, "column":I
    const-string/jumbo v15, "mimeType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 67
    const-string/jumbo v15, "fileName"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 70
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/email/mail/attachment/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/email/mail/attachment/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v15}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v15

    if-nez v15, :cond_4

    .line 72
    new-instance v14, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;

    invoke-direct {v14}, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;-><init>()V

    .line 73
    .local v14, "sortKey":Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;->key:Ljava/lang/String;

    .line 74
    const-string/jumbo v15, "senderAddress"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 75
    const-string/jumbo v15, "(?<=\\<)[^\\>]+"

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 76
    .local v12, "p":Ljava/util/regex/Pattern;
    iget-object v15, v14, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;->key:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 78
    .local v10, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 79
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;->key:Ljava/lang/String;

    .line 91
    .end local v10    # "m":Ljava/util/regex/Matcher;
    .end local v12    # "p":Ljava/util/regex/Pattern;
    :cond_1
    :goto_1
    iput v8, v14, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;->order:I

    .line 92
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/email/mail/attachment/SortCursor;->sortList:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/email/mail/attachment/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 71
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 83
    :cond_2
    const-string/jumbo v15, "fileName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 85
    iget-object v15, v14, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;->key:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;->key:Ljava/lang/String;

    goto :goto_1

    .line 86
    :cond_3
    const-string/jumbo v15, "mimeType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 88
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/kingsoft/email/mail/attachment/StringUtil;->getFileNameSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;->key:Ljava/lang/String;

    goto :goto_1

    .line 95
    .end local v7    # "column":I
    .end local v8    # "i":I
    .end local v11    # "nameColumn":I
    .end local v14    # "sortKey":Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/email/mail/attachment/SortCursor;->sortList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 99
    const-string/jumbo v15, "fileName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 100
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/email/mail/attachment/SortCursor;->sortList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 101
    .local v9, "itSort":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v2, "arrayDigits":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v3, "arrayLetters":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v5, "arrayWords":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v4, "arrayOthers":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;>;"
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 106
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;

    .line 107
    .local v13, "sortEntry":Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;
    iget-object v15, v13, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;->key:Ljava/lang/String;

    invoke-static {v15}, Lcom/kingsoft/email/mail/attachment/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 108
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/email/mail/attachment/SortCursor;->sortList:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 111
    :cond_5
    iget-object v15, v13, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;->key:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 113
    .local v6, "charSortKey":C
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 114
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v15, Lcom/kingsoft/email/mail/attachment/SortCursor;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "\u6570\u5b57:%s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 118
    :cond_6
    const/16 v15, 0x61

    if-gt v15, v6, :cond_7

    const/16 v15, 0x7a

    if-gt v6, v15, :cond_7

    .line 119
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v15, Lcom/kingsoft/email/mail/attachment/SortCursor;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "\u5b57\u6bcd:%s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 123
    :cond_7
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 124
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v15, Lcom/kingsoft/email/mail/attachment/SortCursor;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "\u6c49\u5b57:%s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 129
    :cond_8
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v15, Lcom/kingsoft/email/mail/attachment/SortCursor;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "\u5176\u5b83\u5b57\u7b26:%s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 133
    .end local v6    # "charSortKey":C
    .end local v13    # "sortEntry":Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/email/mail/attachment/SortCursor;->sortList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 134
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/email/mail/attachment/SortCursor;->sortList:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/email/mail/attachment/SortCursor;->sortList:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/email/mail/attachment/SortCursor;->sortList:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/email/mail/attachment/SortCursor;->sortList:Ljava/util/List;

    invoke-interface {v15, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    .end local v2    # "arrayDigits":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;>;"
    .end local v3    # "arrayLetters":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;>;"
    .end local v4    # "arrayOthers":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;>;"
    .end local v5    # "arrayWords":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;>;"
    .end local v9    # "itSort":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;>;"
    :cond_a
    return-void
.end method


# virtual methods
.method public compare(Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;)I
    .locals 7
    .param p1, "entry1"    # Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;
    .param p2, "entry2"    # Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;

    .prologue
    const-wide/16 v5, 0x0

    .line 42
    const-string/jumbo v1, "recvTime"

    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/SortCursor;->strColumnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    iget-object v1, p2, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;->key:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p1, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;->key:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 45
    .local v0, "lCompareResult":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 52
    .end local v0    # "lCompareResult":Ljava/lang/Long;
    :goto_0
    return v1

    .line 45
    .restart local v0    # "lCompareResult":Ljava/lang/Long;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 48
    .end local v0    # "lCompareResult":Ljava/lang/Long;
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/SortCursor;->strColumnName:Ljava/lang/String;

    const-string/jumbo v2, "fileName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    iget-object v2, p1, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;->key:Ljava/lang/String;

    iget-object v3, p2, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 52
    :cond_3
    iget-object v1, p2, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;->key:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/email/mail/attachment/SortCursor;->compare(Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;)I

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/SortCursor;->mPos:I

    return v0
.end method

.method public move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 173
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/SortCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/SortCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/SortCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/SortCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/SortCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/SortCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/SortCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 142
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/SortCursor;->sortList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 143
    iput p1, p0, Lcom/kingsoft/email/mail/attachment/SortCursor;->mPos:I

    .line 144
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/SortCursor;->sortList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;

    iget v0, v1, Lcom/kingsoft/email/mail/attachment/SortCursor$SortEntry;->order:I

    .line 145
    .local v0, "order":I
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    .line 153
    .end local v0    # "order":I
    :goto_0
    return v1

    .line 147
    :cond_0
    if-gez p1, :cond_1

    .line 148
    const/4 v1, -0x1

    iput v1, p0, Lcom/kingsoft/email/mail/attachment/SortCursor;->mPos:I

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/SortCursor;->sortList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/SortCursor;->sortList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/email/mail/attachment/SortCursor;->mPos:I

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/SortCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/SortCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
