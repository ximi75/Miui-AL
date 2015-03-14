.class Lcom/kingsoft/ex/photo/PhotoViewActivity$5;
.super Ljava/lang/Object;
.source "PhotoViewActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/ex/photo/PhotoViewActivity;->runExitAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/ex/photo/PhotoViewActivity;


# direct methods
.method constructor <init>(Lcom/kingsoft/ex/photo/PhotoViewActivity;)V
    .locals 0

    .prologue
    .line 941
    iput-object p1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity$5;->this$0:Lcom/kingsoft/ex/photo/PhotoViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 944
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity$5;->this$0:Lcom/kingsoft/ex/photo/PhotoViewActivity;

    # invokes: Lcom/kingsoft/ex/photo/PhotoViewActivity;->onExitAnimationComplete()V
    invoke-static {v0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->access$100(Lcom/kingsoft/ex/photo/PhotoViewActivity;)V

    .line 945
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 949
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 953
    return-void
.end method
