.class public Lcom/kingsoft/mail/widget/WidgetService;
.super Landroid/widget/RemoteViewsService;
.source "WidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/widget/WidgetService$MailFactory;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sWidgetLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/widget/WidgetService;->sWidgetLock:Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/widget/WidgetService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 209
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/kingsoft/mail/widget/WidgetService;->sWidgetLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/kingsoft/mail/widget/WidgetService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static configureValidAccountWidget(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/kingsoft/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "appWidgetId"    # I
    .param p3, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p4, "folderType"    # I
    .param p5, "folderUri"    # Landroid/net/Uri;
    .param p6, "folderConversationListUri"    # Landroid/net/Uri;
    .param p7, "folderDisplayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/RemoteViews;",
            "I",
            "Lcom/kingsoft/mail/providers/Account;",
            "I",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p8, "widgetService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const v0, 0x7f0c024a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 92
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/widget/WidgetService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    const-string/jumbo v2, "Empty folder or account name.  account: %s, folder: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p3, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p7, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 97
    :cond_1
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 98
    const v0, 0x7f0c024a

    invoke-virtual {p1, v0, p7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 100
    :cond_2
    const v0, 0x7f0c024c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 102
    iget-object v0, p3, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 103
    const v0, 0x7f0c024c

    iget-object v1, p3, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 106
    :cond_3
    const v0, 0x7f0c024b

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 107
    const v0, 0x7f0c024d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 108
    const v0, 0x7f0c024e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 109
    const v0, 0x7f0c024f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 111
    const v0, 0x7f0c0250

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 112
    const v0, 0x7f0c024e

    const v1, 0x7f0c024f

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 114
    invoke-static/range {p0 .. p8}, Lcom/kingsoft/mail/widget/WidgetService;->configureValidWidgetIntents(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/kingsoft/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Class;)V

    .line 116
    return-void
.end method

.method public static configureValidWidgetIntents(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/kingsoft/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "appWidgetId"    # I
    .param p3, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p4, "folderType"    # I
    .param p5, "folderUri"    # Landroid/net/Uri;
    .param p6, "folderConversationListUri"    # Landroid/net/Uri;
    .param p7, "folderDisplayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/RemoteViews;",
            "I",
            "Lcom/kingsoft/mail/providers/Account;",
            "I",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p8, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const v9, 0x7f0c0250

    const/16 v10, 0x8

    invoke-virtual {p1, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 126
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p8

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "appWidgetId"

    invoke-virtual {v5, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string/jumbo v9, "account"

    invoke-virtual {p3}, Lcom/kingsoft/mail/providers/Account;->serialize()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string/jumbo v9, "folder-type"

    move/from16 v0, p4

    invoke-virtual {v5, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string/jumbo v9, "folder-uri"

    move-object/from16 v0, p5

    invoke-virtual {v5, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    const-string/jumbo v9, "folder-conversation-list-uri"

    move-object/from16 v0, p6

    invoke-virtual {v5, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 133
    const-string/jumbo v9, "folder-display-name"

    move-object/from16 v0, p7

    invoke-virtual {v5, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 135
    const v9, 0x7f0c024e

    invoke-virtual {p1, v9, v5}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 137
    move-object/from16 v0, p5

    invoke-static {p0, v0, p3}, Lcom/kingsoft/mail/utils/Utils;->createViewFolderIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/kingsoft/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v6

    .line 138
    .local v6, "mailIntent":Landroid/content/Intent;
    const/4 v9, 0x0

    const/high16 v10, 0x8000000

    invoke-static {p0, v9, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 140
    .local v1, "clickIntent":Landroid/app/PendingIntent;
    const v9, 0x7f0c0249

    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 143
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v2, "composeIntent":Landroid/content/Intent;
    const-string/jumbo v9, "android.intent.action.SEND"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string/jumbo v9, "account"

    invoke-virtual {p3}, Lcom/kingsoft/mail/providers/Account;->serialize()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v9, p3, Lcom/kingsoft/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 147
    const-string/jumbo v9, "fromemail"

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    iget-object v9, p3, Lcom/kingsoft/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    if-eqz v9, :cond_0

    .line 149
    const-string/jumbo v9, "composeUri"

    iget-object v10, p3, Lcom/kingsoft/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 154
    :cond_0
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v7

    .line 155
    .local v7, "taskStackBuilder":Landroid/support/v4/app/TaskStackBuilder;
    invoke-virtual {v7, v6}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v9

    const/4 v10, 0x0

    const/high16 v11, 0x8000000

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v1

    .line 158
    const v9, 0x7f0c024d

    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 163
    const/4 v9, 0x4

    move/from16 v0, p4

    invoke-static {v0, v9}, Lcom/kingsoft/mail/providers/Folder;->isType(II)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 164
    new-instance v3, Landroid/content/Intent;

    const-class v9, Lcom/kingsoft/mail/compose/ComposeActivity;

    invoke-direct {v3, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v3, "composeIntent2":Landroid/content/Intent;
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v8

    .line 166
    .local v8, "taskStackBuilder2":Landroid/support/v4/app/TaskStackBuilder;
    invoke-virtual {v8, v6}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v9

    const/4 v10, 0x0

    const/high16 v11, 0x8000000

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v1

    .line 175
    .end local v3    # "composeIntent2":Landroid/content/Intent;
    .end local v8    # "taskStackBuilder2":Landroid/support/v4/app/TaskStackBuilder;
    :goto_0
    const v9, 0x7f0c024e

    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 176
    return-void

    .line 171
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.VIEW"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v4, "conversationIntent":Landroid/content/Intent;
    const/4 v9, 0x0

    const/high16 v10, 0x8000000

    invoke-static {p0, v9, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0
.end method

.method public static saveWidgetInformation(Landroid/content/Context;ILcom/kingsoft/mail/providers/Account;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p3, "folderUri"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingsoft/mail/preferences/MailPrefs;->configureWidget(ILcom/kingsoft/mail/providers/Account;Ljava/lang/String;)V

    .line 184
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
    .param p8, "folderName"    # Ljava/lang/String;

    .prologue
    .line 76
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

    .line 78
    return-void
.end method

.method protected isAccountValid(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 195
    if-eqz p2, :cond_1

    .line 196
    invoke-static {p1}, Lcom/kingsoft/mail/utils/AccountUtils;->getSyncingAccounts(Landroid/content/Context;)[Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    .line 197
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

    .line 198
    .local v2, "existing":Lcom/kingsoft/mail/providers/Account;
    if-eqz v2, :cond_0

    iget-object v5, p2, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v6, v2, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    const/4 v5, 0x1

    .line 203
    .end local v0    # "accounts":[Lcom/kingsoft/mail/providers/Account;
    .end local v1    # "arr$":[Lcom/kingsoft/mail/providers/Account;
    .end local v2    # "existing":Lcom/kingsoft/mail/providers/Account;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    return v5

    .line 197
    .restart local v0    # "accounts":[Lcom/kingsoft/mail/providers/Account;
    .restart local v1    # "arr$":[Lcom/kingsoft/mail/providers/Account;
    .restart local v2    # "existing":Lcom/kingsoft/mail/providers/Account;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "accounts":[Lcom/kingsoft/mail/providers/Account;
    .end local v1    # "arr$":[Lcom/kingsoft/mail/providers/Account;
    .end local v2    # "existing":Lcom/kingsoft/mail/providers/Account;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isWidgetConfigured(Landroid/content/Context;ILcom/kingsoft/mail/providers/Account;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 190
    invoke-virtual {p0, p1, p3}, Lcom/kingsoft/mail/widget/WidgetService;->isAccountValid(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kingsoft/mail/preferences/MailPrefs;->isWidgetConfigured(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    new-instance v0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;

    invoke-virtual {p0}, Lcom/kingsoft/mail/widget/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/kingsoft/mail/widget/WidgetService;)V

    return-object v0
.end method
