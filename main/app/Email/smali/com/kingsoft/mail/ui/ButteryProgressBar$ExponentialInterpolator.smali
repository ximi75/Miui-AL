.class Lcom/kingsoft/mail/ui/ButteryProgressBar$ExponentialInterpolator;
.super Ljava/lang/Object;
.source "ButteryProgressBar.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/ButteryProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExponentialInterpolator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/ui/ButteryProgressBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/ui/ButteryProgressBar$1;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ButteryProgressBar$ExponentialInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 175
    const-wide/high16 v0, 0x4000000000000000L

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000

    sub-float/2addr v0, v1

    return v0
.end method
