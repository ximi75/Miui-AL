.class public Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;
.super Ljava/lang/Object;
.source "AutoDomainPrompt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$RequestDomainPromptCallback;,
        Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$MyMsg;,
        Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;,
        Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$WaitPreNetReqRunnable;
    }
.end annotation


# static fields
.field public static MAX_DATA_SIZE:I

.field public static MAX_SEACHER_DB_TIMES:I

.field public static MAX_SEACHER_NET_TIMES:I


# instance fields
.field private mCallBack:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$RequestDomainPromptCallback;

.field private mContext:Landroid/content/Context;

.field private mDBCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mHandler1:Landroid/os/Handler;

.field private mNetCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOthSysAccount:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x14

    sput v0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->MAX_DATA_SIZE:I

    .line 39
    const/16 v0, 0x32

    sput v0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->MAX_SEACHER_DB_TIMES:I

    .line 40
    const/16 v0, 0x18

    sput v0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->MAX_SEACHER_NET_TIMES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$RequestDomainPromptCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$RequestDomainPromptCallback;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mCallBack:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$RequestDomainPromptCallback;

    .line 57
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->getOthSysAccount()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mOthSysAccount:Ljava/util/HashSet;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mDBCache:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mNetCache:Ljava/util/HashMap;

    .line 60
    new-instance v0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$1;-><init>(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;)V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mHandler1:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mNetCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;)Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$RequestDomainPromptCallback;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mCallBack:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$RequestDomainPromptCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->requestNetPrompt(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mHandler1:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static distinctMerge(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "partDomain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "A":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "B":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 298
    .local v3, "temSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 299
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 302
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget v5, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->MAX_DATA_SIZE:I

    if-lt v4, v5, :cond_0

    .line 305
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private getDBData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 22
    .param p1, "partDomain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mDBCache:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mDBCache:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object v13, v2

    .line 248
    :goto_0
    return-object v13

    .line 205
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mDBCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    sget v3, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->MAX_SEACHER_DB_TIMES:I

    if-lt v2, v3, :cond_1

    const/4 v13, 0x0

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    .line 213
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v16, v2, -0x1

    .line 214
    .local v16, "end":I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 216
    .local v20, "preKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mDBCache:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v13, 0x0

    goto :goto_0

    .line 218
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mDBCache:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 219
    .local v19, "preCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 221
    :cond_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v3, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->MAX_DATA_SIZE:I

    if-ge v2, v3, :cond_7

    .line 222
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v13, "curCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 224
    .local v21, "tem":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_5

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 225
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    .end local v21    # "tem":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mDBCache:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 234
    .end local v13    # "curCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "end":I
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "preCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "preKey":Ljava/lang/String;
    :cond_7
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .restart local v13    # "curCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    const-string/jumbo v4, "domain_prompt_list"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "domain"

    aput-object v7, v5, v6

    const-string/jumbo v6, "domain like ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "num desc"

    sget v11, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->MAX_DATA_SIZE:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v14

    .line 240
    .local v14, "cursor":Landroid/database/Cursor;
    const-string/jumbo v2, "domain"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 241
    .local v18, "index":I
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 242
    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 243
    .local v15, "domain":Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 245
    .end local v15    # "domain":Ljava/lang/String;
    :cond_8
    if-eqz v14, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mDBCache:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private getNetData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "partDomain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 252
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mNetCache:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 253
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mNetCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 281
    :cond_0
    :goto_0
    return-object v5

    .line 255
    :cond_1
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mNetCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    sget v7, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->MAX_SEACHER_NET_TIMES:I

    if-ge v6, v7, :cond_0

    .line 257
    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "preKey":Ljava/lang/String;
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mNetCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 259
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->requestNetPrompt(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mNetCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 264
    .local v2, "preCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_3

    .line 265
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mHandler1:Landroid/os/Handler;

    new-instance v7, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$WaitPreNetReqRunnable;

    invoke-direct {v7, p0, v3, p1}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$WaitPreNetReqRunnable;-><init>(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 269
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sget v7, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->MAX_DATA_SIZE:I

    if-lt v6, v7, :cond_4

    .line 270
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->requestNetPrompt(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v0, "curCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 276
    .local v4, "tem":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_5

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 277
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    .end local v4    # "tem":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mNetCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v0

    .line 281
    goto :goto_0
.end method

.method private getOthSysAccount()Ljava/util/HashSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 76
    .local v5, "retSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/kingsoft/mail/utils/AccountUtils;->getAccounts(Landroid/content/Context;)[Lcom/kingsoft/mail/providers/Account;

    move-result-object v2

    .local v2, "arr$":[Lcom/kingsoft/mail/providers/Account;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 79
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "account":Lcom/kingsoft/mail/providers/Account;
    :cond_0
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 83
    .local v0, "account":Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/kingsoft/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/16 v7, 0x2a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 85
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 88
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_2
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 89
    return-object v5
.end method

.method private getPromptData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-object v1

    .line 170
    :cond_1
    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mOthSysAccount:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    .local v0, "account":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v8, v9, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 172
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    .end local v0    # "account":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sget v9, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->MAX_DATA_SIZE:I

    if-ge v8, v9, :cond_0

    .line 177
    const-string/jumbo v4, ""

    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 178
    .local v6, "partDomain":Ljava/lang/String;
    const-string/jumbo v8, "@"

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 179
    .local v7, "pos":I
    if-ltz v7, :cond_5

    .line 180
    const/4 v8, 0x0

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 181
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 187
    :goto_2
    invoke-direct {p0, v6}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->getDBData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 188
    .local v2, "dbDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    .line 189
    invoke-static {v1, v2, v4, v6}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->distinctMerge(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sget v9, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->MAX_DATA_SIZE:I

    if-ge v8, v9, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 194
    invoke-direct {p0, v6}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->getNetData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 195
    .local v5, "netDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    .line 196
    invoke-static {v1, v5, v4, v6}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->distinctMerge(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    .end local v2    # "dbDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "netDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    move-object v4, p1

    goto :goto_2
.end method

.method private requestNetPrompt(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mThread:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mThread:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mNetCache:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 288
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 289
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mThread:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;

    iget-object v1, v1, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;->mHandler2:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public endGetPrompt()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 115
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mThread:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mThread:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;

    invoke-virtual {v4}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mThread:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;

    iget-object v4, v4, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;->mHandler2:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 116
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mThread:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;

    iget-object v4, v4, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;->mHandler2:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    .line 118
    :cond_0
    iput-object v5, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mThread:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;

    .line 120
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 121
    :cond_1
    iput-object v5, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v2, "preDelKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mDBCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 127
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_3
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mDBCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 131
    .local v3, "temList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget v5, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->MAX_DATA_SIZE:I

    if-ge v4, v5, :cond_2

    .line 132
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "temList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mDBCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 139
    .end local v1    # "key":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mNetCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mNetCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 142
    .restart local v3    # "temList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_7

    .line 143
    :cond_8
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 146
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "temList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 147
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mNetCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 149
    .end local v1    # "key":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method public requestPrompt(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->getPromptData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 157
    .local v0, "promptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mCallBack:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$RequestDomainPromptCallback;

    invoke-interface {v1, v0}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$RequestDomainPromptCallback;->doPrompt(Ljava/util/ArrayList;)V

    .line 160
    :cond_0
    return-void
.end method

.method public startGetPrompt()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mThread:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mThread:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    :cond_0
    new-instance v1, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;-><init>(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$1;)V

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mThread:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;

    .line 101
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mThread:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;->start()V

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 105
    new-instance v0, Lcom/kingsoft/email/provider/DataBaseHelper;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/DataBaseHelper;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, "dataBaseHelper":Lcom/kingsoft/email/provider/DataBaseHelper;
    invoke-virtual {v0}, Lcom/kingsoft/email/provider/DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 108
    .end local v0    # "dataBaseHelper":Lcom/kingsoft/email/provider/DataBaseHelper;
    :cond_2
    return-void
.end method
