.class public Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/DBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DatabaseHelper"
.end annotation


# instance fields
.field public final logname:Ljava/lang/String;

.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 996
    const/4 v0, 0x0

    const/16 v1, 0x87

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1047
    const-string/jumbo v0, "/sdcard/log.log"

    iput-object v0, p0, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;->logname:Ljava/lang/String;

    .line 997
    iput-object p1, p0, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 998
    return-void
.end method

.method public static appendMethodA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 1035
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "rw"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    .local v3, "randomFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    .line 1039
    .local v1, "fileLength":J
    invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1040
    invoke-virtual {v3, p1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    .end local v1    # "fileLength":J
    .end local v3    # "randomFile":Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "columnName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1828
    const/4 v2, 0x0

    .line 1829
    .local v2, "result":Z
    const/4 v0, 0x0

    .line 1831
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SELECT * FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " LIMIT 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1833
    if-eqz v0, :cond_1

    invoke-interface {v0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v2, 0x1

    .line 1837
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1838
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1841
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v2, v3

    .line 1833
    goto :goto_0

    .line 1834
    :catch_0
    move-exception v1

    .line 1835
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkColumnExists1..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1837
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1838
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1837
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1838
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method


# virtual methods
.method public logFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 1050
    const-string/jumbo v0, "/sdcard/log.log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;->appendMethodA(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1002
    const-string/jumbo v0, "EmailProvider"

    const-string/jumbo v1, "Creating EmailProvider database"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1004
    invoke-static {p1}, Lcom/kingsoft/email/provider/DBHelper;->createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1005
    iget-object v0, p0, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/kingsoft/email/provider/DBHelper;->createMessageTable(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1006
    sget-boolean v0, Lcom/kingsoft/email/mail/attachment/AttachmentOffOn;->isFileMd5Off:Z

    if-nez v0, :cond_0

    .line 1007
    invoke-static {p1}, Lcom/kingsoft/email/provider/DBHelper;->createMessageAttachment(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1009
    :cond_0
    invoke-static {p1}, Lcom/kingsoft/email/provider/DBHelper;->createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1010
    invoke-static {p1}, Lcom/kingsoft/email/provider/DBHelper;->createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1011
    invoke-static {p1}, Lcom/kingsoft/email/provider/DBHelper;->createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1012
    # invokes: Lcom/kingsoft/email/provider/DBHelper;->createMessageMoveTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/kingsoft/email/provider/DBHelper;->access$000(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1013
    # invokes: Lcom/kingsoft/email/provider/DBHelper;->createMessageStateChangeTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/kingsoft/email/provider/DBHelper;->access$100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1014
    invoke-static {p1}, Lcom/kingsoft/email/provider/DBHelper;->createPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1015
    invoke-static {p1}, Lcom/kingsoft/email/provider/DBHelper;->createQuickResponseTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1016
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/16 v1, 0x87

    const/4 v3, 0x0

    .line 1020
    const/16 v0, 0x65

    if-ne p2, v0, :cond_0

    const/16 v0, 0x64

    if-ne p3, v0, :cond_0

    .line 1021
    const-string/jumbo v0, "EmailProvider"

    const-string/jumbo v1, "Downgrade from v101 to v100"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1027
    :goto_0
    return-void

    .line 1022
    :cond_0
    if-ne p3, v1, :cond_1

    if-le p2, v1, :cond_1

    .line 1023
    const-string/jumbo v0, "EmailProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Downgrade from v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to v135"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1025
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1816
    :try_start_0
    const-string/jumbo v1, "DELETE FROM Account WHERE displayName ISNULL;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1818
    const-string/jumbo v1, "DELETE FROM HostAuth WHERE protocol ISNULL;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1824
    :goto_0
    return-void

    .line 1820
    :catch_0
    move-exception v0

    .line 1822
    .local v0, "e":Landroid/database/SQLException;
    const-string/jumbo v1, "EmailProvider"

    const-string/jumbo v2, "Exception cleaning EmailProvider.db"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 30
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 1058
    const/4 v3, 0x5

    move/from16 v0, p2

    if-ge v0, v3, :cond_2

    .line 1059
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string/jumbo v4, "eas"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v13

    .line 1061
    .local v13, "accounts":[Landroid/accounts/Account;
    move-object v14, v13

    .local v14, "arr$":[Landroid/accounts/Account;
    array-length v0, v14

    move/from16 v27, v0

    .local v27, "len$":I
    const/16 v24, 0x0

    .local v24, "i$":I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    aget-object v11, v14, v24

    .line 1062
    .local v11, "account":Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v11, v4, v5}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1061
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 1064
    .end local v11    # "account":Landroid/accounts/Account;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v3, v0, v1, v2}, Lcom/kingsoft/email/provider/DBHelper;->resetMessageTable(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1065
    invoke-static/range {p1 .. p3}, Lcom/kingsoft/email/provider/DBHelper;->resetAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1066
    invoke-static/range {p1 .. p3}, Lcom/kingsoft/email/provider/DBHelper;->resetMailboxTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1067
    invoke-static/range {p1 .. p3}, Lcom/kingsoft/email/provider/DBHelper;->resetHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1068
    invoke-static/range {p1 .. p3}, Lcom/kingsoft/email/provider/DBHelper;->resetAccountTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1810
    .end local v13    # "accounts":[Landroid/accounts/Account;
    .end local v14    # "arr$":[Landroid/accounts/Account;
    .end local v24    # "i$":I
    .end local v27    # "len$":I
    :cond_1
    :goto_1
    return-void

    .line 1072
    :cond_2
    const/4 v3, 0x5

    move/from16 v0, p2

    if-ne v0, v3, :cond_3

    .line 1075
    :try_start_0
    const-string/jumbo v3, "alter table Message add column syncServerTimeStamp integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1077
    const-string/jumbo v3, "alter table Message_Updates add column syncServerTimeStamp integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1079
    const-string/jumbo v3, "alter table Message_Deletes add column syncServerTimeStamp integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1087
    :cond_3
    :goto_2
    const/4 v3, 0x6

    move/from16 v0, p2

    if-gt v0, v3, :cond_4

    .line 1089
    const-string/jumbo v3, "drop trigger mailbox_delete;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1090
    const-string/jumbo v3, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1092
    :cond_4
    const/4 v3, 0x7

    move/from16 v0, p2

    if-gt v0, v3, :cond_5

    .line 1095
    :try_start_1
    const-string/jumbo v3, "alter table Account add column securityFlags integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1102
    :cond_5
    :goto_3
    const/16 v3, 0x8

    move/from16 v0, p2

    if-gt v0, v3, :cond_6

    .line 1105
    :try_start_2
    const-string/jumbo v3, "alter table Account add column securitySyncKey text;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1107
    const-string/jumbo v3, "alter table Account add column signature text;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1114
    :cond_6
    :goto_4
    const/16 v3, 0x9

    move/from16 v0, p2

    if-gt v0, v3, :cond_7

    .line 1117
    :try_start_3
    const-string/jumbo v3, "alter table Message add column meetingInfo text;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1119
    const-string/jumbo v3, "alter table Message_Updates add column meetingInfo text;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1121
    const-string/jumbo v3, "alter table Message_Deletes add column meetingInfo text;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_5

    .line 1128
    :cond_7
    :goto_5
    const/16 v3, 0xa

    move/from16 v0, p2

    if-gt v0, v3, :cond_8

    .line 1131
    :try_start_4
    const-string/jumbo v3, "alter table Attachment add column content text;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1133
    const-string/jumbo v3, "alter table Attachment add column flags integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1140
    :cond_8
    :goto_6
    const/16 v3, 0xb

    move/from16 v0, p2

    if-gt v0, v3, :cond_9

    .line 1143
    :try_start_5
    const-string/jumbo v3, "alter table Attachment add column content_bytes blob;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_7

    .line 1150
    :cond_9
    :goto_7
    const/16 v3, 0xc

    move/from16 v0, p2

    if-gt v0, v3, :cond_a

    .line 1152
    :try_start_6
    const-string/jumbo v3, "alter table Mailbox add column messageCount integer not null default 0;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1155
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->recalculateMessageCount(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_8

    .line 1161
    :cond_a
    :goto_8
    const/16 v3, 0xd

    move/from16 v0, p2

    if-gt v0, v3, :cond_b

    .line 1163
    :try_start_7
    const-string/jumbo v3, "alter table Message add column snippet text;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_9

    .line 1171
    :cond_b
    :goto_9
    const/16 v3, 0xe

    move/from16 v0, p2

    if-gt v0, v3, :cond_c

    .line 1173
    :try_start_8
    const-string/jumbo v3, "alter table Message_Deletes add column snippet text;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1175
    const-string/jumbo v3, "alter table Message_Updates add column snippet text;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_a

    .line 1182
    :cond_c
    :goto_a
    const/16 v3, 0xf

    move/from16 v0, p2

    if-gt v0, v3, :cond_d

    .line 1184
    :try_start_9
    const-string/jumbo v3, "alter table Attachment add column accountKey integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1187
    const-string/jumbo v3, "update Attachment set accountKey= (SELECT Message.accountKey from Message where Message._id = Attachment.messageKey)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_b

    .line 1197
    :cond_d
    :goto_b
    const/16 v3, 0x10

    move/from16 v0, p2

    if-gt v0, v3, :cond_e

    .line 1199
    :try_start_a
    const-string/jumbo v3, "alter table Mailbox add column parentKey integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_c

    .line 1206
    :cond_e
    :goto_c
    const/16 v3, 0x11

    move/from16 v0, p2

    if-gt v0, v3, :cond_f

    .line 1207
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->upgradeFromVersion17ToVersion18(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1209
    :cond_f
    const/16 v3, 0x12

    move/from16 v0, p2

    if-gt v0, v3, :cond_10

    .line 1211
    :try_start_b
    const-string/jumbo v3, "alter table Account add column policyKey integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1213
    const-string/jumbo v3, "drop trigger account_delete;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1214
    const-string/jumbo v3, "create trigger account_delete before delete on Account begin delete from Mailbox where accountKey=old._id; delete from HostAuth where _id=old.hostAuthKeyRecv; delete from HostAuth where _id=old.hostAuthKeySend; delete from Policy where _id=old.policyKey; end"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1215
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->createPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1216
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->convertPolicyFlagsToPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_d

    .line 1222
    :cond_10
    :goto_d
    const/16 v3, 0x13

    move/from16 v0, p2

    if-gt v0, v3, :cond_11

    .line 1224
    :try_start_c
    const-string/jumbo v3, "alter table Policy add column requireManualSyncRoaming integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1227
    const-string/jumbo v3, "alter table Policy add column dontAllowCamera integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1229
    const-string/jumbo v3, "alter table Policy add column dontAllowAttachments integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1231
    const-string/jumbo v3, "alter table Policy add column dontAllowHtml integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1233
    const-string/jumbo v3, "alter table Policy add column maxAttachmentSize integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1235
    const-string/jumbo v3, "alter table Policy add column maxTextTruncationSize integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1238
    const-string/jumbo v3, "alter table Policy add column maxHTMLTruncationSize integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1241
    const-string/jumbo v3, "alter table Policy add column maxEmailLookback integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1243
    const-string/jumbo v3, "alter table Policy add column maxCalendarLookback integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1245
    const-string/jumbo v3, "alter table Policy add column passwordRecoveryEnabled integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_e

    .line 1253
    :cond_11
    :goto_e
    const/16 v3, 0x15

    move/from16 v0, p2

    if-gt v0, v3, :cond_12

    .line 1254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/kingsoft/email/provider/DBHelper;->upgradeFromVersion21ToVersion22(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 1255
    const/16 p2, 0x16

    .line 1257
    :cond_12
    const/16 v3, 0x16

    move/from16 v0, p2

    if-gt v0, v3, :cond_13

    .line 1258
    # invokes: Lcom/kingsoft/email/provider/DBHelper;->upgradeFromVersion22ToVersion23(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->access$200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1260
    :cond_13
    const/16 v3, 0x17

    move/from16 v0, p2

    if-gt v0, v3, :cond_14

    .line 1261
    # invokes: Lcom/kingsoft/email/provider/DBHelper;->upgradeFromVersion23ToVersion24(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->access$300(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1263
    :cond_14
    const/16 v3, 0x18

    move/from16 v0, p2

    if-gt v0, v3, :cond_15

    .line 1264
    # invokes: Lcom/kingsoft/email/provider/DBHelper;->upgradeFromVersion24ToVersion25(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->access$400(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1266
    :cond_15
    const/16 v3, 0x19

    move/from16 v0, p2

    if-gt v0, v3, :cond_16

    .line 1267
    # invokes: Lcom/kingsoft/email/provider/DBHelper;->upgradeFromVersion25ToVersion26(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->access$500(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1269
    :cond_16
    const/16 v3, 0x1a

    move/from16 v0, p2

    if-gt v0, v3, :cond_17

    .line 1271
    :try_start_d
    const-string/jumbo v3, "alter table Message add column protocolSearchInfo text;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1273
    const-string/jumbo v3, "alter table Message_Deletes add column protocolSearchInfo text;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1275
    const-string/jumbo v3, "alter table Message_Updates add column protocolSearchInfo text;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_d} :catch_f

    .line 1282
    :cond_17
    :goto_f
    const/16 v3, 0x1c

    move/from16 v0, p2

    if-gt v0, v3, :cond_18

    .line 1284
    :try_start_e
    const-string/jumbo v3, "alter table Policy add column protocolPoliciesEnforced text;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1286
    const-string/jumbo v3, "alter table Policy add column protocolPoliciesUnsupported text;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_e} :catch_10

    .line 1293
    :cond_18
    :goto_10
    const/16 v3, 0x1d

    move/from16 v0, p2

    if-gt v0, v3, :cond_19

    .line 1294
    # invokes: Lcom/kingsoft/email/provider/DBHelper;->upgradeFromVersion29ToVersion30(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->access$600(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1296
    :cond_19
    const/16 v3, 0x1e

    move/from16 v0, p2

    if-gt v0, v3, :cond_1a

    .line 1298
    :try_start_f
    const-string/jumbo v3, "alter table Mailbox add column uiSyncStatus integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1300
    const-string/jumbo v3, "alter table Mailbox add column uiLastSyncResult integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/database/SQLException; {:try_start_f .. :try_end_f} :catch_11

    .line 1307
    :cond_1a
    :goto_11
    const/16 v3, 0x1f

    move/from16 v0, p2

    if-gt v0, v3, :cond_1b

    .line 1309
    :try_start_10
    const-string/jumbo v3, "alter table Mailbox add column lastNotifiedMessageKey integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1311
    const-string/jumbo v3, "alter table Mailbox add column lastNotifiedMessageCount integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1313
    const-string/jumbo v3, "update Mailbox set lastNotifiedMessageKey=0 where lastNotifiedMessageKey IS NULL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1315
    const-string/jumbo v3, "update Mailbox set lastNotifiedMessageCount=0 where lastNotifiedMessageCount IS NULL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/database/SQLException; {:try_start_10 .. :try_end_10} :catch_12

    .line 1322
    :cond_1b
    :goto_12
    const/16 v3, 0x20

    move/from16 v0, p2

    if-gt v0, v3, :cond_1c

    .line 1324
    :try_start_11
    const-string/jumbo v3, "alter table Attachment add column uiState integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1326
    const-string/jumbo v3, "alter table Attachment add column uiDestination integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1328
    const-string/jumbo v3, "alter table Attachment add column uiDownloadedSize integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1332
    const-string/jumbo v3, "update Attachment set uiState=3 where contentUri is not null;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/database/SQLException; {:try_start_11 .. :try_end_11} :catch_13

    .line 1340
    :cond_1c
    :goto_13
    const/16 v3, 0x21

    move/from16 v0, p2

    if-gt v0, v3, :cond_1d

    .line 1342
    :try_start_12
    const-string/jumbo v3, "alter table Mailbox add column totalCount integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/database/SQLException; {:try_start_12 .. :try_end_12} :catch_14

    .line 1349
    :cond_1d
    :goto_14
    const/16 v3, 0x22

    move/from16 v0, p2

    if-gt v0, v3, :cond_1e

    .line 1351
    :try_start_13
    const-string/jumbo v3, "update Mailbox set lastTouchedTime = 2 WHERE type = 3"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1355
    const-string/jumbo v3, "update Mailbox set lastTouchedTime = 1 WHERE type = 5"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/SQLException; {:try_start_13 .. :try_end_13} :catch_15

    .line 1364
    :cond_1e
    :goto_15
    const/16 v3, 0x24

    move/from16 v0, p2

    if-gt v0, v3, :cond_1f

    .line 1367
    :try_start_14
    const-string/jumbo v3, "update Mailbox set flags=flags|64 where (flags&8)!=0 and accountKey IN (SELECT Account._id from Account,HostAuth where Account.hostAuthKeyRecv=HostAuth._id and protocol=\'eas\')"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/database/SQLException; {:try_start_14 .. :try_end_14} :catch_16

    .line 1382
    :cond_1f
    :goto_16
    const/16 v3, 0x25

    move/from16 v0, p2

    if-gt v0, v3, :cond_20

    .line 1384
    :try_start_15
    const-string/jumbo v3, "alter table Message add column threadTopic text;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/database/SQLException; {:try_start_15 .. :try_end_15} :catch_17

    .line 1391
    :cond_20
    :goto_17
    const/16 v3, 0x26

    move/from16 v0, p2

    if-gt v0, v3, :cond_21

    .line 1393
    :try_start_16
    const-string/jumbo v3, "alter table Message_Deletes add column threadTopic text;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1395
    const-string/jumbo v3, "alter table Message_Updates add column threadTopic text;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/database/SQLException; {:try_start_16 .. :try_end_16} :catch_18

    .line 1402
    :cond_21
    :goto_18
    const/16 v3, 0x27

    move/from16 v0, p2

    if-gt v0, v3, :cond_22

    .line 1403
    # invokes: Lcom/kingsoft/email/provider/DBHelper;->upgradeToEmail2(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->access$700(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1406
    :cond_22
    const/16 v3, 0x27

    move/from16 v0, p2

    if-gt v0, v3, :cond_23

    .line 1408
    :try_start_17
    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    .line 1409
    .local v26, "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v4, "Attachment"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catch Landroid/database/SQLException; {:try_start_17 .. :try_end_17} :catch_0

    move-result-object v15

    .line 1412
    .local v15, "c":Landroid/database/Cursor;
    if-eqz v15, :cond_46

    .line 1414
    :goto_19
    :try_start_18
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1415
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1416
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "attachment file id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_19

    .line 1419
    :catchall_0
    move-exception v3

    :try_start_19
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_19
    .catch Landroid/database/SQLException; {:try_start_19 .. :try_end_19} :catch_0

    .line 1455
    .end local v15    # "c":Landroid/database/Cursor;
    .end local v26    # "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v19

    .line 1456
    .local v19, "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 39 to 40 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1460
    .end local v19    # "e":Landroid/database/SQLException;
    :cond_23
    const/16 v3, 0x66

    move/from16 v0, p2

    if-gt v0, v3, :cond_24

    .line 1462
    :try_start_1a
    const-string/jumbo v3, "alter table Mailbox add hierarchicalName text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/database/SQLException; {:try_start_1a .. :try_end_1a} :catch_19

    .line 1469
    :cond_24
    :goto_1a
    const/16 v3, 0x67

    move/from16 v0, p2

    if-gt v0, v3, :cond_25

    .line 1471
    :try_start_1b
    const-string/jumbo v3, "alter table Message add syncData text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/database/SQLException; {:try_start_1b .. :try_end_1b} :catch_1a

    .line 1478
    :cond_25
    :goto_1b
    const/16 v3, 0x68

    move/from16 v0, p2

    if-gt v0, v3, :cond_26

    .line 1480
    :try_start_1c
    const-string/jumbo v3, "alter table Message_Updates add syncData text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1482
    const-string/jumbo v3, "alter table Message_Deletes add syncData text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/database/SQLException; {:try_start_1c .. :try_end_1c} :catch_1b

    .line 1489
    :cond_26
    :goto_1c
    const/16 v3, 0x69

    move/from16 v0, p2

    if-gt v0, v3, :cond_27

    .line 1491
    :try_start_1d
    const-string/jumbo v3, "alter table HostAuth add serverCert blob"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/database/SQLException; {:try_start_1d .. :try_end_1d} :catch_1c

    .line 1498
    :cond_27
    :goto_1d
    const/16 v3, 0x6a

    move/from16 v0, p2

    if-gt v0, v3, :cond_28

    .line 1500
    :try_start_1e
    const-string/jumbo v3, "alter table Message add flagSeen integer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1502
    const-string/jumbo v3, "alter table Message_Updates add flagSeen integer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1504
    const-string/jumbo v3, "alter table Message_Deletes add flagSeen integer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/database/SQLException; {:try_start_1e .. :try_end_1e} :catch_1d

    .line 1511
    :cond_28
    :goto_1e
    const/16 v3, 0x6b

    move/from16 v0, p2

    if-gt v0, v3, :cond_29

    .line 1513
    :try_start_1f
    const-string/jumbo v3, "alter table Attachment add column cachedFile text;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/database/SQLException; {:try_start_1f .. :try_end_1f} :catch_1e

    .line 1520
    :cond_29
    :goto_1f
    const/16 v3, 0x6c

    move/from16 v0, p2

    if-gt v0, v3, :cond_2a

    .line 1522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    # invokes: Lcom/kingsoft/email/provider/DBHelper;->migrateLegacyAccounts(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    invoke-static {v0, v3}, Lcom/kingsoft/email/provider/DBHelper;->access$800(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 1524
    :cond_2a
    const/16 v3, 0x6d

    move/from16 v0, p2

    if-gt v0, v3, :cond_2b

    .line 1526
    const-string/jumbo v3, "update Mailbox set syncInterval=-2 where syncInterval<-2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1531
    const-string/jumbo v3, "update Account set syncLookback=3 where syncLookback is null or syncLookback<1 or syncLookback>6"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1537
    const-string/jumbo v3, "update Mailbox set syncLookback=0 where syncLookback is null or syncLookback<1 or syncLookback>6"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1543
    :cond_2b
    const/16 v3, 0x6e

    move/from16 v0, p2

    if-gt v0, v3, :cond_2c

    .line 1545
    const-string/jumbo v3, "delete from Mailbox where type=68"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1548
    :cond_2c
    const/16 v3, 0x6f

    move/from16 v0, p2

    if-gt v0, v3, :cond_2d

    .line 1552
    const-string/jumbo v3, "update Mailbox set syncInterval=case when syncInterval=-1 then 0 else 1 end"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1556
    :cond_2d
    const/16 v3, 0x6e

    move/from16 v0, p2

    if-lt v0, v3, :cond_2e

    const/16 v3, 0x70

    move/from16 v0, p2

    if-gt v0, v3, :cond_2e

    .line 1561
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->recalculateMessageCount(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1562
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->createMessageCountTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1565
    :cond_2e
    const/16 v3, 0x71

    move/from16 v0, p2

    if-gt v0, v3, :cond_2f

    .line 1567
    :try_start_20
    const-string/jumbo v3, "alter table Mailbox add column lastFullSyncTime integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1569
    new-instance v17, Landroid/content/ContentValues;

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1570
    .local v17, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "lastFullSyncTime"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1571
    const-string/jumbo v3, "Mailbox"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/database/SQLException; {:try_start_20 .. :try_end_20} :catch_1f

    .line 1578
    .end local v17    # "cv":Landroid/content/ContentValues;
    :cond_2f
    :goto_20
    const/16 v3, 0x72

    move/from16 v0, p2

    if-gt v0, v3, :cond_30

    .line 1580
    :try_start_21
    const-string/jumbo v3, "alter table Account add column pingDuration integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1582
    new-instance v17, Landroid/content/ContentValues;

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1583
    .restart local v17    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "pingDuration"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1584
    const-string/jumbo v3, "Account"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/database/SQLException; {:try_start_21 .. :try_end_21} :catch_20

    .line 1591
    .end local v17    # "cv":Landroid/content/ContentValues;
    :cond_30
    :goto_21
    const/16 v3, 0x73

    move/from16 v0, p2

    if-gt v0, v3, :cond_31

    .line 1592
    # invokes: Lcom/kingsoft/email/provider/DBHelper;->createMessageMoveTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->access$000(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1593
    # invokes: Lcom/kingsoft/email/provider/DBHelper;->createMessageStateChangeTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->access$100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1607
    :cond_31
    const/16 v3, 0x75

    move/from16 v0, p2

    if-gt v0, v3, :cond_32

    .line 1608
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update Mailbox set syncInterval=0 where accountKey in (select Account._id from Account join HostAuth where HostAuth._id=Account.hostAuthKeyRecv and (HostAuth.protocol=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f100304

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "HostAuth"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "protocol"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f100303

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "HostAuth"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "protocol"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "=\'imap\'));"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1632
    :cond_32
    const/16 v3, 0x76

    move/from16 v0, p2

    if-gt v0, v3, :cond_33

    .line 1633
    const-string/jumbo v3, "update Mailbox set syncInterval=0 where type=3"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1636
    const-string/jumbo v3, "delete from Message where (syncServerId not null and syncServerId!=\'\') and mailboxKey in (select _id from Mailbox where type=3)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1650
    :cond_33
    const/16 v3, 0x78

    move/from16 v0, p2

    if-gt v0, v3, :cond_34

    .line 1651
    const-string/jumbo v3, "alter table Message add mainMailboxKey integer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1658
    const-string/jumbo v3, "delete from Mailbox where type=8"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1662
    :cond_34
    const/16 v3, 0x79

    move/from16 v0, p2

    if-gt v0, v3, :cond_35

    .line 1665
    const-string/jumbo v3, "alter table Message_Updates add mainMailboxKey integer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1667
    const-string/jumbo v3, "alter table Message_Deletes add mainMailboxKey integer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1671
    :cond_35
    const/16 v3, 0x7a

    move/from16 v0, p2

    if-gt v0, v3, :cond_37

    .line 1672
    const/16 v3, 0x75

    move/from16 v0, p2

    if-lt v0, v3, :cond_36

    .line 1678
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->dropDeleteDuplicateMessagesTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1680
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/kingsoft/email/provider/DBHelper;->createDeleteDuplicateMessagesTrigger(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1683
    :cond_37
    const/16 v22, 0x0

    .line 1685
    .local v22, "hasAddRawSubject":Z
    const/16 v3, 0x7b

    move/from16 v0, p2

    if-gt v0, v3, :cond_38

    .line 1686
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->addRawSubjectColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1687
    const/16 v22, 0x1

    .line 1692
    :cond_38
    const/16 v3, 0x7c

    move/from16 v0, p2

    if-gt v0, v3, :cond_3a

    .line 1695
    const-string/jumbo v3, "Message"

    const-string/jumbo v4, "rawSubject"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;->checkColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 1696
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->addRawSubjectColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1697
    const/16 v22, 0x1

    .line 1699
    :cond_39
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->addPreviewTimeAndSnapshotPathColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1701
    :cond_3a
    const/16 v3, 0x7d

    move/from16 v0, p2

    if-gt v0, v3, :cond_3b

    .line 1702
    const-string/jumbo v3, "alter table Attachment add column isDeleted integer default 0;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1706
    :cond_3b
    const/16 v3, 0x7e

    move/from16 v0, p2

    if-gt v0, v3, :cond_3c

    .line 1707
    const-string/jumbo v3, "alter table Attachment add column downloadFailureReason integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1712
    :cond_3c
    sget-boolean v3, Lcom/kingsoft/email/mail/attachment/AttachmentOffOn;->isFileMd5Off:Z

    if-nez v3, :cond_3d

    .line 1714
    const/16 v3, 0x7e

    move/from16 v0, p2

    if-gt v0, v3, :cond_3d

    .line 1715
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->createMessageAttachment(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1718
    const-string/jumbo v3, "insert into MessageAttachment(messageKey,attachmentKey)  SELECT messageKey,_id FROM Attachment"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1727
    const-string/jumbo v3, "drop trigger message_delete"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1729
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->createMessageAttachmentTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1730
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->createAttachmentTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1741
    :cond_3d
    const/16 v3, 0x7f

    move/from16 v0, p2

    if-gt v0, v3, :cond_3e

    .line 1742
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->dropDeleteDuplicateMessagesTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1746
    :cond_3e
    const/16 v3, 0x80

    move/from16 v0, p2

    if-gt v0, v3, :cond_3f

    .line 1747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingsoft/email/statistics/KingsoftAgent;->pushUserAccountSetupData(Landroid/content/Context;)V

    .line 1751
    :cond_3f
    const/16 v3, 0x81

    move/from16 v0, p2

    if-gt v0, v3, :cond_40

    .line 1752
    const-string/jumbo v3, "alter table Attachment add column sourceAttId integer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1758
    :cond_40
    const/16 v3, 0x83

    move/from16 v0, p2

    if-ge v0, v3, :cond_41

    .line 1759
    const/16 v16, 0x0

    .line 1761
    .local v16, "cursor":Landroid/database/Cursor;
    :try_start_22
    const-string/jumbo v4, "HostAuth"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string/jumbo v6, "password"

    aput-object v6, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1762
    :goto_22
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1763
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 1764
    .local v29, "values":Landroid/content/ContentValues;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1765
    .local v25, "id":I
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1766
    .local v28, "password":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/kingsoft/email/jni/DESUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1767
    const-string/jumbo v3, "password"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    const-string/jumbo v3, "HostAuth"

    const-string/jumbo v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    goto :goto_22

    .line 1770
    .end local v25    # "id":I
    .end local v28    # "password":Ljava/lang/String;
    .end local v29    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v19

    .line 1771
    .local v19, "e":Ljava/lang/Exception;
    :try_start_23
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    .line 1773
    if-eqz v16, :cond_41

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_41

    .line 1774
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1779
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_41
    :goto_23
    const/16 v3, 0x84

    move/from16 v0, p2

    if-ge v0, v3, :cond_42

    .line 1780
    const-string/jumbo v3, "alter table Message add column messageSize integer default(0);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1781
    const-string/jumbo v3, "alter table Message_Deletes add column messageSize integer default(0);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1782
    const-string/jumbo v3, "alter table Message_Updates add column messageSize integer default(0);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1783
    const-string/jumbo v3, "alter table Message add column turncated integer default(0);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1784
    const-string/jumbo v3, "alter table Message_Deletes add column turncated integer default(0);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1785
    const-string/jumbo v3, "alter table Message_Updates add column turncated integer default(0);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1788
    :cond_42
    const/16 v3, 0x7b

    move/from16 v0, p2

    if-le v0, v3, :cond_43

    const/16 v3, 0x85

    move/from16 v0, p2

    if-ge v0, v3, :cond_43

    if-nez v22, :cond_43

    .line 1789
    const-string/jumbo v3, "Message"

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/kingsoft/email/provider/DBHelper;->updateRawSubjectContent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V

    .line 1793
    :cond_43
    const/16 v3, 0x86

    move/from16 v0, p2

    if-ge v0, v3, :cond_44

    .line 1794
    const-string/jumbo v3, "alter table Message add column flagCalcBody integer default(0);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1797
    const-string/jumbo v3, "alter table Message_Deletes add column flagCalcBody integer default(0);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1800
    const-string/jumbo v3, "alter table Message_Updates add column flagCalcBody integer default(0);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1807
    :cond_44
    const/16 v3, 0x87

    move/from16 v0, p2

    if-ge v0, v3, :cond_1

    .line 1808
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/provider/DBHelper;->updateSyncFrequency(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_1

    .line 1081
    .end local v22    # "hasAddRawSubject":Z
    :catch_2
    move-exception v19

    .line 1083
    .local v19, "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    const-string/jumbo v4, "Exception upgrading EmailProvider.db from v5 to v6"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 1097
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_3
    move-exception v19

    .line 1099
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 7 to 8 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_3

    .line 1109
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_4
    move-exception v19

    .line 1111
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 8 to 9 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_4

    .line 1123
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_5
    move-exception v19

    .line 1125
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 9 to 10 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_5

    .line 1135
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_6
    move-exception v19

    .line 1137
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 10 to 11 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_6

    .line 1145
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_7
    move-exception v19

    .line 1147
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 11 to 12 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_7

    .line 1156
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_8
    move-exception v19

    .line 1158
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 12 to 13 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_8

    .line 1166
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_9
    move-exception v19

    .line 1168
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 13 to 14 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_9

    .line 1177
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_a
    move-exception v19

    .line 1179
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 14 to 15 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_a

    .line 1192
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_b
    move-exception v19

    .line 1194
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 15 to 16 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_b

    .line 1201
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_c
    move-exception v19

    .line 1203
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 16 to 17 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_c

    .line 1217
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_d
    move-exception v19

    .line 1219
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 18 to 19 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_d

    .line 1248
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_e
    move-exception v19

    .line 1250
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 19 to 20 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_e

    .line 1277
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_f
    move-exception v19

    .line 1279
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 26 to 27 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_f

    .line 1288
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_10
    move-exception v19

    .line 1290
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 28 to 29 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_10

    .line 1302
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_11
    move-exception v19

    .line 1304
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 30 to 31 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_11

    .line 1317
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_12
    move-exception v19

    .line 1319
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 31 to 32 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_12

    .line 1335
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_13
    move-exception v19

    .line 1337
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 32 to 33 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_13

    .line 1344
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_14
    move-exception v19

    .line 1346
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 33 to 34 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_14

    .line 1359
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_15
    move-exception v19

    .line 1361
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 34 to 35 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_15

    .line 1377
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_16
    move-exception v19

    .line 1379
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 35 to 36 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_16

    .line 1386
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_17
    move-exception v19

    .line 1388
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 37 to 38 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_17

    .line 1397
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_18
    move-exception v19

    .line 1399
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception upgrading EmailProvider.db from 38 to 39 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_18

    .line 1419
    .end local v19    # "e":Landroid/database/SQLException;
    .restart local v15    # "c":Landroid/database/Cursor;
    .restart local v26    # "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_45
    :try_start_24
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1423
    :cond_46
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1424
    .local v12, "accountIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-string/jumbo v4, "Account"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Landroid/database/SQLException; {:try_start_24 .. :try_end_24} :catch_0

    move-result-object v15

    .line 1427
    if-eqz v15, :cond_48

    .line 1429
    :goto_24
    :try_start_25
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1430
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    goto :goto_24

    .line 1433
    :catchall_1
    move-exception v3

    :try_start_26
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_47
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1437
    :cond_48
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 1438
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :cond_49
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    .line 1439
    .local v25, "id":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".db_att"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 1440
    .local v18, "directory":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1441
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v21

    .line 1442
    .local v21, "files":[Ljava/io/File;
    if-eqz v21, :cond_49

    .line 1445
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_25
    move-object/from16 v0, v21

    array-length v3, v0

    move/from16 v0, v23

    if-ge v0, v3, :cond_49

    .line 1446
    aget-object v20, v21, v23

    .line 1447
    .local v20, "file":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 1448
    const-string/jumbo v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete attachment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1449
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z
    :try_end_26
    .catch Landroid/database/SQLException; {:try_start_26 .. :try_end_26} :catch_0

    .line 1445
    :cond_4a
    add-int/lit8 v23, v23, 0x1

    goto :goto_25

    .line 1464
    .end local v12    # "accountIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v15    # "c":Landroid/database/Cursor;
    .end local v18    # "directory":Ljava/io/File;
    .end local v20    # "file":Ljava/io/File;
    .end local v21    # "files":[Ljava/io/File;
    .end local v23    # "i":I
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "id":Ljava/lang/Long;
    .end local v26    # "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_19
    move-exception v19

    .line 1466
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    const-string/jumbo v4, "Exception upgrading EmailProvider.db from v10x to v103"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1a

    .line 1473
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_1a
    move-exception v19

    .line 1475
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    const-string/jumbo v4, "Exception upgrading EmailProvider.db from v103 to v104"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1b

    .line 1484
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_1b
    move-exception v19

    .line 1486
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    const-string/jumbo v4, "Exception upgrading EmailProvider.db from v104 to v105"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1c

    .line 1493
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_1c
    move-exception v19

    .line 1495
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    const-string/jumbo v4, "Exception upgrading EmailProvider.db from v105 to v106"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1d

    .line 1506
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_1d
    move-exception v19

    .line 1508
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    const-string/jumbo v4, "Exception upgrading EmailProvider.db from v106 to v107"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1e

    .line 1515
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_1e
    move-exception v19

    .line 1517
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    const-string/jumbo v4, "Exception upgrading EmailProvider.db from v107 to v108"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1f

    .line 1572
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_1f
    move-exception v19

    .line 1574
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    const-string/jumbo v4, "Exception upgrading EmailProvider.db from v113 to v114"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_20

    .line 1585
    .end local v19    # "e":Landroid/database/SQLException;
    :catch_20
    move-exception v19

    .line 1587
    .restart local v19    # "e":Landroid/database/SQLException;
    const-string/jumbo v3, "EmailProvider"

    const-string/jumbo v4, "Exception upgrading EmailProvider.db from v113 to v114"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_21

    .line 1773
    .end local v19    # "e":Landroid/database/SQLException;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    .restart local v22    # "hasAddRawSubject":Z
    :cond_4b
    if-eqz v16, :cond_41

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_41

    .line 1774
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_23

    .line 1773
    :catchall_2
    move-exception v3

    if-eqz v16, :cond_4c

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4c

    .line 1774
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_4c
    throw v3
.end method
