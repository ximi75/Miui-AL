.class public Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "StatisticsDatabaseHelper.java"


# static fields
.field private static DB_NAME:Ljava/lang/String; = null

.field private static DB_VERSION:I = 0x0

.field private static final EVENT_TAB:Ljava/lang/String; = "create table events(_id INTEGER PRIMARY KEY AUTOINCREMENT,eventName text,eventType number,event text,eventTime text,plusable number,state number)"

.field private static final EXCE_TAB:Ljava/lang/String; = "create table exceptions(_id integer primary key autoincrement,exceptType text,stacktrace text,md5 text,exceptTime text)"

.field private static final MULTIP_EVENT_TAB:Ljava/lang/String; = "create table MultipleEvents(_id INTEGER PRIMARY KEY AUTOINCREMENT,eventName text,eventType number,subKey text,subValue text,eventTime text,state number)"

.field private static final MULTIP_USEREVENT_TAB:Ljava/lang/String; = "create table MultipleUserEvents(_id INTEGER PRIMARY KEY AUTOINCREMENT,eventName text,eventType number,subKey text,subValue text,email text,eventTime text,state number)"

.field private static final USER_DATA_TAB:Ljava/lang/String; = "create table userdatas(_id INTEGER PRIMARY KEY AUTOINCREMENT,email text,eventName text,plusable number,event text,eventTime text,state number)"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "kingsoftStatistics.db"

    sput-object v0, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->DB_NAME:Ljava/lang/String;

    .line 17
    const/4 v0, 0x1

    sput v0, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->DB_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-object v0, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->DB_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->DB_VERSION:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 74
    return-void
.end method

.method public static deleteEventsByTime(Ljava/lang/String;)V
    .locals 5
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 166
    invoke-static {}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->getInstance()Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 167
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "eventTime<=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "selection":Ljava/lang/String;
    const-string/jumbo v2, "events"

    invoke-virtual {v0, v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 169
    const-string/jumbo v2, "MultipleEvents"

    invoke-virtual {v0, v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public static deleteUserInfos()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->deleteUserInfos(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public static deleteUserInfos(Ljava/lang/String;)V
    .locals 3
    .param p0, "selection"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-static {}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->getInstance()Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 203
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "userdatas"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method private static findException(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p0, "selections"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-static {}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->getInstance()Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 112
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "exceptions"

    move-object v3, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 114
    .local v8, "c":Landroid/database/Cursor;
    return-object v8
.end method

.method public static findUnpushedEvents()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-static {}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->getInstance()Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 153
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "events"

    const-string/jumbo v7, "eventTime asc"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 155
    .local v8, "c":Landroid/database/Cursor;
    return-object v8
.end method

.method public static findUnpushedMultipleEvents()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-static {}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->getInstance()Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 160
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "MultipleEvents"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 162
    .local v8, "c":Landroid/database/Cursor;
    return-object v8
.end method

.method public static findUnpushedMultipleEventsByUser(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    :goto_0
    return-object v2

    .line 189
    :cond_0
    invoke-static {}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->getInstance()Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 190
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "email=\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "selection":Ljava/lang/String;
    const-string/jumbo v1, "MultipleUserEvents"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    move-object v2, v8

    .line 193
    goto :goto_0
.end method

.method public static findUnpushedUserDatasLastDay(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    :goto_0
    return-object v2

    .line 176
    :cond_0
    invoke-static {}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->getInstance()Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 178
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "email=\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "selection":Ljava/lang/String;
    const-string/jumbo v1, "userdatas"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    move-object v2, v8

    .line 181
    goto :goto_0
.end method

.method public static getInstance()Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;
    .locals 3

    .prologue
    .line 77
    sget-object v0, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->mInstance:Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;

    if-nez v0, :cond_1

    .line 78
    const-class v1, Lcom/kingsoft/email/statistics/KingsoftAgent;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->mInstance:Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;

    sget-object v2, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->mInstance:Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;

    .line 82
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_1
    sget-object v0, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->mInstance:Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static insertEvents(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/statistics/EventInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/statistics/EventInfo;>;"
    invoke-static {p0}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->insertInfos(Ljava/util/ArrayList;)V

    .line 149
    return-void
.end method

.method public static insertException(Landroid/content/ContentValues;)Z
    .locals 7
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    .line 118
    const-string/jumbo v5, "md5"

    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "md5":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v4

    .line 122
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "md5=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x0

    .line 125
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v3}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->findException(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-lez v5, :cond_2

    .line 130
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_3
    invoke-static {}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->getInstance()Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 133
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v4, "exceptions"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, p0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 134
    const/4 v4, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4
.end method

.method public static insertInfos(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/kingsoft/email/statistics/Info;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/kingsoft/email/statistics/Info;>;"
    invoke-static {}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->getInstance()Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 139
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 140
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/statistics/Info;

    .line 141
    .local v2, "info":Lcom/kingsoft/email/statistics/Info;
    iget-object v3, v2, Lcom/kingsoft/email/statistics/Info;->tableName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/kingsoft/email/statistics/Info;->toValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 143
    .end local v2    # "info":Lcom/kingsoft/email/statistics/Info;
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 144
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 145
    return-void
.end method

.method public static instance(Landroid/content/Context;)V
    .locals 1
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/statistics/StatisticsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 93
    const-string/jumbo v0, "create table exceptions(_id integer primary key autoincrement,exceptType text,stacktrace text,md5 text,exceptTime text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "create table events(_id INTEGER PRIMARY KEY AUTOINCREMENT,eventName text,eventType number,event text,eventTime text,plusable number,state number)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v0, "create table userdatas(_id INTEGER PRIMARY KEY AUTOINCREMENT,email text,eventName text,plusable number,event text,eventTime text,state number)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "create table MultipleEvents(_id INTEGER PRIMARY KEY AUTOINCREMENT,eventName text,eventType number,subKey text,subValue text,eventTime text,state number)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v0, "create table MultipleUserEvents(_id INTEGER PRIMARY KEY AUTOINCREMENT,eventName text,eventType number,subKey text,subValue text,email text,eventTime text,state number)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 108
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 103
    return-void
.end method
