.class public Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;
.super Ljava/lang/Object;
.source "AndroidAccountUtils.java"


# static fields
.field private static final ACCOUNT_SYNC_INTERVAL_ADDRESS_COLUMN:I = 0x0

.field private static final ACCOUNT_SYNC_INTERVAL_INTERVAL_COLUMN:I = 0x1

.field private static final ACCOUNT_SYNC_INTERVAL_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "emailAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "syncInterval"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;->ACCOUNT_SYNC_INTERVAL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixNormalPeriodicSyncForAllAccounts(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-static {p0}, Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;->getSyncIntervals(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 161
    .local v2, "syncIntervals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p0}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfoList(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 162
    .local v1, "service":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    iget-object v3, v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;->fixPeriodicSyncs(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 164
    .end local v1    # "service":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    :cond_0
    return-void
.end method

.method private static fixPeriodicSyncs(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "amAccountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "syncIntervals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 101
    .local v1, "amAccounts":[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 103
    .local v0, "amAccount":Landroid/accounts/Account;
    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;->removePeriodicSyncForAccount(Landroid/accounts/Account;)V

    .line 108
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 109
    .local v6, "syncInterval":Ljava/lang/Integer;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_0

    .line 111
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    sget-object v8, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    const-wide/32 v11, 0xea60

    mul-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-static {v0, v7, v8, v9, v10}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "amAccount":Landroid/accounts/Account;
    .end local v1    # "amAccounts":[Landroid/accounts/Account;
    .end local v2    # "arr$":[Landroid/accounts/Account;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "syncInterval":Ljava/lang/Integer;
    :catch_0
    move-exception v3

    .line 116
    .local v3, "e":Ljava/lang/NullPointerException;
    sget-object v7, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "get account error, accountType = %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 119
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :cond_1
    return-void
.end method

.method public static fixSpeicalPeriodicSyncForAllAccounts(Landroid/content/Context;JLandroid/os/Bundle;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncInterval"    # J
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 168
    invoke-static {p0}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfoList(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 169
    .local v1, "service":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    iget-object v2, v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    invoke-static {p0, v2, p1, p2, p3}, Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;->fixSpeicalPeriodicSyncs(Landroid/content/Context;Ljava/lang/String;JLandroid/os/Bundle;)V

    goto :goto_0

    .line 171
    .end local v1    # "service":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    :cond_0
    return-void
.end method

.method public static fixSpeicalPeriodicSyncForSingleAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "syncInterval"    # J
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 205
    invoke-static {p0, p1, p2}, Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;->getAndroidAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 206
    .local v0, "androidAccount":Landroid/accounts/Account;
    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;->removePeriodicSyncForAccount(Landroid/accounts/Account;)V

    .line 207
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_0

    .line 208
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v0, v1, p5, p3, p4}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 211
    :cond_0
    return-void
.end method

.method private static fixSpeicalPeriodicSyncs(Landroid/content/Context;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "amAccountType"    # Ljava/lang/String;
    .param p2, "syncInterval"    # J
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 129
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 131
    .local v1, "amAccounts":[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 133
    .local v0, "amAccount":Landroid/accounts/Account;
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-lez v6, :cond_0

    .line 134
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v0, v6, p4, p2, p3}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "amAccount":Landroid/accounts/Account;
    .end local v1    # "amAccounts":[Landroid/accounts/Account;
    .end local v2    # "arr$":[Landroid/accounts/Account;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v3

    .line 138
    .local v3, "e":Ljava/lang/NullPointerException;
    sget-object v6, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "get account error, accountType = %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 139
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 141
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :cond_1
    return-void
.end method

.method public static getAndroidAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0, p2}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v4

    .line 37
    .local v4, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    iget-object v7, v4, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 39
    .local v1, "amAccounts":[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v2, v3

    .line 40
    .local v0, "amAccount":Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 44
    .end local v0    # "amAccount":Landroid/accounts/Account;
    :goto_1
    return-object v0

    .line 39
    .restart local v0    # "amAccount":Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "amAccount":Landroid/accounts/Account;
    :cond_1
    new-instance v0, Landroid/accounts/Account;

    iget-object v6, v4, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    invoke-direct {v0, p1, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getSyncIntervals(Landroid/content/Context;)Ljava/util/Map;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;->ACCOUNT_SYNC_INTERVAL_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 61
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v7

    .line 65
    .local v7, "periodicSyncs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 74
    .end local v7    # "periodicSyncs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_1
    return-object v7

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    goto :goto_1
.end method

.method public static removePeridicSyncForAllAccounts(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    invoke-static {p0}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfoList(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 183
    .local v6, "service":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    iget-object v8, v6, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 185
    .local v1, "amAccounts":[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 187
    .local v0, "amAccount":Landroid/accounts/Account;
    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;->removePeriodicSyncForAccount(Landroid/accounts/Account;)V

    .line 185
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "amAccount":Landroid/accounts/Account;
    .end local v1    # "amAccounts":[Landroid/accounts/Account;
    .end local v2    # "arr$":[Landroid/accounts/Account;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "service":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    :cond_1
    return-void
.end method

.method public static removePeriodicSyncForAccount(Landroid/accounts/Account;)V
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    .line 193
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;->removePeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 194
    const-string/jumbo v0, "com.android.calendar"

    invoke-static {p0, v0}, Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;->removePeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 195
    const-string/jumbo v0, "com.android.contacts"

    invoke-static {p0, v0}, Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;->removePeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method private static removePeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 4
    .param p0, "amAccount"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p0, p1}, Landroid/content/ContentResolver;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 86
    .local v2, "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/PeriodicSync;

    .line 87
    .local v1, "sync":Landroid/content/PeriodicSync;
    iget-object v3, v1, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-static {p0, p1, v3}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 89
    .end local v1    # "sync":Landroid/content/PeriodicSync;
    :cond_0
    return-void
.end method

.method public static removeSpeicalPeriodicSyncForAllAccounts(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 175
    invoke-static {p0}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfoList(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 176
    .local v1, "service":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    iget-object v2, v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    invoke-static {p0, v2, p1}, Lcom/kingsoft/emailcommon/utility/AndroidAccountUtils;->removeSpeicalPeriodicSyncs(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 178
    .end local v1    # "service":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    :cond_0
    return-void
.end method

.method private static removeSpeicalPeriodicSyncs(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "amAccountType"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 145
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 147
    .local v1, "amAccounts":[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 148
    .local v0, "amAccount":Landroid/accounts/Account;
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v0, v6, p2}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "amAccount":Landroid/accounts/Account;
    .end local v1    # "amAccounts":[Landroid/accounts/Account;
    .end local v2    # "arr$":[Landroid/accounts/Account;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/NullPointerException;
    sget-object v6, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "get account error, accountType = %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 152
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 154
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :cond_0
    return-void
.end method
