.class Lnet/simonvt/menudrawer/DraggableDrawer$4;
.super Ljava/lang/Object;
.source "DraggableDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/menudrawer/DraggableDrawer;->peekDrawerInvalidate()V
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
    .line 441
    iput-object p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer$4;->this$0:Lnet/simonvt/menudrawer/DraggableDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer$4;->this$0:Lnet/simonvt/menudrawer/DraggableDrawer;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->startPeek()V

    .line 445
    return-void
.end method
