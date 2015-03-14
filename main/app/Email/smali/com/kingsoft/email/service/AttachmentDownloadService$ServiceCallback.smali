.class Lcom/kingsoft/email/service/AttachmentDownloadService$ServiceCallback;
.super Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;


# direct methods
.method private constructor <init>(Lcom/kingsoft/email/service/AttachmentDownloadService;)V
    .locals 0

    .prologue
    .line 995
    iput-object p1, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/email/service/AttachmentDownloadService;Lcom/kingsoft/email/service/AttachmentDownloadService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/email/service/AttachmentDownloadService;
    .param p2, "x1"    # Lcom/kingsoft/email/service/AttachmentDownloadService$1;

    .prologue
    .line 995
    invoke-direct {p0, p1}, Lcom/kingsoft/email/service/AttachmentDownloadService$ServiceCallback;-><init>(Lcom/kingsoft/email/service/AttachmentDownloadService;)V

    return-void
.end method


# virtual methods
.method public loadAttachmentStatus(JJII)V
    .locals 9
    .param p1, "messageId"    # J
    .param p3, "attachmentId"    # J
    .param p5, "statusCode"    # I
    .param p6, "progress"    # I

    .prologue
    .line 1000
    iget-object v4, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v4, v4, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    # invokes: Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->getDownloadInProgress(J)Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    invoke-static {v4, p3, p4}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->access$800(Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;J)Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v2

    .line 1001
    .local v2, "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    if-eqz v2, :cond_1

    .line 1002
    const-string/jumbo v4, "AttachmentDownload"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1004
    packed-switch p5, :pswitch_data_0

    .line 1012
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, "code":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x1

    if-eq p5, v4, :cond_2

    .line 1016
    const-string/jumbo v4, "AttachmentDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ">> Attachment status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1021
    .end local v1    # "code":Ljava/lang/String;
    :cond_0
    :goto_1
    iput p5, v2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->lastStatusCode:I

    .line 1022
    iput p6, v2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->lastProgress:I

    .line 1023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    .line 1024
    iget-object v4, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v4, v4, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-static {v4, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 1025
    .local v0, "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v0, :cond_1

    const/4 v4, 0x1

    if-ne p5, v4, :cond_1

    .line 1026
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1027
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "uiDownloadedSize"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1028
    const-string/jumbo v4, "uiState"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1032
    iget-object v4, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v4, v4, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1035
    .end local v0    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    packed-switch p5, :pswitch_data_1

    .line 1042
    iget-object v4, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v4, v4, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v4, p3, p4, p5}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->endDownload(JI)V

    .line 1044
    :goto_2
    :pswitch_0
    return-void

    .line 1006
    :pswitch_1
    const-string/jumbo v1, "Success"

    .line 1007
    .restart local v1    # "code":Ljava/lang/String;
    goto :goto_0

    .line 1009
    .end local v1    # "code":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v1, "In progress"

    .line 1010
    .restart local v1    # "code":Ljava/lang/String;
    goto :goto_0

    .line 1017
    :cond_2
    iget v4, v2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->lastProgress:I

    add-int/lit8 v4, v4, 0xa

    if-lt p6, v4, :cond_0

    .line 1018
    const-string/jumbo v4, "AttachmentDownload"

    const-string/jumbo v5, ">> Attachment progress %d: %d%%"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 1039
    .end local v1    # "code":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v4, "AttachmentDownload"

    const-string/jumbo v5, "saving to external storage now!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 1004
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1035
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
