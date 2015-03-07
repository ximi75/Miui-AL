.class public final Lcom/kingsoft/mail/preferences/MailPrefs;
.super Lcom/kingsoft/mail/preferences/VersionedPrefs;
.source "MailPrefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/preferences/MailPrefs$RemovalActions;,
        Lcom/kingsoft/mail/preferences/MailPrefs$ConversationListSwipeActions;,
        Lcom/kingsoft/mail/preferences/MailPrefs$PreferenceKeys;
    }
.end annotation


# static fields
.field public static final FLOW_SAVE_TIP:Ljava/lang/String; = "flow_save_tip"

.field private static final HEADER:Ljava/lang/String; = "Account-"

.field public static final HEAD_LOAD_ONLY:Ljava/lang/String; = "head_load_only"

.field private static final PREFS_NAME:Ljava/lang/String; = "UnifiedEmail"

.field public static final SHOW_EXPERIMENTAL_PREFS:Z

.field private static sInstance:Lcom/kingsoft/mail/preferences/MailPrefs;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 164
    const-string/jumbo v0, "UnifiedEmail"

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/preferences/VersionedPrefs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method private static createWidgetPreferenceValue(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p1, "folderUri"    # Ljava/lang/String;

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 157
    sget-object v0, Lcom/kingsoft/mail/preferences/MailPrefs;->sInstance:Lcom/kingsoft/mail/preferences/MailPrefs;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/preferences/MailPrefs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingsoft/mail/preferences/MailPrefs;->sInstance:Lcom/kingsoft/mail/preferences/MailPrefs;

    .line 160
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/preferences/MailPrefs;->sInstance:Lcom/kingsoft/mail/preferences/MailPrefs;

    return-object v0
.end method

.method private getAllQuickReplyCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "accountKey"    # Ljava/lang/String;

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 460
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSenderWhitelist()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 385
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 386
    .local v0, "defaultAddressSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v2, "display_images"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method private getSenderWhitelistPatterns()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 392
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 393
    .local v0, "defaultPatternSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v2, "display_sender_images_patterns_set"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public cacheActiveNotificationSet(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "notificationSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cache-active-notification-set"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 282
    return-void
.end method

.method protected canBackup(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 179
    sget-object v0, Lcom/kingsoft/mail/preferences/MailPrefs$PreferenceKeys;->BACKUP_KEYS:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clearSenderWhiteList()V
    .locals 3

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 399
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "display_images"

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 400
    const-string/jumbo v1, "display_sender_images_patterns_set"

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 401
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 402
    return-void
.end method

.method public clearWidgets([I)V
    .locals 7
    .param p1, "appWidgetIds"    # [I

    .prologue
    .line 218
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 219
    .local v2, "id":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "widget-account-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v2    # "id":I
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 222
    return-void
.end method

.method public configureWidget(ILcom/kingsoft/mail/providers/Account;Ljava/lang/String;)V
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p3, "folderUri"    # Ljava/lang/String;

    .prologue
    .line 198
    if-nez p2, :cond_0

    .line 199
    sget-object v0, Lcom/kingsoft/mail/preferences/MailPrefs;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Cannot configure widget with null account"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "widget-account-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/kingsoft/mail/preferences/MailPrefs;->createWidgetPreferenceValue(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public getActiveNotificationSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cache-active-notification-set"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getBccToMyself(Ljava/lang/String;)Z
    .locals 4
    .param p1, "sharedPrefsName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 418
    const-string/jumbo v1, "/"

    const-string/jumbo v2, "\\\\"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 419
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 422
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/preferences/MailPrefs;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Account-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "always-bcc-to-myself"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getConversationListSwipeActionInteger(Z)I
    .locals 5
    .param p1, "allowArchive"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 263
    const-string/jumbo v3, "delete"

    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/preferences/MailPrefs;->getRemovalAction(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    .line 265
    .local v0, "archive":Z
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "archive":Z
    :cond_0
    move v0, v1

    .line 263
    goto :goto_0

    .restart local v0    # "archive":Z
    :cond_1
    move v1, v2

    .line 265
    goto :goto_1
.end method

.method public getDefaultReplyAll()Z
    .locals 3

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "default-reply-all"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDisplayImagesFromSender(Ljava/lang/String;)Z
    .locals 7
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSenderWhitelist()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 333
    .local v2, "displayImages":Z
    if-nez v2, :cond_1

    .line 334
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 336
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 337
    .local v1, "defaultPatternSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v6, "display_sender_images_patterns_set"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 339
    .local v0, "currentPatterns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 340
    .local v4, "pattern":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 341
    if-eqz v2, :cond_0

    .line 347
    .end local v0    # "currentPatterns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "defaultPatternSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pattern":Ljava/lang/String;
    .end local v5    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    return v2
.end method

.method public getFlowSaveTipEnabled()Z
    .locals 3

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 641
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "flow_save_tip"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getFlowSaveTotalSize()J
    .locals 4

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 655
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "flow_save_total_size"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public getHeaderOnlyConfig()Z
    .locals 3

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 625
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "head_load_only"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getIsSilencePeriodEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 676
    iget-object v2, p0, Lcom/kingsoft/mail/preferences/MailPrefs;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 678
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "donot_disturb_preference"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 680
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    return v1
.end method

.method public getLocalSearch()Z
    .locals 3

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    const/4 v1, 0x0

    .line 434
    :goto_0
    return v1

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 434
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "local-search"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public getNumOfDismissesForAutoSyncOff()I
    .locals 3

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "num-of-dismisses-auto-sync-off"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getParallaxDirectionAlternative()Z
    .locals 3

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 548
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "ap-parallax-direction"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getParallaxSpeedAlternative()Z
    .locals 3

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 536
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "ap-parallax-speed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getPop3SortType(Ljava/lang/String;)I
    .locals 4
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 586
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    :goto_0
    return v1

    .line 590
    :cond_0
    const-string/jumbo v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 592
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 594
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 595
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "account_pop3_server_sort_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public getQuickReplyCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "accountKey"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;

    .prologue
    .line 464
    const/4 v2, 0x0

    .line 465
    .local v2, "jObject":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 466
    .local v0, "content":Ljava/lang/String;
    const/4 v4, 0x0

    .line 468
    .local v4, "jString":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/preferences/MailPrefs;->getAllQuickReplyCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 469
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 470
    const/4 v5, 0x0

    .line 480
    :goto_0
    return-object v5

    .line 472
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    .end local v2    # "jObject":Lorg/json/JSONObject;
    .local v3, "jObject":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 474
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_1
    move-object v2, v3

    .end local v3    # "jObject":Lorg/json/JSONObject;
    .restart local v2    # "jObject":Lorg/json/JSONObject;
    :goto_1
    move-object v5, v0

    .line 480
    goto :goto_0

    .line 476
    :catch_0
    move-exception v1

    .line 478
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 476
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "jObject":Lorg/json/JSONObject;
    .restart local v3    # "jObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "jObject":Lorg/json/JSONObject;
    .restart local v2    # "jObject":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public getRemovalAction(Z)Ljava/lang/String;
    .locals 3
    .param p1, "supportsArchive"    # Z

    .prologue
    .line 239
    if-eqz p1, :cond_0

    const-string/jumbo v0, "archive-and-delete"

    .line 242
    .local v0, "defaultAction":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 243
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "removal-action"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 239
    .end local v0    # "defaultAction":Ljava/lang/String;
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    const-string/jumbo v0, "delete"

    goto :goto_0
.end method

.method public getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/kingsoft/mail/preferences/MailPrefs;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Account-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getShowChatView()Z
    .locals 3

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 525
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "chat-view"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getShowSenderImages()Z
    .locals 3

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 513
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "conversation-list-sender-image"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getSilenceTime()I
    .locals 3

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 708
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/kingsoft/mail/preferences/MailPrefs;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    const-string/jumbo v1, "silence_period_start_end"

    const v2, 0x17000700

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 711
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWidgetConfiguration(I)Ljava/lang/String;
    .locals 3
    .param p1, "appWidgetId"    # I

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "widget-account-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWithPreMessageAttachment(Ljava/lang/String;)I
    .locals 4
    .param p1, "sharedPrefsName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 666
    const-string/jumbo v0, "/"

    const-string/jumbo v1, "\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 667
    iget-object v0, p0, Lcom/kingsoft/mail/preferences/MailPrefs;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Account-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "with-pre-message-attachment"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected hasMigrationCompleted()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "migrated-version"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public incNumOfDismissesForAutoSyncOff()V
    .locals 4

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "num-of-dismisses-auto-sync-off"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 567
    .local v0, "value":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "num-of-dismisses-auto-sync-off"

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 568
    return-void
.end method

.method public isAccountSynced(Ljava/lang/String;)Z
    .locals 4
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 577
    iget-object v0, p0, Lcom/kingsoft/mail/preferences/MailPrefs;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Account-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "exchange_account_sync"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isConversationPhotoTeaserAlreadyShown()Z
    .locals 3

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "conversation-photo-teaser-shown-three"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHeaderOnly()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 634
    iget-object v2, p0, Lcom/kingsoft/mail/preferences/MailPrefs;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingsoft/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 635
    .local v0, "networkType":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getHeaderOnlyConfig()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eq v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHeaderOnlyConfigSet()Z
    .locals 2

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "head_load_only"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLongPressToSelectTipAlreadyShown()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "long-press-to-select-tip-shown"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isWidgetConfigured(I)Z
    .locals 3
    .param p1, "appWidgetId"    # I

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "widget-account-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected performUpgrade(II)V
    .locals 2
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 169
    if-le p1, p2, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You appear to have downgraded your app. Please clear app data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    if-ne p1, p2, :cond_1

    .line 175
    :cond_1
    return-void
.end method

.method public removeAllQuickReplyCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountKey"    # Ljava/lang/String;

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 504
    return-void
.end method

.method public removeQuickReplyCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "accountKey"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;

    .prologue
    .line 484
    const/4 v1, 0x0

    .line 485
    .local v1, "jObject":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 487
    .local v3, "jString":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/preferences/MailPrefs;->getAllQuickReplyCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 488
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .end local v1    # "jObject":Lorg/json/JSONObject;
    .local v2, "jObject":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 497
    .end local v2    # "jObject":Lorg/json/JSONObject;
    .restart local v1    # "jObject":Lorg/json/JSONObject;
    :goto_1
    if-eqz v1, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 493
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "jObject":Lorg/json/JSONObject;
    .restart local v2    # "jObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "jObject":Lorg/json/JSONObject;
    .restart local v1    # "jObject":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public resetNumOfDismissesForAutoSyncOff()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 557
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "num-of-dismisses-auto-sync-off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 559
    .local v0, "value":I
    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "num-of-dismisses-auto-sync-off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 562
    :cond_0
    return-void
.end method

.method public setAccountSynced(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 572
    iget-object v0, p0, Lcom/kingsoft/mail/preferences/MailPrefs;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Account-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "exchange_account_sync"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 574
    return-void
.end method

.method public setBccToMyself(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "sharedPrefsName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 412
    const-string/jumbo v0, "/"

    const-string/jumbo v1, "\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 413
    iget-object v0, p0, Lcom/kingsoft/mail/preferences/MailPrefs;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Account-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "always-bcc-to-myself"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 415
    return-void
.end method

.method public setConversationPhotoTeaserAlreadyShown()V
    .locals 3

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "conversation-photo-teaser-shown-three"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 297
    return-void
.end method

.method public setDefaultReplyAll(Z)V
    .locals 2
    .param p1, "replyAll"    # Z

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "default-reply-all"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->notifyBackupPreferenceChanged()V

    .line 232
    return-void
.end method

.method public setDisplayImagesFromSender(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "sender"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p2, "allowedPatterns":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    if-eqz p2, :cond_2

    .line 355
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 356
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSenderWhitelistPatterns()Ljava/util/Set;

    move-result-object v0

    .line 360
    .local v0, "currentPatterns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, "patternRegex":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 363
    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v5

    .line 364
    .local v5, "updatedPatterns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {p0, v5}, Lcom/kingsoft/mail/preferences/MailPrefs;->setSenderWhitelistPatterns(Ljava/util/Set;)V

    .line 381
    .end local v0    # "currentPatterns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    .end local v3    # "patternRegex":Ljava/lang/String;
    .end local v5    # "updatedPatterns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 371
    :cond_2
    invoke-direct {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSenderWhitelist()Ljava/util/Set;

    move-result-object v6

    .line 372
    .local v6, "whitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 377
    invoke-static {v6}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v4

    .line 378
    .local v4, "updatedList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/preferences/MailPrefs;->setSenderWhitelist(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public setFlowSaveTipEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "flow_save_tip"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 646
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->notifyBackupPreferenceChanged()V

    .line 647
    return-void
.end method

.method public setFlowSaveTotalSize(J)V
    .locals 2
    .param p1, "size"    # J

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "flow_save_total_size"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 651
    return-void
.end method

.method public setHeaderOnlyConfig(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "head_load_only"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 630
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->notifyBackupPreferenceChanged()V

    .line 631
    return-void
.end method

.method public setLocalSearch(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "local-search"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 427
    return-void
.end method

.method public setLongPressToSelectTipAlreadyShown()V
    .locals 3

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "long-press-to-select-tip-shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 311
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->notifyBackupPreferenceChanged()V

    .line 312
    return-void
.end method

.method protected setMigrationComplete()V
    .locals 3

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "migrated-version"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    return-void
.end method

.method public setParallaxDirectionAlternative(Z)V
    .locals 2
    .param p1, "alternative"    # Z

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "ap-parallax-direction"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 543
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->notifyBackupPreferenceChanged()V

    .line 544
    return-void
.end method

.method public setParallaxSpeedAlternative(Z)V
    .locals 2
    .param p1, "alternative"    # Z

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "ap-parallax-speed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 531
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->notifyBackupPreferenceChanged()V

    .line 532
    return-void
.end method

.method public setPop3SortType(Ljava/lang/String;I)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "sort_type"    # I

    .prologue
    .line 605
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    :goto_0
    return-void

    .line 609
    :cond_0
    const-string/jumbo v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 613
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "account_pop3_server_sort_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public setQuickReplyCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "accountKey"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 439
    const/4 v1, 0x0

    .line 440
    .local v1, "jObject":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 442
    .local v3, "jString":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/preferences/MailPrefs;->getAllQuickReplyCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 443
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 444
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .end local v1    # "jObject":Lorg/json/JSONObject;
    .local v2, "jObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 448
    .end local v2    # "jObject":Lorg/json/JSONObject;
    .restart local v1    # "jObject":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_1
    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 456
    :cond_0
    return-void

    .line 446
    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "jObject":Lorg/json/JSONObject;
    .restart local v2    # "jObject":Lorg/json/JSONObject;
    move-object v1, v2

    .end local v2    # "jObject":Lorg/json/JSONObject;
    .restart local v1    # "jObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setRemovalAction(Ljava/lang/String;)V
    .locals 2
    .param p1, "removalAction"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "removal-action"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 252
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->notifyBackupPreferenceChanged()V

    .line 253
    return-void
.end method

.method public setSenderWhitelist(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "display_images"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 316
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->notifyBackupPreferenceChanged()V

    .line 317
    return-void
.end method

.method public setSenderWhitelistPatterns(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "patterns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "display_sender_images_patterns_set"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 320
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->notifyBackupPreferenceChanged()V

    .line 321
    return-void
.end method

.method public setShowChatView(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "chat-view"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 519
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->notifyBackupPreferenceChanged()V

    .line 520
    return-void
.end method

.method public setShowSenderImages(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "conversation-list-sender-image"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 407
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->notifyBackupPreferenceChanged()V

    .line 408
    return-void
.end method

.method public setSilenceTime(IIIIZ)Z
    .locals 5
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "silence"    # Z

    .prologue
    .line 695
    shl-int/lit8 v2, p1, 0x8

    add-int v1, v2, p2

    .line 696
    .local v1, "startTime":I
    shl-int/lit8 v2, p3, 0x8

    add-int v0, v2, p4

    .line 697
    .local v0, "endTime":I
    if-ne v1, v0, :cond_0

    .line 698
    const/4 p5, 0x0

    .line 700
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "silence_period_start_end"

    shl-int/lit8 v4, v1, 0x10

    add-int/2addr v4, v0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "donot_disturb_preference"

    invoke-interface {v2, v3, p5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 702
    if-ne v1, v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setWithPreMessageAttachment(Ljava/lang/String;I)V
    .locals 3
    .param p1, "sharedPrefsName"    # Ljava/lang/String;
    .param p2, "confirmYN"    # I

    .prologue
    .line 660
    const-string/jumbo v0, "/"

    const-string/jumbo v1, "\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 661
    iget-object v0, p0, Lcom/kingsoft/mail/preferences/MailPrefs;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Account-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "with-pre-message-attachment"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 663
    return-void
.end method
