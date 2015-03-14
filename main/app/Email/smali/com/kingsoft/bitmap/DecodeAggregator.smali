.class public Lcom/kingsoft/bitmap/DecodeAggregator;
.super Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;
.source "DecodeAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/bitmap/DecodeAggregator$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator",
        "<",
        "Lcom/kingsoft/bitmap/DecodeTask$Request;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingsoft/bitmap/ContiguousFIFOAggregator;-><init>()V

    .line 23
    return-void
.end method
