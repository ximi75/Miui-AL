.class Lcom/kingsoft/emailsync/EmailSyncAlarmReceiver$1;
.super Ljava/lang/Object;
.source "EmailSyncAlarmReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/emailsync/EmailSyncAlarmReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/emailsync/EmailSyncAlarmReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kingsoft/emailsync/EmailSyncAlarmReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/kingsoft/emailsync/EmailSyncAlarmReceiver$1;->this$0:Lcom/kingsoft/emailsync/EmailSyncAlarmReceiver;

    iput-object p2, p0, Lcom/kingsoft/emailsync/EmailSyncAlarmReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/emailsync/EmailSyncAlarmReceiver$1;->this$0:Lcom/kingsoft/emailsync/EmailSyncAlarmReceiver;

    iget-object v1, p0, Lcom/kingsoft/emailsync/EmailSyncAlarmReceiver$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/kingsoft/emailsync/EmailSyncAlarmReceiver;->handleReceive(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/kingsoft/emailsync/EmailSyncAlarmReceiver;->access$000(Lcom/kingsoft/emailsync/EmailSyncAlarmReceiver;Landroid/content/Context;)V

    .line 60
    return-void
.end method
