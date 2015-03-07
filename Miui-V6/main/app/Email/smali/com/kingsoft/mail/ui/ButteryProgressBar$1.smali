.class Lcom/kingsoft/mail/ui/ButteryProgressBar$1;
.super Ljava/lang/Object;
.source "ButteryProgressBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ButteryProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ButteryProgressBar;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ButteryProgressBar;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar$1;->this$0:Lcom/kingsoft/mail/ui/ButteryProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar$1;->this$0:Lcom/kingsoft/mail/ui/ButteryProgressBar;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ButteryProgressBar;->invalidate()V

    .line 94
    return-void
.end method
