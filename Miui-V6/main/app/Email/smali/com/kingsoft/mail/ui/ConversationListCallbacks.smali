.class public interface abstract Lcom/kingsoft/mail/ui/ConversationListCallbacks;
.super Ljava/lang/Object;
.source "ConversationListCallbacks.java"


# static fields
.field public static final CONVERSATION_LIST_SCROLL_POSITION_INDEX:Ljava/lang/String; = "index"

.field public static final CONVERSATION_LIST_SCROLL_POSITION_OFFSET:Ljava/lang/String; = "offset"


# virtual methods
.method public abstract commitDestructiveActions(Z)V
.end method

.method public abstract getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;
.end method

.method public abstract getConversationListScrollPosition(Ljava/lang/String;)Landroid/os/Parcelable;
.end method

.method public abstract getCurrentConversation()Lcom/kingsoft/mail/providers/Conversation;
.end method

.method public abstract getFilterSender()Ljava/lang/String;
.end method

.method public abstract isAnimating()Z
.end method

.method public abstract isInitialConversationLoading()Z
.end method

.method public abstract onCabModeEntered()V
.end method

.method public abstract onCabModeExited()V
.end method

.method public abstract onConversationSeen()V
.end method

.method public abstract onConversationSelected(Lcom/kingsoft/mail/providers/Conversation;ZZ)V
.end method

.method public abstract registerConversationListObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract registerConversationLoadedObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract scrollListViewToPosition(IZ)V
.end method

.method public abstract setConversationListScrollPosition(Ljava/lang/String;Landroid/os/Parcelable;)V
.end method

.method public abstract setCurrentConversation(Lcom/kingsoft/mail/providers/Conversation;)V
.end method

.method public abstract setDetachedMode()V
.end method

.method public abstract unregisterConversationListObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract unregisterConversationLoadedObserver(Landroid/database/DataSetObserver;)V
.end method
