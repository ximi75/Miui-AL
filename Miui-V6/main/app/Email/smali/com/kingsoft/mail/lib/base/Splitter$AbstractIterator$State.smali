.class final enum Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;
.super Ljava/lang/Enum;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

.field public static final enum DONE:Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

.field public static final enum FAILED:Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

.field public static final enum NOT_READY:Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

.field public static final enum READY:Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 416
    new-instance v0, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

    const-string/jumbo v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;->READY:Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

    new-instance v0, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

    const-string/jumbo v1, "NOT_READY"

    invoke-direct {v0, v1, v3}, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;->NOT_READY:Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

    new-instance v0, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

    const-string/jumbo v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;->DONE:Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

    new-instance v0, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;->FAILED:Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

    .line 415
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

    sget-object v1, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;->READY:Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;->NOT_READY:Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;->DONE:Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;->FAILED:Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;->$VALUES:[Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

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
    .line 415
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 415
    const-class v0, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

    return-object v0
.end method

.method public static values()[Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;
    .locals 1

    .prologue
    .line 415
    sget-object v0, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;->$VALUES:[Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

    invoke-virtual {v0}, [Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator$State;

    return-object v0
.end method