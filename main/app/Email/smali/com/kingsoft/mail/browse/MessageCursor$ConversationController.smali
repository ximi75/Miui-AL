.class public interface abstract Lcom/kingsoft/mail/browse/MessageCursor$ConversationController;
.super Ljava/lang/Object;
.source "MessageCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/MessageCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConversationController"
.end annotation


# virtual methods
.method public abstract getAccount()Lcom/kingsoft/mail/providers/Account;
.end method

.method public abstract getConversation()Lcom/kingsoft/mail/providers/Conversation;
.end method

.method public abstract getListController()Lcom/kingsoft/mail/ui/ConversationUpdater;
.end method

.method public abstract getMessageCursor()Lcom/kingsoft/mail/browse/MessageCursor;
.end method
