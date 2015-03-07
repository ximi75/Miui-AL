.class Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$FetchRequest;
.super Ljava/lang/Object;
.source "EmailSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchRequest"
.end annotation


# instance fields
.field final messageId:J

.field final serverId:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 0
    .param p1, "_messageId"    # J
    .param p3, "_serverId"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-wide p1, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$FetchRequest;->messageId:J

    .line 162
    iput-object p3, p0, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter$FetchRequest;->serverId:Ljava/lang/String;

    .line 163
    return-void
.end method
