.class public interface abstract Lcom/kingsoft/bitmap/Poolable;
.super Ljava/lang/Object;
.source "Poolable.java"


# virtual methods
.method public abstract acquireReference()V
.end method

.method public abstract getRefCount()I
.end method

.method public abstract isEligibleForPooling()Z
.end method

.method public abstract releaseReference()V
.end method
