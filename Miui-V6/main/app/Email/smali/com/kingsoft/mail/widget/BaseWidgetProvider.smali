.class public abstract Lcom/kingsoft/mail/widget/BaseWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "BaseWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/widget/BaseWidgetProvider$BulkUpdateAsyncTask;
    }
.end annotation


# static fields
.field public static final ACCOUNT_FOLDER_PREFERENCE_SEPARATOR:Ljava/lang/String; = " "

.field protected static final ACTION_UPDATE_WIDGET:Ljava/lang/String; = "com.android.mail.ACTION_UPDATE_WIDGET"

.field protected static final ACTION_VALIDATE_ALL_WIDGETS:Ljava/lang/String; = "com.android.mail.ACTION_VALIDATE_ALL_WIDGETS"

.field public static final EXTRA_FOLDER_CONVERSATION_LIST_URI:Ljava/lang/String; = "folder-conversation-list-uri"

.field public static final EXTRA_FOLDER_DISPLAY_NAME:Ljava/lang/String; = "folder-display-name"

.field public static final EXTRA_FOLDER_TYPE:Ljava/lang/String; = "folder-type"

.field public static final EXTRA_FOLDER_URI:Ljava/lang/String; = "folder-uri"

.field public static final EXTRA_UPDATE_ALL_WIDGETS:Ljava/lang/String; = "update-all-widgets"

.field protected static final EXTRA_WIDGET_ID:Ljava/lang/String; = "widgetId"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final WIDGET_ACCOUNT_PREFIX:Ljava/lang/String; = "widget-account-"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 204
    return-void
.end method

.method public static getProviderName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const v0, 0x7f1003d6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetInfo(Landroid/content/Context;[I)[[Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "widgetIds"    # [I

    .prologue
    .line 107
    array-length v3, p1

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    .line 108
    .local v2, "widgetInfo":[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 111
    invoke-static {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v3

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/preferences/MailPrefs;->getWidgetConfiguration(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "accountFolder":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 115
    const-string/jumbo v3, " "

    invoke-static {v0, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 108
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "accountFolder":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private migrateAllLegacyWidgetInformation(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->getCurrentWidgetIds(Landroid/content/Context;)[I

    move-result-object v0

    .line 403
    .local v0, "currentWidgetIds":[I
    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->migrateLegacyWidgets(Landroid/content/Context;[I)V

    .line 404
    return-void
.end method

.method private migrateLegacyWidgets(Landroid/content/Context;[I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widgetIds"    # [I

    .prologue
    .line 407
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 410
    .local v3, "widgetId":I
    invoke-static {p1}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->isWidgetConfigured(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 411
    invoke-virtual {p0, p1, v3}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->migrateLegacyWidgetInformation(Landroid/content/Context;I)V

    .line 407
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    .end local v3    # "widgetId":I
    :cond_1
    return-void
.end method

.method public static updateWidget(Landroid/content/Context;ILcom/kingsoft/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p3, "folderType"    # I
    .param p4, "folderUri"    # Landroid/net/Uri;
    .param p5, "folderConversationListUri"    # Landroid/net/Uri;
    .param p6, "folderDisplayName"    # Ljava/lang/String;

    .prologue
    .line 300
    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    .line 301
    :cond_0
    sget-object v1, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Missing account or folder.  account: %s folder %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 316
    :goto_0
    return-void

    .line 305
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.mail.ACTION_UPDATE_WIDGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "updateWidgetIntent":Landroid/content/Intent;
    iget-object v1, p2, Lcom/kingsoft/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string/jumbo v1, "widgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    const-string/jumbo v1, "account"

    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Account;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string/jumbo v1, "folder-type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    const-string/jumbo v1, "folder-uri"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 312
    const-string/jumbo v1, "folder-conversation-list-uri"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 313
    const-string/jumbo v1, "folder-display-name"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private validateAllWidgetInformation(Landroid/content/Context;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 417
    invoke-virtual/range {p0 .. p1}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->getCurrentWidgetIds(Landroid/content/Context;)[I

    move-result-object v18

    .line 418
    .local v18, "widgetIds":[I
    move-object/from16 v13, v18

    .local v13, "arr$":[I
    array-length v0, v13

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    aget v4, v13, v15

    .line 419
    .local v4, "widgetId":I
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/kingsoft/mail/preferences/MailPrefs;->getWidgetConfiguration(I)Ljava/lang/String;

    move-result-object v11

    .line 420
    .local v11, "accountFolder":Ljava/lang/String;
    const/4 v12, 0x0

    .line 421
    .local v12, "accountUri":Ljava/lang/String;
    const/4 v14, 0x0

    .line 422
    .local v14, "folderUri":Landroid/net/Uri;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 423
    const-string/jumbo v2, " "

    invoke-static {v11, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 425
    .local v17, "parsedInfo":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 426
    const/4 v2, 0x0

    aget-object v12, v17, v2

    .line 427
    const/4 v2, 0x1

    aget-object v2, v17, v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 434
    .end local v17    # "parsedInfo":[Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v10, 0x0

    .line 435
    .local v10, "account":Lcom/kingsoft/mail/providers/Account;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 436
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->getAccountObject(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v10

    .line 440
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->isAccountValid(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->isFolderValid(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 441
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->updateWidgetInternal(Landroid/content/Context;ILcom/kingsoft/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 418
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 429
    .end local v10    # "account":Lcom/kingsoft/mail/providers/Account;
    .restart local v17    # "parsedInfo":[Ljava/lang/String;
    :cond_4
    move-object v12, v11

    .line 430
    sget-object v14, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_1

    .line 444
    .end local v4    # "widgetId":I
    .end local v11    # "accountFolder":Ljava/lang/String;
    .end local v12    # "accountUri":Ljava/lang/String;
    .end local v14    # "folderUri":Landroid/net/Uri;
    .end local v17    # "parsedInfo":[Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public static validateAllWidgets(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountMimeType"    # Ljava/lang/String;

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.mail.ACTION_VALIDATE_ALL_WIDGETS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "migrateAllWidgetsIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 322
    return-void
.end method


# virtual methods
.method protected configureValidAccountWidget(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/kingsoft/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p3, "appWidgetId"    # I
    .param p4, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p5, "folderType"    # I
    .param p6, "folderUri"    # Landroid/net/Uri;
    .param p7, "folderConversationListUri"    # Landroid/net/Uri;
    .param p8, "folderDisplayName"    # Ljava/lang/String;

    .prologue
    .line 396
    const-class v8, Lcom/kingsoft/mail/widget/WidgetService;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v8}, Lcom/kingsoft/mail/widget/WidgetService;->configureValidAccountWidget(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/kingsoft/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Class;)V

    .line 399
    return-void
.end method

.method protected getAccountObject(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/mail/providers/Account;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountUri"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 276
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 277
    .local v6, "account":Lcom/kingsoft/mail/providers/Account;
    const/4 v7, 0x0

    .line 279
    .local v7, "accountCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 281
    if-eqz v7, :cond_0

    .line 282
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    new-instance v6, Lcom/kingsoft/mail/providers/Account;

    .end local v6    # "account":Lcom/kingsoft/mail/providers/Account;
    invoke-direct {v6, v7}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    .restart local v6    # "account":Lcom/kingsoft/mail/providers/Account;
    :cond_0
    if-eqz v7, :cond_1

    .line 288
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_1
    return-object v6

    .line 287
    .end local v6    # "account":Lcom/kingsoft/mail/providers/Account;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_2

    .line 288
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method protected getCurrentWidgetIds(Landroid/content/Context;)[I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 92
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v3, Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->getProviderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    .local v3, "mailComponent":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 98
    :goto_0
    return-object v2

    .line 95
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/RuntimeException;
    const/4 v4, 0x0

    new-array v2, v4, [I

    .line 98
    .local v2, "intArray":[I
    goto :goto_0
.end method

.method protected isAccountValid(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 364
    if-eqz p2, :cond_1

    .line 365
    invoke-static {p1}, Lcom/kingsoft/mail/utils/AccountUtils;->getSyncingAccounts(Landroid/content/Context;)[Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    .line 366
    .local v0, "accounts":[Lcom/kingsoft/mail/providers/Account;
    move-object v1, v0

    .local v1, "arr$":[Lcom/kingsoft/mail/providers/Account;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 367
    .local v2, "existing":Lcom/kingsoft/mail/providers/Account;
    if-eqz v2, :cond_0

    iget-object v5, p2, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v6, v2, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 368
    const/4 v5, 0x1

    .line 372
    .end local v0    # "accounts":[Lcom/kingsoft/mail/providers/Account;
    .end local v1    # "arr$":[Lcom/kingsoft/mail/providers/Account;
    .end local v2    # "existing":Lcom/kingsoft/mail/providers/Account;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    return v5

    .line 366
    .restart local v0    # "accounts":[Lcom/kingsoft/mail/providers/Account;
    .restart local v1    # "arr$":[Lcom/kingsoft/mail/providers/Account;
    .restart local v2    # "existing":Lcom/kingsoft/mail/providers/Account;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "accounts":[Lcom/kingsoft/mail/providers/Account;
    .end local v1    # "arr$":[Lcom/kingsoft/mail/providers/Account;
    .end local v2    # "existing":Lcom/kingsoft/mail/providers/Account;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected isFolderValid(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folderUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 376
    if-eqz p2, :cond_1

    .line 377
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 380
    .local v6, "folderCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 382
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const/4 v0, 0x1

    .line 386
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 390
    .end local v6    # "folderCursor":Landroid/database/Cursor;
    :goto_0
    return v0

    .line 386
    .restart local v6    # "folderCursor":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 390
    .end local v6    # "folderCursor":Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 386
    .restart local v6    # "folderCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected abstract migrateLegacyWidgetInformation(Landroid/content/Context;I)V
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 76
    invoke-static {p1}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kingsoft/mail/preferences/MailPrefs;->clearWidgets([I)V

    .line 77
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->migrateAllLegacyWidgetInformation(Landroid/content/Context;)V

    .line 130
    invoke-super/range {p0 .. p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 131
    sget-object v1, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "BaseWidgetProvider.onReceive: %s"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p2, v22, v23

    move-object/from16 v0, v22

    invoke-static {v1, v2, v0}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 134
    .local v11, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.android.mail.ACTION_UPDATE_WIDGET"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    const-string/jumbo v1, "widgetId"

    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 136
    .local v3, "widgetId":I
    const-string/jumbo v1, "account"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/providers/Account;->newinstance(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v4

    .line 137
    .local v4, "account":Lcom/kingsoft/mail/providers/Account;
    const-string/jumbo v1, "folder-type"

    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 138
    .local v5, "folderType":I
    const-string/jumbo v1, "folder-uri"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 139
    .local v6, "folderUri":Landroid/net/Uri;
    const-string/jumbo v1, "folder-conversation-list-uri"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 141
    .local v7, "folderConversationListUri":Landroid/net/Uri;
    const-string/jumbo v1, "folder-display-name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, "folderDisplayName":Ljava/lang/String;
    const/4 v1, -0x1

    if-eq v3, v1, :cond_0

    if-eqz v4, :cond_0

    if-eqz v6, :cond_0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 144
    invoke-virtual/range {v1 .. v8}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->updateWidgetInternal(Landroid/content/Context;ILcom/kingsoft/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 189
    .end local v3    # "widgetId":I
    .end local v4    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v5    # "folderType":I
    .end local v6    # "folderUri":Landroid/net/Uri;
    .end local v7    # "folderConversationListUri":Landroid/net/Uri;
    .end local v8    # "folderDisplayName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const-string/jumbo v1, "com.android.mail.ACTION_VALIDATE_ALL_WIDGETS"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->validateAllWidgetInformation(Landroid/content/Context;)V

    goto :goto_0

    .line 149
    :cond_2
    const-string/jumbo v1, "com.android.mail.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 152
    .local v13, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "accountUri"

    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 153
    .local v10, "accountUri":Landroid/net/Uri;
    const-string/jumbo v1, "folderUri"

    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 154
    .restart local v6    # "folderUri":Landroid/net/Uri;
    const-string/jumbo v1, "update-all-widgets"

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 156
    .local v18, "updateAllWidgets":Z
    if-nez v10, :cond_3

    invoke-static {v6}, Lcom/kingsoft/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v18, :cond_0

    .line 159
    :cond_3
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v21

    .line 160
    .local v21, "widgetsToUpdate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->getCurrentWidgetIds(Landroid/content/Context;)[I

    move-result-object v12

    .local v12, "arr$":[I
    array-length v0, v12

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_7

    aget v15, v12, v14

    .line 163
    .local v15, "id":I
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/kingsoft/mail/preferences/MailPrefs;->getWidgetConfiguration(I)Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, "accountFolder":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 166
    const-string/jumbo v1, " "

    invoke-static {v9, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 168
    .local v17, "parsedInfo":[Ljava/lang/String;
    move/from16 v19, v18

    .line 169
    .local v19, "updateThis":Z
    if-nez v19, :cond_4

    .line 170
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v17, v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 172
    const/16 v19, 0x1

    .line 178
    :cond_4
    :goto_2
    if-eqz v19, :cond_5

    .line 179
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v17    # "parsedInfo":[Ljava/lang/String;
    .end local v19    # "updateThis":Z
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 173
    .restart local v17    # "parsedInfo":[Ljava/lang/String;
    .restart local v19    # "updateThis":Z
    :cond_6
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v17, v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 175
    const/16 v19, 0x1

    goto :goto_2

    .line 183
    .end local v9    # "accountFolder":Ljava/lang/String;
    .end local v15    # "id":I
    .end local v17    # "parsedInfo":[Ljava/lang/String;
    .end local v19    # "updateThis":Z
    :cond_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 184
    invoke-static/range {v21 .. v21}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v20

    .line 185
    .local v20, "widgets":[I
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    const v2, 0x7f0c024e

    move-object/from16 v0, v20

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 196
    invoke-direct {p0, p1, p3}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->migrateLegacyWidgets(Landroid/content/Context;[I)V

    .line 198
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 201
    new-instance v1, Lcom/kingsoft/mail/widget/BaseWidgetProvider$BulkUpdateAsyncTask;

    invoke-direct {v1, p0, p1, p3}, Lcom/kingsoft/mail/widget/BaseWidgetProvider$BulkUpdateAsyncTask;-><init>(Lcom/kingsoft/mail/widget/BaseWidgetProvider;Landroid/content/Context;[I)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/widget/BaseWidgetProvider$BulkUpdateAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 202
    return-void
.end method

.method protected updateWidgetInternal(Landroid/content/Context;ILcom/kingsoft/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p4, "folderType"    # I
    .param p5, "folderUri"    # Landroid/net/Uri;
    .param p6, "folderConversationListUri"    # Landroid/net/Uri;
    .param p7, "folderDisplayName"    # Ljava/lang/String;

    .prologue
    .line 327
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0400b9

    invoke-direct {v2, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 329
    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p0, p1, p3}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->isAccountValid(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)Z

    move-result v11

    .line 330
    .local v11, "isAccountValid":Z
    if-eqz v11, :cond_0

    invoke-static/range {p5 .. p5}, Lcom/kingsoft/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    :cond_0
    const v0, 0x7f0c024a

    const/16 v1, 0x8

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 333
    const v0, 0x7f0c024c

    const/16 v1, 0x8

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 334
    const v0, 0x7f0c024b

    const/16 v1, 0x8

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 335
    const v0, 0x7f0c024d

    const/16 v1, 0x8

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 336
    const v0, 0x7f0c024e

    const/16 v1, 0x8

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 337
    const v0, 0x7f0c024f

    const/16 v1, 0x8

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 340
    const v0, 0x7f0c0250

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 342
    const v0, 0x7f0c024f

    const v1, 0x7f100210

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 345
    new-instance v10, Landroid/content/Intent;

    const-class v0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;

    invoke-direct {v10, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    .local v10, "configureIntent":Landroid/content/Intent;
    const-string/jumbo v0, "appWidgetId"

    invoke-virtual {v10, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 348
    const/high16 v0, 0x40000000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 349
    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p1, v0, v10, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 351
    .local v9, "clickIntent":Landroid/app/PendingIntent;
    const v0, 0x7f0c0250

    invoke-virtual {v2, v0, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 352
    const v0, 0x7f0c0249

    invoke-virtual {v2, v0, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 360
    .end local v9    # "clickIntent":Landroid/app/PendingIntent;
    .end local v10    # "configureIntent":Landroid/content/Intent;
    :goto_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p2, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 361
    return-void

    .line 355
    :cond_1
    if-nez p7, :cond_2

    const-string/jumbo v8, " "

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->configureValidAccountWidget(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/kingsoft/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v8, p7

    goto :goto_1
.end method
