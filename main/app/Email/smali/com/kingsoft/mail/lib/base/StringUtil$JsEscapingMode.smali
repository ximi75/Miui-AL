.class public final enum Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;
.super Ljava/lang/Enum;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/lib/base/StringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JsEscapingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

.field public static final enum EMBEDDABLE_JS:Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

.field public static final enum JSON:Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

.field public static final enum MINIMAL_JS:Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1460
    new-instance v0, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    const-string/jumbo v1, "JSON"

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;->JSON:Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    .line 1463
    new-instance v0, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    const-string/jumbo v1, "EMBEDDABLE_JS"

    invoke-direct {v0, v1, v3}, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;->EMBEDDABLE_JS:Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    .line 1466
    new-instance v0, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    const-string/jumbo v1, "MINIMAL_JS"

    invoke-direct {v0, v1, v4}, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;->MINIMAL_JS:Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    .line 1458
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;->JSON:Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;->EMBEDDABLE_JS:Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;->MINIMAL_JS:Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;->$VALUES:[Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

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
    .line 1458
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1458
    const-class v0, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    return-object v0
.end method

.method public static values()[Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;
    .locals 1

    .prologue
    .line 1458
    sget-object v0, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;->$VALUES:[Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    invoke-virtual {v0}, [Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    return-object v0
.end method
