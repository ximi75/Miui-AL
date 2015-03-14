.class final Lcom/kingsoft/mail/utils/ContactHelper$1;
.super Ljava/lang/Thread;
.source "ContactHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/utils/ContactHelper;->fillCache(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$count:I

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$myEmail:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/kingsoft/mail/utils/ContactHelper$1;->val$email:Ljava/lang/String;

    iput-object p2, p0, Lcom/kingsoft/mail/utils/ContactHelper$1;->val$myEmail:Ljava/lang/String;

    iput p3, p0, Lcom/kingsoft/mail/utils/ContactHelper$1;->val$count:I

    iput-object p4, p0, Lcom/kingsoft/mail/utils/ContactHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 93
    const/4 v3, 0x0

    .line 94
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    .line 95
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 96
    .local v5, "orderBy":Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/mail/utils/ContactHelper$1;->val$email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const-string/jumbo v3, "myemail=? COLLATE NOCASE"

    .line 98
    new-array v4, v13, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/mail/utils/ContactHelper$1;->val$myEmail:Ljava/lang/String;

    aput-object v0, v4, v12

    .line 100
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_0
    iget v0, p0, Lcom/kingsoft/mail/utils/ContactHelper$1;->val$count:I

    if-lez v0, :cond_1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "id desc limit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingsoft/mail/utils/ContactHelper$1;->val$count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/utils/ContactHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v11, "email"

    aput-object v11, v2, v12

    const-string/jumbo v11, "name"

    aput-object v11, v2, v13

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 107
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 108
    new-instance v7, Ljava/util/HashMap;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 110
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/utils/ContactHelper$1;->val$myEmail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, "myEmailLower":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, "senderEmail":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "name":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 119
    .end local v8    # "myEmailLower":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "senderEmail":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v8    # "myEmailLower":Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 121
    # getter for: Lcom/kingsoft/mail/utils/ContactHelper;->displayNameCache:Ljava/util/Map;
    invoke-static {}, Lcom/kingsoft/mail/utils/ContactHelper;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 123
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "myEmailLower":Ljava/lang/String;
    :cond_4
    return-void
.end method
