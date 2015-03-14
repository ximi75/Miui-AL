.class Lnet/simonvt/menudrawer/DraggableDrawer$1;
.super Ljava/lang/Object;
.source "DraggableDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/menudrawer/DraggableDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/simonvt/menudrawer/DraggableDrawer;


# direct methods
.method constructor <init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer$1;->this$0:Lnet/simonvt/menudrawer/DraggableDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer$1;->this$0:Lnet/simonvt/menudrawer/DraggableDrawer;

    # invokes: Lnet/simonvt/menudrawer/DraggableDrawer;->peekDrawerInvalidate()V
    invoke-static {v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->access$000(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    .line 68
    return-void
.end method
