.class public Lcom/kingsoft/mail/providers/Account;
.super Ljava/lang/Object;
.source "Account.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/kingsoft/mail/providers/Account;",
            ">;"
        }
    .end annotation
.end field

.field public static final FACTORY:Lcom/kingsoft/mail/content/CursorCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingsoft/mail/content/CursorCreator",
            "<",
            "Lcom/kingsoft/mail/providers/Account;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SETTINGS_KEY:Ljava/lang/String; = "settings"


# instance fields
.field public accountFromAddresses:Ljava/lang/String;

.field private final accountManagerName:Ljava/lang/String;

.field public final accoutCookieQueryUri:Landroid/net/Uri;

.field public allFolderListUri:Landroid/net/Uri;

.field private amAccount:Landroid/accounts/Account;

.field public final capabilities:I

.field public final color:I

.field public final composeIntentUri:Landroid/net/Uri;

.field public final defaultRecentFolderListUri:Landroid/net/Uri;

.field public final enableMessageTransforms:I

.field public final expungeMessageUri:Landroid/net/Uri;

.field public final folderListUri:Landroid/net/Uri;

.field public fullFolderListUri:Landroid/net/Uri;

.field public final helpIntentUri:Landroid/net/Uri;

.field private transient mReplyFroms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/ReplyFromAccount;",
            ">;"
        }
    .end annotation
.end field

.field public final manualSyncUri:Landroid/net/Uri;

.field public final mimeType:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field private final protocol:Ljava/lang/String;

.field public final providerVersion:I

.field public final quickResponseUri:Landroid/net/Uri;

.field public final reauthenticationIntentUri:Landroid/net/Uri;

.field public final recentFolderListUri:Landroid/net/Uri;

.field public final searchUri:Landroid/net/Uri;

.field public final sendFeedbackIntentUri:Landroid/net/Uri;

.field private final senderName:Ljava/lang/String;

.field public final settings:Lcom/kingsoft/mail/providers/Settings;

.field public final settingsIntentUri:Landroid/net/Uri;

.field public final syncAuthority:Ljava/lang/String;

.field public final syncStatus:I

.field private final type:Ljava/lang/String;

.field public final undoUri:Landroid/net/Uri;

.field public final updateSettingsUri:Landroid/net/Uri;

.field public final uri:Landroid/net/Uri;

.field public final viewIntentProxyUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/kingsoft/mail/providers/Account;->$assertionsDisabled:Z

    .line 241
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/Account;->LOG_TAG:Ljava/lang/String;

    .line 827
    new-instance v0, Lcom/kingsoft/mail/providers/Account$1;

    invoke-direct {v0}, Lcom/kingsoft/mail/providers/Account$1;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/providers/Account;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 893
    new-instance v0, Lcom/kingsoft/mail/providers/Account$2;

    invoke-direct {v0}, Lcom/kingsoft/mail/providers/Account$2;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/providers/Account;->FACTORY:Lcom/kingsoft/mail/content/CursorCreator;

    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    const-string/jumbo v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    .line 396
    const-string/jumbo v2, "senderName"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->senderName:Ljava/lang/String;

    .line 397
    const-string/jumbo v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->type:Ljava/lang/String;

    .line 398
    const-string/jumbo v2, "accountManagerName"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    .line 400
    const-string/jumbo v2, "accountFromAddresses"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    .line 403
    const-string/jumbo v2, "capabilities"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 405
    .local v0, "capabilitiesColumnIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 406
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/kingsoft/mail/providers/Account;->capabilities:I

    .line 411
    :goto_0
    const-string/jumbo v2, "providerVersion"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/kingsoft/mail/providers/Account;->providerVersion:I

    .line 413
    const-string/jumbo v2, "accountUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    .line 414
    const-string/jumbo v2, "folderListUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    .line 416
    const-string/jumbo v2, "fullFolderListUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    .line 418
    const-string/jumbo v2, "allFolderListUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    .line 420
    const-string/jumbo v2, "searchUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->searchUri:Landroid/net/Uri;

    .line 422
    const-string/jumbo v2, "expungeMessageUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    .line 424
    const-string/jumbo v2, "undoUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->undoUri:Landroid/net/Uri;

    .line 426
    const-string/jumbo v2, "accountSettingsIntentUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    .line 428
    const-string/jumbo v2, "helpIntentUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    .line 430
    const-string/jumbo v2, "sendFeedbackIntentUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->sendFeedbackIntentUri:Landroid/net/Uri;

    .line 432
    const-string/jumbo v2, "reauthenticationUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    .line 434
    const-string/jumbo v2, "syncStatus"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/kingsoft/mail/providers/Account;->syncStatus:I

    .line 435
    const-string/jumbo v2, "composeUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    .line 437
    const-string/jumbo v2, "mimeType"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->mimeType:Ljava/lang/String;

    .line 438
    const-string/jumbo v2, "recentFolderListUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    .line 440
    const-string/jumbo v2, "color"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/kingsoft/mail/providers/Account;->color:I

    .line 441
    const-string/jumbo v2, "defaultRecentFolderListUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->defaultRecentFolderListUri:Landroid/net/Uri;

    .line 443
    const-string/jumbo v2, "manualSyncUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->manualSyncUri:Landroid/net/Uri;

    .line 445
    const-string/jumbo v2, "viewProxyUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    .line 447
    const-string/jumbo v2, "accountCookieUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    .line 449
    const-string/jumbo v2, "updateSettingsUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->updateSettingsUri:Landroid/net/Uri;

    .line 451
    const-string/jumbo v2, "enableMessageTransforms"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/kingsoft/mail/providers/Account;->enableMessageTransforms:I

    .line 454
    const-string/jumbo v2, "syncAuthority"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "temp":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 457
    sget-object v2, Lcom/kingsoft/mail/providers/Account;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unexpected empty syncAuthority from cursor"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 462
    :cond_0
    :goto_1
    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    .line 465
    const-string/jumbo v2, "quickResponseUri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    .line 467
    new-instance v2, Lcom/kingsoft/mail/providers/Settings;

    invoke-direct {v2, p1}, Lcom/kingsoft/mail/providers/Settings;-><init>(Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    .line 469
    const-string/jumbo v2, "protocol"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->protocol:Ljava/lang/String;

    .line 470
    return-void

    .line 408
    .end local v1    # "temp":Ljava/lang/String;
    :cond_1
    iput v4, p0, Lcom/kingsoft/mail/providers/Account;->capabilities:I

    goto/16 :goto_0

    .line 458
    .restart local v1    # "temp":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_0

    const-string/jumbo v2, "com.kingsoft.email.provider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    const-string/jumbo v1, "com.android.email.provider"

    goto :goto_1
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->senderName:Ljava/lang/String;

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->type:Ljava/lang/String;

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Account;->providerVersion:I

    .line 549
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Account;->capabilities:I

    .line 551
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    .line 552
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    .line 553
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    .line 554
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->searchUri:Landroid/net/Uri;

    .line 555
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    .line 556
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    .line 557
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->undoUri:Landroid/net/Uri;

    .line 558
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    .line 559
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    .line 560
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->sendFeedbackIntentUri:Landroid/net/Uri;

    .line 561
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    .line 562
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Account;->syncStatus:I

    .line 563
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    .line 564
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->mimeType:Ljava/lang/String;

    .line 565
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Account;->color:I

    .line 567
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->defaultRecentFolderListUri:Landroid/net/Uri;

    .line 568
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->manualSyncUri:Landroid/net/Uri;

    .line 569
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    .line 570
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    .line 571
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->updateSettingsUri:Landroid/net/Uri;

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/providers/Account;->enableMessageTransforms:I

    .line 573
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    .line 574
    iget-object v1, p0, Lcom/kingsoft/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    sget-object v1, Lcom/kingsoft/mail/providers/Account;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unexpected empty syncAuthority from Parcel"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 577
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 579
    .local v0, "hasSettings":I
    if-nez v0, :cond_1

    .line 580
    sget-object v1, Lcom/kingsoft/mail/providers/Account;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string/jumbo v3, "Unexpected null settings in Account(Parcel)"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 581
    sget-object v1, Lcom/kingsoft/mail/providers/Settings;->EMPTY_SETTINGS:Lcom/kingsoft/mail/providers/Settings;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    .line 585
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->protocol:Ljava/lang/String;

    .line 586
    return-void

    .line 583
    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Settings;

    iput-object v1, p0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "acctName"    # Ljava/lang/String;
    .param p2, "acctType"    # Ljava/lang/String;
    .param p3, "jsonAccount"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    .line 329
    iput-object p2, p0, Lcom/kingsoft/mail/providers/Account;->type:Ljava/lang/String;

    .line 330
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 331
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "senderName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->senderName:Ljava/lang/String;

    .line 332
    const-string/jumbo v3, "accountManagerName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "amName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    .line 340
    :goto_0
    const-string/jumbo v3, "providerVersion"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Account;->providerVersion:I

    .line 341
    const-string/jumbo v3, "accountUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    .line 342
    const-string/jumbo v3, "capabilities"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Account;->capabilities:I

    .line 343
    const-string/jumbo v3, "folderListUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    .line 345
    const-string/jumbo v3, "fullFolderListUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    .line 347
    const-string/jumbo v3, "allFolderListUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    .line 349
    const-string/jumbo v3, "searchUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->searchUri:Landroid/net/Uri;

    .line 350
    const-string/jumbo v3, "accountFromAddresses"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    .line 352
    const-string/jumbo v3, "expungeMessageUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    .line 354
    const-string/jumbo v3, "undoUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->undoUri:Landroid/net/Uri;

    .line 355
    const-string/jumbo v3, "accountSettingsIntentUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    .line 357
    const-string/jumbo v3, "helpIntentUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    .line 358
    const-string/jumbo v3, "sendFeedbackIntentUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->sendFeedbackIntentUri:Landroid/net/Uri;

    .line 360
    const-string/jumbo v3, "reauthenticationUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    .line 362
    const-string/jumbo v3, "syncStatus"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Account;->syncStatus:I

    .line 363
    const-string/jumbo v3, "composeUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    .line 364
    const-string/jumbo v3, "mimeType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->mimeType:Ljava/lang/String;

    .line 365
    const-string/jumbo v3, "recentFolderListUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    .line 367
    const-string/jumbo v3, "color"

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Account;->color:I

    .line 368
    const-string/jumbo v3, "defaultRecentFolderListUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->defaultRecentFolderListUri:Landroid/net/Uri;

    .line 370
    const-string/jumbo v3, "manualSyncUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->manualSyncUri:Landroid/net/Uri;

    .line 372
    const-string/jumbo v3, "viewProxyUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    .line 374
    const-string/jumbo v3, "accountCookieUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    .line 376
    const-string/jumbo v3, "updateSettingsUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->updateSettingsUri:Landroid/net/Uri;

    .line 378
    const-string/jumbo v3, "enableMessageTransforms"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/providers/Account;->enableMessageTransforms:I

    .line 379
    const-string/jumbo v3, "syncAuthority"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    .line 380
    const-string/jumbo v3, "quickResponseUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    .line 382
    const-string/jumbo v3, "protocol"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->protocol:Ljava/lang/String;

    .line 384
    const-string/jumbo v3, "settings"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/providers/Settings;->newInstance(Lorg/json/JSONObject;)Lcom/kingsoft/mail/providers/Settings;

    move-result-object v2

    .line 385
    .local v2, "jsonSettings":Lcom/kingsoft/mail/providers/Settings;
    if-eqz v2, :cond_1

    .line 386
    iput-object v2, p0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    .line 392
    :goto_1
    return-void

    .line 338
    .end local v2    # "jsonSettings":Lcom/kingsoft/mail/providers/Settings;
    :cond_0
    iput-object v0, p0, Lcom/kingsoft/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    goto/16 :goto_0

    .line 388
    .restart local v2    # "jsonSettings":Lcom/kingsoft/mail/providers/Settings;
    :cond_1
    sget-object v3, Lcom/kingsoft/mail/providers/Account;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    const-string/jumbo v5, "Unexpected null settings in Account(name, type, jsonAccount)"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 390
    sget-object v3, Lcom/kingsoft/mail/providers/Settings;->EMPTY_SETTINGS:Lcom/kingsoft/mail/providers/Settings;

    iput-object v3, p0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    goto :goto_1
.end method

.method public static getAllAccounts(Lcom/kingsoft/mail/content/ObjectCursor;)[Lcom/kingsoft/mail/providers/Account;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Account;",
            ">;)[",
            "Lcom/kingsoft/mail/providers/Account;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "cursor":Lcom/kingsoft/mail/content/ObjectCursor;, "Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Account;>;"
    invoke-virtual {p0}, Lcom/kingsoft/mail/content/ObjectCursor;->getCount()I

    move-result v3

    .line 480
    .local v3, "initialLength":I
    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    .line 482
    :cond_0
    const/4 v4, 0x0

    new-array v0, v4, [Lcom/kingsoft/mail/providers/Account;

    .line 492
    :cond_1
    return-object v0

    .line 485
    :cond_2
    new-array v0, v3, [Lcom/kingsoft/mail/providers/Account;

    .line 486
    .local v0, "allAccounts":[Lcom/kingsoft/mail/providers/Account;
    const/4 v1, 0x0

    .line 488
    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/providers/Account;

    aput-object v4, v0, v1

    .line 489
    invoke-virtual {p0}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 491
    sget-boolean v4, Lcom/kingsoft/mail/providers/Account;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-eq v2, v3, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_3
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public static newinstance(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Account;
    .locals 7
    .param p0, "serializedAccount"    # Ljava/lang/String;

    .prologue
    .line 304
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 305
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "name"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 306
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 307
    .local v3, "type":Ljava/lang/String;
    new-instance v4, Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v4, v2, v3, p0}, Lcom/kingsoft/mail/providers/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/kingsoft/mail/providers/Account;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Could not create an account from this input"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v0, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 310
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 644
    if-ne p1, p0, :cond_1

    .line 653
    :cond_0
    :goto_0
    return v1

    .line 648
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 649
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 652
    check-cast v0, Lcom/kingsoft/mail/providers/Account;

    .line 653
    .local v0, "other":Lcom/kingsoft/mail/providers/Account;
    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->senderName:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->senderName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->type:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/kingsoft/mail/providers/Account;->capabilities:I

    iget v4, v0, Lcom/kingsoft/mail/providers/Account;->capabilities:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/kingsoft/mail/providers/Account;->providerVersion:I

    iget v4, v0, Lcom/kingsoft/mail/providers/Account;->providerVersion:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->searchUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->searchUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->undoUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->undoUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->sendFeedbackIntentUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->sendFeedbackIntentUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/kingsoft/mail/providers/Account;->syncStatus:I

    iget v4, v0, Lcom/kingsoft/mail/providers/Account;->syncStatus:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->mimeType:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/kingsoft/mail/providers/Account;->color:I

    iget v4, v0, Lcom/kingsoft/mail/providers/Account;->color:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->defaultRecentFolderListUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->defaultRecentFolderListUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->updateSettingsUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->updateSettingsUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/kingsoft/mail/providers/Account;->enableMessageTransforms:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/kingsoft/mail/providers/Account;->enableMessageTransforms:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->protocol:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->protocol:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto/16 :goto_0
.end method

.method public getAccountKey()J
    .locals 3

    .prologue
    .line 506
    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 507
    .local v0, "id":J
    return-wide v0
.end method

.method public getAccountManagerAccount()Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 496
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->amAccount:Landroid/accounts/Account;

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Account;->amAccount:Landroid/accounts/Account;

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->amAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyFroms()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/ReplyFromAccount;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 751
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->mReplyFroms:Ljava/util/List;

    if-nez v0, :cond_2

    .line 752
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Account;->mReplyFroms:Ljava/util/List;

    .line 755
    const/high16 v0, 0x80000

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->mReplyFroms:Ljava/util/List;

    .line 782
    :goto_0
    return-object v0

    .line 762
    :cond_0
    iget-object v13, p0, Lcom/kingsoft/mail/providers/Account;->mReplyFroms:Ljava/util/List;

    new-instance v0, Lcom/kingsoft/mail/providers/ReplyFromAccount;

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/kingsoft/mail/providers/ReplyFromAccount;-><init>(Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 767
    :try_start_0
    new-instance v9, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    invoke-direct {v9, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 769
    .local v9, "accounts":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    .local v12, "len":I
    :goto_1
    if-ge v11, v12, :cond_2

    .line 770
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingsoft/mail/providers/ReplyFromAccount;->deserialize(Lcom/kingsoft/mail/providers/Account;Lorg/json/JSONObject;)Lcom/kingsoft/mail/providers/ReplyFromAccount;

    move-result-object v8

    .line 772
    .local v8, "a":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    if-eqz v8, :cond_1

    .line 773
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->mReplyFroms:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 777
    .end local v8    # "a":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .end local v9    # "accounts":Lorg/json/JSONArray;
    .end local v11    # "i":I
    .end local v12    # "len":I
    :catch_0
    move-exception v10

    .line 778
    .local v10, "e":Lorg/json/JSONException;
    sget-object v0, Lcom/kingsoft/mail/providers/Account;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unable to parse accountFromAddresses. name"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v10, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 782
    .end local v10    # "e":Lorg/json/JSONException;
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->mReplyFroms:Ljava/util/List;

    goto :goto_0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->senderName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadVirtualMailboxUri()Landroid/net/Uri;
    .locals 7

    .prologue
    .line 512
    iget-object v4, p0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    if-nez v4, :cond_0

    .line 513
    const/4 v3, 0x0

    .line 519
    :goto_0
    return-object v3

    .line 514
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 516
    .local v0, "accountkey":I
    int-to-long v4, v0

    const/16 v6, 0xa

    invoke-static {v4, v5, v6}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v1

    .line 517
    .local v1, "unreadID":J
    const-string/jumbo v4, "uifolder"

    invoke-static {v4, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 519
    .local v3, "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public getValueMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 850
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 852
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    const-string/jumbo v1, "senderName"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->senderName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    const-string/jumbo v1, "accountManagerName"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    const-string/jumbo v1, "providerVersion"

    iget v2, p0, Lcom/kingsoft/mail/providers/Account;->providerVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    const-string/jumbo v1, "accountUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    const-string/jumbo v1, "capabilities"

    iget v2, p0, Lcom/kingsoft/mail/providers/Account;->capabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    const-string/jumbo v1, "folderListUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    const-string/jumbo v1, "fullFolderListUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    const-string/jumbo v1, "allFolderListUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    const-string/jumbo v1, "searchUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->searchUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    const-string/jumbo v1, "accountFromAddresses"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    const-string/jumbo v1, "expungeMessageUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const-string/jumbo v1, "undoUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->undoUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    const-string/jumbo v1, "accountSettingsIntentUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    const-string/jumbo v1, "helpIntentUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    const-string/jumbo v1, "sendFeedbackIntentUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->sendFeedbackIntentUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    const-string/jumbo v1, "reauthenticationUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    const-string/jumbo v1, "syncStatus"

    iget v2, p0, Lcom/kingsoft/mail/providers/Account;->syncStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    const-string/jumbo v1, "composeUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    const-string/jumbo v1, "mimeType"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    const-string/jumbo v1, "recentFolderListUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    const-string/jumbo v1, "defaultRecentFolderListUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->defaultRecentFolderListUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    const-string/jumbo v1, "manualSyncUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->manualSyncUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    const-string/jumbo v1, "viewProxyUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    const-string/jumbo v1, "accountCookieUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const-string/jumbo v1, "color"

    iget v2, p0, Lcom/kingsoft/mail/providers/Account;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const-string/jumbo v1, "updateSettingsUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->updateSettingsUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    const-string/jumbo v1, "enableMessageTransforms"

    iget v2, p0, Lcom/kingsoft/mail/providers/Account;->enableMessageTransforms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    const-string/jumbo v1, "syncAuthority"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    const-string/jumbo v1, "quickResponseUri"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    const-string/jumbo v1, "protocol"

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->protocol:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    iget-object v1, p0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/providers/Settings;->getValueMap(Ljava/util/Map;)Ljava/util/Map;

    .line 887
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 707
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->senderName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/kingsoft/mail/providers/Account;->capabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/kingsoft/mail/providers/Account;->providerVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->searchUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->undoUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->sendFeedbackIntentUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget v2, p0, Lcom/kingsoft/mail/providers/Account;->syncStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->mimeType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    iget v2, p0, Lcom/kingsoft/mail/providers/Account;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->defaultRecentFolderListUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->updateSettingsUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    iget v2, p0, Lcom/kingsoft/mail/providers/Account;->enableMessageTransforms:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->protocol:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAccountInitializationRequired()Z
    .locals 2

    .prologue
    .line 531
    iget v0, p0, Lcom/kingsoft/mail/providers/Account;->syncStatus:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAccountReady()Z
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Account;->isAccountInitializationRequired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Account;->isAccountSyncRequired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAccountSyncRequired()Z
    .locals 2

    .prologue
    .line 527
    iget v0, p0, Lcom/kingsoft/mail/providers/Account;->syncStatus:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqualType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "oType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 912
    iget-object v1, p0, Lcom/kingsoft/mail/providers/Account;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 916
    :cond_0
    :goto_0
    return v0

    .line 914
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/providers/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVirtualAccount()Z
    .locals 4

    .prologue
    .line 820
    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 821
    .local v0, "id":J
    const-wide/32 v2, 0x10000000

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 822
    const/4 v2, 0x1

    .line 823
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public matches(Lcom/kingsoft/mail/providers/Account;)Z
    .locals 2
    .param p1, "other"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 746
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ownsFromAddress(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fromAddress"    # Ljava/lang/String;

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Account;->getReplyFroms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 792
    .local v1, "replyFrom":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    iget-object v2, v1, Lcom/kingsoft/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 793
    const/4 v2, 0x1

    .line 797
    .end local v1    # "replyFrom":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized serialize()Ljava/lang/String;
    .locals 5

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string/jumbo v2, "type"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string/jumbo v2, "senderName"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->senderName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string/jumbo v2, "accountManagerName"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string/jumbo v2, "providerVersion"

    iget v3, p0, Lcom/kingsoft/mail/providers/Account;->providerVersion:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 254
    const-string/jumbo v2, "accountUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string/jumbo v2, "capabilities"

    iget v3, p0, Lcom/kingsoft/mail/providers/Account;->capabilities:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 256
    const-string/jumbo v2, "folderListUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string/jumbo v2, "fullFolderListUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string/jumbo v2, "allFolderListUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string/jumbo v2, "searchUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->searchUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string/jumbo v2, "accountFromAddresses"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string/jumbo v2, "expungeMessageUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string/jumbo v2, "undoUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->undoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string/jumbo v2, "accountSettingsIntentUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string/jumbo v2, "helpIntentUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string/jumbo v2, "sendFeedbackIntentUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->sendFeedbackIntentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string/jumbo v2, "reauthenticationUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string/jumbo v2, "syncStatus"

    iget v3, p0, Lcom/kingsoft/mail/providers/Account;->syncStatus:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 268
    const-string/jumbo v2, "composeUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string/jumbo v2, "mimeType"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string/jumbo v2, "recentFolderListUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string/jumbo v2, "color"

    iget v3, p0, Lcom/kingsoft/mail/providers/Account;->color:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 272
    const-string/jumbo v2, "defaultRecentFolderListUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->defaultRecentFolderListUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string/jumbo v2, "manualSyncUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->manualSyncUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string/jumbo v2, "viewProxyUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string/jumbo v2, "accountCookieUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string/jumbo v2, "updateSettingsUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->updateSettingsUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string/jumbo v2, "enableMessageTransforms"

    iget v3, p0, Lcom/kingsoft/mail/providers/Account;->enableMessageTransforms:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 278
    const-string/jumbo v2, "syncAuthority"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string/jumbo v2, "quickResponseUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string/jumbo v2, "protocol"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    iget-object v2, p0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    if-eqz v2, :cond_0

    .line 282
    const-string/jumbo v2, "settings"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Settings;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Lorg/json/JSONException;
    :try_start_3
    sget-object v2, Lcom/kingsoft/mail/providers/Account;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Could not serialize account with name"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 247
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final settingsDiffer(Lcom/kingsoft/mail/providers/Account;)Z
    .locals 3
    .param p1, "other"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    const/4 v0, 0x1

    .line 695
    if-nez p1, :cond_1

    .line 699
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/kingsoft/mail/providers/Account;->syncStatus:I

    iget v2, p1, Lcom/kingsoft/mail/providers/Account;->syncStatus:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingsoft/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingsoft/mail/providers/Account;->color:I

    iget v2, p1, Lcom/kingsoft/mail/providers/Account;->color:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Settings;->hashCode()I

    move-result v1

    iget-object v2, p1, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Settings;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsCapability(I)Z
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 523
    iget v0, p0, Lcom/kingsoft/mail/providers/Account;->capabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Account;->serialize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 590
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->senderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->accountManagerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 594
    iget v0, p0, Lcom/kingsoft/mail/providers/Account;->providerVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 596
    iget v0, p0, Lcom/kingsoft/mail/providers/Account;->capabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 598
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->fullFolderListUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 599
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 600
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->searchUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 601
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->accountFromAddresses:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 603
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->undoUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 604
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->settingsIntentUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 605
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->helpIntentUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 606
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->sendFeedbackIntentUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 607
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 608
    iget v0, p0, Lcom/kingsoft/mail/providers/Account;->syncStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->composeIntentUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 610
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 612
    iget v0, p0, Lcom/kingsoft/mail/providers/Account;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->defaultRecentFolderListUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 614
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->manualSyncUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 615
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 616
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 617
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->updateSettingsUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 618
    iget v0, p0, Lcom/kingsoft/mail/providers/Account;->enableMessageTransforms:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 621
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    if-nez v0, :cond_0

    .line 622
    sget-object v0, Lcom/kingsoft/mail/providers/Account;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unexpected null settings object in writeToParcel"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 623
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->protocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 629
    return-void

    .line 625
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0
.end method
