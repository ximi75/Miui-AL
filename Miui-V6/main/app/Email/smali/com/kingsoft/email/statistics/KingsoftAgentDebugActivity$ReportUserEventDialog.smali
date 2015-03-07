.class public Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportUserEventDialog;
.super Landroid/app/DialogFragment;
.source "KingsoftAgentDebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportUserEventDialog"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GettingSetupDataDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 194
    return-void
.end method

.method public static newInstance()Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportUserEventDialog;
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportUserEventDialog;

    invoke-direct {v0}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportUserEventDialog;-><init>()V

    .line 198
    .local v0, "f":Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportUserEventDialog;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 203
    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportUserEventDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 204
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-direct {v1, v0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 205
    .local v1, "dialog":Lmiui/app/ProgressDialog;
    invoke-virtual {v1, v5}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 206
    const-string/jumbo v2, "\u70b9\u51fbI KNOW \u6309\u94ae\u540e\uff0c\u7a0d\u540e\u4f1a\u5f39\u51fa\u63d0\u793a\uff1atest report successed\u3002\u5982\u679c\u6ca1toast\u63d0\u793a\uff0c\u8bf4\u660e\u4e0a\u62a5\u5931\u8d25\uff0c\u9700\u8981\u91cd\u65b0\u9a8c\u8bc1\u4ee3\u7801\u3002\nPS\uff1a\u6d4b\u8bd5\u524d\u5148\u5c06\u7cfb\u7edf\u65f6\u95f4\u63d0\u524d\u81f3\u5c111\u5929\uff0c\u6536\u53d1\u51e0\u5c01\u90ae\u4ef6\u540e\uff08\u5207\u6362\u5e10\u53f7\u7b49\u6839\u90ae\u7bb1\u76f8\u5173\u4e8b\u4ef6\u540e\uff09\uff0c\u518d\u5c06\u65f6\u95f4\u8c03\u51c6\u3002\u70b9\u51fb\u6d4b\u8bd5\u6b64\u9879\u3002"

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 208
    const/4 v2, -0x2

    const-string/jumbo v3, "I Know"

    new-instance v4, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportUserEventDialog$1;

    invoke-direct {v4, p0, v0}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportUserEventDialog$1;-><init>(Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportUserEventDialog;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v4}, Lmiui/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 216
    invoke-virtual {v1, v5}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 217
    return-object v1
.end method
