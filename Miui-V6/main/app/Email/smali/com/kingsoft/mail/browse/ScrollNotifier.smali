.class public interface abstract Lcom/kingsoft/mail/browse/ScrollNotifier;
.super Ljava/lang/Object;
.source "ScrollNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/ScrollNotifier$ScrollListener;
    }
.end annotation


# virtual methods
.method public abstract addScrollListener(Lcom/kingsoft/mail/browse/ScrollNotifier$ScrollListener;)V
.end method

.method public abstract computeHorizontalScrollExtent()I
.end method

.method public abstract computeHorizontalScrollOffset()I
.end method

.method public abstract computeHorizontalScrollRange()I
.end method

.method public abstract computeVerticalScrollExtent()I
.end method

.method public abstract computeVerticalScrollOffset()I
.end method

.method public abstract computeVerticalScrollRange()I
.end method

.method public abstract removeScrollListener(Lcom/kingsoft/mail/browse/ScrollNotifier$ScrollListener;)V
.end method
