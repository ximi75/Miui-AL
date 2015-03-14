.class public final enum Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;
.super Ljava/lang/Enum;
.source "DataPushSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/statistics/DataPushSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PushType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

.field public static final enum ConfigCollect:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

.field public static final enum ConfigPush:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

.field public static final enum Contact:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

.field public static final enum Event:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

.field public static final enum Exception:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

.field public static final enum SignPush:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    new-instance v0, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    const-string/jumbo v1, "Exception"

    invoke-direct {v0, v1, v4, v4}, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->Exception:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    new-instance v0, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    const-string/jumbo v1, "Contact"

    invoke-direct {v0, v1, v5, v5}, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->Contact:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    new-instance v0, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    const-string/jumbo v1, "ConfigPush"

    invoke-direct {v0, v1, v6, v6}, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->ConfigPush:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    new-instance v0, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    const-string/jumbo v1, "ConfigCollect"

    invoke-direct {v0, v1, v7, v7}, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->ConfigCollect:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    new-instance v0, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    const-string/jumbo v1, "Event"

    invoke-direct {v0, v1, v8, v8}, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->Event:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    new-instance v0, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    const-string/jumbo v1, "SignPush"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->SignPush:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    sget-object v1, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->Exception:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->Contact:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->ConfigPush:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->ConfigCollect:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->Event:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->SignPush:Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->$VALUES:[Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "v"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->value:I

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    return-object v0
.end method

.method public static values()[Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->$VALUES:[Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    invoke-virtual {v0}, [Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/kingsoft/email/statistics/DataPushSwitch$PushType;->value:I

    return v0
.end method
