.class final Lcom/kingsoft/email/service/ImapService$3;
.super Ljava/lang/Object;
.source "ImapService.java"

# interfaces
.implements Lcom/kingsoft/emailcommon/mail/Folder$MessageUpdateCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/service/ImapService;->processPendingDataChange(Landroid/content/Context;Lcom/kingsoft/email/mail/Store;Lcom/android/emailcommon/provider/Mailbox;ZZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$newMessage:Lcom/android/emailcommon/provider/EmailContent$Message;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 0

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/kingsoft/email/service/ImapService$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/kingsoft/email/service/ImapService$3;->val$newMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageNotFound(Lcom/kingsoft/emailcommon/mail/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/kingsoft/emailcommon/mail/Message;

    .prologue
    .line 1292
    return-void
.end method

.method public onMessageUidChange(Lcom/kingsoft/emailcommon/mail/Message;Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "newUid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1282
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1283
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "syncServerId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    iget-object v1, p0, Lcom/kingsoft/email/service/ImapService$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/kingsoft/email/service/ImapService$3;->val$newMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1288
    return-void
.end method
