.class public interface abstract Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;
.super Ljava/lang/Object;
.source "ComposeActivity.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/compose/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SendOrSaveCallback"
.end annotation


# virtual methods
.method public abstract getMessage()Lcom/kingsoft/mail/providers/Message;
.end method

.method public abstract initializeSendOrSave(Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;)V
.end method

.method public abstract notifyMessageIdAllocated(Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;Lcom/kingsoft/mail/providers/Message;)V
.end method

.method public abstract sendOrSaveFinished(Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;Z)V
.end method
