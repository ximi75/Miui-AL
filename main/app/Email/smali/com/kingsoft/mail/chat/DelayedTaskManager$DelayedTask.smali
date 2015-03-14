.class public abstract Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;
.super Ljava/lang/Object;
.source "DelayedTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/DelayedTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DelayedTask"
.end annotation


# instance fields
.field private done:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;->done:Z

    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;->done:Z

    return v0
.end method

.method static synthetic access$102(Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;->done:Z

    return p1
.end method


# virtual methods
.method public abstract execute()V
.end method

.method public abstract hash()I
.end method

.method public abstract isValid()Z
.end method

.method public abstract update()V
.end method
