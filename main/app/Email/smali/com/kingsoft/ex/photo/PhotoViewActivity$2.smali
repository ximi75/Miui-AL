.class Lcom/kingsoft/ex/photo/PhotoViewActivity$2;
.super Ljava/lang/Object;
.source "PhotoViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/ex/photo/PhotoViewActivity;->runEnterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/ex/photo/PhotoViewActivity;


# direct methods
.method constructor <init>(Lcom/kingsoft/ex/photo/PhotoViewActivity;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity$2;->this$0:Lcom/kingsoft/ex/photo/PhotoViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity$2;->this$0:Lcom/kingsoft/ex/photo/PhotoViewActivity;

    invoke-virtual {v0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->onEnterAnimationComplete()V

    .line 837
    return-void
.end method
