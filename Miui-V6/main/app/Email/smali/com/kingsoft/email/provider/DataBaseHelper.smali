.class public Lcom/kingsoft/email/provider/DataBaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataBaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/provider/DataBaseHelper$MyLog;
    }
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "Extral_Provider.db"

.field private static final VERSION:I = 0x10


# instance fields
.field private DB_PATH:Ljava/lang/String;

.field private current_versionCode:I

.field private log:Lcom/kingsoft/email/provider/DataBaseHelper$MyLog;

.field private final myContext:Landroid/content/Context;

.field private myDataBase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const-string/jumbo v0, "Extral_Provider.db"

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/email/provider/DataBaseHelper;->current_versionCode:I

    .line 30
    new-instance v0, Lcom/kingsoft/email/provider/DataBaseHelper$MyLog;

    const-string/jumbo v1, "db"

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/email/provider/DataBaseHelper$MyLog;-><init>(Lcom/kingsoft/email/provider/DataBaseHelper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingsoft/email/provider/DataBaseHelper;->log:Lcom/kingsoft/email/provider/DataBaseHelper$MyLog;

    .line 34
    iput-object p1, p0, Lcom/kingsoft/email/provider/DataBaseHelper;->myContext:Landroid/content/Context;

    .line 35
    const-string/jumbo v0, "Extral_Provider.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/provider/DataBaseHelper;->DB_PATH:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private checkDataBase()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "checkDB":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/email/provider/DataBaseHelper;->DB_PATH:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x11

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    iput v2, p0, Lcom/kingsoft/email/provider/DataBaseHelper;->current_versionCode:I

    .line 59
    const-string/jumbo v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "current_versionCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/kingsoft/email/provider/DataBaseHelper;->current_versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 65
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 60
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private copyDataBase()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 70
    iget-object v5, p0, Lcom/kingsoft/email/provider/DataBaseHelper;->DB_PATH:Ljava/lang/String;

    .line 71
    .local v5, "outFileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 73
    const-string/jumbo v6, ""

    const-string/jumbo v7, "\u6570\u636e\u5e93\u6587\u4ef6\u5b58\u5728"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 75
    const-string/jumbo v6, ""

    const-string/jumbo v7, "\u5220\u9664\u6587\u4ef6\u6210\u529f"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 80
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/kingsoft/email/provider/DataBaseHelper;->myContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string/jumbo v7, "Extral_Provider.db"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 81
    .local v3, "myInput":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 82
    .local v4, "myOutput":Ljava/io/OutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 84
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "length":I
    if-lez v2, :cond_2

    .line 85
    invoke-virtual {v4, v0, v9, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 77
    .end local v0    # "buffer":[B
    .end local v2    # "length":I
    .end local v3    # "myInput":Ljava/io/InputStream;
    .end local v4    # "myOutput":Ljava/io/OutputStream;
    :cond_1
    const-string/jumbo v6, ""

    const-string/jumbo v7, "\u5220\u9664\u6587\u4ef6\u5931\u8d25"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 87
    .restart local v0    # "buffer":[B
    .restart local v2    # "length":I
    .restart local v3    # "myInput":Ljava/io/InputStream;
    .restart local v4    # "myOutput":Ljava/io/OutputStream;
    :cond_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 88
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 89
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 90
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/email/provider/DataBaseHelper;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/kingsoft/email/provider/DataBaseHelper;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 103
    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createDataBase()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/kingsoft/email/provider/DataBaseHelper;->checkDataBase()Z

    move-result v0

    .line 40
    .local v0, "dbExist":Z
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/kingsoft/email/provider/DataBaseHelper;->current_versionCode:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 50
    :goto_0
    return-void

    .line 43
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/kingsoft/email/provider/DataBaseHelper;->copyDataBase()V

    .line 44
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/DataBaseHelper;->openDataBase()V

    .line 45
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/DataBaseHelper;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "Extral_Provider.db"

    const-string/jumbo v3, "Error copying database"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 110
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 115
    return-void
.end method

.method public openDataBase()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x10

    .line 93
    iget-object v0, p0, Lcom/kingsoft/email/provider/DataBaseHelper;->DB_PATH:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/provider/DataBaseHelper;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 96
    iget-object v0, p0, Lcom/kingsoft/email/provider/DataBaseHelper;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 97
    return-void
.end method
