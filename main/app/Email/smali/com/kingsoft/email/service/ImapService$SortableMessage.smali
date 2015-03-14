.class Lcom/kingsoft/email/service/ImapService$SortableMessage;
.super Ljava/lang/Object;
.source "ImapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/service/ImapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortableMessage"
.end annotation


# instance fields
.field private final mMessage:Lcom/kingsoft/emailcommon/mail/Message;

.field private final mUid:J


# direct methods
.method constructor <init>(Lcom/kingsoft/emailcommon/mail/Message;J)V
    .locals 0
    .param p1, "message"    # Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "uid"    # J

    .prologue
    .line 1581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1582
    iput-object p1, p0, Lcom/kingsoft/email/service/ImapService$SortableMessage;->mMessage:Lcom/kingsoft/emailcommon/mail/Message;

    .line 1583
    iput-wide p2, p0, Lcom/kingsoft/email/service/ImapService$SortableMessage;->mUid:J

    .line 1584
    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/email/service/ImapService$SortableMessage;)J
    .locals 2
    .param p0, "x0"    # Lcom/kingsoft/email/service/ImapService$SortableMessage;

    .prologue
    .line 1577
    iget-wide v0, p0, Lcom/kingsoft/email/service/ImapService$SortableMessage;->mUid:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/kingsoft/email/service/ImapService$SortableMessage;)Lcom/kingsoft/emailcommon/mail/Message;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/service/ImapService$SortableMessage;

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/kingsoft/email/service/ImapService$SortableMessage;->mMessage:Lcom/kingsoft/emailcommon/mail/Message;

    return-object v0
.end method
