.class Lnet/simonvt/menudrawer/BuildLayerFrameLayout$1;
.super Ljava/lang/Object;
.source "BuildLayerFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;


# direct methods
.method constructor <init>(Lnet/simonvt/menudrawer/BuildLayerFrameLayout;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$1;->this$0:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$1;->this$0:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v1, 0x1

    # setter for: Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mChanged:Z
    invoke-static {v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->access$002(Lnet/simonvt/menudrawer/BuildLayerFrameLayout;Z)Z

    .line 69
    iget-object v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$1;->this$0:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->invalidate()V

    .line 70
    return-void
.end method
