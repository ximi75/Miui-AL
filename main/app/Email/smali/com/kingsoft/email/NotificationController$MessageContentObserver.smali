.class Lcom/kingsoft/email/NotificationController$MessageContentObserver;
.super Landroid/database/ContentObserver;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageContentObserver"
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;J)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "accountId"    # J

    .prologue
    .line 773
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 774
    iput-object p2, p0, Lcom/kingsoft/email/NotificationController$MessageContentObserver;->mContext:Landroid/content/Context;

    .line 775
    iput-wide p3, p0, Lcom/kingsoft/email/NotificationController$MessageContentObserver;->mAccountId:J

    .line 776
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 780
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController$MessageContentObserver;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/kingsoft/email/NotificationController$MessageContentObserver;->mAccountId:J

    # invokes: Lcom/kingsoft/email/NotificationController;->refreshNotificationsForAccount(Landroid/content/Context;J)V
    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/NotificationController;->access$1200(Landroid/content/Context;J)V

    .line 781
    return-void
.end method
