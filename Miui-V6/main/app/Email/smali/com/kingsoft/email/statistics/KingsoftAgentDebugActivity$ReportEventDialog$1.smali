.class Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog$1;
.super Ljava/lang/Object;
.source "KingsoftAgentDebugActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog$1;->this$0:Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog;

    iput-object p2, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog$1;->this$0:Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog;

    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog;->dismiss()V

    .line 180
    iget-object v0, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;->testEvents(Landroid/content/Context;)V

    .line 181
    return-void
.end method
