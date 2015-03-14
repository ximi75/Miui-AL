.class public Lcom/kingsoft/email/mail/attachment/AttachmentOffOn;
.super Ljava/lang/Object;
.source "AttachmentOffOn.java"


# static fields
.field public static final isAttDownloadViaOneKeyEnable:Z

.field public static isFileMd5Off:Z

.field public static isLocalSearchEabled:Z

.field public static isRestoreSortStateEabled:Z

.field public static final isSenderAddressOff:Z

.field public static sDownloadAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/kingsoft/email/mail/attachment/AttachmentOffOn;->isSenderAddressOff:Z

    .line 14
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/kingsoft/email/mail/attachment/AttachmentOffOn;->isFileMd5Off:Z

    .line 16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/kingsoft/email/mail/attachment/AttachmentOffOn;->isLocalSearchEabled:Z

    .line 18
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/kingsoft/email/mail/attachment/AttachmentOffOn;->isRestoreSortStateEabled:Z

    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingsoft/email/mail/attachment/AttachmentOffOn;->sDownloadAll:Z

    .line 23
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/kingsoft/email/mail/attachment/AttachmentOffOn;->isAttDownloadViaOneKeyEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
