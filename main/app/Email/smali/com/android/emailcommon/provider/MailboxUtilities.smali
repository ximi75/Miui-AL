.class public Lcom/android/emailcommon/provider/MailboxUtilities;
.super Ljava/lang/Object;
.source "MailboxUtilities.java"


# static fields
.field private static final ACCOUNT_MAILBOX_CHANGE_FLAG:I = 0x200

.field public static final FIX_PARENT_KEYS_METHOD:Ljava/lang/String; = "fix_parent_keys"

.field private static final HIERARCHY_HIERARCHICAL_NAME:I = 0x3

.field private static final HIERARCHY_ID:I = 0x0

.field private static final HIERARCHY_NAME:I = 0x1

.field private static final HIERARCHY_PARENT_KEY:I = 0x2

.field private static final HIERARCHY_PROJECTION:[Ljava/lang/String;

.field public static final WHERE_PARENT_KEY_UNINITIALIZED:Ljava/lang/String; = "(parentKey isnull OR parentKey=0)"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 220
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "parentKey"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "hierarchicalName"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/MailboxUtilities;->HIERARCHY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMailboxConsistency(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 205
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget v4, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_0

    .line 208
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 209
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "parentKey"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "accountKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "accountSelector":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 212
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 214
    invoke-static {p0, v1}, Lcom/android/emailcommon/provider/MailboxUtilities;->fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/MailboxUtilities;->endMailboxChanges(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public static endMailboxChanges(Landroid/content/Context;J)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/MailboxUtilities;->setAccountSyncAdapterFlag(Landroid/content/Context;JZ)V

    .line 192
    return-void
.end method

.method public static fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountSelector"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 135
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 137
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(parentKey isnull OR parentKey=0) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "noParentKeySelection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 144
    .local v6, "noParentKeyMailboxCursor":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 163
    :goto_0
    return-void

    .line 146
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    invoke-static {p0, v6, p1}, Lcom/android/emailcommon/provider/MailboxUtilities;->setFlagsAndChildrensParentKey(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 148
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "parentServerId":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 152
    invoke-static {p0, p1, v7}, Lcom/android/emailcommon/provider/MailboxUtilities;->setFlagsAndChildrensParentKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 156
    .end local v7    # "parentServerId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 160
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "parentKey"

    const-wide/16 v9, -0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getHierarchicalName(Landroid/content/Context;JLjava/util/HashMap;Ljava/lang/String;J)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "parentId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 232
    .local p3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 243
    :goto_0
    return-object v2

    .line 234
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p5, v2

    if-nez v2, :cond_1

    .line 235
    move-object/from16 v9, p4

    .line 242
    .local v9, "hierarchicalName":Ljava/lang/String;
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v9

    .line 243
    goto :goto_0

    .line 237
    .end local v9    # "hierarchicalName":Ljava/lang/String;
    :cond_1
    move-wide/from16 v0, p5

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v10

    .line 238
    .local v10, "parent":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v10, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "??"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 239
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v10, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    iget-wide v7, v10, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    move-object v2, p0

    move-wide/from16 v3, p5

    move-object v5, p3

    invoke-static/range {v2 .. v8}, Lcom/android/emailcommon/provider/MailboxUtilities;->getHierarchicalName(Landroid/content/Context;JLjava/util/HashMap;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "hierarchicalName":Ljava/lang/String;
    goto :goto_1
.end method

.method private static setAccountSyncAdapterFlag(Landroid/content/Context;JZ)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "start"    # Z

    .prologue
    const/4 v6, 0x0

    .line 166
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 167
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "flags"

    if-eqz p3, :cond_1

    iget v2, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit16 v2, v2, 0x200

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_1
    iget v2, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v2, v2, -0x201

    goto :goto_1
.end method

.method public static setFlagsAndChildrensParentKey(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentCursor"    # Landroid/database/Cursor;
    .param p2, "accountSelector"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 52
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    .line 53
    .local v5, "selectionArgs":[Ljava/lang/String;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 55
    .local v16, "parentValues":Landroid/content/ContentValues;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 56
    .local v12, "parentId":J
    const/4 v11, 0x0

    .line 57
    .local v11, "parentFlags":I
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 58
    .local v15, "parentType":I
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 60
    .local v14, "parentServerId":Ljava/lang/String;
    const/16 v2, 0x40

    if-gt v15, v2, :cond_0

    .line 61
    or-int/lit8 v11, v11, 0x48

    .line 64
    :cond_0
    const/4 v2, 0x1

    if-eq v15, v2, :cond_1

    const/4 v2, 0x6

    if-eq v15, v2, :cond_1

    const/4 v2, 0x7

    if-eq v15, v2, :cond_1

    if-nez v15, :cond_2

    .line 66
    :cond_1
    or-int/lit8 v11, v11, 0x10

    .line 72
    :cond_2
    if-eqz v14, :cond_5

    .line 73
    const/4 v2, 0x0

    aput-object v14, v5, v2

    .line 74
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parentServerId=? AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 77
    .local v7, "childCursor":Landroid/database/Cursor;
    if-nez v7, :cond_3

    .line 101
    .end local v7    # "childCursor":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 79
    .restart local v7    # "childCursor":Landroid/database/Cursor;
    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 80
    or-int/lit8 v11, v11, 0x3

    .line 81
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 82
    .local v10, "childValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "parentKey"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 84
    .local v8, "childId":J
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 88
    .end local v8    # "childId":J
    .end local v10    # "childValues":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 98
    .end local v7    # "childCursor":Landroid/database/Cursor;
    :goto_2
    const-string/jumbo v2, "flags"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_5
    const-string/jumbo v2, "parentKey"

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Mailbox with null serverId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method public static setFlagsAndChildrensParentKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountSelector"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "serverId=? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 115
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-static {p0, v6, p1}, Lcom/android/emailcommon/provider/MailboxUtilities;->setFlagsAndChildrensParentKey(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static setupHierarchicalNames(Landroid/content/Context;J)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 247
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v11

    .line 248
    .local v11, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v11, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 251
    .local v15, "values":Landroid/content/ContentValues;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accountKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v9, v11, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "accountSelector":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 253
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v7, "nameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/MailboxUtilities;->HIERARCHY_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 256
    .local v12, "c":Landroid/database/Cursor;
    if-eqz v12, :cond_0

    .line 258
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 259
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 260
    .local v5, "id":J
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 261
    .local v8, "displayName":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v10}, Lcom/android/emailcommon/provider/MailboxUtilities;->getHierarchicalName(Landroid/content/Context;JLjava/util/HashMap;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v13

    .line 263
    .local v13, "name":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 265
    .local v14, "oldHierarchicalName":Ljava/lang/String;
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 270
    :cond_3
    const-string/jumbo v1, "hierarchicalName"

    invoke-virtual {v15, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v15, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 275
    .end local v5    # "id":J
    .end local v8    # "displayName":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "oldHierarchicalName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static startMailboxChanges(Landroid/content/Context;J)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 182
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/MailboxUtilities;->setAccountSyncAdapterFlag(Landroid/content/Context;JZ)V

    .line 183
    return-void
.end method
