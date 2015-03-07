.class Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;
.super Ljava/lang/Object;
.source "EasMoveItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/eas/EasMoveItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveResponse"
.end annotation


# instance fields
.field public final moveStatus:I

.field public final newMessageId:Ljava/lang/String;

.field public final sourceMessageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "srcMsgId"    # Ljava/lang/String;
    .param p2, "dstMsgId"    # Ljava/lang/String;
    .param p3, "status"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;->sourceMessageId:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;->newMessageId:Ljava/lang/String;

    .line 37
    iput p3, p0, Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;->moveStatus:I

    .line 38
    return-void
.end method
