.class public Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;
.super Ljava/util/ArrayList;
.source "CalendarSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/adapter/CalendarSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CalendarOperations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mAsSyncAdapterAttendees:Landroid/net/Uri;

.field private final mAsSyncAdapterEvents:Landroid/net/Uri;

.field private final mAsSyncAdapterExtendedProperties:Landroid/net/Uri;

.field private final mAsSyncAdapterReminders:Landroid/net/Uri;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field public mCount:I

.field private mEventStart:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "asSyncAdapterAttendees"    # Landroid/net/Uri;
    .param p3, "asSyncAdapterEvents"    # Landroid/net/Uri;
    .param p4, "asSyncAdapterReminders"    # Landroid/net/Uri;
    .param p5, "asSyncAdapterExtendedProperties"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iput v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mCount:I

    .line 113
    iput v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mEventStart:I

    .line 123
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mContentResolver:Landroid/content/ContentResolver;

    .line 124
    iput-object p2, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterAttendees:Landroid/net/Uri;

    .line 125
    iput-object p3, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterEvents:Landroid/net/Uri;

    .line 126
    iput-object p4, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterReminders:Landroid/net/Uri;

    .line 127
    iput-object p5, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterExtendedProperties:Landroid/net/Uri;

    .line 128
    return-void
.end method


# virtual methods
.method public add(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;)Z
    .locals 1
    .param p1, "op"    # Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    .prologue
    .line 132
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mCount:I

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 110
    check-cast p1, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    move-result v0

    return v0
.end method

.method public delete(JLjava/lang/String;)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "syncId"    # Ljava/lang/String;

    .prologue
    .line 221
    new-instance v0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterEvents:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 224
    new-instance v0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterEvents:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "original_sync_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 227
    return-void
.end method

.method public newAttendee(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 150
    iget v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mEventStart:I

    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    .line 151
    return-void
.end method

.method public newAttendee(Landroid/content/ContentValues;I)V
    .locals 3
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "eventStart"    # I

    .prologue
    .line 154
    new-instance v0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterAttendees:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "event_id"

    invoke-direct {v0, v1, v2, p2}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 158
    return-void
.end method

.method public newDelete(JLjava/lang/String;)I
    .locals 1
    .param p1, "id"    # J
    .param p3, "serverId"    # Ljava/lang/String;

    .prologue
    .line 144
    iget v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mCount:I

    .line 145
    .local v0, "offset":I
    invoke-virtual {p0, p1, p2, p3}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->delete(JLjava/lang/String;)V

    .line 146
    return v0
.end method

.method public newEvent(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;)I
    .locals 1
    .param p1, "op"    # Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    .prologue
    .line 138
    iget v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mCount:I

    iput v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mEventStart:I

    .line 139
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 140
    iget v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mEventStart:I

    return v0
.end method

.method public newException(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 167
    new-instance v0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterEvents:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 169
    return-void
.end method

.method public newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterExtendedProperties:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "event_id"

    iget v3, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mEventStart:I

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 177
    return-void
.end method

.method public newReminder(I)V
    .locals 1
    .param p1, "mins"    # I

    .prologue
    .line 217
    iget v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mEventStart:I

    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newReminder(II)V

    .line 218
    return-void
.end method

.method public newReminder(II)V
    .locals 4
    .param p1, "mins"    # I
    .param p2, "eventStart"    # I

    .prologue
    .line 209
    new-instance v0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterReminders:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "minutes"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "method"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "event_id"

    invoke-direct {v0, v1, v2, p2}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 214
    return-void
.end method

.method public updatedAttendee(Landroid/content/ContentValues;J)V
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "id"    # J

    .prologue
    .line 161
    const-string/jumbo v0, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    new-instance v0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterAttendees:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 164
    return-void
.end method

.method public updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "id"    # J

    .prologue
    const/4 v9, 0x0

    .line 181
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "event_id=? AND name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 184
    .local v6, "c":Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 186
    .local v7, "extendedPropertyId":J
    if-eqz v6, :cond_1

    .line 188
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 192
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_2

    .line 198
    new-instance v0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mAsSyncAdapterExtendedProperties:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 206
    :goto_0
    return-void

    .line 192
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 204
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
