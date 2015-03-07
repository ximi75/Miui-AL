.class Lcom/kingsoft/ex/photo/PhotoViewActivity$6;
.super Ljava/lang/Object;
.source "PhotoViewActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/ex/photo/PhotoViewActivity;->initTemporaryImage(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/ex/photo/PhotoViewActivity;

.field final synthetic val$base:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kingsoft/ex/photo/PhotoViewActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity$6;->this$0:Lcom/kingsoft/ex/photo/PhotoViewActivity;

    iput-object p2, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity$6;->val$base:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 1010
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1011
    .local v0, "version":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity$6;->val$base:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1016
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity$6;->this$0:Lcom/kingsoft/ex/photo/PhotoViewActivity;

    # invokes: Lcom/kingsoft/ex/photo/PhotoViewActivity;->runEnterAnimation()V
    invoke-static {v1}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->access$200(Lcom/kingsoft/ex/photo/PhotoViewActivity;)V

    .line 1017
    return-void

    .line 1014
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity$6;->val$base:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
