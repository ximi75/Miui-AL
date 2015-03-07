.class Lcom/kingsoft/mail/utils/InputSmoother$Sample;
.super Ljava/lang/Object;
.source "InputSmoother.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/utils/InputSmoother;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sample"
.end annotation


# instance fields
.field millis:J

.field pos:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/utils/InputSmoother$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/utils/InputSmoother$1;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/kingsoft/mail/utils/InputSmoother$Sample;-><init>()V

    return-void
.end method
