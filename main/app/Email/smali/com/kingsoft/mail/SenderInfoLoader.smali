.class public Lcom/kingsoft/mail/SenderInfoLoader;
.super Landroid/content/AsyncTaskLoader;
.source "SenderInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/google/common/collect/ImmutableMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/kingsoft/mail/ContactInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DATA_COLS:[Ljava/lang/String;

.field private static final DATA_CONTACT_ID_COLUMN:I = 0x3

.field private static final DATA_EMAIL_COLUMN:I = 0x1

.field private static final DATA_PHOTO_ID_COLUMN:I = 0x4

.field private static final DATA_STATUS_COLUMN:I = 0x2

.field static final MAX_QUERY_PARAMS:I = 0x4b

.field private static final PHOTO_COLS:[Ljava/lang/String;

.field private static final PHOTO_PHOTO_COLUMN:I = 0x1

.field private static final PHOTO_PHOTO_ID_COLUMN:I


# instance fields
.field private final mSenders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "contact_presence"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/mail/SenderInfoLoader;->DATA_COLS:[Ljava/lang/String;

    .line 63
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data15"

    aput-object v1, v0, v4

    sput-object v0, Lcom/kingsoft/mail/SenderInfoLoader;->PHOTO_COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "senders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 77
    iput-object p2, p0, Lcom/kingsoft/mail/SenderInfoLoader;->mSenders:Ljava/util/Set;

    .line 78
    return-void
.end method

.method public static appendQuestionMarks(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)V
    .locals 4
    .param p0, "query"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v0, 0x1

    .line 233
    .local v0, "first":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 234
    .local v2, "item":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 239
    :goto_1
    const/16 v3, 0x3f

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 237
    :cond_0
    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 241
    .end local v2    # "item":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method static getTruncatedQueryParams(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "params":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    const/16 v6, 0x4b

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 213
    .local v4, "truncatedLen":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    .local v3, "truncated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 216
    .local v0, "copied":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    .local v2, "param":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v0, v0, 0x1

    .line 219
    if-lt v0, v4, :cond_0

    .line 224
    .end local v2    # "param":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static loadContactPhotos(Landroid/content/ContentResolver;Ljava/util/Set;Z)Lcom/google/common/collect/ImmutableMap;
    .locals 27
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "decodeBitmaps"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "senderSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 115
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v24

    .line 118
    .local v24, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/mail/ContactInfo;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v18

    .line 119
    .local v18, "photoIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/util/Pair<Ljava/lang/String;Lcom/kingsoft/mail/ContactInfo;>;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v19, "photoIdsAsStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/kingsoft/mail/SenderInfoLoader;->getTruncatedQueryParams(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v25

    .line 123
    .local v25, "senders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mimetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "LOWER(data1)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 126
    .local v22, "query":Ljava/lang/StringBuilder;
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/kingsoft/mail/SenderInfoLoader;->appendQuestionMarks(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)V

    .line 127
    const/16 v2, 0x29

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/kingsoft/mail/SenderInfoLoader;->DATA_COLS:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v25 .. v25}, Lcom/kingsoft/mail/SenderInfoLoader;->toStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 133
    if-nez v11, :cond_1

    .line 134
    const/4 v2, 0x0

    .line 203
    if-eqz v11, :cond_0

    .line 204
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 208
    :cond_0
    :goto_0
    return-object v2

    .line 137
    :cond_1
    const/4 v13, -0x1

    .line 138
    .local v13, "i":I
    :goto_1
    add-int/lit8 v13, v13, 0x1

    :try_start_1
    invoke-interface {v11, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 139
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 140
    .local v12, "email":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 141
    .local v8, "contactId":J
    const/16 v26, 0x0

    .line 142
    .local v26, "status":Ljava/lang/Integer;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 144
    .local v10, "contactUri":Landroid/net/Uri;
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 145
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 148
    :cond_2
    new-instance v23, Lcom/kingsoft/mail/ContactInfo;

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v10, v1}, Lcom/kingsoft/mail/ContactInfo;-><init>(Landroid/net/Uri;Ljava/lang/Integer;)V

    .line 150
    .local v23, "result":Lcom/kingsoft/mail/ContactInfo;
    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 151
    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 152
    .local v16, "photoId":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .end local v16    # "photoId":J
    :cond_3
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 201
    .end local v8    # "contactId":J
    .end local v10    # "contactUri":Landroid/net/Uri;
    .end local v12    # "email":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v23    # "result":Lcom/kingsoft/mail/ContactInfo;
    .end local v26    # "status":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .line 203
    if-eqz v11, :cond_4

    .line 204
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 208
    :cond_4
    :goto_2
    invoke-static/range {v24 .. v24}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    goto :goto_0

    .line 157
    .restart local v13    # "i":I
    :cond_5
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 159
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 160
    invoke-static/range {v24 .. v24}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 203
    if-eqz v11, :cond_0

    .line 204
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 165
    :cond_6
    :try_start_3
    invoke-static/range {v19 .. v19}, Lcom/kingsoft/mail/SenderInfoLoader;->getTruncatedQueryParams(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v19

    .line 166
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 167
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/kingsoft/mail/SenderInfoLoader;->appendQuestionMarks(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)V

    .line 169
    const/16 v2, 0x29

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/kingsoft/mail/SenderInfoLoader;->PHOTO_COLS:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v19 .. v19}, Lcom/kingsoft/mail/SenderInfoLoader;->toStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 174
    if-nez v11, :cond_7

    .line 175
    invoke-static/range {v24 .. v24}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 203
    if-eqz v11, :cond_0

    .line 204
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 178
    :cond_7
    const/4 v13, -0x1

    .line 179
    :cond_8
    :goto_3
    add-int/lit8 v13, v13, 0x1

    :try_start_4
    invoke-interface {v11, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 180
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 181
    .local v15, "photoBytes":[B
    if-eqz v15, :cond_8

    .line 185
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 186
    .restart local v16    # "photoId":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/Pair;

    .line 187
    .local v20, "prev":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/kingsoft/mail/ContactInfo;>;"
    move-object/from16 v0, v20

    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 188
    .restart local v12    # "email":Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/kingsoft/mail/ContactInfo;

    .line 190
    .local v21, "prevResult":Lcom/kingsoft/mail/ContactInfo;
    if-eqz p2, :cond_a

    .line 191
    const/4 v2, 0x0

    array-length v3, v15

    invoke-static {v15, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 193
    .local v14, "photo":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/kingsoft/mail/ContactInfo;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/kingsoft/mail/ContactInfo;->contactUri:Landroid/net/Uri;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/kingsoft/mail/ContactInfo;->status:Ljava/lang/Integer;

    invoke-direct {v2, v3, v4, v14}, Lcom/kingsoft/mail/ContactInfo;-><init>(Landroid/net/Uri;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v24

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 203
    .end local v12    # "email":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "photo":Landroid/graphics/Bitmap;
    .end local v15    # "photoBytes":[B
    .end local v16    # "photoId":J
    .end local v20    # "prev":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/kingsoft/mail/ContactInfo;>;"
    .end local v21    # "prevResult":Lcom/kingsoft/mail/ContactInfo;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_9

    .line 204
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    .line 197
    .restart local v12    # "email":Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v15    # "photoBytes":[B
    .restart local v16    # "photoId":J
    .restart local v20    # "prev":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/kingsoft/mail/ContactInfo;>;"
    .restart local v21    # "prevResult":Lcom/kingsoft/mail/ContactInfo;
    :cond_a
    :try_start_5
    new-instance v2, Lcom/kingsoft/mail/ContactInfo;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/kingsoft/mail/ContactInfo;->contactUri:Landroid/net/Uri;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/kingsoft/mail/ContactInfo;->status:Ljava/lang/Integer;

    invoke-direct {v2, v3, v4, v15}, Lcom/kingsoft/mail/ContactInfo;-><init>(Landroid/net/Uri;Ljava/lang/Integer;[B)V

    move-object/from16 v0, v24

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 203
    .end local v12    # "email":Ljava/lang/String;
    .end local v15    # "photoBytes":[B
    .end local v16    # "photoId":J
    .end local v20    # "prev":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/kingsoft/mail/ContactInfo;>;"
    .end local v21    # "prevResult":Lcom/kingsoft/mail/ContactInfo;
    :cond_b
    if-eqz v11, :cond_4

    .line 204
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2
.end method

.method public static toStringArray(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "items":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public loadInBackground()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kingsoft/mail/SenderInfoLoader;->mSenders:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/SenderInfoLoader;->mSenders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/SenderInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/SenderInfoLoader;->mSenders:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/SenderInfoLoader;->loadContactPhotos(Landroid/content/ContentResolver;Ljava/util/Set;Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/kingsoft/mail/SenderInfoLoader;->loadInBackground()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/kingsoft/mail/SenderInfoLoader;->forceLoad()V

    .line 83
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/kingsoft/mail/SenderInfoLoader;->cancelLoad()Z

    .line 88
    return-void
.end method
