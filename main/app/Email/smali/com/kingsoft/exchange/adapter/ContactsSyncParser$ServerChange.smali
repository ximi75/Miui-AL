.class Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ServerChange;
.super Ljava/lang/Object;
.source "ContactsSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/adapter/ContactsSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerChange"
.end annotation


# instance fields
.field id:J

.field read:Z

.field final synthetic this$0:Lcom/kingsoft/exchange/adapter/ContactsSyncParser;


# direct methods
.method constructor <init>(Lcom/kingsoft/exchange/adapter/ContactsSyncParser;JZ)V
    .locals 0
    .param p2, "_id"    # J
    .param p4, "_read"    # Z

    .prologue
    .line 480
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ServerChange;->this$0:Lcom/kingsoft/exchange/adapter/ContactsSyncParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-wide p2, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ServerChange;->id:J

    .line 482
    iput-boolean p4, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ServerChange;->read:Z

    .line 483
    return-void
.end method
