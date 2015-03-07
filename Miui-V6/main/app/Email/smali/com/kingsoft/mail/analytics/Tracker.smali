.class public interface abstract Lcom/kingsoft/mail/analytics/Tracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# virtual methods
.method public abstract activityStart(Landroid/app/Activity;)V
.end method

.method public abstract activityStop(Landroid/app/Activity;)V
.end method

.method public abstract debugDispatchNow()V
.end method

.method public abstract sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract sendMenuItemEvent(Ljava/lang/String;ILjava/lang/String;J)V
.end method

.method public abstract sendView(Ljava/lang/String;)V
.end method

.method public abstract setCustomDimension(ILjava/lang/String;)V
.end method

.method public abstract setCustomMetric(ILjava/lang/Long;)V
.end method
