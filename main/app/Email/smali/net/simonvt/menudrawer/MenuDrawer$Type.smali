.class public final enum Lnet/simonvt/menudrawer/MenuDrawer$Type;
.super Ljava/lang/Enum;
.source "MenuDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/menudrawer/MenuDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/simonvt/menudrawer/MenuDrawer$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/simonvt/menudrawer/MenuDrawer$Type;

.field public static final enum BEHIND:Lnet/simonvt/menudrawer/MenuDrawer$Type;

.field public static final enum OVERLAY:Lnet/simonvt/menudrawer/MenuDrawer$Type;

.field public static final enum STATIC:Lnet/simonvt/menudrawer/MenuDrawer$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lnet/simonvt/menudrawer/MenuDrawer$Type;

    const-string/jumbo v1, "BEHIND"

    invoke-direct {v0, v1, v2}, Lnet/simonvt/menudrawer/MenuDrawer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/simonvt/menudrawer/MenuDrawer$Type;->BEHIND:Lnet/simonvt/menudrawer/MenuDrawer$Type;

    .line 81
    new-instance v0, Lnet/simonvt/menudrawer/MenuDrawer$Type;

    const-string/jumbo v1, "STATIC"

    invoke-direct {v0, v1, v3}, Lnet/simonvt/menudrawer/MenuDrawer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/simonvt/menudrawer/MenuDrawer$Type;->STATIC:Lnet/simonvt/menudrawer/MenuDrawer$Type;

    .line 86
    new-instance v0, Lnet/simonvt/menudrawer/MenuDrawer$Type;

    const-string/jumbo v1, "OVERLAY"

    invoke-direct {v0, v1, v4}, Lnet/simonvt/menudrawer/MenuDrawer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/simonvt/menudrawer/MenuDrawer$Type;->OVERLAY:Lnet/simonvt/menudrawer/MenuDrawer$Type;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/simonvt/menudrawer/MenuDrawer$Type;

    sget-object v1, Lnet/simonvt/menudrawer/MenuDrawer$Type;->BEHIND:Lnet/simonvt/menudrawer/MenuDrawer$Type;

    aput-object v1, v0, v2

    sget-object v1, Lnet/simonvt/menudrawer/MenuDrawer$Type;->STATIC:Lnet/simonvt/menudrawer/MenuDrawer$Type;

    aput-object v1, v0, v3

    sget-object v1, Lnet/simonvt/menudrawer/MenuDrawer$Type;->OVERLAY:Lnet/simonvt/menudrawer/MenuDrawer$Type;

    aput-object v1, v0, v4

    sput-object v0, Lnet/simonvt/menudrawer/MenuDrawer$Type;->$VALUES:[Lnet/simonvt/menudrawer/MenuDrawer$Type;

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/simonvt/menudrawer/MenuDrawer$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lnet/simonvt/menudrawer/MenuDrawer$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/simonvt/menudrawer/MenuDrawer$Type;

    return-object v0
.end method

.method public static values()[Lnet/simonvt/menudrawer/MenuDrawer$Type;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lnet/simonvt/menudrawer/MenuDrawer$Type;->$VALUES:[Lnet/simonvt/menudrawer/MenuDrawer$Type;

    invoke-virtual {v0}, [Lnet/simonvt/menudrawer/MenuDrawer$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/simonvt/menudrawer/MenuDrawer$Type;

    return-object v0
.end method
