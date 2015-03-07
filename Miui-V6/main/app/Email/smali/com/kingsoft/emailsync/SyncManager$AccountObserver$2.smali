.class Lcom/kingsoft/emailsync/SyncManager$AccountObserver$2;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/emailsync/SyncManager$AccountObserver;


# direct methods
.method constructor <init>(Lcom/kingsoft/emailsync/SyncManager$AccountObserver;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver$2;->this$1:Lcom/kingsoft/emailsync/SyncManager$AccountObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver$2;->this$1:Lcom/kingsoft/emailsync/SyncManager$AccountObserver;

    # invokes: Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->onAccountChanged()V
    invoke-static {v0}, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->access$100(Lcom/kingsoft/emailsync/SyncManager$AccountObserver;)V

    .line 544
    return-void
.end method
