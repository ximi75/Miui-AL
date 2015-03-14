.class public interface abstract Lcom/kingsoft/email/provider/RefreshStatusMonitor$Callback;
.super Ljava/lang/Object;
.source "RefreshStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/RefreshStatusMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onRefreshCompleted(JI)V
.end method

.method public abstract onTimeout(J)V
.end method
