.class Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1$1;
.super Ljava/lang/Object;
.source "QuickReplyBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1$1;->this$1:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1$1;->this$1:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;->this$0:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreOp:Lcom/kingsoft/mail/ui/QuickReplyGridView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/QuickReplyGridView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1$1;->this$1:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;->this$0:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreOp:Lcom/kingsoft/mail/ui/QuickReplyGridView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/QuickReplyGridView;->setVisibility(I)V

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1$1;->this$1:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;->this$0:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    # getter for: Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreIvListener:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IMoreBtnListener;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->access$100(Lcom/kingsoft/mail/ui/QuickReplyBottomBar;)Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IMoreBtnListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1$1;->this$1:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;->this$0:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    # getter for: Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreIvListener:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IMoreBtnListener;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->access$100(Lcom/kingsoft/mail/ui/QuickReplyBottomBar;)Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IMoreBtnListener;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1$1;->this$1:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;->this$0:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreOp:Lcom/kingsoft/mail/ui/QuickReplyGridView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/QuickReplyGridView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v1, v0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IMoreBtnListener;->onClick(Z)V

    .line 96
    :cond_1
    return-void

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1$1;->this$1:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/QuickReplyBottomBar$1;->this$0:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->moreOp:Lcom/kingsoft/mail/ui/QuickReplyGridView;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/ui/QuickReplyGridView;->setVisibility(I)V

    goto :goto_0
.end method
