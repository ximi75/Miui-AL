.class public Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/DBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BodyDatabaseHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper$UpdateForChatRunnable;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 883
    const/4 v0, 0x0

    const/16 v1, 0x65

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 884
    iput-object p1, p0, Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;->mContext:Landroid/content/Context;

    .line 885
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 889
    const-string/jumbo v0, "EmailProvider"

    const-string/jumbo v1, "Creating EmailProviderBody database"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 890
    invoke-static {p1}, Lcom/kingsoft/email/provider/DBHelper;->createBodyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 891
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 978
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 895
    invoke-static {p1, p2, p3}, Lcom/kingsoft/email/provider/DBHelper;->upgradeBodyTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 896
    const/16 v0, 0x65

    if-ge p2, v0, :cond_0

    .line 897
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper$UpdateForChatRunnable;

    invoke-direct {v1, p0, p1}, Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper$UpdateForChatRunnable;-><init>(Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 899
    :cond_0
    return-void
.end method

.method public updateForChat(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 25
    .param p1, "bodyDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 918
    const/4 v12, 0x0

    .line 919
    .local v12, "c":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 922
    .local v11, "bodyc":Landroid/database/Cursor;
    :try_start_0
    new-instance v13, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "EmailProvider.db"

    invoke-direct {v13, v3, v4}, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 923
    .local v13, "helper":Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;
    invoke-virtual {v13}, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 924
    .local v2, "emailProDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v3, "Message"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "flagLoaded"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "accountKey"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "fromList"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "subject"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 925
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    .local v24, "values":Landroid/content/ContentValues;
    if-nez v12, :cond_1

    .line 970
    if-eqz v12, :cond_0

    .line 971
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 931
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 934
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 935
    .local v19, "messagekey":I
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentValues;->clear()V

    .line 936
    const-string/jumbo v4, "Body"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "htmlContent"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string/jumbo v6, "textContent"

    aput-object v6, v5, v3

    const-string/jumbo v6, "messageKey=?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 937
    if-eqz v11, :cond_1

    .line 940
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 941
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 942
    .local v18, "mText":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 943
    .local v17, "mHtml":Ljava/lang/String;
    const/4 v15, 0x0

    .line 944
    .local v15, "info":Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 945
    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 946
    .local v14, "htmlBuffer":Ljava/lang/StringBuffer;
    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v14, v5}, Lcom/kingsoft/emailcommon/utility/SnippetUtility;->makeSnippetFromHtmlText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Landroid/content/Context;)Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;

    move-result-object v15

    .line 947
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    .line 953
    .end local v14    # "htmlBuffer":Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {v15}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->getSnippet()Ljava/lang/String;

    move-result-object v23

    .line 954
    .local v23, "snippet":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->getNoQuoteText()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    .line 955
    .local v22, "shotbody":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->getQuoteIdx()J

    move-result-wide v20

    .line 956
    .local v20, "quoteIndex":J
    invoke-virtual {v15}, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->getBodyCalc()Z

    move-result v16

    .line 957
    .local v16, "isBodyCalc":Z
    const-string/jumbo v3, "htmlContent"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const-string/jumbo v3, "shortBody"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const-string/jumbo v3, "quoteIndex"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 960
    const-string/jumbo v3, "Body"

    const-string/jumbo v4, "messageKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 961
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentValues;->clear()V

    .line 962
    const-string/jumbo v4, "flagCalcBody"

    if-eqz v16, :cond_6

    const/4 v3, 0x0

    :goto_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const-string/jumbo v3, "snippet"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 966
    .end local v15    # "info":Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
    .end local v16    # "isBodyCalc":Z
    .end local v17    # "mHtml":Ljava/lang/String;
    .end local v18    # "mText":Ljava/lang/String;
    .end local v20    # "quoteIndex":J
    .end local v22    # "shotbody":Ljava/lang/String;
    .end local v23    # "snippet":Ljava/lang/String;
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 970
    .end local v2    # "emailProDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v13    # "helper":Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;
    .end local v19    # "messagekey":I
    .end local v24    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    if-eqz v12, :cond_3

    .line 971
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3

    .line 948
    .restart local v2    # "emailProDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v13    # "helper":Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;
    .restart local v15    # "info":Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
    .restart local v17    # "mHtml":Ljava/lang/String;
    .restart local v18    # "mText":Ljava/lang/String;
    .restart local v19    # "messagekey":I
    .restart local v24    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_2
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 949
    new-instance v3, Ljava/lang/StringBuffer;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/kingsoft/emailcommon/utility/SnippetUtility;->makeSnippetFromText(Ljava/lang/StringBuffer;)Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;

    move-result-object v15

    goto/16 :goto_2

    .line 951
    :cond_5
    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/kingsoft/emailcommon/utility/SnippetUtility;->makeSnippetFromText(Ljava/lang/StringBuffer;)Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;

    move-result-object v15

    goto/16 :goto_2

    .line 962
    .restart local v16    # "isBodyCalc":Z
    .restart local v20    # "quoteIndex":J
    .restart local v22    # "shotbody":Ljava/lang/String;
    .restart local v23    # "snippet":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x1

    goto :goto_3

    .line 968
    .end local v15    # "info":Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
    .end local v16    # "isBodyCalc":Z
    .end local v17    # "mHtml":Ljava/lang/String;
    .end local v18    # "mText":Ljava/lang/String;
    .end local v19    # "messagekey":I
    .end local v20    # "quoteIndex":J
    .end local v22    # "shotbody":Ljava/lang/String;
    .end local v23    # "snippet":Ljava/lang/String;
    :cond_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 970
    if-eqz v12, :cond_0

    .line 971
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
