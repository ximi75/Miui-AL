.class Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;
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
    name = "TranslateRunnable"
.end annotation


# static fields
.field private static final DECELERATION_RATE:F = 1000.0f

.field private static final NEVER:J = -0x1L


# instance fields
.field private final mHeader:Lcom/kingsoft/ex/photo/views/PhotoView;

.field private mLastRunTime:J

.field private mRunning:Z

.field private mStop:Z

.field private mVelocityX:F

.field private mVelocityY:F


# direct methods
.method public constructor <init>(Lcom/kingsoft/ex/photo/views/PhotoView;)V
    .locals 2
    .param p1, "header"    # Lcom/kingsoft/ex/photo/views/PhotoView;

    .prologue
    .line 1112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mLastRunTime:J

    .line 1114
    iput-object p1, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mHeader:Lcom/kingsoft/ex/photo/views/PhotoView;

    .line 1115
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;

    .prologue
    .line 1098
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mRunning:Z

    return v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/high16 v10, 0x447a0000

    const/4 v5, 0x0

    .line 1144
    iget-boolean v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mStop:Z

    if-eqz v6, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1150
    .local v2, "now":J
    iget-wide v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mLastRunTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    iget-wide v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mLastRunTime:J

    sub-long v6, v2, v6

    long-to-float v6, v6

    div-float v0, v6, v10

    .line 1151
    .local v0, "delta":F
    :goto_1
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mHeader:Lcom/kingsoft/ex/photo/views/PhotoView;

    iget v7, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    mul-float/2addr v7, v0

    iget v8, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    mul-float/2addr v8, v0

    # invokes: Lcom/kingsoft/ex/photo/views/PhotoView;->translate(FF)Z
    invoke-static {v6, v7, v8}, Lcom/kingsoft/ex/photo/views/PhotoView;->access$200(Lcom/kingsoft/ex/photo/views/PhotoView;FF)Z

    move-result v1

    .line 1152
    .local v1, "didTranslate":Z
    iput-wide v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mLastRunTime:J

    .line 1154
    mul-float v4, v10, v0

    .line 1155
    .local v4, "slowDown":F
    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_8

    .line 1156
    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    sub-float/2addr v6, v4

    iput v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    .line 1157
    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    cmpg-float v6, v6, v5

    if-gez v6, :cond_2

    .line 1158
    iput v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    .line 1166
    :cond_2
    :goto_2
    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_9

    .line 1167
    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    sub-float/2addr v6, v4

    iput v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    .line 1168
    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    cmpg-float v6, v6, v5

    if-gez v6, :cond_3

    .line 1169
    iput v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    .line 1179
    :cond_3
    :goto_3
    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    cmpl-float v6, v6, v5

    if-nez v6, :cond_4

    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    cmpl-float v5, v6, v5

    if-eqz v5, :cond_5

    :cond_4
    if-nez v1, :cond_6

    .line 1180
    :cond_5
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->stop()V

    .line 1181
    iget-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mHeader:Lcom/kingsoft/ex/photo/views/PhotoView;

    # invokes: Lcom/kingsoft/ex/photo/views/PhotoView;->snap()V
    invoke-static {v5}, Lcom/kingsoft/ex/photo/views/PhotoView;->access$300(Lcom/kingsoft/ex/photo/views/PhotoView;)V

    .line 1185
    :cond_6
    iget-boolean v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mStop:Z

    if-nez v5, :cond_0

    .line 1188
    iget-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mHeader:Lcom/kingsoft/ex/photo/views/PhotoView;

    invoke-virtual {v5, p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "delta":F
    .end local v1    # "didTranslate":Z
    .end local v4    # "slowDown":F
    :cond_7
    move v0, v5

    .line 1150
    goto :goto_1

    .line 1161
    .restart local v0    # "delta":F
    .restart local v1    # "didTranslate":Z
    .restart local v4    # "slowDown":F
    :cond_8
    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    add-float/2addr v6, v4

    iput v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    .line 1162
    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_2

    .line 1163
    iput v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    goto :goto_2

    .line 1172
    :cond_9
    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    add-float/2addr v6, v4

    iput v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    .line 1173
    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_3

    .line 1174
    iput v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    goto :goto_3
.end method

.method public start(FF)Z
    .locals 4
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1121
    iget-boolean v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mRunning:Z

    if-eqz v2, :cond_0

    .line 1130
    :goto_0
    return v0

    .line 1124
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mLastRunTime:J

    .line 1125
    iput p1, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    .line 1126
    iput p2, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    .line 1127
    iput-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mStop:Z

    .line 1128
    iput-boolean v1, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mRunning:Z

    .line 1129
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mHeader:Lcom/kingsoft/ex/photo/views/PhotoView;

    invoke-virtual {v0, p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    .line 1130
    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mRunning:Z

    .line 1138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mStop:Z

    .line 1139
    return-void
.end method
