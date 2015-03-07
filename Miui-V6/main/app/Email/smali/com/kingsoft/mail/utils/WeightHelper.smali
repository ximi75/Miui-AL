.class public Lcom/kingsoft/mail/utils/WeightHelper;
.super Ljava/lang/Object;
.source "WeightHelper.java"


# static fields
.field static final STEP:D = 0.1


# instance fields
.field mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static addWtight(Lcom/kingsoft/mail/ui/AccountInfo;)V
    .locals 4
    .param p0, "user"    # Lcom/kingsoft/mail/ui/AccountInfo;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AccountInfo;->getWeight()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x3fb999999999999aL

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/AccountInfo;->setWeight(Ljava/lang/Double;)V

    .line 26
    return-void
.end method

.method public static reduceWtight(Lcom/kingsoft/mail/ui/AccountInfo;)V
    .locals 4
    .param p0, "user"    # Lcom/kingsoft/mail/ui/AccountInfo;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AccountInfo;->getWeight()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x3fb999999999999aL

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/AccountInfo;->setWeight(Ljava/lang/Double;)V

    .line 30
    return-void
.end method
