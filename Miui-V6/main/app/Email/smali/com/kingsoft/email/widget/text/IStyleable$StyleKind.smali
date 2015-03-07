.class public final enum Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;
.super Ljava/lang/Enum;
.source "IStyleable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/widget/text/IStyleable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StyleKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

.field public static final enum CHAR:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

.field public static final enum PARA:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

.field public static final enum UNKNOWN:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    const-string/jumbo v1, "CHAR"

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->CHAR:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    new-instance v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    const-string/jumbo v1, "PARA"

    invoke-direct {v0, v1, v3}, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->PARA:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    new-instance v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->UNKNOWN:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    sget-object v1, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->CHAR:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->PARA:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->UNKNOWN:Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->$VALUES:[Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    return-object v0
.end method

.method public static values()[Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->$VALUES:[Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    invoke-virtual {v0}, [Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/email/widget/text/IStyleable$StyleKind;

    return-object v0
.end method
