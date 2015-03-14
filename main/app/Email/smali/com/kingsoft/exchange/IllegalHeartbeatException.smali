.class public Lcom/kingsoft/exchange/IllegalHeartbeatException;
.super Lcom/kingsoft/exchange/EasException;
.source "IllegalHeartbeatException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final mLegalHeartbeat:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "legalHeartbeat"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kingsoft/exchange/EasException;-><init>()V

    .line 25
    iput p1, p0, Lcom/kingsoft/exchange/IllegalHeartbeatException;->mLegalHeartbeat:I

    .line 26
    return-void
.end method
