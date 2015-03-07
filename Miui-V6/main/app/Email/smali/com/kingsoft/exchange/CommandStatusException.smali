.class public Lcom/kingsoft/exchange/CommandStatusException;
.super Lcom/kingsoft/exchange/EasException;
.source "CommandStatusException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final mItemId:Ljava/lang/String;

.field public final mStatus:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/kingsoft/exchange/EasException;-><init>()V

    .line 138
    iput p1, p0, Lcom/kingsoft/exchange/CommandStatusException;->mStatus:I

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/exchange/CommandStatusException;->mItemId:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "itemId"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/kingsoft/exchange/EasException;-><init>()V

    .line 143
    iput p1, p0, Lcom/kingsoft/exchange/CommandStatusException;->mStatus:I

    .line 144
    iput-object p2, p0, Lcom/kingsoft/exchange/CommandStatusException;->mItemId:Ljava/lang/String;

    .line 145
    return-void
.end method
