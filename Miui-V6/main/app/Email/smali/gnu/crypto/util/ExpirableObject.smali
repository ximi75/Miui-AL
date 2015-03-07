.class public abstract Lgnu/crypto/util/ExpirableObject;
.super Ljava/lang/Object;
.source "ExpirableObject.java"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/crypto/util/ExpirableObject$Destroyer;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMEOUT:J = 0x36ee80L

.field private static final EXPIRER:Ljava/util/Timer;


# instance fields
.field private final destroyer:Lgnu/crypto/util/ExpirableObject$Destroyer;


# direct methods
.method private static final constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v0, Lgnu/crypto/util/ExpirableObject;->EXPIRER:Ljava/util/Timer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 96
    const-wide/32 v0, 0x36ee80

    invoke-direct {p0, v0, v1}, Lgnu/crypto/util/ExpirableObject;-><init>(J)V

    .line 97
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 2
    .param p1, "delay"    # J

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lgnu/crypto/util/ExpirableObject$Destroyer;

    invoke-direct {v0, p0, p0}, Lgnu/crypto/util/ExpirableObject$Destroyer;-><init>(Lgnu/crypto/util/ExpirableObject;Lgnu/crypto/util/ExpirableObject;)V

    iput-object v0, p0, Lgnu/crypto/util/ExpirableObject;->destroyer:Lgnu/crypto/util/ExpirableObject$Destroyer;

    .line 110
    sget-object v0, Lgnu/crypto/util/ExpirableObject;->EXPIRER:Ljava/util/Timer;

    iget-object v1, p0, Lgnu/crypto/util/ExpirableObject;->destroyer:Lgnu/crypto/util/ExpirableObject$Destroyer;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 111
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lgnu/crypto/util/ExpirableObject;->doDestroy()V

    .line 126
    iget-object v0, p0, Lgnu/crypto/util/ExpirableObject;->destroyer:Lgnu/crypto/util/ExpirableObject$Destroyer;

    invoke-virtual {v0}, Lgnu/crypto/util/ExpirableObject$Destroyer;->cancel()Z

    .line 127
    return-void
.end method

.method protected abstract doDestroy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation
.end method
