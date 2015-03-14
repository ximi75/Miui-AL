.class public Lcom/kingsoft/email/mail/attachment/AsyncHolder;
.super Ljava/lang/Object;
.source "AsyncHolder.java"


# instance fields
.field private final mBitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;)V
    .locals 1
    .param p1, "bitmapWorkerTask"    # Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AsyncHolder;->mBitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public getBitmapWorkerTask()Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/AsyncHolder;->mBitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;

    return-object v0
.end method
