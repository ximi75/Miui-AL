.class Lcom/kingsoft/email/activity/setup/MailboxSettings$2;
.super Lcom/kingsoft/emailcommon/utility/EmailAsyncTask;
.source "MailboxSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/MailboxSettings;->saveToDatabase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingsoft/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:J

.field final synthetic val$syncInterval:I

.field final synthetic val$syncIntervalChanged:Z

.field final synthetic val$syncLookback:I

.field final synthetic val$syncLookbackChanged:Z


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/MailboxSettings;Lcom/kingsoft/emailcommon/utility/EmailAsyncTask$Tracker;ZIZIJLandroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Lcom/kingsoft/emailcommon/utility/EmailAsyncTask$Tracker;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$2;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    iput-boolean p3, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$2;->val$syncIntervalChanged:Z

    iput p4, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$2;->val$syncInterval:I

    iput-boolean p5, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$2;->val$syncLookbackChanged:Z

    iput p6, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$2;->val$syncLookback:I

    iput-wide p7, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$2;->val$id:J

    iput-object p9, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/kingsoft/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/kingsoft/emailcommon/utility/EmailAsyncTask$Tracker;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 334
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/MailboxSettings$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 337
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 339
    .local v0, "cv":Landroid/content/ContentValues;
    iget-boolean v2, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$2;->val$syncIntervalChanged:Z

    if-eqz v2, :cond_0

    .line 340
    const-string/jumbo v2, "syncInterval"

    iget v3, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$2;->val$syncInterval:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    :cond_0
    iget-boolean v2, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$2;->val$syncLookbackChanged:Z

    if-eqz v2, :cond_1

    .line 343
    const-string/jumbo v2, "syncLookback"

    iget v3, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$2;->val$syncLookback:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    :cond_1
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$2;->val$id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 346
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 348
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Saved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 349
    return-object v5
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 334
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/MailboxSettings$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 358
    return-void
.end method
