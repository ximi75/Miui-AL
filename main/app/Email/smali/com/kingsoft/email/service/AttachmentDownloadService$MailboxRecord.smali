.class Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MailboxRecord"
.end annotation


# instance fields
.field mId:J

.field mParentKey:J

.field mType:I


# direct methods
.method public constructor <init>(JIJ)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "parentKey"    # J

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-wide p1, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;->mId:J

    .line 305
    iput p3, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;->mType:I

    .line 306
    iput-wide p4, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;->mParentKey:J

    .line 307
    return-void
.end method
