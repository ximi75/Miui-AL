.class public abstract Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;
.super Landroid/content/ContentProvider;
.source "ConversationCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ConversationProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;
    }
.end annotation


# static fields
.field public static AUTHORITY:Ljava/lang/String; = null

.field public static final URI_SEPARATOR:Ljava/lang/String; = "://"

.field public static sUriPrefix:Ljava/lang/String;


# instance fields
.field private mResolver:Landroid/content/ContentResolver;

.field private mUndoDeleteUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUndoSequence:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1471
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 1570
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->mUndoSequence:I

    .line 1571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->mUndoDeleteUris:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$2500(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Landroid/content/ContentValues;

    .prologue
    .line 1471
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->insertLocal(Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method

.method private calOp(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p3, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1641
    .local p1, "opList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p2, "consMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;>;"
    const-string/jumbo v5, ""

    .line 1642
    .local v5, "idf":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 1643
    .local v6, "idsf":Ljava/lang/String;
    const/4 v7, 0x1

    .line 1644
    .local v7, "maxmerge":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_2

    .line 1645
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentProviderOperation;

    invoke-virtual {v14}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v13

    .line 1646
    .local v13, "urif":Landroid/net/Uri;
    if-nez v13, :cond_1

    .line 1644
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1647
    :cond_1
    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 1648
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1649
    const/4 v8, 0x0

    .line 1650
    .local v8, "mergeCount":I
    const-string/jumbo v14, "mergeCount"

    invoke-virtual {v13, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1653
    .local v9, "mergeCountStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1657
    :goto_2
    if-le v8, v7, :cond_0

    .line 1658
    move v7, v8

    goto :goto_1

    .line 1654
    :catch_0
    move-exception v3

    .line 1655
    .local v3, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    goto :goto_2

    .line 1661
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "mergeCount":I
    .end local v9    # "mergeCountStr":Ljava/lang/String;
    .end local v13    # "urif":Landroid/net/Uri;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_3

    .line 1662
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1664
    :cond_3
    invoke-virtual/range {p2 .. p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;

    .line 1665
    .local v10, "op":Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;
    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;
    invoke-static {v10}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->access$2100(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;)Landroid/net/Uri;

    move-result-object v14

    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->uriFromCachingUri(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v14}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1500(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v11

    .line 1666
    .local v11, "underlyingUri":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    const-string/jumbo v15, "ids"

    invoke-virtual {v14, v15, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string/jumbo v15, "maxMergeCount"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string/jumbo v15, "mailboxKey"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/kingsoft/mail/providers/Conversation;
    invoke-static {v10}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->access$2200(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v17

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/kingsoft/mail/providers/Conversation;->mailboxKey:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 1668
    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/kingsoft/mail/providers/Conversation;
    invoke-static {v10}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->access$2200(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v14

    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->execute(Landroid/net/Uri;Lcom/kingsoft/mail/providers/Conversation;)Landroid/content/ContentProviderOperation;
    invoke-static {v10, v11, v14}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->access$2300(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;Landroid/net/Uri;Lcom/kingsoft/mail/providers/Conversation;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 1669
    .local v2, "cpo":Landroid/content/ContentProviderOperation;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 1670
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;
    invoke-static {v10}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->access$2100(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;)Landroid/net/Uri;

    move-result-object v14

    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->uriFromCachingUri(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v14}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1500(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v12

    .line 1672
    .local v12, "underlyingUriTemp":Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v14

    return-object v14
.end method

.method private insertLocal(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1568
    return-void
.end method


# virtual methods
.method addToUndoSequence(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1574
    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->sSequence:I
    invoke-static {}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1600()I

    move-result v0

    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->mUndoSequence:I

    if-eq v0, v1, :cond_0

    .line 1575
    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->sSequence:I
    invoke-static {}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1600()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->mUndoSequence:I

    .line 1576
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->mUndoDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1578
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->mUndoDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1579
    return-void
.end method

.method public apply(Ljava/util/Collection;Lcom/kingsoft/mail/browse/ConversationCursor;)I
    .locals 21
    .param p2, "conversationCursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;",
            ">;",
            "Lcom/kingsoft/mail/browse/ConversationCursor;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1677
    .local p1, "ops":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1679
    .local v7, "batchMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1681
    .local v8, "consMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;>;"
    # operator++ for: Lcom/kingsoft/mail/browse/ConversationCursor;->sSequence:I
    invoke-static {}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1608()I

    .line 1684
    const/16 v16, 0x0

    .line 1685
    .local v16, "recalibrateRequired":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;

    .line 1686
    .local v14, "op":Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;
    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;
    invoke-static {v14}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->access$2100(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;)Landroid/net/Uri;

    move-result-object v18

    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->uriFromCachingUri(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static/range {v18 .. v18}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1500(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v17

    .line 1687
    .local v17, "underlyingUri":Landroid/net/Uri;
    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/kingsoft/mail/providers/Conversation;
    invoke-static {v14}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->access$2200(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    .line 1688
    .local v2, "accounturi":Landroid/net/Uri;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/kingsoft/mail/providers/Conversation;
    invoke-static {v14}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->access$2200(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v19

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/kingsoft/mail/providers/Conversation;->mailboxKey:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1690
    .local v12, "mailboxkey":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1692
    .local v3, "acountid":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1693
    .local v11, "key":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1694
    .local v4, "authOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-nez v4, :cond_1

    .line 1695
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "authOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1696
    .restart local v4    # "authOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v7, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    :cond_1
    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/kingsoft/mail/providers/Conversation;
    invoke-static {v14}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->access$2200(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->execute(Landroid/net/Uri;Lcom/kingsoft/mail/providers/Conversation;)Landroid/content/ContentProviderOperation;
    invoke-static {v14, v0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->access$2300(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;Landroid/net/Uri;Lcom/kingsoft/mail/providers/Conversation;)Landroid/content/ContentProviderOperation;

    move-result-object v9

    .line 1699
    .local v9, "cpo":Landroid/content/ContentProviderOperation;
    if-eqz v9, :cond_2

    .line 1700
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1701
    invoke-virtual {v8, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    :cond_2
    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mRecalibrateRequired:Z
    invoke-static {v14}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->access$2400(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1705
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1710
    .end local v2    # "accounturi":Landroid/net/Uri;
    .end local v3    # "acountid":Ljava/lang/String;
    .end local v4    # "authOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v9    # "cpo":Landroid/content/ContentProviderOperation;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "mailboxkey":Ljava/lang/String;
    .end local v14    # "op":Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;
    .end local v17    # "underlyingUri":Landroid/net/Uri;
    :cond_3
    if-eqz v16, :cond_4

    .line 1711
    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->recalibratePosition()V
    invoke-static/range {p2 .. p2}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1900(Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 1715
    :cond_4
    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->notifyDataChanged()V
    invoke-static/range {p2 .. p2}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$2000(Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 1718
    invoke-static {}, Lcom/kingsoft/mail/browse/ConversationCursor;->offUiThread()Z

    move-result v13

    .line 1719
    .local v13, "notUiThread":Z
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1720
    .local v5, "authority":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 1721
    .local v15, "opList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz v13, :cond_5

    .line 1723
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8, v5}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->calOp(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1724
    .local v6, "authorityT":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v15}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1725
    .end local v6    # "authorityT":Ljava/lang/String;
    :catch_0
    move-exception v18

    goto :goto_1

    .line 1729
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8, v5}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->calOp(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1730
    .restart local v6    # "authorityT":Ljava/lang/String;
    new-instance v18, Ljava/lang/Thread;

    new-instance v19, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v15}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider$1;-><init>(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct/range {v18 .. v19}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 1742
    .end local v5    # "authority":Ljava/lang/String;
    .end local v6    # "authorityT":Ljava/lang/String;
    .end local v15    # "opList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_6
    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->sSequence:I
    invoke-static {}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1600()I

    move-result v18

    return v18

    .line 1726
    .restart local v5    # "authority":Ljava/lang/String;
    .restart local v15    # "opList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_1
    move-exception v18

    goto :goto_1
.end method

.method clearMostlyDead(Landroid/net/Uri;Lcom/kingsoft/mail/browse/ConversationCursor;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "conversationCursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 1606
    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->uriStringFromCachingUri(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1700(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1607
    .local v0, "uriString":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->clearMostlyDead(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method commitMostlyDead(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 0
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "conversationCursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 1602
    invoke-virtual {p2, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->commitMostlyDead(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 1603
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 1511
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected call to ConversationProvider.delete"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method deleteLocal(Landroid/net/Uri;Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "conversationCursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1583
    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->uriStringFromCachingUri(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1700(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1584
    .local v0, "uriString":Ljava/lang/String;
    const-string/jumbo v1, "__deleted__"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->cacheValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {p2, v0, v1, v2}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1800(Lcom/kingsoft/mail/browse/ConversationCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1585
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->addToUndoSequence(Landroid/net/Uri;)V

    .line 1586
    return-void
.end method

.method protected abstract getAuthority()Ljava/lang/String;
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1516
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1500
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->insertLocal(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1501
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider$ProviderExecute;->opInsert(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 1484
    sput-object p0, Lcom/kingsoft/mail/browse/ConversationCursor;->sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    .line 1485
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->AUTHORITY:Ljava/lang/String;

    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->sUriPrefix:Ljava/lang/String;

    .line 1487
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->mResolver:Landroid/content/ContentResolver;

    .line 1488
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->mResolver:Landroid/content/ContentResolver;

    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->uriFromCachingUri(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1500(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method setMostlyDead(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 2
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "conversationCursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 1595
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    .line 1596
    .local v0, "uri":Landroid/net/Uri;
    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->uriStringFromCachingUri(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1700(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1597
    .local v1, "uriString":Ljava/lang/String;
    invoke-virtual {p2, v1, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->setMostlyDead(Ljava/lang/String;Lcom/kingsoft/mail/providers/Conversation;)V

    .line 1598
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->addToUndoSequence(Landroid/net/Uri;)V

    .line 1599
    return-void
.end method

.method undeleteLocal(Landroid/net/Uri;Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "conversationCursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1590
    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->uriStringFromCachingUri(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1700(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1591
    .local v0, "uriString":Ljava/lang/String;
    const-string/jumbo v1, "__deleted__"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->cacheValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {p2, v0, v1, v2}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1800(Lcom/kingsoft/mail/browse/ConversationCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1592
    return-void
.end method

.method public undo(Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 3
    .param p1, "conversationCursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 1611
    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->mUndoSequence:I

    if-nez v2, :cond_0

    .line 1625
    :goto_0
    return-void

    .line 1615
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->mUndoDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1616
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v1, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->clearMostlyDead(Landroid/net/Uri;Lcom/kingsoft/mail/browse/ConversationCursor;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1617
    invoke-virtual {p0, v1, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->undeleteLocal(Landroid/net/Uri;Lcom/kingsoft/mail/browse/ConversationCursor;)V

    goto :goto_1

    .line 1620
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->mUndoSequence:I

    .line 1621
    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->recalibratePosition()V
    invoke-static {p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1900(Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 1624
    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->notifyDataChanged()V
    invoke-static {p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$2000(Lcom/kingsoft/mail/browse/ConversationCursor;)V

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 1506
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected call to ConversationProvider.update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateLocal(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "conversationCursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1629
    if-nez p2, :cond_1

    .line 1636
    :cond_0
    return-void

    .line 1632
    :cond_1
    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->uriStringFromCachingUri(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1700(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1633
    .local v2, "uriString":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1634
    .local v0, "columnName":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->cacheValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {p3, v2, v0, v3}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1800(Lcom/kingsoft/mail/browse/ConversationCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
