.class Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/photo/views/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RotateRunnable"
.end annotation


# static fields
.field private static final NEVER:J = -0x1L


# instance fields
.field private mAppliedRotation:F

.field private final mHeader:Lcom/kingsoft/ex/photo/views/PhotoView;

.field private mLastRuntime:J

.field private mRunning:Z

.field private mStop:Z

.field private mTargetRotation:F

.field private mVelocity:F


# direct methods
.method public constructor <init>(Lcom/kingsoft/ex/photo/views/PhotoView;)V
    .locals 0
    .param p1, "header"    # Lcom/kingsoft/ex/photo/views/PhotoView;

    .prologue
    .line 1301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1302
    iput-object p1, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mHeader:Lcom/kingsoft/ex/photo/views/PhotoView;

    .line 1303
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1332
    iget-boolean v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mStop:Z

    if-eqz v5, :cond_1

    .line 1358
    :cond_0
    :goto_0
    return-void

    .line 1336
    :cond_1
    iget v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mTargetRotation:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_6

    .line 1337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1338
    .local v2, "now":J
    iget-wide v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mLastRuntime:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_7

    iget-wide v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mLastRuntime:J

    sub-long v0, v2, v5

    .line 1339
    .local v0, "delta":J
    :goto_1
    iget v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mVelocity:F

    long-to-float v6, v0

    mul-float v4, v5, v6

    .line 1340
    .local v4, "rotationAmount":F
    iget v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mTargetRotation:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    iget v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    add-float/2addr v5, v4

    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mTargetRotation:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_3

    :cond_2
    iget v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mTargetRotation:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    iget v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    add-float/2addr v5, v4

    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mTargetRotation:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 1344
    :cond_3
    iget v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mTargetRotation:F

    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    sub-float v4, v5, v6

    .line 1346
    :cond_4
    iget-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mHeader:Lcom/kingsoft/ex/photo/views/PhotoView;

    const/4 v6, 0x0

    # invokes: Lcom/kingsoft/ex/photo/views/PhotoView;->rotate(FZ)V
    invoke-static {v5, v4, v6}, Lcom/kingsoft/ex/photo/views/PhotoView;->access$400(Lcom/kingsoft/ex/photo/views/PhotoView;FZ)V

    .line 1347
    iget v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    add-float/2addr v5, v4

    iput v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    .line 1348
    iget v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mTargetRotation:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_5

    .line 1349
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->stop()V

    .line 1351
    :cond_5
    iput-wide v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mLastRuntime:J

    .line 1354
    .end local v0    # "delta":J
    .end local v2    # "now":J
    .end local v4    # "rotationAmount":F
    :cond_6
    iget-boolean v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mStop:Z

    if-nez v5, :cond_0

    .line 1357
    iget-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mHeader:Lcom/kingsoft/ex/photo/views/PhotoView;

    invoke-virtual {v5, p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1338
    .restart local v2    # "now":J
    :cond_7
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public start(F)V
    .locals 2
    .param p1, "rotation"    # F

    .prologue
    .line 1309
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mRunning:Z

    if-eqz v0, :cond_0

    .line 1320
    :goto_0
    return-void

    .line 1313
    :cond_0
    iput p1, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mTargetRotation:F

    .line 1314
    iget v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mTargetRotation:F

    const/high16 v1, 0x43fa0000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mVelocity:F

    .line 1315
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    .line 1316
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mLastRuntime:J

    .line 1317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mStop:Z

    .line 1318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mRunning:Z

    .line 1319
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mHeader:Lcom/kingsoft/ex/photo/views/PhotoView;

    invoke-virtual {v0, p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mRunning:Z

    .line 1327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->mStop:Z

    .line 1328
    return-void
.end method
