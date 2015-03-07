.class public interface abstract Lcom/kingsoft/mail/ui/ConversationUpdater;
.super Ljava/lang/Object;
.source "ConversationUpdater.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/ConversationListCallbacks;


# virtual methods
.method public abstract assignFolder(Ljava/util/Collection;Ljava/util/Collection;ZZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/ui/FolderOperation;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;ZZZ)V"
        }
    .end annotation
.end method

.method public abstract delete(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Lcom/kingsoft/mail/ui/DestructiveAction;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract getBatchAction(I)Lcom/kingsoft/mail/ui/DestructiveAction;
.end method

.method public abstract getDeferredAction(ILjava/util/Collection;Z)Lcom/kingsoft/mail/ui/DestructiveAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;Z)",
            "Lcom/kingsoft/mail/ui/DestructiveAction;"
        }
    .end annotation
.end method

.method public abstract getDeferredBatchAction(I)Lcom/kingsoft/mail/ui/DestructiveAction;
.end method

.method public abstract getDeferredRemoveFolder(Ljava/util/Collection;Lcom/kingsoft/mail/providers/Folder;ZZZ)Lcom/kingsoft/mail/ui/DestructiveAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Lcom/kingsoft/mail/providers/Folder;",
            "ZZZ)",
            "Lcom/kingsoft/mail/ui/DestructiveAction;"
        }
    .end annotation
.end method

.method public abstract getListener()Landroid/content/DialogInterface$OnClickListener;
.end method

.method public abstract makeDialogListener(IZ)V
.end method

.method public abstract markConversationMessagesUnread(Lcom/kingsoft/mail/providers/Conversation;Ljava/util/Set;[B)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/providers/Conversation;",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;[B)V"
        }
    .end annotation
.end method

.method public abstract markConversationsRead(Ljava/util/Collection;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;ZZ)V"
        }
    .end annotation
.end method

.method public abstract refreshConversationList()V
.end method

.method public abstract showNextConversation(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract starMessage(Lcom/kingsoft/mail/browse/ConversationMessage;Z)V
.end method

.method public abstract updateConversation(Ljava/util/Collection;Landroid/content/ContentValues;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation
.end method

.method public abstract updateConversation(Ljava/util/Collection;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract updateConversation(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract updateConversation(Ljava/util/Collection;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation
.end method
