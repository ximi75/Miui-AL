.class public interface abstract Lcom/kingsoft/mail/chat/ChatViewUtils$ChatFragmentOperation;
.super Ljava/lang/Object;
.source "ChatViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/ChatViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChatFragmentOperation"
.end annotation


# virtual methods
.method public abstract onViewClick(I)V
.end method

.method public abstract onViewLongClick(Landroid/view/View;I)V
.end method

.method public abstract updateMoreOptions(ILcom/kingsoft/mail/chat/ChatCacheItem;Lcom/kingsoft/mail/ui/QuickReplyBottomBar$OnOptionItemClickLisener;)V
.end method

.method public abstract updateReplyInputBoxHint(Lcom/kingsoft/mail/chat/ChatCacheItem;)V
.end method
