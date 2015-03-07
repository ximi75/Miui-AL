.class Lcom/kingsoft/email/provider/EmailProvider$3;
.super Ljava/lang/Object;
.source "EmailProvider.java"

# interfaces
.implements Lcom/kingsoft/email/provider/RefreshStatusMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/provider/EmailProvider;->uiFolderRefresh(Lcom/android/emailcommon/provider/Mailbox;I)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/provider/EmailProvider;

.field final synthetic val$mailbox:Lcom/android/emailcommon/provider/Mailbox;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/provider/EmailProvider;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 0

    .prologue
    .line 8343
    iput-object p1, p0, Lcom/kingsoft/email/provider/EmailProvider$3;->this$0:Lcom/kingsoft/email/provider/EmailProvider;

    iput-object p2, p0, Lcom/kingsoft/email/provider/EmailProvider$3;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshCompleted(JI)V
    .locals 7
    .param p1, "mailboxId"    # J
    .param p3, "result"    # I

    .prologue
    const/4 v5, 0x0

    .line 8347
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 8348
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "uiSyncStatus"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8350
    const-string/jumbo v0, "uiLastSyncResult"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8353
    iget-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider$3;->this$0:Lcom/kingsoft/email/provider/EmailProvider;

    # getter for: Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/kingsoft/email/provider/EmailProvider;->access$900(Lcom/kingsoft/email/provider/EmailProvider;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "Mailbox"

    const-string/jumbo v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8357
    iget-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider$3;->this$0:Lcom/kingsoft/email/provider/EmailProvider;

    iget-object v1, p0, Lcom/kingsoft/email/provider/EmailProvider$3;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider$3;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    # invokes: Lcom/kingsoft/email/provider/EmailProvider;->notifyUIFolder(JJZ)V
    invoke-static/range {v0 .. v5}, Lcom/kingsoft/email/provider/EmailProvider;->access$1000(Lcom/kingsoft/email/provider/EmailProvider;JJZ)V

    .line 8359
    return-void
.end method

.method public onTimeout(J)V
    .locals 0
    .param p1, "mailboxId"    # J

    .prologue
    .line 8364
    return-void
.end method
