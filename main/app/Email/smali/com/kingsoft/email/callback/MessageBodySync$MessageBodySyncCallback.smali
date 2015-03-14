.class public interface abstract Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;
.super Ljava/lang/Object;
.source "MessageBodySync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/callback/MessageBodySync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageBodySyncCallback"
.end annotation


# virtual methods
.method public abstract onBodySyncFailed()V
.end method

.method public abstract onBodySyncFinished()V
.end method

.method public abstract onBodySyncStart()V
.end method
