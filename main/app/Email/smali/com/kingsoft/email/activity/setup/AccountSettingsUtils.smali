.class public Lcom/kingsoft/email/activity/setup/AccountSettingsUtils;
.super Ljava/lang/Object;
.source "AccountSettingsUtils.java"


# static fields
.field public static final ACCOUNT_TYPE_EXCHANGE:I = 0x0

.field public static final ACCOUNT_TYPE_IMAP:I = 0x2

.field public static final ACCOUNT_TYPE_POP3:I = 0x1

.field public static final ACCOUNT_TYPE_UNDEFINED:I = -0x1

.field private static final DOMAIN_SEPARATOR:Ljava/lang/String; = "\\."

.field public static final FLAG_AUTHENTICATE:I = 0x4

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_SSL:I = 0x1

.field public static final FLAG_TLS:I = 0x2

.field public static final FLAG_TRUST_ALL:I = 0x8

.field public static final USER_CONFIG_MASK:I = 0xb

.field private static final WILD_CHARACTER:C = '?'

.field private static final WILD_STRING:Ljava/lang/String; = "*"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "passwordField"    # Landroid/widget/EditText;

    .prologue
    const/16 v3, 0x20

    .line 208
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 209
    .local v1, "password":Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 210
    .local v0, "length":I
    if-lez v0, :cond_1

    .line 211
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 212
    :cond_0
    const v2, 0x7f10001f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 215
    :cond_1
    return-void
.end method

.method static checkUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 330
    const-string/jumbo v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const-string/jumbo v0, "\\"

    const-string/jumbo v1, "\\$"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->isSaved()Z

    move-result v7

    if-nez v7, :cond_2

    .line 61
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09000f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "defaultQuickResponses":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 67
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "accountKey"

    iget-wide v8, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 69
    .local v6, "resolver":Landroid/content/ContentResolver;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 72
    .local v5, "quickResponse":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 73
    const-string/jumbo v7, "quickResponse"

    invoke-virtual {v1, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v7, Lcom/android/emailcommon/provider/QuickResponse;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 69
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    .end local v5    # "quickResponse":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 80
    const-string/jumbo v7, "key"

    iget-wide v8, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v7, "email"

    iget-object v8, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v7, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_ACCOUNT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 89
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "defaultQuickResponses":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "resolver":Landroid/content/ContentResolver;
    :goto_1
    invoke-static {p0}, Lcom/kingsoft/email/provider/AccountBackupRestore;->backup(Landroid/content/Context;)V

    .line 90
    return-void

    .line 84
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_2
    invoke-static {p1, p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsUtils;->getAccountContentValues(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v1

    .line 85
    .restart local v1    # "cv":Landroid/content/ContentValues;
    invoke-virtual {p1, p0, v1}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_1
.end method

.method public static findProviderForDomain(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "protocal"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/kingsoft/emailcommon/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/kingsoft/emailcommon/VendorPolicyLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/kingsoft/emailcommon/VendorPolicyLoader;->findProviderForDomain(Ljava/lang/String;)Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    move-result-object v1

    .line 112
    .local v1, "p":Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    if-nez v1, :cond_0

    .line 113
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/kingsoft/email/activity/setup/AccountSettingsUtils;->findProviderForDomainFromDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 118
    :cond_0
    :goto_0
    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static findProviderForDomainFromDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "protocal"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v11, Lcom/kingsoft/email/provider/DataBaseHelper;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/kingsoft/email/provider/DataBaseHelper;-><init>(Landroid/content/Context;)V

    .line 258
    .local v11, "dataBaseHelper":Lcom/kingsoft/email/provider/DataBaseHelper;
    invoke-virtual {v11}, Lcom/kingsoft/email/provider/DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 259
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v3, "domain_config"

    const/4 v4, 0x0

    const-string/jumbo v5, "domain=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "level desc"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 260
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 261
    .local v12, "head":Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    const/16 v23, 0x0

    .line 262
    .local v23, "tem":Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 263
    new-instance v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    invoke-direct {v13}, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;-><init>()V

    .line 265
    .local v13, "provider":Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    const/4 v3, 0x1

    iput v3, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->from:I

    .line 267
    const-string/jumbo v3, "id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->id:Ljava/lang/String;

    .line 268
    const-string/jumbo v3, "domain"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->domain:Ljava/lang/String;

    .line 270
    const-string/jumbo v3, "recv_flags"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 271
    .local v15, "recv_flags":I
    const-string/jumbo v3, "send_flags"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 272
    .local v20, "send_flags":I
    iput v15, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->recv_flag:I

    .line 273
    move/from16 v0, v20

    iput v0, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->send_flag:I

    .line 274
    const-string/jumbo v3, "recv_address"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 275
    .local v14, "recv_address":Ljava/lang/String;
    const-string/jumbo v3, "send_address"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 276
    .local v19, "send_address":Ljava/lang/String;
    iput-object v14, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->recv_address:Ljava/lang/String;

    .line 277
    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->send_address:Ljava/lang/String;

    .line 278
    const-string/jumbo v3, "recv_protocol"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 279
    .local v16, "recv_protocol":Ljava/lang/String;
    const-string/jumbo v3, "send_protocol"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 280
    .local v21, "send_protocol":Ljava/lang/String;
    const-string/jumbo v3, "recv_template"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 281
    .local v17, "recv_template":Ljava/lang/String;
    const-string/jumbo v3, "send_template"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 283
    .local v22, "send_template":Ljava/lang/String;
    const-string/jumbo v3, "recv_port"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->recvPort:I

    .line 284
    const-string/jumbo v3, "send_port"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->sendPort:I

    .line 286
    const/16 v18, 0x0

    .line 287
    .local v18, "secheme":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/android/emailcommon/provider/HostAuth;->getSchemeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->incomingUriTemplate:Ljava/lang/String;

    .line 290
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/HostAuth;->getSchemeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->outgoingUriTemplate:Ljava/lang/String;

    .line 293
    invoke-static/range {v17 .. v17}, Lcom/kingsoft/email/activity/setup/AccountSettingsUtils;->checkUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    .line 294
    invoke-static/range {v22 .. v22}, Lcom/kingsoft/email/activity/setup/AccountSettingsUtils;->checkUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    .line 297
    :try_start_0
    const-string/jumbo v3, "\\"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    const-string/jumbo v3, "\\\\"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iput-object v3, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->domain2:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_1
    iget-object v3, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->incomingUriTemplate:Ljava/lang/String;

    const-string/jumbo v4, "eas"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    const/4 v3, 0x0

    iput v3, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->accountType:I

    .line 315
    :goto_2
    if-nez v12, :cond_4

    .line 316
    move-object v12, v13

    .line 320
    :goto_3
    move-object/from16 v23, v13

    .line 321
    goto/16 :goto_0

    .line 300
    :cond_0
    :try_start_1
    const-string/jumbo v3, ""

    iput-object v3, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->domain2:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 302
    :catch_0
    move-exception v3

    goto :goto_1

    .line 307
    :cond_1
    iget-object v3, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->incomingUriTemplate:Ljava/lang/String;

    const-string/jumbo v4, "pop"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 308
    const/4 v3, 0x1

    iput v3, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->accountType:I

    goto :goto_2

    .line 309
    :cond_2
    iget-object v3, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->incomingUriTemplate:Ljava/lang/String;

    const-string/jumbo v4, "imap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 310
    const/4 v3, 0x2

    iput v3, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->accountType:I

    goto :goto_2

    .line 312
    :cond_3
    const/4 v3, -0x1

    iput v3, v13, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->accountType:I

    goto :goto_2

    .line 318
    :cond_4
    move-object/from16 v0, v23

    iput-object v13, v0, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->next:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    goto :goto_3

    .line 322
    .end local v13    # "provider":Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    .end local v14    # "recv_address":Ljava/lang/String;
    .end local v15    # "recv_flags":I
    .end local v16    # "recv_protocol":Ljava/lang/String;
    .end local v17    # "recv_template":Ljava/lang/String;
    .end local v18    # "secheme":Ljava/lang/String;
    .end local v19    # "send_address":Ljava/lang/String;
    .end local v20    # "send_flags":I
    .end local v21    # "send_protocol":Ljava/lang/String;
    .end local v22    # "send_template":Ljava/lang/String;
    :cond_5
    if-eqz v10, :cond_6

    .line 323
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 324
    :cond_6
    if-eqz v2, :cond_7

    .line 325
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 326
    :cond_7
    return-object v12
.end method

.method public static getAccountContentValues(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 98
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "displayName"

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "senderName"

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v1, "signature"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v1, "syncInterval"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string/jumbo v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string/jumbo v1, "syncLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string/jumbo v1, "securitySyncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-object v0
.end method

.method public static inferServerName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "incoming"    # Ljava/lang/String;
    .param p3, "outgoing"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2e

    .line 174
    const/4 v5, 0x0

    .line 175
    .local v5, "keepFirstChar":I
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 176
    .local v1, "firstDotIndex":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 178
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "firstWord":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09002a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "hostPrefixes":[Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/kingsoft/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 182
    .local v0, "canSubstituteSmtp":Z
    const-string/jumbo v6, "mail"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 184
    .local v4, "isMail":Z
    if-eqz p2, :cond_1

    .line 186
    if-nez v0, :cond_0

    if-eqz v4, :cond_2

    .line 201
    .end local v0    # "canSubstituteSmtp":Z
    .end local v2    # "firstWord":Ljava/lang/String;
    .end local v3    # "hostPrefixes":[Ljava/lang/String;
    .end local v4    # "isMail":Z
    .end local p1    # "server":Ljava/lang/String;
    .end local p2    # "incoming":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 192
    .restart local v0    # "canSubstituteSmtp":Z
    .restart local v2    # "firstWord":Ljava/lang/String;
    .restart local v3    # "hostPrefixes":[Ljava/lang/String;
    .restart local v4    # "isMail":Z
    .restart local p1    # "server":Ljava/lang/String;
    .restart local p2    # "incoming":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_3

    .line 193
    add-int/lit8 v5, v1, 0x1

    .line 201
    .end local v0    # "canSubstituteSmtp":Z
    .end local v2    # "firstWord":Ljava/lang/String;
    .end local v3    # "hostPrefixes":[Ljava/lang/String;
    .end local v4    # "isMail":Z
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_4

    .end local p2    # "incoming":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 194
    .restart local v0    # "canSubstituteSmtp":Z
    .restart local v2    # "firstWord":Ljava/lang/String;
    .restart local v3    # "hostPrefixes":[Ljava/lang/String;
    .restart local v4    # "isMail":Z
    .restart local p2    # "incoming":Ljava/lang/String;
    :cond_3
    if-eqz v4, :cond_2

    goto :goto_0

    .end local v0    # "canSubstituteSmtp":Z
    .end local v2    # "firstWord":Ljava/lang/String;
    .end local v3    # "hostPrefixes":[Ljava/lang/String;
    .end local v4    # "isMail":Z
    :cond_4
    move-object p2, p3

    .line 201
    goto :goto_1
.end method

.method static matchProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "testDomain"    # Ljava/lang/String;
    .param p1, "providerDomain"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 128
    const-string/jumbo v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "testParts":[Ljava/lang/String;
    const-string/jumbo v6, "\\."

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "providerParts":[Ljava/lang/String;
    array-length v6, v4

    array-length v7, v2

    if-eq v6, v7, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v5

    .line 133
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v4

    if-ge v0, v6, :cond_3

    .line 134
    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "testPart":Ljava/lang/String;
    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "providerPart":Ljava/lang/String;
    const-string/jumbo v6, "*"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v3, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsUtils;->matchWithWildcards(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 133
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    .end local v1    # "providerPart":Ljava/lang/String;
    .end local v3    # "testPart":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static matchWithWildcards(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "testPart"    # Ljava/lang/String;
    .param p1, "providerPart"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 146
    .local v2, "providerLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v4

    .line 149
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 150
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 151
    .local v3, "testChar":C
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 152
    .local v1, "providerChar":C
    if-eq v3, v1, :cond_2

    const/16 v5, 0x3f

    if-ne v1, v5, :cond_0

    .line 149
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    .end local v1    # "providerChar":C
    .end local v3    # "testChar":C
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method
