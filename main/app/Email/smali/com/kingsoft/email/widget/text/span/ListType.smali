.class public final enum Lcom/kingsoft/email/widget/text/span/ListType;
.super Ljava/lang/Enum;
.source "ListType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingsoft/email/widget/text/span/ListType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kingsoft/email/widget/text/span/ListType;

.field public static final enum MIXED:Lcom/kingsoft/email/widget/text/span/ListType;

.field public static final enum NONE:Lcom/kingsoft/email/widget/text/span/ListType;

.field public static final enum NUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;

.field public static final enum PICTURE:Lcom/kingsoft/email/widget/text/span/ListType;

.field public static final enum UNNUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;


# instance fields
.field private mStyleType:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v0, Lcom/kingsoft/email/widget/text/span/ListType;

    const-string/jumbo v1, "MIXED"

    const/4 v2, -0x2

    sget-object v3, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_BULLET:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/kingsoft/email/widget/text/span/ListType;-><init>(Ljava/lang/String;IILcom/kingsoft/email/widget/text/IStyleable$StyleType;)V

    sput-object v0, Lcom/kingsoft/email/widget/text/span/ListType;->MIXED:Lcom/kingsoft/email/widget/text/span/ListType;

    .line 7
    new-instance v0, Lcom/kingsoft/email/widget/text/span/ListType;

    const-string/jumbo v1, "NONE"

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_COMMON:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-direct {v0, v1, v5, v4, v2}, Lcom/kingsoft/email/widget/text/span/ListType;-><init>(Ljava/lang/String;IILcom/kingsoft/email/widget/text/IStyleable$StyleType;)V

    sput-object v0, Lcom/kingsoft/email/widget/text/span/ListType;->NONE:Lcom/kingsoft/email/widget/text/span/ListType;

    .line 8
    new-instance v0, Lcom/kingsoft/email/widget/text/span/ListType;

    const-string/jumbo v1, "UNNUMBERED"

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_BULLET:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/kingsoft/email/widget/text/span/ListType;-><init>(Ljava/lang/String;IILcom/kingsoft/email/widget/text/IStyleable$StyleType;)V

    sput-object v0, Lcom/kingsoft/email/widget/text/span/ListType;->UNNUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;

    .line 9
    new-instance v0, Lcom/kingsoft/email/widget/text/span/ListType;

    const-string/jumbo v1, "NUMBERED"

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_NUMBERING:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/kingsoft/email/widget/text/span/ListType;-><init>(Ljava/lang/String;IILcom/kingsoft/email/widget/text/IStyleable$StyleType;)V

    sput-object v0, Lcom/kingsoft/email/widget/text/span/ListType;->NUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;

    .line 10
    new-instance v0, Lcom/kingsoft/email/widget/text/span/ListType;

    const-string/jumbo v1, "PICTURE"

    sget-object v2, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_BULLET:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-direct {v0, v1, v8, v7, v2}, Lcom/kingsoft/email/widget/text/span/ListType;-><init>(Ljava/lang/String;IILcom/kingsoft/email/widget/text/IStyleable$StyleType;)V

    sput-object v0, Lcom/kingsoft/email/widget/text/span/ListType;->PICTURE:Lcom/kingsoft/email/widget/text/span/ListType;

    .line 5
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kingsoft/email/widget/text/span/ListType;

    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListType;->MIXED:Lcom/kingsoft/email/widget/text/span/ListType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListType;->NONE:Lcom/kingsoft/email/widget/text/span/ListType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListType;->UNNUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListType;->NUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListType;->PICTURE:Lcom/kingsoft/email/widget/text/span/ListType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/kingsoft/email/widget/text/span/ListType;->$VALUES:[Lcom/kingsoft/email/widget/text/span/ListType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/kingsoft/email/widget/text/IStyleable$StyleType;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "styleType"    # Lcom/kingsoft/email/widget/text/IStyleable$StyleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kingsoft/email/widget/text/IStyleable$StyleType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/kingsoft/email/widget/text/span/ListType;->mValue:I

    .line 17
    iput-object p4, p0, Lcom/kingsoft/email/widget/text/span/ListType;->mStyleType:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingsoft/email/widget/text/span/ListType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/kingsoft/email/widget/text/span/ListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/widget/text/span/ListType;

    return-object v0
.end method

.method public static values()[Lcom/kingsoft/email/widget/text/span/ListType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/kingsoft/email/widget/text/span/ListType;->$VALUES:[Lcom/kingsoft/email/widget/text/span/ListType;

    invoke-virtual {v0}, [Lcom/kingsoft/email/widget/text/span/ListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/email/widget/text/span/ListType;

    return-object v0
.end method


# virtual methods
.method public getStyleType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListType;->mStyleType:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/ListType;->mValue:I

    return v0
.end method
