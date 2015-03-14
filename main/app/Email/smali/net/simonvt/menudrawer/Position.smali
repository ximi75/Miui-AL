.class public final enum Lnet/simonvt/menudrawer/Position;
.super Ljava/lang/Enum;
.source "Position.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/simonvt/menudrawer/Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/simonvt/menudrawer/Position;

.field public static final enum BOTTOM:Lnet/simonvt/menudrawer/Position;

.field public static final enum END:Lnet/simonvt/menudrawer/Position;

.field public static final enum LEFT:Lnet/simonvt/menudrawer/Position;

.field public static final enum RIGHT:Lnet/simonvt/menudrawer/Position;

.field public static final enum START:Lnet/simonvt/menudrawer/Position;

.field private static final STRING_MAPPING:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lnet/simonvt/menudrawer/Position;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum TOP:Lnet/simonvt/menudrawer/Position;


# instance fields
.field final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 10
    new-instance v4, Lnet/simonvt/menudrawer/Position;

    const-string/jumbo v5, "LEFT"

    invoke-direct {v4, v5, v8, v8}, Lnet/simonvt/menudrawer/Position;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/simonvt/menudrawer/Position;->LEFT:Lnet/simonvt/menudrawer/Position;

    .line 13
    new-instance v4, Lnet/simonvt/menudrawer/Position;

    const-string/jumbo v5, "TOP"

    invoke-direct {v4, v5, v9, v9}, Lnet/simonvt/menudrawer/Position;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/simonvt/menudrawer/Position;->TOP:Lnet/simonvt/menudrawer/Position;

    .line 16
    new-instance v4, Lnet/simonvt/menudrawer/Position;

    const-string/jumbo v5, "RIGHT"

    invoke-direct {v4, v5, v10, v10}, Lnet/simonvt/menudrawer/Position;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/simonvt/menudrawer/Position;->RIGHT:Lnet/simonvt/menudrawer/Position;

    .line 19
    new-instance v4, Lnet/simonvt/menudrawer/Position;

    const-string/jumbo v5, "BOTTOM"

    invoke-direct {v4, v5, v11, v11}, Lnet/simonvt/menudrawer/Position;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/simonvt/menudrawer/Position;->BOTTOM:Lnet/simonvt/menudrawer/Position;

    .line 25
    new-instance v4, Lnet/simonvt/menudrawer/Position;

    const-string/jumbo v5, "START"

    invoke-direct {v4, v5, v12, v12}, Lnet/simonvt/menudrawer/Position;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/simonvt/menudrawer/Position;->START:Lnet/simonvt/menudrawer/Position;

    .line 31
    new-instance v4, Lnet/simonvt/menudrawer/Position;

    const-string/jumbo v5, "END"

    const/4 v6, 0x5

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lnet/simonvt/menudrawer/Position;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/simonvt/menudrawer/Position;->END:Lnet/simonvt/menudrawer/Position;

    .line 8
    const/4 v4, 0x6

    new-array v4, v4, [Lnet/simonvt/menudrawer/Position;

    sget-object v5, Lnet/simonvt/menudrawer/Position;->LEFT:Lnet/simonvt/menudrawer/Position;

    aput-object v5, v4, v8

    sget-object v5, Lnet/simonvt/menudrawer/Position;->TOP:Lnet/simonvt/menudrawer/Position;

    aput-object v5, v4, v9

    sget-object v5, Lnet/simonvt/menudrawer/Position;->RIGHT:Lnet/simonvt/menudrawer/Position;

    aput-object v5, v4, v10

    sget-object v5, Lnet/simonvt/menudrawer/Position;->BOTTOM:Lnet/simonvt/menudrawer/Position;

    aput-object v5, v4, v11

    sget-object v5, Lnet/simonvt/menudrawer/Position;->START:Lnet/simonvt/menudrawer/Position;

    aput-object v5, v4, v12

    const/4 v5, 0x5

    sget-object v6, Lnet/simonvt/menudrawer/Position;->END:Lnet/simonvt/menudrawer/Position;

    aput-object v6, v4, v5

    sput-object v4, Lnet/simonvt/menudrawer/Position;->$VALUES:[Lnet/simonvt/menudrawer/Position;

    .line 39
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    sput-object v4, Lnet/simonvt/menudrawer/Position;->STRING_MAPPING:Landroid/util/SparseArray;

    .line 42
    invoke-static {}, Lnet/simonvt/menudrawer/Position;->values()[Lnet/simonvt/menudrawer/Position;

    move-result-object v0

    .local v0, "arr$":[Lnet/simonvt/menudrawer/Position;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 43
    .local v3, "via":Lnet/simonvt/menudrawer/Position;
    sget-object v4, Lnet/simonvt/menudrawer/Position;->STRING_MAPPING:Landroid/util/SparseArray;

    iget v5, v3, Lnet/simonvt/menudrawer/Position;->mValue:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v3    # "via":Lnet/simonvt/menudrawer/Position;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lnet/simonvt/menudrawer/Position;->mValue:I

    .line 37
    return-void
.end method

.method public static fromValue(I)Lnet/simonvt/menudrawer/Position;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 48
    sget-object v0, Lnet/simonvt/menudrawer/Position;->STRING_MAPPING:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/simonvt/menudrawer/Position;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/simonvt/menudrawer/Position;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lnet/simonvt/menudrawer/Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/simonvt/menudrawer/Position;

    return-object v0
.end method

.method public static values()[Lnet/simonvt/menudrawer/Position;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lnet/simonvt/menudrawer/Position;->$VALUES:[Lnet/simonvt/menudrawer/Position;

    invoke-virtual {v0}, [Lnet/simonvt/menudrawer/Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/simonvt/menudrawer/Position;

    return-object v0
.end method
