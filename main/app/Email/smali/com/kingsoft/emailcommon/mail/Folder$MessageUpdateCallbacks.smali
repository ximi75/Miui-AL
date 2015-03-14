.class public interface abstract Lcom/kingsoft/emailcommon/mail/Folder$MessageUpdateCallbacks;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/emailcommon/mail/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageUpdateCallbacks"
.end annotation


# virtual methods
.method public abstract onMessageNotFound(Lcom/kingsoft/emailcommon/mail/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract onMessageUidChange(Lcom/kingsoft/emailcommon/mail/Message;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method
