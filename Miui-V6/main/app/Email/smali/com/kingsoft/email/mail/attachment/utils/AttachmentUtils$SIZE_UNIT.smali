.class public final enum Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;
.super Ljava/lang/Enum;
.source "AttachmentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SIZE_UNIT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

.field public static final enum BYTE:Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

.field public static final enum MB:Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 834
    new-instance v0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

    const-string/jumbo v1, "BYTE"

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;->BYTE:Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

    new-instance v0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

    const-string/jumbo v1, "MB"

    invoke-direct {v0, v1, v3}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;->MB:Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

    .line 833
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

    sget-object v1, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;->BYTE:Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;->MB:Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;->$VALUES:[Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

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
    .line 833
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 833
    const-class v0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

    return-object v0
.end method

.method public static values()[Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;
    .locals 1

    .prologue
    .line 833
    sget-object v0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;->$VALUES:[Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

    invoke-virtual {v0}, [Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$SIZE_UNIT;

    return-object v0
.end method
