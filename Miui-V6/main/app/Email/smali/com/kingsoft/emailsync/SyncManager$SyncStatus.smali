.class public Lcom/kingsoft/emailsync/SyncManager$SyncStatus;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/emailsync/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncStatus"
.end annotation


# static fields
.field public static final DIED:I = 0x1

.field public static final IDLE:I = 0x3

.field public static final NOT_RUNNING:I = 0x0

.field public static final SYNC:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/kingsoft/emailsync/SyncManager;


# direct methods
.method public constructor <init>(Lcom/kingsoft/emailsync/SyncManager;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/kingsoft/emailsync/SyncManager$SyncStatus;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
