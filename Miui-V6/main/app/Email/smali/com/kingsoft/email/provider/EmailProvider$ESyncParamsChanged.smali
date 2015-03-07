.class final enum Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;
.super Ljava/lang/Enum;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ESyncParamsChanged"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

.field public static final enum INTERVAL_CHANGE:Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

.field public static final enum LOOKBACK_CHANGE:Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

.field public static final enum NONE:Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 418
    new-instance v0, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;->NONE:Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    new-instance v0, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    const-string/jumbo v1, "LOOKBACK_CHANGE"

    invoke-direct {v0, v1, v3}, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;->LOOKBACK_CHANGE:Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    new-instance v0, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    const-string/jumbo v1, "INTERVAL_CHANGE"

    invoke-direct {v0, v1, v4}, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;->INTERVAL_CHANGE:Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    .line 416
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;->NONE:Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;->LOOKBACK_CHANGE:Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;->INTERVAL_CHANGE:Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;->$VALUES:[Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

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
    .line 416
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 416
    const-class v0, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    return-object v0
.end method

.method public static values()[Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;
    .locals 1

    .prologue
    .line 416
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;->$VALUES:[Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    invoke-virtual {v0}, [Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    return-object v0
.end method
