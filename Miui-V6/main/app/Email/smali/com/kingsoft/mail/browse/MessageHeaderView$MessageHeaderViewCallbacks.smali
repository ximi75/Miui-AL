.class public interface abstract Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;
.super Ljava/lang/Object;
.source "MessageHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/MessageHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageHeaderViewCallbacks"
.end annotation


# virtual methods
.method public abstract downloadInlineImage(Ljava/lang/Long;Ljava/lang/String;)V
.end method

.method public abstract getFragmentManager()Landroid/app/FragmentManager;
.end method

.method public abstract getMessageTransforms(Lcom/kingsoft/mail/providers/Message;)Ljava/lang/String;
.end method

.method public abstract setMessageDetailsExpanded(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;ZI)V
.end method

.method public abstract setMessageExpanded(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;III)V
.end method

.method public abstract setMessageSpacerHeight(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;I)V
.end method

.method public abstract showExternalResources(Lcom/kingsoft/mail/providers/Message;)V
.end method

.method public abstract showExternalResources(Ljava/lang/String;)V
.end method

.method public abstract supportsMessageTransforms()Z
.end method
