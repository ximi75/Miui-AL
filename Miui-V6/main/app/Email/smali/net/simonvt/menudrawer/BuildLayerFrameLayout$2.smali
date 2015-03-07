.class Lnet/simonvt/menudrawer/BuildLayerFrameLayout$2;
.super Ljava/lang/Object;
.source "BuildLayerFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
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
    .line 80
    iput-object p1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$2;->this$0:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 83
    iget-object v1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$2;->this$0:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    # getter for: Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mAttached:Z
    invoke-static {v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->access$100(Lnet/simonvt/menudrawer/BuildLayerFrameLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$2;->this$0:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->getLayerType()I

    move-result v0

    .line 86
    .local v0, "layerType":I
    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$2;->this$0:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    # getter for: Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mFirst:Z
    invoke-static {v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->access$200(Lnet/simonvt/menudrawer/BuildLayerFrameLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    iget-object v1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$2;->this$0:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    # setter for: Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mFirst:Z
    invoke-static {v1, v2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->access$202(Lnet/simonvt/menudrawer/BuildLayerFrameLayout;Z)Z

    .line 88
    iget-object v1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$2;->this$0:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v1, v3, v4}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 89
    iget-object v1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$2;->this$0:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->buildLayer()V

    .line 90
    iget-object v1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$2;->this$0:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v1, v2, v4}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 93
    .end local v0    # "layerType":I
    :cond_1
    return-void
.end method
