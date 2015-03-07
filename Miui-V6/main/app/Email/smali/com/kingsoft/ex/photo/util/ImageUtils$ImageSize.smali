.class public final enum Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;
.super Ljava/lang/Enum;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/photo/util/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

.field public static final enum EXTRA_SMALL:Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

.field public static final enum NORMAL:Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

.field public static final enum SMALL:Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    const-string/jumbo v1, "EXTRA_SMALL"

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;->EXTRA_SMALL:Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    .line 61
    new-instance v0, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    const-string/jumbo v1, "SMALL"

    invoke-direct {v0, v1, v3}, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;->SMALL:Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    .line 62
    new-instance v0, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;->NORMAL:Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    sget-object v1, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;->EXTRA_SMALL:Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;->SMALL:Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;->NORMAL:Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;->$VALUES:[Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    return-object v0
.end method

.method public static values()[Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;->$VALUES:[Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    invoke-virtual {v0}, [Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    return-object v0
.end method
