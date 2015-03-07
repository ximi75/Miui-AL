.class Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog$1;
.super Ljava/lang/Object;
.source "KingsoftAgentDebugActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog$1;->this$0:Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 142
    iget-object v1, p0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog$1;->this$0:Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog;

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog;->dismiss()V

    .line 144
    const/4 v1, 0x1

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "test report fc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method
