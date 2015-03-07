.class public interface abstract Lcom/kingsoft/bitmap/DecodeAggregator$Callback;
.super Ljava/lang/Object;
.source "DecodeAggregator.java"

# interfaces
.implements Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/bitmap/DecodeAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback",
        "<",
        "Lcom/kingsoft/bitmap/DecodeTask$Request;",
        ">;"
    }
.end annotation
