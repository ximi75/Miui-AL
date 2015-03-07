.class public Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;
.super Ljava/lang/Object;
.source "ImageCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/ImageCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dimensions"
.end annotation


# static fields
.field public static final SCALE_HALF:F = 0.5f

.field public static final SCALE_ONE:F = 1.0f

.field public static final SCALE_QUARTER:F = 0.25f

.field public static final SCALE_THREE_QUARTER:F = 0.75f


# instance fields
.field public height:I

.field public scale:F

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "s"    # F

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    .line 45
    iput p2, p0, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    .line 46
    iput p3, p0, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->scale:F

    .line 47
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 51
    const-string/jumbo v0, "Dimens [%d x %d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
