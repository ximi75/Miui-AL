.class Lcom/kingsoft/mail/MinTimeProgressView$2;
.super Ljava/lang/Object;
.source "MinTimeProgressView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/MinTimeProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/MinTimeProgressView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/MinTimeProgressView;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/kingsoft/mail/MinTimeProgressView$2;->this$0:Lcom/kingsoft/mail/MinTimeProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingsoft/mail/MinTimeProgressView$2;->this$0:Lcom/kingsoft/mail/MinTimeProgressView;

    # getter for: Lcom/kingsoft/mail/MinTimeProgressView;->mDismissed:Z
    invoke-static {v0}, Lcom/kingsoft/mail/MinTimeProgressView;->access$100(Lcom/kingsoft/mail/MinTimeProgressView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/kingsoft/mail/MinTimeProgressView$2;->this$0:Lcom/kingsoft/mail/MinTimeProgressView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/kingsoft/mail/MinTimeProgressView;->mStartTime:J
    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/MinTimeProgressView;->access$202(Lcom/kingsoft/mail/MinTimeProgressView;J)J

    .line 68
    iget-object v0, p0, Lcom/kingsoft/mail/MinTimeProgressView$2;->this$0:Lcom/kingsoft/mail/MinTimeProgressView;

    const/4 v1, 0x0

    # invokes: Landroid/widget/ProgressBar;->setVisibility(I)V
    invoke-static {v0, v1}, Lcom/kingsoft/mail/MinTimeProgressView;->access$301(Lcom/kingsoft/mail/MinTimeProgressView;I)V

    .line 70
    :cond_0
    return-void
.end method
