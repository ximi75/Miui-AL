.class public abstract Lcom/kingsoft/emailsync/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field public final mMessageId:J

.field public final mTimeStamp:J


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .param p1, "messageId"    # J

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/emailsync/Request;->mTimeStamp:J

    .line 29
    iput-wide p1, p0, Lcom/kingsoft/emailsync/Request;->mMessageId:J

    .line 30
    return-void
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method
