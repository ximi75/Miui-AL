.class public Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;
.super Ljava/lang/Object;
.source "ConversationCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConversationOperation"
.end annotation


# static fields
.field public static final ARCHIVE:I = 0x3

.field public static final DELETE:I = 0x0

.field public static final DISCARD_DRAFTS:I = 0x8

.field public static final INSERT:I = 0x1

.field private static final MOSTLY:I = 0x80

.field public static final MOSTLY_ARCHIVE:I = 0x83

.field public static final MOSTLY_DELETE:I = 0x80

.field public static final MOSTLY_DESTRUCTIVE_UPDATE:I = 0x82

.field public static final MUTE:I = 0x4

.field public static final REPORT_NOT_SPAM:I = 0x6

.field public static final REPORT_PHISHING:I = 0x7

.field public static final REPORT_SPAM:I = 0x5

.field public static final UPDATE:I = 0x2


# instance fields
.field private final mConversation:Lcom/kingsoft/mail/providers/Conversation;

.field private final mLocalDeleteOnUpdate:Z

.field private final mMostlyDead:Z

.field private mRecalibrateRequired:Z

.field private final mType:I

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationCursor;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/browse/ConversationCursor;ILcom/kingsoft/mail/providers/Conversation;)V
    .locals 1
    .param p2, "type"    # I
    .param p3, "conv"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 1819
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;-><init>(Lcom/kingsoft/mail/browse/ConversationCursor;ILcom/kingsoft/mail/providers/Conversation;Landroid/content/ContentValues;)V

    .line 1820
    return-void
.end method

.method public constructor <init>(Lcom/kingsoft/mail/browse/ConversationCursor;ILcom/kingsoft/mail/providers/Conversation;Landroid/content/ContentValues;)V
    .locals 1
    .param p2, "type"    # I
    .param p3, "conv"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p4, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1822
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1814
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mRecalibrateRequired:Z

    .line 1823
    iput p2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mType:I

    .line 1824
    iget-object v0, p3, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    .line 1825
    iput-object p3, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    .line 1826
    iput-object p4, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mValues:Landroid/content/ContentValues;

    .line 1827
    iget-boolean v0, p3, Lcom/kingsoft/mail/providers/Conversation;->localDeleteOnUpdate:Z

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mLocalDeleteOnUpdate:Z

    .line 1828
    invoke-virtual {p3}, Lcom/kingsoft/mail/providers/Conversation;->isMostlyDead()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mMostlyDead:Z

    .line 1829
    return-void
.end method

.method static synthetic access$2100(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;)Lcom/kingsoft/mail/providers/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;Landroid/net/Uri;Lcom/kingsoft/mail/providers/Conversation;)Landroid/content/ContentProviderOperation;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 1789
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->execute(Landroid/net/Uri;Lcom/kingsoft/mail/providers/Conversation;)Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;

    .prologue
    .line 1789
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mRecalibrateRequired:Z

    return v0
.end method

.method private execute(Landroid/net/Uri;Lcom/kingsoft/mail/providers/Conversation;)Landroid/content/ContentProviderOperation;
    .locals 8
    .param p1, "underlyingUri"    # Landroid/net/Uri;
    .param p2, "conv"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 1833
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "seq"

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->sSequence:I
    invoke-static {}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1600()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1837
    .local v0, "builder":Landroid/net/Uri$Builder;
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$2600(Lcom/kingsoft/mail/browse/ConversationCursor;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1839
    const-string/jumbo v4, "mergeCount"

    iget v5, p2, Lcom/kingsoft/mail/providers/Conversation;->mergeCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1842
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1843
    .local v3, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 1844
    .local v1, "op":Landroid/content/ContentProviderOperation;
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mType:I

    sparse-switch v4, :sswitch_data_0

    .line 1940
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No such ConversationOperation type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1846
    :sswitch_0
    iget-boolean v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mLocalDeleteOnUpdate:Z

    if-eqz v4, :cond_1

    .line 1847
    sget-object v4, Lcom/kingsoft/mail/browse/ConversationCursor;->sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v4, v5, v6}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->deleteLocal(Landroid/net/Uri;Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 1852
    :goto_0
    iget-boolean v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mMostlyDead:Z

    if-nez v4, :cond_2

    .line 1853
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 1944
    :goto_1
    return-object v1

    .line 1849
    :cond_1
    sget-object v4, Lcom/kingsoft/mail/browse/ConversationCursor;->sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mValues:Landroid/content/ContentValues;

    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v4, v5, v6, v7}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->updateLocal(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 1850
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mRecalibrateRequired:Z

    goto :goto_0

    .line 1855
    :cond_2
    sget-object v4, Lcom/kingsoft/mail/browse/ConversationCursor;->sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v4, v5, v6}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->commitMostlyDead(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/browse/ConversationCursor;)V

    goto :goto_1

    .line 1859
    :sswitch_1
    sget-object v4, Lcom/kingsoft/mail/browse/ConversationCursor;->sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v4, v5, v6}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->setMostlyDead(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 1860
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 1861
    goto :goto_1

    .line 1863
    :sswitch_2
    sget-object v4, Lcom/kingsoft/mail/browse/ConversationCursor;->sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mValues:Landroid/content/ContentValues;

    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->insertLocal(Landroid/net/Uri;Landroid/content/ContentValues;)V
    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->access$2700(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1864
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 1866
    goto :goto_1

    .line 1871
    :sswitch_3
    sget-object v4, Lcom/kingsoft/mail/browse/ConversationCursor;->sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v4, v5, v6}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->deleteLocal(Landroid/net/Uri;Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 1872
    iget-boolean v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mMostlyDead:Z

    if-nez v4, :cond_3

    .line 1873
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    goto :goto_1

    .line 1875
    :cond_3
    sget-object v4, Lcom/kingsoft/mail/browse/ConversationCursor;->sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v4, v5, v6}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->commitMostlyDead(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/browse/ConversationCursor;)V

    goto :goto_1

    .line 1879
    :sswitch_4
    sget-object v4, Lcom/kingsoft/mail/browse/ConversationCursor;->sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v4, v5, v6}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->setMostlyDead(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 1880
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 1881
    goto :goto_1

    .line 1883
    :sswitch_5
    sget-object v4, Lcom/kingsoft/mail/browse/ConversationCursor;->sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v4, v5, v6}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->deleteLocal(Landroid/net/Uri;Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 1884
    iget-boolean v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mMostlyDead:Z

    if-nez v4, :cond_4

    .line 1886
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string/jumbo v5, "operation"

    const-string/jumbo v6, "archive"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    goto/16 :goto_1

    .line 1891
    :cond_4
    sget-object v4, Lcom/kingsoft/mail/browse/ConversationCursor;->sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v4, v5, v6}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->commitMostlyDead(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/browse/ConversationCursor;)V

    goto/16 :goto_1

    .line 1895
    :sswitch_6
    sget-object v4, Lcom/kingsoft/mail/browse/ConversationCursor;->sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v4, v5, v6}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->setMostlyDead(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 1897
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string/jumbo v5, "operation"

    const-string/jumbo v6, "archive"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 1900
    goto/16 :goto_1

    .line 1902
    :sswitch_7
    iget-boolean v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mLocalDeleteOnUpdate:Z

    if-eqz v4, :cond_5

    .line 1903
    sget-object v4, Lcom/kingsoft/mail/browse/ConversationCursor;->sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v4, v5, v6}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->deleteLocal(Landroid/net/Uri;Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 1907
    :cond_5
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string/jumbo v5, "operation"

    const-string/jumbo v6, "mute"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 1910
    goto/16 :goto_1

    .line 1913
    :sswitch_8
    sget-object v4, Lcom/kingsoft/mail/browse/ConversationCursor;->sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v4, v5, v6}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->deleteLocal(Landroid/net/Uri;Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 1915
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    const-string/jumbo v2, "report_spam"

    .line 1920
    .local v2, "operation":Ljava/lang/String;
    :goto_2
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string/jumbo v5, "operation"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 1922
    goto/16 :goto_1

    .line 1915
    .end local v2    # "operation":Ljava/lang/String;
    :cond_6
    const-string/jumbo v2, "report_not_spam"

    goto :goto_2

    .line 1924
    :sswitch_9
    sget-object v4, Lcom/kingsoft/mail/browse/ConversationCursor;->sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v4, v5, v6}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->deleteLocal(Landroid/net/Uri;Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 1927
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string/jumbo v5, "operation"

    const-string/jumbo v6, "report_phishing"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 1930
    goto/16 :goto_1

    .line 1932
    :sswitch_a
    sget-object v4, Lcom/kingsoft/mail/browse/ConversationCursor;->sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v4, v5, v6}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->deleteLocal(Landroid/net/Uri;Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 1935
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string/jumbo v5, "operation"

    const-string/jumbo v6, "discard_drafts"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 1938
    goto/16 :goto_1

    .line 1844
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_5
        0x4 -> :sswitch_7
        0x5 -> :sswitch_8
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x80 -> :sswitch_4
        0x82 -> :sswitch_1
        0x83 -> :sswitch_6
    .end sparse-switch
.end method
