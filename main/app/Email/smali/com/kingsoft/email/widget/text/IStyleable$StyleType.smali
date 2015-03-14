.class public final enum Lcom/kingsoft/email/widget/text/IStyleable$StyleType;
.super Ljava/lang/Enum;
.source "IStyleable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/widget/text/IStyleable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StyleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingsoft/email/widget/text/IStyleable$StyleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

.field public static final enum FONT_BOLD:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

.field public static final enum FONT_COLOR:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

.field public static final enum FONT_ITALIC:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

.field public static final enum FONT_SIZE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

.field public static final enum FONT_UNDERLINE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

.field public static final enum P_BULLET:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

.field public static final enum P_COMMON:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

.field public static final enum P_NUMBERING:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

.field public static final enum UNKNOWN:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;


# instance fields
.field private mKind:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    const-string/jumbo v1, "FONT_BOLD"

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->CHAR:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    invoke-direct {v0, v1, v4, v2}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;-><init>(Ljava/lang/String;ILcom/kingsoft/email/widget/text/IStyleable$StyleKind;)V

    sput-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_BOLD:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    new-instance v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    const-string/jumbo v1, "FONT_UNDERLINE"

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->CHAR:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    invoke-direct {v0, v1, v5, v2}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;-><init>(Ljava/lang/String;ILcom/kingsoft/email/widget/text/IStyleable$StyleKind;)V

    sput-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_UNDERLINE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    new-instance v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    const-string/jumbo v1, "FONT_ITALIC"

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->CHAR:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    invoke-direct {v0, v1, v6, v2}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;-><init>(Ljava/lang/String;ILcom/kingsoft/email/widget/text/IStyleable$StyleKind;)V

    sput-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_ITALIC:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    new-instance v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    const-string/jumbo v1, "FONT_COLOR"

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->CHAR:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    invoke-direct {v0, v1, v7, v2}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;-><init>(Ljava/lang/String;ILcom/kingsoft/email/widget/text/IStyleable$StyleKind;)V

    sput-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_COLOR:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    new-instance v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    const-string/jumbo v1, "FONT_SIZE"

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->CHAR:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    invoke-direct {v0, v1, v8, v2}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;-><init>(Ljava/lang/String;ILcom/kingsoft/email/widget/text/IStyleable$StyleKind;)V

    sput-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_SIZE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    new-instance v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    const-string/jumbo v1, "P_COMMON"

    const/4 v2, 0x5

    sget-object v3, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->PARA:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;-><init>(Ljava/lang/String;ILcom/kingsoft/email/widget/text/IStyleable$StyleKind;)V

    sput-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_COMMON:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    new-instance v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    const-string/jumbo v1, "P_BULLET"

    const/4 v2, 0x6

    sget-object v3, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->PARA:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;-><init>(Ljava/lang/String;ILcom/kingsoft/email/widget/text/IStyleable$StyleKind;)V

    sput-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_BULLET:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    new-instance v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    const-string/jumbo v1, "P_NUMBERING"

    const/4 v2, 0x7

    sget-object v3, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->PARA:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;-><init>(Ljava/lang/String;ILcom/kingsoft/email/widget/text/IStyleable$StyleKind;)V

    sput-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_NUMBERING:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    new-instance v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0x8

    sget-object v3, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->UNKNOWN:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;-><init>(Ljava/lang/String;ILcom/kingsoft/email/widget/text/IStyleable$StyleKind;)V

    sput-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->UNKNOWN:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    .line 10
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    sget-object v1, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_BOLD:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_UNDERLINE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_ITALIC:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_COLOR:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_SIZE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_COMMON:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_BULLET:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_NUMBERING:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->UNKNOWN:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->$VALUES:[Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/kingsoft/email/widget/text/IStyleable$StyleKind;)V
    .locals 0
    .param p3, "kind"    # Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->mKind:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingsoft/email/widget/text/IStyleable$StyleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    return-object v0
.end method

.method public static values()[Lcom/kingsoft/email/widget/text/IStyleable$StyleType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->$VALUES:[Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v0}, [Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    return-object v0
.end method


# virtual methods
.method public getKind()Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->mKind:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    return-object v0
.end method

.method public getMainArgumentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
