.class public final Lcom/kingsoft/mail/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/analytics/Analytics$1;,
        Lcom/kingsoft/mail/analytics/Analytics$StubTracker;
    }
.end annotation


# static fields
.field public static final CD_INDEX_ACCOUNT_COUNT:I = 0x2

.field public static final CD_INDEX_ACCOUNT_TYPE:I = 0x1

.field public static final CD_INDEX_ATTACHMENT_PREVIEWS_ENABLED:I = 0x4

.field public static final CD_INDEX_INBOX_SECTIONS_ENABLED:I = 0x6

.field public static final CD_INDEX_INBOX_TYPE:I = 0x5

.field public static final CD_INDEX_REPLY_ALL_SETTING:I = 0x7

.field public static final CD_INDEX_SENDER_IMAGES_ENABLED:I = 0x3

.field public static final EVENT_CATEGORY_MENU_ITEM:Ljava/lang/String; = "menu_item"

.field private static sInstance:Lcom/kingsoft/mail/analytics/Tracker;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static getInstance()Lcom/kingsoft/mail/analytics/Tracker;
    .locals 3

    .prologue
    .line 56
    const-class v1, Lcom/kingsoft/mail/analytics/Analytics;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/kingsoft/mail/analytics/Analytics;->sInstance:Lcom/kingsoft/mail/analytics/Tracker;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/kingsoft/mail/analytics/Analytics$StubTracker;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/kingsoft/mail/analytics/Analytics$StubTracker;-><init>(Lcom/kingsoft/mail/analytics/Analytics$1;)V

    sput-object v0, Lcom/kingsoft/mail/analytics/Analytics;->sInstance:Lcom/kingsoft/mail/analytics/Tracker;

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    sget-object v0, Lcom/kingsoft/mail/analytics/Analytics;->sInstance:Lcom/kingsoft/mail/analytics/Tracker;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isLoggable()Z
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setTracker(Lcom/kingsoft/mail/analytics/Tracker;)V
    .locals 2
    .param p0, "t"    # Lcom/kingsoft/mail/analytics/Tracker;

    .prologue
    .line 65
    const-class v1, Lcom/kingsoft/mail/analytics/Analytics;

    monitor-enter v1

    .line 66
    :try_start_0
    sput-object p0, Lcom/kingsoft/mail/analytics/Analytics;->sInstance:Lcom/kingsoft/mail/analytics/Tracker;

    .line 67
    monitor-exit v1

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
