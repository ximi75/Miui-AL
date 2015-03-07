.class Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;
.super Ljava/lang/Object;
.source "AttachmentManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewTime"
.end annotation


# instance fields
.field private mAttachmentId:J

.field private mPreviewTime:J

.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;JJ)V
    .locals 0
    .param p2, "attId"    # J
    .param p4, "time"    # J

    .prologue
    .line 804
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;->this$0:Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    iput-wide p2, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;->mAttachmentId:J

    .line 806
    iput-wide p4, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;->mPreviewTime:J

    .line 807
    return-void
.end method

.method static synthetic access$2100(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;)J
    .locals 2
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;

    .prologue
    .line 800
    iget-wide v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;->mAttachmentId:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;)J
    .locals 2
    .param p0, "x0"    # Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;

    .prologue
    .line 800
    iget-wide v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity$PreviewTime;->mPreviewTime:J

    return-wide v0
.end method
