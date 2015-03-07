.class final Lcom/kingsoft/email/service/AttachmentDownloadService$1;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/service/AttachmentDownloadService;->attachmentChanged(Landroid/content/Context;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$flags:I

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Landroid/content/Context;JI)V
    .locals 0

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$1;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$1;->val$id:J

    iput p4, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$1;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1259
    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$1;->val$context:Landroid/content/Context;

    iget-wide v3, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$1;->val$id:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 1260
    .local v0, "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v0, :cond_0

    .line 1264
    const-string/jumbo v2, "AttachmentDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "attachmentChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1265
    iget v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$1;->val$flags:I

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 1266
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$1;->val$context:Landroid/content/Context;

    const-class v3, Lcom/kingsoft/email/service/AttachmentDownloadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1267
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.email.AttachmentDownloadService.attachment"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1268
    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1270
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
