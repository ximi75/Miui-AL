.class Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;
.super Ljava/lang/Object;
.source "EmailSyncParser.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/adapter/EmailSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerChange"
.end annotation


# instance fields
.field final flag:Ljava/lang/Boolean;

.field final flags:Ljava/lang/Integer;

.field final id:J

.field final read:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/kingsoft/exchange/adapter/EmailSyncParser;


# direct methods
.method constructor <init>(Lcom/kingsoft/exchange/adapter/EmailSyncParser;JLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 0
    .param p2, "_id"    # J
    .param p4, "_read"    # Ljava/lang/Boolean;
    .param p5, "_flag"    # Ljava/lang/Boolean;
    .param p6, "_flags"    # Ljava/lang/Integer;

    .prologue
    .line 706
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;->this$0:Lcom/kingsoft/exchange/adapter/EmailSyncParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    iput-wide p2, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;->id:J

    .line 708
    iput-object p4, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;->read:Ljava/lang/Boolean;

    .line 709
    iput-object p5, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;->flag:Ljava/lang/Boolean;

    .line 710
    iput-object p6, p0, Lcom/kingsoft/exchange/adapter/EmailSyncParser$ServerChange;->flags:Ljava/lang/Integer;

    .line 711
    return-void
.end method
