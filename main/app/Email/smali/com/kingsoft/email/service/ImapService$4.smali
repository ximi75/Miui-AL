.class final Lcom/kingsoft/email/service/ImapService$4;
.super Ljava/lang/Object;
.source "ImapService.java"

# interfaces
.implements Lcom/kingsoft/emailcommon/mail/Folder$MessageUpdateCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/service/ImapService;->processPendingMoveToTrash(Landroid/content/Context;Lcom/kingsoft/email/mail/Store;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$newMessage:Lcom/android/emailcommon/provider/EmailContent$Message;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/provider/EmailContent$Message;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/kingsoft/email/service/ImapService$4;->val$newMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object p2, p0, Lcom/kingsoft/email/service/ImapService$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageNotFound(Lcom/kingsoft/emailcommon/mail/Message;)V
    .locals 3
    .param p1, "message"    # Lcom/kingsoft/emailcommon/mail/Message;

    .prologue
    const/4 v2, 0x0

    .line 1393
    iget-object v0, p0, Lcom/kingsoft/email/service/ImapService$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/service/ImapService$4;->val$newMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1394
    return-void
.end method

.method public onMessageUidChange(Lcom/kingsoft/emailcommon/mail/Message;Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "newUid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1380
    iget-object v1, p0, Lcom/kingsoft/email/service/ImapService$4;->val$newMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object p2, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 1381
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1382
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "syncServerId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    iget-object v1, p0, Lcom/kingsoft/email/service/ImapService$4;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/service/ImapService$4;->val$newMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1384
    return-void
.end method
