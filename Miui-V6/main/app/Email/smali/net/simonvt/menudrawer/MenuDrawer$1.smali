.class Lnet/simonvt/menudrawer/MenuDrawer$1;
.super Ljava/lang/Object;
.source "MenuDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/menudrawer/MenuDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/simonvt/menudrawer/MenuDrawer;


# direct methods
.method constructor <init>(Lnet/simonvt/menudrawer/MenuDrawer;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer$1;->this$0:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer$1;->this$0:Lnet/simonvt/menudrawer/MenuDrawer;

    # invokes: Lnet/simonvt/menudrawer/MenuDrawer;->animateIndicatorInvalidate()V
    invoke-static {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->access$000(Lnet/simonvt/menudrawer/MenuDrawer;)V

    .line 334
    return-void
.end method
