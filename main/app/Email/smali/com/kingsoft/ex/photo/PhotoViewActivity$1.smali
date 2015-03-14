.class Lcom/kingsoft/ex/photo/PhotoViewActivity$1;
.super Ljava/lang/Object;
.source "PhotoViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/photo/PhotoViewActivity;
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
    .line 633
    iput-object p1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity$1;->this$0:Lcom/kingsoft/ex/photo/PhotoViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 636
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity$1;->this$0:Lcom/kingsoft/ex/photo/PhotoViewActivity;

    invoke-virtual {v0, v1, v1}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->setFullScreen(ZZ)V

    .line 637
    return-void
.end method
