.class Lcom/kingsoft/email/provider/EmailProvider$4;
.super Landroid/os/AsyncTask;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/provider/EmailProvider;->runSearchQuery(Landroid/content/Context;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/provider/EmailProvider;

.field final synthetic val$accountId:J

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$searchMailboxId:J


# direct methods
.method constructor <init>(Lcom/kingsoft/email/provider/EmailProvider;Landroid/content/Context;JJ)V
    .locals 0

    .prologue
    .line 8425
    iput-object p1, p0, Lcom/kingsoft/email/provider/EmailProvider$4;->this$0:Lcom/kingsoft/email/provider/EmailProvider;

    iput-object p2, p0, Lcom/kingsoft/email/provider/EmailProvider$4;->val$context:Landroid/content/Context;

    iput-wide p3, p0, Lcom/kingsoft/email/provider/EmailProvider$4;->val$accountId:J

    iput-wide p5, p0, Lcom/kingsoft/email/provider/EmailProvider$4;->val$searchMailboxId:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 8425
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/provider/EmailProvider$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 8429
    sput-boolean v12, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mSearchFinish:Z

    .line 8430
    iget-object v1, p0, Lcom/kingsoft/email/provider/EmailProvider$4;->val$context:Landroid/content/Context;

    iget-wide v2, p0, Lcom/kingsoft/email/provider/EmailProvider$4;->val$accountId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 8431
    .local v8, "protocol":Ljava/lang/String;
    const-string/jumbo v1, "eas"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8432
    # getter for: Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->access$1100()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/kingsoft/email/provider/EmailProvider$4;->val$accountId:J

    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider$4;->this$0:Lcom/kingsoft/email/provider/EmailProvider;

    # getter for: Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;
    invoke-static {v3}, Lcom/kingsoft/email/provider/EmailProvider;->access$1200(Lcom/kingsoft/email/provider/EmailProvider;)Lcom/android/emailcommon/service/SearchParams;

    move-result-object v3

    iget-wide v4, p0, Lcom/kingsoft/email/provider/EmailProvider$4;->val$searchMailboxId:J

    invoke-static/range {v0 .. v5}, Lcom/kingsoft/exchange/adapter/Search;->searchMessages(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v9

    .line 8434
    .local v9, "totalCount":I
    sput v9, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mSearchTotalCount:I

    .line 8435
    sput-boolean v11, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mSearchFinish:Z

    .line 8436
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 8437
    .local v6, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "totalCount"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8438
    iget-object v1, p0, Lcom/kingsoft/email/provider/EmailProvider$4;->this$0:Lcom/kingsoft/email/provider/EmailProvider;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/kingsoft/email/provider/EmailProvider$4;->val$searchMailboxId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v10, v10}, Lcom/kingsoft/email/provider/EmailProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8464
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v9    # "totalCount":I
    :cond_0
    :goto_0
    return-object v10

    .line 8444
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/email/provider/EmailProvider$4;->val$context:Landroid/content/Context;

    iget-wide v2, p0, Lcom/kingsoft/email/provider/EmailProvider$4;->val$accountId:J

    invoke-static {v1, v2, v3}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceForAccount(Landroid/content/Context;J)Lcom/android/emailcommon/service/EmailServiceProxy;

    move-result-object v0

    .line 8446
    .local v0, "service":Lcom/android/emailcommon/service/EmailServiceProxy;
    if-eqz v0, :cond_0

    .line 8448
    :try_start_0
    iget-wide v1, p0, Lcom/kingsoft/email/provider/EmailProvider$4;->val$accountId:J

    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider$4;->this$0:Lcom/kingsoft/email/provider/EmailProvider;

    # getter for: Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;
    invoke-static {v3}, Lcom/kingsoft/email/provider/EmailProvider;->access$1200(Lcom/kingsoft/email/provider/EmailProvider;)Lcom/android/emailcommon/service/SearchParams;

    move-result-object v3

    iget-wide v4, p0, Lcom/kingsoft/email/provider/EmailProvider$4;->val$searchMailboxId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/emailcommon/service/EmailServiceProxy;->searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v9

    .line 8451
    .restart local v9    # "totalCount":I
    new-instance v6, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 8452
    .restart local v6    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "totalCount"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8453
    iget-object v1, p0, Lcom/kingsoft/email/provider/EmailProvider$4;->this$0:Lcom/kingsoft/email/provider/EmailProvider;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/kingsoft/email/provider/EmailProvider$4;->val$searchMailboxId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v6, v3, v4}, Lcom/kingsoft/email/provider/EmailProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8455
    # getter for: Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EmailProvider#runSearchQuery. TotalCount to UI: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 8459
    sput v9, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mSearchTotalCount:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8460
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v9    # "totalCount":I
    :catch_0
    move-exception v7

    .line 8461
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "searchMessages"

    const-string/jumbo v2, "RemoteException"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v7, v3, v12

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
