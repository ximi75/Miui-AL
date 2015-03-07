.class public interface abstract Lcom/kingsoft/email/EmailApplication$BodyObserver;
.super Ljava/lang/Object;
.source "EmailApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/EmailApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BodyObserver"
.end annotation


# virtual methods
.method public abstract getMessageKey()Ljava/lang/String;
.end method

.method public abstract notifyChange()V
.end method
