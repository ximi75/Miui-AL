.class Lcom/kingsoft/mail/bitmap/TileDrawable$1;
.super Ljava/lang/Object;
.source "TileDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/bitmap/TileDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/bitmap/TileDrawable;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/bitmap/TileDrawable;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/kingsoft/mail/bitmap/TileDrawable$1;->this$0:Lcom/kingsoft/mail/bitmap/TileDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 38
    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/TileDrawable$1;->this$0:Lcom/kingsoft/mail/bitmap/TileDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/bitmap/TileDrawable;->setAlpha(I)V

    .line 39
    return-void
.end method
