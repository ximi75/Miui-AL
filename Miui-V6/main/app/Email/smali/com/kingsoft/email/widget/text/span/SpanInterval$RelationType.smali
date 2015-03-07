.class public final enum Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;
.super Ljava/lang/Enum;
.source "SpanInterval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/widget/text/span/SpanInterval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RelationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

.field public static final enum BELONGTO:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

.field public static final enum CONTAINING:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

.field public static final enum EQUAL:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

.field public static final enum LEFT_ADJACENCY:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

.field public static final enum LEFT_INTERSECTION:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

.field public static final enum NONE_INTERSECTION:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

.field public static final enum RIGHT_ADJACENCY:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

.field public static final enum RIGHT_INTERSECTION:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

.field public static final enum UNKNOWN:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    const-string/jumbo v1, "CONTAINING"

    invoke-direct {v0, v1, v3}, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->CONTAINING:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    new-instance v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    const-string/jumbo v1, "LEFT_INTERSECTION"

    invoke-direct {v0, v1, v4}, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->LEFT_INTERSECTION:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    new-instance v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    const-string/jumbo v1, "RIGHT_INTERSECTION"

    invoke-direct {v0, v1, v5}, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->RIGHT_INTERSECTION:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    new-instance v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    const-string/jumbo v1, "BELONGTO"

    invoke-direct {v0, v1, v6}, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->BELONGTO:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    new-instance v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    const-string/jumbo v1, "EQUAL"

    invoke-direct {v0, v1, v7}, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->EQUAL:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    new-instance v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    const-string/jumbo v1, "LEFT_ADJACENCY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->LEFT_ADJACENCY:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    new-instance v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    const-string/jumbo v1, "RIGHT_ADJACENCY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->RIGHT_ADJACENCY:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    new-instance v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    const-string/jumbo v1, "NONE_INTERSECTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->NONE_INTERSECTION:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    new-instance v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->UNKNOWN:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    .line 5
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    sget-object v1, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->CONTAINING:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->LEFT_INTERSECTION:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->RIGHT_INTERSECTION:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->BELONGTO:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->EQUAL:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->LEFT_ADJACENCY:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->RIGHT_ADJACENCY:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->NONE_INTERSECTION:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->UNKNOWN:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->$VALUES:[Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    return-object v0
.end method

.method public static values()[Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->$VALUES:[Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    invoke-virtual {v0}, [Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    return-object v0
.end method
