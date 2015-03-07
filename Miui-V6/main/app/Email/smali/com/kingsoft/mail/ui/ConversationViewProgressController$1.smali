.class Lcom/kingsoft/mail/ui/ConversationViewProgressController$1;
.super Lcom/kingsoft/mail/ui/FragmentRunnable;
.source "ConversationViewProgressController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationViewProgressController;-><init>(Landroid/app/Fragment;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationViewProgressController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationViewProgressController;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Landroid/app/Fragment;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController$1;->this$0:Lcom/kingsoft/mail/ui/ConversationViewProgressController;

    invoke-direct {p0, p2, p3}, Lcom/kingsoft/mail/ui/FragmentRunnable;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public go()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController$1;->this$0:Lcom/kingsoft/mail/ui/ConversationViewProgressController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mLoadingShownTime:J
    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->access$002(Lcom/kingsoft/mail/ui/ConversationViewProgressController;J)J

    .line 59
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController$1;->this$0:Lcom/kingsoft/mail/ui/ConversationViewProgressController;

    # getter for: Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mProgressView:Landroid/view/View;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->access$100(Lcom/kingsoft/mail/ui/ConversationViewProgressController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    return-void
.end method
