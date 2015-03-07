.class Lcom/kingsoft/mail/ui/MailActionBarView$4;
.super Ljava/lang/Object;
.source "MailActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/MailActionBarView;->initializeTitleViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final LEGACY_TITLE_DOUBLE_CLICK_INTERVAL:J = 0x12cL


# instance fields
.field private mLastLegacyTitleClickedTime:J

.field final synthetic this$0:Lcom/kingsoft/mail/ui/MailActionBarView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/MailActionBarView;)V
    .locals 2

    .prologue
    .line 388
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailActionBarView$4;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$4;->mLastLegacyTitleClickedTime:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 394
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/kingsoft/mail/ui/MailActionBarView$4;->mLastLegacyTitleClickedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 396
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/kingsoft/mail/ui/MailActionBarView$4;->mLastLegacyTitleClickedTime:J

    .line 397
    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailActionBarView$4;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/kingsoft/mail/ui/ActivityController;->scrollListViewToPosition(IZ)V

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    iput-wide v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$4;->mLastLegacyTitleClickedTime:J

    goto :goto_0
.end method
