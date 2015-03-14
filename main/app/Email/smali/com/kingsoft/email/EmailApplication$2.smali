.class Lcom/kingsoft/email/EmailApplication$2;
.super Ljava/lang/Object;
.source "EmailApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/EmailApplication;->setApplicationIconNumber(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/EmailApplication;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/EmailApplication;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/kingsoft/email/EmailApplication$2;->this$0:Lcom/kingsoft/email/EmailApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v0, "boxs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v4, p0, Lcom/kingsoft/email/EmailApplication$2;->this$0:Lcom/kingsoft/email/EmailApplication;

    invoke-virtual {v4}, Lcom/kingsoft/email/EmailApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxIdsByType(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v1

    .line 186
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 188
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 190
    .local v2, "mailboxId":J
    iget-object v4, p0, Lcom/kingsoft/email/EmailApplication$2;->this$0:Lcom/kingsoft/email/EmailApplication;

    invoke-virtual {v4}, Lcom/kingsoft/email/EmailApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/android/emailcommon/provider/EmailContent;->CheckUnreadCount(Landroid/content/Context;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 193
    .end local v2    # "mailboxId":J
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_1
    return-void
.end method
