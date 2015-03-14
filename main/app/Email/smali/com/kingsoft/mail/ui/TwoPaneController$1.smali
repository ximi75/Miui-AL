.class Lcom/kingsoft/mail/ui/TwoPaneController$1;
.super Ljava/lang/Object;
.source "TwoPaneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/TwoPaneController;->hideOrRepositionToastBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/TwoPaneController;

.field final synthetic val$animated:Z

.field final synthetic val$oldViewMode:I


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/TwoPaneController;IZ)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/kingsoft/mail/ui/TwoPaneController$1;->this$0:Lcom/kingsoft/mail/ui/TwoPaneController;

    iput p2, p0, Lcom/kingsoft/mail/ui/TwoPaneController$1;->val$oldViewMode:I

    iput-boolean p3, p0, Lcom/kingsoft/mail/ui/TwoPaneController$1;->val$animated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 675
    iget v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController$1;->val$oldViewMode:I

    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController$1;->this$0:Lcom/kingsoft/mail/ui/TwoPaneController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController$1;->this$0:Lcom/kingsoft/mail/ui/TwoPaneController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/TwoPaneController;->mToastBar:Lcom/kingsoft/mail/ui/ActionableToastBar;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController$1;->this$0:Lcom/kingsoft/mail/ui/TwoPaneController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/TwoPaneController;->mToastBar:Lcom/kingsoft/mail/ui/ActionableToastBar;

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController$1;->val$animated:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/ui/ActionableToastBar;->hide(ZZ)V

    .line 682
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController$1;->this$0:Lcom/kingsoft/mail/ui/TwoPaneController;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController$1;->this$0:Lcom/kingsoft/mail/ui/TwoPaneController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/TwoPaneController;->mToastBar:Lcom/kingsoft/mail/ui/ActionableToastBar;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ActionableToastBar;->getOperation()Lcom/kingsoft/mail/ui/ToastBarOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/TwoPaneController;->repositionToastBar(Lcom/kingsoft/mail/ui/ToastBarOperation;)V

    goto :goto_0
.end method
