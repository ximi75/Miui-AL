.class public Lcom/kingsoft/email/provider/ContactDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ContactDBHelper.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "Contact.db"

.field private static final DB_VERSION:I = 0x4

.field static createaccountsql:Ljava/lang/String;

.field static createcrowdsourcing:Ljava/lang/String;

.field static createmapsql:Ljava/lang/String;

.field static createnicknamesql:Ljava/lang/String;

.field private static sSingleton:Lcom/kingsoft/email/provider/ContactDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/email/provider/ContactDBHelper;->sSingleton:Lcom/kingsoft/email/provider/ContactDBHelper;

    .line 45
    const-string/jumbo v0, "create table contact_table (id integer primary key autoincrement, name text, email text not null, blacklist integer default 0, writelist integer default 1, weight REAL default 1.0, nickname text, pinyin text ,fristpinyin text , isenable integer default 1, myemail text, lasttime text ,timeStamp integer ,selected text );"

    sput-object v0, Lcom/kingsoft/email/provider/ContactDBHelper;->createaccountsql:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "create table map_table (key integer not null , email text not null);"

    sput-object v0, Lcom/kingsoft/email/provider/ContactDBHelper;->createmapsql:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "create table nick_table (key text not null , len integer ,email text not null);"

    sput-object v0, Lcom/kingsoft/email/provider/ContactDBHelper;->createnicknamesql:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "create table crowdsourcing (_id integer primary key autoincrement, source_type_id integer, data1 text, data2 text, data3 text, data4 text, data5 text, data6 text, data7 text, data8 text, data9 text );"

    sput-object v0, Lcom/kingsoft/email/provider/ContactDBHelper;->createcrowdsourcing:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 116
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/kingsoft/email/provider/ContactDBHelper;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    const-class v1, Lcom/kingsoft/email/provider/ContactDBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingsoft/email/provider/ContactDBHelper;->sSingleton:Lcom/kingsoft/email/provider/ContactDBHelper;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/kingsoft/email/provider/ContactDBHelper;

    const-string/jumbo v2, "Contact.db"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/kingsoft/email/provider/ContactDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Lcom/kingsoft/email/provider/ContactDBHelper;->sSingleton:Lcom/kingsoft/email/provider/ContactDBHelper;

    .line 122
    :cond_0
    sget-object v0, Lcom/kingsoft/email/provider/ContactDBHelper;->sSingleton:Lcom/kingsoft/email/provider/ContactDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static insertSampleDataForCrowd(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 97
    const-string/jumbo v0, "insert into crowdsourcing (source_type_id, data1) values (0, \'member@linkedin.com\')"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v0, "insert into crowdsourcing (source_type_id, data1) values (0, \'invitations-no-reply@linkedin.com\')"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v0, "insert into crowdsourcing (source_type_id, data1) values (0, \'digital-no-reply@amazon.com\')"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v0, "insert into crowdsourcing (source_type_id, data1) values (0, \'resume@quickmail.51job.com\')"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v0, "insert into crowdsourcing (source_type_id, data1, data2) values (1, \'vipshop.com\', 1)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 22
    sget-object v0, Lcom/kingsoft/email/provider/ContactDBHelper;->createaccountsql:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/kingsoft/email/provider/ContactDBHelper;->createmapsql:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/kingsoft/email/provider/ContactDBHelper;->createnicknamesql:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/kingsoft/email/provider/ContactDBHelper;->createcrowdsourcing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lcom/kingsoft/email/provider/ContactDBHelper;->insertSampleDataForCrowd(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 27
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 31
    if-le p3, p2, :cond_0

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 32
    const-string/jumbo v0, "alter table contact_table add column timeStamp integer"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    :cond_0
    const/4 v0, 0x4

    if-gt p3, v0, :cond_1

    .line 36
    sget-object v0, Lcom/kingsoft/email/provider/ContactDBHelper;->createcrowdsourcing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Lcom/kingsoft/email/provider/ContactDBHelper;->insertSampleDataForCrowd(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 39
    :cond_1
    return-void
.end method
