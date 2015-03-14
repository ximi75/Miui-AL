.class public final enum Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;
.super Ljava/lang/Enum;
.source "ConversationCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

.field public static final enum LOCAL_FINISH:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

.field public static final enum LOCAL_SEARCHING:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

.field public static final enum NO:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

.field public static final enum REMOTE_FINISH:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

.field public static final enum REMOTE_SEARCHING:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2489
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    const-string/jumbo v1, "NO"

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->NO:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    new-instance v0, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    const-string/jumbo v1, "LOCAL_SEARCHING"

    invoke-direct {v0, v1, v3}, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->LOCAL_SEARCHING:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    new-instance v0, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    const-string/jumbo v1, "LOCAL_FINISH"

    invoke-direct {v0, v1, v4}, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->LOCAL_FINISH:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    new-instance v0, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    const-string/jumbo v1, "REMOTE_SEARCHING"

    invoke-direct {v0, v1, v5}, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->REMOTE_SEARCHING:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    new-instance v0, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    const-string/jumbo v1, "REMOTE_FINISH"

    invoke-direct {v0, v1, v6}, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->REMOTE_FINISH:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    .line 2488
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    sget-object v1, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->NO:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->LOCAL_SEARCHING:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->LOCAL_FINISH:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->REMOTE_SEARCHING:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->REMOTE_FINISH:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->$VALUES:[Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

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
    .line 2488
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2488
    const-class v0, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    return-object v0
.end method

.method public static values()[Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;
    .locals 1

    .prologue
    .line 2488
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->$VALUES:[Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    invoke-virtual {v0}, [Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    return-object v0
.end method
