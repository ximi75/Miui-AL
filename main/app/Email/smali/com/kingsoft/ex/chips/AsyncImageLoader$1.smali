.class Lcom/kingsoft/ex/chips/AsyncImageLoader$1;
.super Landroid/os/Handler;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/ex/chips/AsyncImageLoader;->loadDrawable(Ljava/lang/String;Lcom/kingsoft/ex/chips/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/ex/chips/AsyncImageLoader;

.field final synthetic val$imageCallback:Lcom/kingsoft/ex/chips/AsyncImageLoader$ImageCallback;

.field final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingsoft/ex/chips/AsyncImageLoader;Lcom/kingsoft/ex/chips/AsyncImageLoader$ImageCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/kingsoft/ex/chips/AsyncImageLoader$1;->this$0:Lcom/kingsoft/ex/chips/AsyncImageLoader;

    iput-object p2, p0, Lcom/kingsoft/ex/chips/AsyncImageLoader$1;->val$imageCallback:Lcom/kingsoft/ex/chips/AsyncImageLoader$ImageCallback;

    iput-object p3, p0, Lcom/kingsoft/ex/chips/AsyncImageLoader$1;->val$imageUrl:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 34
    iget-object v1, p0, Lcom/kingsoft/ex/chips/AsyncImageLoader$1;->val$imageCallback:Lcom/kingsoft/ex/chips/AsyncImageLoader$ImageCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/kingsoft/ex/chips/AsyncImageLoader$1;->val$imageUrl:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/kingsoft/ex/chips/AsyncImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 35
    return-void
.end method
