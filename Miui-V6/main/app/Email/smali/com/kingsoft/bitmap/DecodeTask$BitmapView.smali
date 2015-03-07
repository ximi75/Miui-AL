.class public interface abstract Lcom/kingsoft/bitmap/DecodeTask$BitmapView;
.super Ljava/lang/Object;
.source "DecodeTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/bitmap/DecodeTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BitmapView"
.end annotation


# virtual methods
.method public abstract onDecodeBegin(Lcom/kingsoft/bitmap/DecodeTask$Request;)V
.end method

.method public abstract onDecodeCancel(Lcom/kingsoft/bitmap/DecodeTask$Request;)V
.end method

.method public abstract onDecodeComplete(Lcom/kingsoft/bitmap/DecodeTask$Request;Lcom/kingsoft/bitmap/ReusableBitmap;)V
.end method
