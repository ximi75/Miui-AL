.class Lcom/kingsoft/mail/ui/AbstractActivityController$17;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;->moveToDraftAndEdit(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/browse/ConversationMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

.field final synthetic val$account:Lcom/kingsoft/mail/providers/Account;

.field final synthetic val$curMessage:Lcom/kingsoft/mail/browse/ConversationMessage;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/browse/ConversationMessage;)V
    .locals 0

    .prologue
    .line 3337
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$17;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$17;->val$account:Lcom/kingsoft/mail/providers/Account;

    iput-object p3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$17;->val$curMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3339
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$17;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$17;->val$account:Lcom/kingsoft/mail/providers/Account;

    iget-object v5, v5, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x3

    invoke-static {v4, v5, v6, v7}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 3341
    .local v0, "draftsFolder":Lcom/android/emailcommon/provider/Mailbox;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3342
    .local v2, "moveToDraft":Landroid/content/ContentValues;
    const-string/jumbo v4, "mailboxKey"

    iget-wide v5, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3343
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$17;->val$curMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v4, v4, Lcom/kingsoft/mail/browse/ConversationMessage;->messageFlags:J

    long-to-int v4, v4

    const v5, -0x300004

    and-int v1, v4, v5

    .line 3347
    .local v1, "flags":I
    const-string/jumbo v4, "flags"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3348
    const/4 v3, 0x0

    .line 3349
    .local v3, "serverId":Ljava/lang/String;
    const-string/jumbo v4, "syncServerId"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3350
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$17;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$17;->val$curMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v6, v6, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3353
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$17;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/kingsoft/mail/ui/AbstractActivityController$17$1;

    invoke-direct {v5, p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$17$1;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController$17;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3360
    return-void
.end method
