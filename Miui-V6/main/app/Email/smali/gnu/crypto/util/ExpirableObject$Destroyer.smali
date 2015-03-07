.class final Lgnu/crypto/util/ExpirableObject$Destroyer;
.super Ljava/util/TimerTask;
.source "ExpirableObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/crypto/util/ExpirableObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Destroyer"
.end annotation


# instance fields
.field private final target:Lgnu/crypto/util/ExpirableObject;

.field final this:Lgnu/crypto/util/ExpirableObject;


# direct methods
.method constructor <init>(Lgnu/crypto/util/ExpirableObject;Lgnu/crypto/util/ExpirableObject;)V
    .locals 0
    .param p2, "target"    # Lgnu/crypto/util/ExpirableObject;

    .prologue
    iput-object p1, p0, Lgnu/crypto/util/ExpirableObject$Destroyer;->this:Lgnu/crypto/util/ExpirableObject;

    .line 156
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 157
    iput-object p2, p0, Lgnu/crypto/util/ExpirableObject$Destroyer;->target:Lgnu/crypto/util/ExpirableObject;

    .line 158
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 165
    :try_start_0
    iget-object v0, p0, Lgnu/crypto/util/ExpirableObject$Destroyer;->target:Lgnu/crypto/util/ExpirableObject;

    invoke-virtual {v0}, Lgnu/crypto/util/ExpirableObject;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lgnu/crypto/util/ExpirableObject$Destroyer;->target:Lgnu/crypto/util/ExpirableObject;

    invoke-virtual {v0}, Lgnu/crypto/util/ExpirableObject;->doDestroy()V
    :try_end_0
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    goto :goto_0
.end method
