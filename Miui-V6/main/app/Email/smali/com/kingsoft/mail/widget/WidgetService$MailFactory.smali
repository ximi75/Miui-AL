.class public Lcom/kingsoft/mail/widget/WidgetService$MailFactory;
.super Ljava/lang/Object;
.source "WidgetService.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/widget/WidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MailFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/widget/WidgetService$MailFactory$FolderUpdateHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/RemoteViewsService$RemoteViewsFactory;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNT_LOADER_ID:I = 0x2

.field private static final CONVERSATION_CURSOR_LOADER_ID:I = 0x1

.field private static final FOLDER_LOADER_ID:I = 0x0

.field private static final MAX_CONVERSATIONS_COUNT:I = 0x19

.field private static final MAX_SENDERS_LENGTH:I = 0x19


# instance fields
.field private final mAccount:Lcom/kingsoft/mail/providers/Account;

.field private mAccountLoader:Landroid/content/CursorLoader;

.field private final mAppWidgetId:I

.field private final mContext:Landroid/content/Context;

.field private mConversationCursor:Landroid/database/Cursor;

.field private mConversationCursorLoader:Landroid/content/CursorLoader;

.field private mElidedPaddingToken:Ljava/lang/String;

.field private final mFolderConversationListUri:Landroid/net/Uri;

.field private mFolderCount:I

.field private final mFolderDisplayName:Ljava/lang/String;

.field private mFolderInformationShown:Z

.field private mFolderLoader:Landroid/content/CursorLoader;

.field private final mFolderType:I

.field private mFolderUpdateHandler:Lcom/kingsoft/mail/widget/WidgetService$MailFactory$FolderUpdateHandler;

.field private final mFolderUri:Landroid/net/Uri;

.field private mReadStyle:Landroid/text/style/TextAppearanceSpan;

.field private mSendersSplitToken:Ljava/lang/String;

.field private final mService:Lcom/kingsoft/mail/widget/WidgetService;

.field private mShouldShowViewMore:Z

.field private mUnreadStyle:Landroid/text/style/TextAppearanceSpan;

.field private final mWidgetConversationListItemViewBuilder:Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/kingsoft/mail/widget/WidgetService;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "service"    # Lcom/kingsoft/mail/widget/WidgetService;

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-boolean v1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderInformationShown:Z

    .line 241
    iput-object p1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    .line 242
    const-string/jumbo v0, "appWidgetId"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAppWidgetId:I

    .line 244
    const-string/jumbo v0, "account"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Account;->newinstance(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 245
    const-string/jumbo v0, "folder-type"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderType:I

    .line 246
    const-string/jumbo v0, "folder-display-name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderDisplayName:Ljava/lang/String;

    .line 248
    const-string/jumbo v0, "folder-uri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 249
    .local v10, "folderUri":Landroid/net/Uri;
    const-string/jumbo v0, "folder-conversation-list-uri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 251
    .local v8, "folderConversationListUri":Landroid/net/Uri;
    if-eqz v10, :cond_0

    if-eqz v8, :cond_0

    .line 252
    iput-object v10, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderUri:Landroid/net/Uri;

    .line 253
    iput-object v8, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderConversationListUri:Landroid/net/Uri;

    .line 271
    :goto_0
    new-instance v0, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;

    invoke-direct {v0, p1}, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mWidgetConversationListItemViewBuilder:Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;

    .line 273
    iput-object p3, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mService:Lcom/kingsoft/mail/widget/WidgetService;

    .line 274
    return-void

    .line 256
    :cond_0
    const-string/jumbo v0, "folder"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 258
    .local v9, "folderString":Ljava/lang/String;
    invoke-static {v9}, Lcom/kingsoft/mail/providers/Folder;->fromString(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v7

    .line 259
    .local v7, "folder":Lcom/kingsoft/mail/providers/Folder;
    if-eqz v7, :cond_1

    .line 260
    iget-object v0, v7, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v0, v0, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderUri:Landroid/net/Uri;

    .line 261
    iget-object v0, v7, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderConversationListUri:Landroid/net/Uri;

    goto :goto_0

    .line 263
    :cond_1
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderUri:Landroid/net/Uri;

    .line 264
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderConversationListUri:Landroid/net/Uri;

    .line 266
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAppWidgetId:I

    iget-object v2, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget v3, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderType:I

    iget-object v4, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderConversationListUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderDisplayName:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->updateWidget(Landroid/content/Context;ILcom/kingsoft/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/widget/WidgetService$MailFactory;)Landroid/content/CursorLoader;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/widget/WidgetService$MailFactory;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method private static copyStyles([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;
    .locals 4
    .param p0, "spans"    # [Landroid/text/style/CharacterStyle;
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 514
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 515
    .local v0, "s":Landroid/text/SpannableString;
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    .line 516
    aget-object v1, p0, v3

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 518
    :cond_0
    return-object v0
.end method

.method private ellipsizeStyledSenders(Ljava/util/ArrayList;)Landroid/text/SpannableStringBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/SpannableString;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "styledSenders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/SpannableString;>;"
    const/4 v8, 0x0

    .line 489
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 490
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x0

    .line 491
    .local v2, "prevSender":Landroid/text/SpannableString;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/SpannableString;

    .line 492
    .local v3, "sender":Landroid/text/SpannableString;
    if-nez v3, :cond_0

    .line 493
    # getter for: Lcom/kingsoft/mail/widget/WidgetService;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/widget/WidgetService;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "null sender while iterating over styledSenders"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 496
    :cond_0
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    const-class v6, Landroid/text/style/CharacterStyle;

    invoke-virtual {v3, v8, v5, v6}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/CharacterStyle;

    .line 497
    .local v4, "spans":[Landroid/text/style/CharacterStyle;
    sget-object v5, Lcom/kingsoft/mail/browse/SendersView;->sElidedString:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 498
    move-object v2, v3

    .line 499
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mElidedPaddingToken:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mElidedPaddingToken:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->copyStyles([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    .line 508
    :goto_1
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 500
    :cond_1
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    if-eqz v2, :cond_2

    sget-object v5, Lcom/kingsoft/mail/browse/SendersView;->sElidedString:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 503
    :cond_2
    move-object v2, v3

    .line 504
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mSendersSplitToken:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->copyStyles([Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    goto :goto_1

    .line 506
    :cond_3
    move-object v2, v3

    goto :goto_1

    .line 510
    .end local v3    # "sender":Landroid/text/SpannableString;
    .end local v4    # "spans":[Landroid/text/style/CharacterStyle;
    :cond_4
    return-object v0
.end method

.method private static filterTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "subject"    # Ljava/lang/String;

    .prologue
    .line 651
    move-object v1, p0

    .line 652
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_0

    .line 653
    const/16 v3, 0x5d

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 654
    .local v0, "end":I
    if-lez v0, :cond_0

    .line 655
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 656
    .local v2, "tag":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v2, v4}, Lcom/kingsoft/mail/utils/Utils;->ellipsize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 660
    .end local v0    # "end":I
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private getConversationCount()I
    .locals 3

    .prologue
    .line 392
    # getter for: Lcom/kingsoft/mail/widget/WidgetService;->sWidgetLock:Ljava/lang/Object;
    invoke-static {}, Lcom/kingsoft/mail/widget/WidgetService;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 395
    .local v0, "cursorCount":I
    :goto_0
    const/16 v1, 0x19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    monitor-exit v2

    return v1

    .line 393
    .end local v0    # "cursorCount":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getReadStyle()Landroid/text/style/CharacterStyle;
    .locals 3

    .prologue
    .line 481
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mReadStyle:Landroid/text/style/TextAppearanceSpan;

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    const v2, 0x7f110077

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mReadStyle:Landroid/text/style/TextAppearanceSpan;

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mReadStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-static {v0}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v0

    return-object v0
.end method

.method private getUnreadStyle()Landroid/text/style/CharacterStyle;
    .locals 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mUnreadStyle:Landroid/text/style/TextAppearanceSpan;

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    const v2, 0x7f11007a

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mUnreadStyle:Landroid/text/style/TextAppearanceSpan;

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mUnreadStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-static {v0}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v0

    return-object v0
.end method

.method private getViewMoreConversationsView()Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    .line 525
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400bb

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 526
    .local v0, "view":Landroid/widget/RemoteViews;
    const v1, 0x7f0c025a

    iget-object v2, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    const v3, 0x7f1003c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 528
    const v1, 0x7f0c0259

    iget-object v2, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/Utils;->createViewFolderIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/kingsoft/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 530
    return-object v0
.end method

.method private static isDataValid(Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 643
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 374
    # getter for: Lcom/kingsoft/mail/widget/WidgetService;->sWidgetLock:Ljava/lang/Object;
    invoke-static {}, Lcom/kingsoft/mail/widget/WidgetService;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 375
    :try_start_0
    invoke-direct {p0}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->getConversationCount()I

    move-result v0

    .line 376
    .local v0, "count":I
    iget-object v4, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 380
    .local v1, "cursorCount":I
    :goto_0
    iget v4, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderType:I

    const/4 v6, 0x4

    invoke-static {v4, v6}, Lcom/kingsoft/mail/providers/Folder;->isType(II)Z

    move-result v4

    if-nez v4, :cond_2

    if-lt v0, v1, :cond_0

    iget v4, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderCount:I

    if-ge v0, v4, :cond_2

    :cond_0
    move v4, v2

    :goto_1
    iput-boolean v4, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mShouldShowViewMore:Z

    .line 381
    iget-boolean v4, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mShouldShowViewMore:Z

    if-eqz v4, :cond_3

    :goto_2
    add-int/2addr v2, v0

    monitor-exit v5

    return v2

    .end local v1    # "cursorCount":I
    :cond_1
    move v1, v3

    .line 376
    goto :goto_0

    .restart local v1    # "cursorCount":I
    :cond_2
    move v4, v3

    .line 380
    goto :goto_1

    :cond_3
    move v2, v3

    .line 381
    goto :goto_2

    .line 382
    .end local v0    # "count":I
    .end local v1    # "cursorCount":I
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 548
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 535
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400bb

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 536
    .local v0, "view":Landroid/widget/RemoteViews;
    const v1, 0x7f0c025a

    iget-object v2, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    const v3, 0x7f10020f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 538
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 19
    .param p1, "position"    # I

    .prologue
    .line 404
    # getter for: Lcom/kingsoft/mail/widget/WidgetService;->sWidgetLock:Ljava/lang/Object;
    invoke-static {}, Lcom/kingsoft/mail/widget/WidgetService;->access$000()Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 406
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mShouldShowViewMore:Z

    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->getConversationCount()I

    move-result v1

    move/from16 v0, p1

    if-lt v0, v1, :cond_1

    .line 408
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;

    move-result-object v15

    monitor-exit v18

    .line 468
    :goto_0
    return-object v15

    .line 411
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursor:Landroid/database/Cursor;

    move/from16 v0, p1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 415
    # getter for: Lcom/kingsoft/mail/widget/WidgetService;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/widget/WidgetService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Failed to move to position %d in the cursor."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 416
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;

    move-result-object v15

    monitor-exit v18

    goto :goto_0

    .line 469
    :catchall_0
    move-exception v1

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 420
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v16

    .line 426
    .local v16, "token":J
    :try_start_2
    new-instance v13, Lcom/kingsoft/mail/providers/Conversation;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-direct {v13, v1}, Lcom/kingsoft/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 428
    .local v13, "conversation":Lcom/kingsoft/mail/providers/Conversation;
    :try_start_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 431
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 433
    .local v11, "senderBuilder":Landroid/text/SpannableStringBuilder;
    iget-object v1, v13, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    if-eqz v1, :cond_3

    .line 434
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v5, "senders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/SpannableString;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    iget-object v2, v13, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    const-string/jumbo v3, ""

    const/16 v4, 0x19

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v8, v8, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static/range {v1 .. v9}, Lcom/kingsoft/mail/browse/SendersView;->format(Landroid/content/Context;Lcom/kingsoft/mail/providers/ConversationInfo;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 437
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->ellipsizeStyledSenders(Ljava/util/ArrayList;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    .line 444
    .end local v5    # "senders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/SpannableString;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    iget-wide v2, v13, Lcom/kingsoft/mail/providers/Conversation;->dateMs:J

    invoke-static {v1, v2, v3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v7

    .line 448
    .local v7, "date":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderType:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 449
    const/4 v10, 0x2

    .line 455
    .local v10, "ignoreFolderType":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mWidgetConversationListItemViewBuilder:Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;

    new-instance v9, Lcom/kingsoft/mail/utils/FolderUri;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderUri:Landroid/net/Uri;

    invoke-direct {v9, v1}, Lcom/kingsoft/mail/utils/FolderUri;-><init>(Landroid/net/Uri;)V

    iget-object v1, v13, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->filterTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v8, v13

    invoke-virtual/range {v6 .. v12}, Lcom/kingsoft/mail/widget/WidgetConversationListItemViewBuilder;->getStyledView(Ljava/lang/CharSequence;Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/utils/FolderUri;ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v15

    .line 461
    .local v15, "remoteViews":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderType:I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/kingsoft/mail/providers/Folder;->isType(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-wide v3, v13, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v1, v2, v3, v4}, Lcom/kingsoft/mail/compose/ComposeActivity;->createEditDraftIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)Landroid/content/Intent;

    move-result-object v14

    .line 466
    .local v14, "fillInIntent":Landroid/content/Intent;
    :goto_3
    const v1, 0x7f0c0251

    invoke-virtual {v15, v1, v14}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 468
    monitor-exit v18

    goto/16 :goto_0

    .line 428
    .end local v7    # "date":Ljava/lang/CharSequence;
    .end local v10    # "ignoreFolderType":I
    .end local v11    # "senderBuilder":Landroid/text/SpannableStringBuilder;
    .end local v13    # "conversation":Lcom/kingsoft/mail/providers/Conversation;
    .end local v14    # "fillInIntent":Landroid/content/Intent;
    .end local v15    # "remoteViews":Landroid/widget/RemoteViews;
    :catchall_1
    move-exception v1

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 439
    .restart local v11    # "senderBuilder":Landroid/text/SpannableStringBuilder;
    .restart local v13    # "conversation":Lcom/kingsoft/mail/providers/Conversation;
    :cond_3
    iget-object v1, v13, Lcom/kingsoft/mail/providers/Conversation;->senders:Ljava/lang/String;

    invoke-virtual {v11, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 440
    iget-boolean v1, v13, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    if-eqz v1, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->getReadStyle()Landroid/text/style/CharacterStyle;

    move-result-object v1

    :goto_4
    const/4 v2, 0x0

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v11, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->getUnreadStyle()Landroid/text/style/CharacterStyle;

    move-result-object v1

    goto :goto_4

    .line 451
    .restart local v7    # "date":Ljava/lang/CharSequence;
    :cond_5
    const/4 v10, -0x1

    .restart local v10    # "ignoreFolderType":I
    goto :goto_2

    .line 464
    .restart local v15    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v1, v13, v2, v3}, Lcom/kingsoft/mail/utils/Utils;->createViewConversationIntent(Landroid/content/Context;Lcom/kingsoft/mail/providers/Conversation;Landroid/net/Uri;Lcom/kingsoft/mail/providers/Account;)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v14

    .restart local v14    # "fillInIntent":Landroid/content/Intent;
    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v7, 0x0

    .line 279
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAppWidgetId:I

    iget-object v3, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/kingsoft/mail/widget/WidgetService;->saveWidgetInformation(Landroid/content/Context;ILcom/kingsoft/mail/providers/Account;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mService:Lcom/kingsoft/mail/widget/WidgetService;

    iget-object v1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAppWidgetId:I

    iget-object v4, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v0, v1, v3, v4}, Lcom/kingsoft/mail/widget/WidgetService;->isWidgetConfigured(Landroid/content/Context;ILcom/kingsoft/mail/providers/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAppWidgetId:I

    iget-object v2, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget v3, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderType:I

    iget-object v4, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderConversationListUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderDisplayName:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->updateWidget(Landroid/content/Context;ILcom/kingsoft/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 288
    :cond_0
    iput-boolean v13, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderInformationShown:Z

    .line 296
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderConversationListUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 297
    .local v10, "builder":Landroid/net/Uri$Builder;
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 298
    .local v11, "maxConversations":Ljava/lang/String;
    const-string/jumbo v0, "limit"

    invoke-virtual {v10, v0, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "use_network"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "all_notifications"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 305
    .local v2, "widgetConversationQueryUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 306
    .local v12, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/kingsoft/mail/providers/UIProvider;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursorLoader:Landroid/content/CursorLoader;

    .line 308
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursorLoader:Landroid/content/CursorLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 309
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursorLoader:Landroid/content/CursorLoader;

    const v1, 0x7f0e0048

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/content/CursorLoader;->setUpdateThrottle(J)V

    .line 311
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 312
    const v0, 0x7f100373

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mSendersSplitToken:Ljava/lang/String;

    .line 313
    const v0, 0x7f100198

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mElidedPaddingToken:Ljava/lang/String;

    .line 314
    new-instance v3, Landroid/content/CursorLoader;

    iget-object v4, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderUri:Landroid/net/Uri;

    sget-object v6, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    move-object v8, v7

    move-object v9, v7

    invoke-direct/range {v3 .. v9}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderLoader:Landroid/content/CursorLoader;

    .line 316
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0, v13, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 317
    new-instance v0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory$FolderUpdateHandler;

    const v1, 0x7f0e0047

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory$FolderUpdateHandler;-><init>(Lcom/kingsoft/mail/widget/WidgetService$MailFactory;I)V

    iput-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderUpdateHandler:Lcom/kingsoft/mail/widget/WidgetService$MailFactory$FolderUpdateHandler;

    .line 319
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderUpdateHandler:Lcom/kingsoft/mail/widget/WidgetService$MailFactory$FolderUpdateHandler;

    invoke-virtual {v0}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory$FolderUpdateHandler;->scheduleTask()V

    .line 321
    new-instance v3, Landroid/content/CursorLoader;

    iget-object v4, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v5, v0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    sget-object v6, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION_NO_CAPABILITIES:[Ljava/lang/String;

    move-object v8, v7

    move-object v9, v7

    invoke-direct/range {v3 .. v9}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccountLoader:Landroid/content/CursorLoader;

    .line 323
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccountLoader:Landroid/content/CursorLoader;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 324
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccountLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 325
    return-void
.end method

.method public onDataSetChanged()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderUpdateHandler:Lcom/kingsoft/mail/widget/WidgetService$MailFactory$FolderUpdateHandler;

    invoke-virtual {v0}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory$FolderUpdateHandler;->scheduleTask()V

    .line 365
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    # getter for: Lcom/kingsoft/mail/widget/WidgetService;->sWidgetLock:Ljava/lang/Object;
    invoke-static {}, Lcom/kingsoft/mail/widget/WidgetService;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursorLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 332
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0, p0}, Landroid/content/CursorLoader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursorLoader:Landroid/content/CursorLoader;

    .line 338
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursor:Landroid/database/Cursor;

    .line 339
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 343
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0, p0}, Landroid/content/CursorLoader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 344
    iput-object v2, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderLoader:Landroid/content/CursorLoader;

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccountLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccountLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 349
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccountLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0, p0}, Landroid/content/CursorLoader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 350
    iput-object v2, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccountLoader:Landroid/content/CursorLoader;

    .line 352
    :cond_2
    return-void

    .line 339
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 13
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v9

    .line 559
    .local v9, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v10, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0400b9

    invoke-direct {v10, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 562
    .local v10, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mService:Lcom/kingsoft/mail/widget/WidgetService;

    iget-object v1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAppWidgetId:I

    iget-object v3, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingsoft/mail/widget/WidgetService;->isWidgetConfigured(Landroid/content/Context;ILcom/kingsoft/mail/providers/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAppWidgetId:I

    iget-object v2, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget v3, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderType:I

    iget-object v4, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderConversationListUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderDisplayName:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->updateWidget(Landroid/content/Context;ILcom/kingsoft/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderLoader:Landroid/content/CursorLoader;

    if-ne p1, v0, :cond_7

    .line 568
    invoke-static {p2}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->isDataValid(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 636
    :cond_1
    :goto_0
    return-void

    .line 572
    :cond_2
    const/16 v0, 0xa

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 573
    .local v11, "unreadCount":I
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 574
    .local v8, "folderName":Ljava/lang/String;
    const/16 v0, 0xb

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderCount:I

    .line 576
    iget-boolean v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderInformationShown:Z

    if-nez v0, :cond_3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 582
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mService:Lcom/kingsoft/mail/widget/WidgetService;

    iget-object v1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAppWidgetId:I

    iget-object v4, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget v5, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderType:I

    iget-object v6, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderConversationListUri:Landroid/net/Uri;

    move-object v2, v10

    invoke-virtual/range {v0 .. v8}, Lcom/kingsoft/mail/widget/WidgetService;->configureValidAccountWidget(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/kingsoft/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 585
    iget v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAppWidgetId:I

    invoke-virtual {v9, v0, v10}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderInformationShown:Z

    .line 590
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 591
    const v0, 0x7f0c024a

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 592
    const v0, 0x7f0c024a

    invoke-virtual {v10, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 596
    :goto_1
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 597
    const v0, 0x7f0c024c

    iget-object v1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 601
    :cond_4
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/kingsoft/mail/utils/Utils;->getUnreadMessageString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 606
    .local v12, "unreadCountString":Ljava/lang/CharSequence;
    if-nez v11, :cond_6

    .line 607
    const v0, 0x7f0c024b

    const/16 v1, 0x8

    invoke-virtual {v10, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 613
    :goto_2
    iget v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAppWidgetId:I

    invoke-virtual {v9, v0, v10}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 594
    .end local v12    # "unreadCountString":Ljava/lang/CharSequence;
    :cond_5
    # getter for: Lcom/kingsoft/mail/widget/WidgetService;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/widget/WidgetService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Empty folder name"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 609
    .restart local v12    # "unreadCountString":Ljava/lang/CharSequence;
    :cond_6
    const v0, 0x7f0c024b

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 610
    const v0, 0x7f0c024b

    invoke-virtual {v10, v0, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 614
    .end local v8    # "folderName":Ljava/lang/String;
    .end local v11    # "unreadCount":I
    .end local v12    # "unreadCountString":Ljava/lang/CharSequence;
    :cond_7
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursorLoader:Landroid/content/CursorLoader;

    if-ne p1, v0, :cond_a

    .line 616
    # getter for: Lcom/kingsoft/mail/widget/WidgetService;->sWidgetLock:Ljava/lang/Object;
    invoke-static {}, Lcom/kingsoft/mail/widget/WidgetService;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 617
    :try_start_0
    invoke-static {p2}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->isDataValid(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 618
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursor:Landroid/database/Cursor;

    .line 622
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    iget v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAppWidgetId:I

    const v1, 0x7f0c024e

    invoke-virtual {v9, v0, v1}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 627
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 628
    :cond_8
    const v0, 0x7f0c024f

    iget-object v1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    const v2, 0x7f10028e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 630
    iget v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAppWidgetId:I

    invoke-virtual {v9, v0, v10}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 620
    :cond_9
    :try_start_1
    iput-object p2, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mConversationCursor:Landroid/database/Cursor;

    goto :goto_3

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 632
    :cond_a
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccountLoader:Landroid/content/CursorLoader;

    if-ne p1, v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAppWidgetId:I

    iget-object v2, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget v3, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderType:I

    iget-object v4, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderConversationListUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->mFolderDisplayName:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->updateWidget(Landroid/content/Context;ILcom/kingsoft/mail/providers/Account;ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 209
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/widget/WidgetService$MailFactory;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
