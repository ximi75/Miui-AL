.class Lcom/kingsoft/mail/widget/BaseWidgetProvider$BulkUpdateAsyncTask;
.super Landroid/os/AsyncTask;
.source "BaseWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/widget/BaseWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BulkUpdateAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppWidgetIds:[I

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/kingsoft/mail/widget/BaseWidgetProvider;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/widget/BaseWidgetProvider;Landroid/content/Context;[I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 208
    iput-object p1, p0, Lcom/kingsoft/mail/widget/BaseWidgetProvider$BulkUpdateAsyncTask;->this$0:Lcom/kingsoft/mail/widget/BaseWidgetProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 209
    iput-object p2, p0, Lcom/kingsoft/mail/widget/BaseWidgetProvider$BulkUpdateAsyncTask;->mContext:Landroid/content/Context;

    .line 210
    iput-object p3, p0, Lcom/kingsoft/mail/widget/BaseWidgetProvider$BulkUpdateAsyncTask;->mAppWidgetIds:[I

    .line 211
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 204
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/widget/BaseWidgetProvider$BulkUpdateAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 215
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/widget/BaseWidgetProvider$BulkUpdateAsyncTask;->mAppWidgetIds:[I

    array-length v1, v1

    move/from16 v0, v16

    if-ge v0, v1, :cond_9

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/widget/BaseWidgetProvider$BulkUpdateAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/widget/BaseWidgetProvider$BulkUpdateAsyncTask;->mAppWidgetIds:[I

    aget v3, v3, v16

    invoke-virtual {v1, v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->getWidgetConfiguration(I)Ljava/lang/String;

    move-result-object v12

    .line 219
    .local v12, "accountFolder":Ljava/lang/String;
    const/4 v13, 0x0

    .line 220
    .local v13, "accountUri":Ljava/lang/String;
    const/4 v2, 0x0

    .line 221
    .local v2, "folderUri":Landroid/net/Uri;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    const-string/jumbo v1, " "

    invoke-static {v12, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 224
    .local v17, "parsedInfo":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v1, v0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 225
    const/4 v1, 0x0

    aget-object v13, v17, v1

    .line 226
    const/4 v1, 0x1

    aget-object v1, v17, v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 237
    .end local v17    # "parsedInfo":[Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v11, 0x0

    .line 238
    .local v11, "account":Lcom/kingsoft/mail/providers/Account;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/widget/BaseWidgetProvider$BulkUpdateAsyncTask;->this$0:Lcom/kingsoft/mail/widget/BaseWidgetProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/widget/BaseWidgetProvider$BulkUpdateAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v13}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->getAccountObject(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v11

    .line 241
    :cond_1
    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v11, :cond_2

    .line 242
    iget-object v1, v11, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v2, v1, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    .line 245
    :cond_2
    const/4 v14, 0x0

    .line 247
    .local v14, "folder":Lcom/kingsoft/mail/providers/Folder;
    if-eqz v2, :cond_4

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/widget/BaseWidgetProvider$BulkUpdateAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 252
    .local v15, "folderCursor":Landroid/database/Cursor;
    if-eqz v15, :cond_4

    .line 254
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 255
    new-instance v14, Lcom/kingsoft/mail/providers/Folder;

    .end local v14    # "folder":Lcom/kingsoft/mail/providers/Folder;
    invoke-direct {v14, v15}, Lcom/kingsoft/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .restart local v14    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 263
    .end local v15    # "folderCursor":Landroid/database/Cursor;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/widget/BaseWidgetProvider$BulkUpdateAsyncTask;->this$0:Lcom/kingsoft/mail/widget/BaseWidgetProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/widget/BaseWidgetProvider$BulkUpdateAsyncTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/widget/BaseWidgetProvider$BulkUpdateAsyncTask;->mAppWidgetIds:[I

    aget v5, v1, v16

    if-nez v14, :cond_6

    const/4 v7, 0x1

    :goto_2
    if-nez v14, :cond_7

    const/4 v9, 0x0

    :goto_3
    if-nez v14, :cond_8

    const/4 v10, 0x0

    :goto_4
    move-object v6, v11

    move-object v8, v2

    invoke-virtual/range {v3 .. v10}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->updateWidgetInternal(Landroid/content/Context;ILcom/kingsoft/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 215
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 228
    .end local v11    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v14    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .restart local v17    # "parsedInfo":[Ljava/lang/String;
    :cond_5
    move-object v13, v12

    .line 229
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_1

    .line 258
    .end local v17    # "parsedInfo":[Ljava/lang/String;
    .restart local v11    # "account":Lcom/kingsoft/mail/providers/Account;
    .restart local v15    # "folderCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v1

    .line 263
    .end local v15    # "folderCursor":Landroid/database/Cursor;
    .restart local v14    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_6
    iget v7, v14, Lcom/kingsoft/mail/providers/Folder;->type:I

    goto :goto_2

    :cond_7
    iget-object v9, v14, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    goto :goto_3

    :cond_8
    iget-object v10, v14, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    goto :goto_4

    .line 269
    .end local v2    # "folderUri":Landroid/net/Uri;
    .end local v11    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v12    # "accountFolder":Ljava/lang/String;
    .end local v13    # "accountUri":Ljava/lang/String;
    .end local v14    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_9
    const/4 v1, 0x0

    return-object v1
.end method
