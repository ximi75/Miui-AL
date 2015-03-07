.class public interface abstract Lcom/kingsoft/mail/browse/ConversationItemView$ConversationItemAreaClickListener;
.super Ljava/lang/Object;
.source "ConversationItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConversationItemAreaClickListener"
.end annotation


# virtual methods
.method public abstract getCurrentConversationListMode()I
.end method

.method public abstract onHeadPicClicked(Lcom/kingsoft/mail/providers/Conversation;Landroid/view/View;)V
.end method

.method public abstract onInfoIconClicked(Lcom/kingsoft/mail/providers/Conversation;)V
.end method

.method public abstract onStarClicked(Lcom/kingsoft/mail/providers/Conversation;)V
.end method
