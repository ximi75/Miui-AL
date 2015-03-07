.class Lcom/kingsoft/email/mail/attachment/FlingListView$1;
.super Ljava/lang/Object;
.source "FlingListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/FlingListView;->animateView(FFLcom/kingsoft/email/mail/attachment/ViewHolder;Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/mail/attachment/FlingListView;

.field final synthetic val$itemState:Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;

.field final synthetic val$state:I

.field final synthetic val$vh:Lcom/kingsoft/email/mail/attachment/ViewHolder;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/attachment/FlingListView;Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;Lcom/kingsoft/email/mail/attachment/ViewHolder;I)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView$1;->this$0:Lcom/kingsoft/email/mail/attachment/FlingListView;

    iput-object p2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView$1;->val$itemState:Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;

    iput-object p3, p0, Lcom/kingsoft/email/mail/attachment/FlingListView$1;->val$vh:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iput p4, p0, Lcom/kingsoft/email/mail/attachment/FlingListView$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView$1;->val$itemState:Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView$1;->val$vh:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView$1;->val$state:I

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;->setState(Lcom/kingsoft/email/mail/attachment/ViewHolder;I)V

    .line 305
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView$1;->val$itemState:Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView$1;->val$vh:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView$1;->val$state:I

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;->setState(Lcom/kingsoft/email/mail/attachment/ViewHolder;I)V

    .line 300
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 295
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 291
    return-void
.end method
