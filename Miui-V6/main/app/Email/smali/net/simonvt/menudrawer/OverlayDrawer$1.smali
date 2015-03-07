.class Lnet/simonvt/menudrawer/OverlayDrawer$1;
.super Ljava/lang/Object;
.source "OverlayDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/menudrawer/OverlayDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/simonvt/menudrawer/OverlayDrawer;


# direct methods
.method constructor <init>(Lnet/simonvt/menudrawer/OverlayDrawer;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lnet/simonvt/menudrawer/OverlayDrawer$1;->this$0:Lnet/simonvt/menudrawer/OverlayDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 21
    iget-object v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer$1;->this$0:Lnet/simonvt/menudrawer/OverlayDrawer;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/OverlayDrawer;->cancelContentTouch()V

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "animateTo":I
    sget-object v1, Lnet/simonvt/menudrawer/OverlayDrawer$2;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    iget-object v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer$1;->this$0:Lnet/simonvt/menudrawer/OverlayDrawer;

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/OverlayDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v2

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 30
    iget-object v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer$1;->this$0:Lnet/simonvt/menudrawer/OverlayDrawer;

    # getter for: Lnet/simonvt/menudrawer/OverlayDrawer;->mPeekSize:I
    invoke-static {v1}, Lnet/simonvt/menudrawer/OverlayDrawer;->access$000(Lnet/simonvt/menudrawer/OverlayDrawer;)I

    move-result v0

    .line 33
    :goto_0
    iget-object v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer$1;->this$0:Lnet/simonvt/menudrawer/OverlayDrawer;

    const/16 v2, 0xfa

    invoke-virtual {v1, v0, v2}, Lnet/simonvt/menudrawer/OverlayDrawer;->animateOffsetTo(II)V

    .line 34
    return-void

    .line 26
    :pswitch_0
    iget-object v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer$1;->this$0:Lnet/simonvt/menudrawer/OverlayDrawer;

    # getter for: Lnet/simonvt/menudrawer/OverlayDrawer;->mPeekSize:I
    invoke-static {v1}, Lnet/simonvt/menudrawer/OverlayDrawer;->access$000(Lnet/simonvt/menudrawer/OverlayDrawer;)I

    move-result v1

    neg-int v0, v1

    .line 27
    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
