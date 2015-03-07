.class public interface abstract Lcom/kingsoft/mail/ui/SwipeHelper$Callback;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/SwipeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract canChildBeDismissed(Lcom/kingsoft/mail/ui/SwipeableItemView;)Z
.end method

.method public abstract cancelDismissCounter()V
.end method

.method public abstract getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
.end method

.method public abstract getLastSwipedItem()Lcom/kingsoft/mail/ui/LeaveBehindItem;
.end method

.method public abstract getSelectionSet()Lcom/kingsoft/mail/ui/ConversationSelectionSet;
.end method

.method public abstract onBeginDrag(Landroid/view/View;)V
.end method

.method public abstract onChildDismissed(Lcom/kingsoft/mail/ui/SwipeableItemView;Z)V
.end method

.method public abstract onDragCancelled(Lcom/kingsoft/mail/ui/SwipeableItemView;)V
.end method

.method public abstract onScroll()V
.end method
