.class final Lcom/kingsoft/mail/analytics/Analytics$StubTracker;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/kingsoft/mail/analytics/Tracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StubTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/analytics/Analytics$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/analytics/Analytics$1;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/kingsoft/mail/analytics/Analytics$StubTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public activityStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 77
    return-void
.end method

.method public activityStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 80
    return-void
.end method

.method public debugDispatchNow()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 83
    return-void
.end method

.method public sendMenuItemEvent(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "itemResId"    # I
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 86
    return-void
.end method

.method public sendView(Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Ljava/lang/String;

    .prologue
    .line 89
    return-void
.end method

.method public setCustomDimension(ILjava/lang/String;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 92
    return-void
.end method

.method public setCustomMetric(ILjava/lang/Long;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    .line 95
    return-void
.end method
