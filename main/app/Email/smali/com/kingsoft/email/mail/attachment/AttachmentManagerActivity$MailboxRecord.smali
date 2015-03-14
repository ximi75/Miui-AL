.class Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;
.super Ljava/lang/Object;
.source "AttachmentManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxRecord"
.end annotation


# instance fields
.field mId:J

.field mParentKey:J

.field mType:I

.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;JIJ)V
    .locals 0
    .param p2, "id"    # J
    .param p4, "type"    # I
    .param p5, "parentKey"    # J

    .prologue
    .line 895
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iput-wide p2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;->mId:J

    .line 897
    iput p4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;->mType:I

    .line 898
    iput-wide p5, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$MailboxRecord;->mParentKey:J

    .line 899
    return-void
.end method
