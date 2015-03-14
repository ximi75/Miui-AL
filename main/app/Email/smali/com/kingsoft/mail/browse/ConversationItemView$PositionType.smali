.class final enum Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;
.super Ljava/lang/Enum;
.source "ConversationItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PositionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

.field public static final enum first:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

.field public static final enum firstAndLast:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

.field public static final enum last:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

.field public static final enum middle:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    const-string/jumbo v1, "first"

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;->first:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    new-instance v0, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    const-string/jumbo v1, "middle"

    invoke-direct {v0, v1, v3}, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;->middle:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    new-instance v0, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    const-string/jumbo v1, "last"

    invoke-direct {v0, v1, v4}, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;->last:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    new-instance v0, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    const-string/jumbo v1, "firstAndLast"

    invoke-direct {v0, v1, v5}, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;->firstAndLast:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    .line 287
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;->first:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;->middle:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;->last:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;->firstAndLast:Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;->$VALUES:[Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

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
    .line 287
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 287
    const-class v0, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    return-object v0
.end method

.method public static values()[Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;->$VALUES:[Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    invoke-virtual {v0}, [Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/mail/browse/ConversationItemView$PositionType;

    return-object v0
.end method
