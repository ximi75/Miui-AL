.class public Lcom/kingsoft/emailsync/MessageMoveRequest;
.super Lcom/kingsoft/emailsync/Request;
.source "MessageMoveRequest.java"


# instance fields
.field public final mMailboxId:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "messageId"    # J
    .param p3, "mailboxId"    # J

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/emailsync/Request;-><init>(J)V

    .line 29
    iput-wide p3, p0, Lcom/kingsoft/emailsync/MessageMoveRequest;->mMailboxId:J

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 36
    instance-of v1, p1, Lcom/kingsoft/emailsync/MessageMoveRequest;

    if-nez v1, :cond_1

    .line 37
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/kingsoft/emailsync/MessageMoveRequest;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v1, p1, Lcom/kingsoft/emailsync/MessageMoveRequest;->mMessageId:J

    iget-wide v3, p0, Lcom/kingsoft/emailsync/MessageMoveRequest;->mMessageId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/kingsoft/emailsync/MessageMoveRequest;->mMessageId:J

    long-to-int v0, v0

    return v0
.end method
