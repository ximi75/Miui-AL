.class public Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog;
.super Landroid/app/DialogFragment;
.source "KingsoftAgentDebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportFcDialog"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GettingSetupDataDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 124
    return-void
.end method

.method public static newInstance()Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog;

    invoke-direct {v0}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog;-><init>()V

    .line 128
    .local v0, "f":Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 133
    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 134
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-direct {v1, v0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 135
    .local v1, "dialog":Lmiui/app/ProgressDialog;
    invoke-virtual {v1, v5}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 136
    const-string/jumbo v2, "\u70b9\u51fbI KNOW \u6309\u94ae\u540e\uff0c\u5e94\u7528\u4f1a\u5f39\u51faFC\u6846\uff08\u6709\u7684\u624b\u673a\u53ef\u80fd\u4e0d\u5f39\uff09\uff0c\u70b9\u51fb\u786e\u5b9a\u5e76\u91cd\u542f\u5e94\u7528\u3002\u6b64\u65f6\u540e\u53f0\u4f1a\u5c06\u521a\u521a\u7684fc\u65e5\u5fd7\u4e0a\u62a5\u3002\u5e76\u5f39\u51fa\u63d0\u793a\uff1atest report fc successed\u3002\u5982\u679c\u6ca1toast\u63d0\u793a\uff0c\u8bf4\u660e\u4e0a\u62a5\u5931\u8d25\uff0c\u9700\u8981\u91cd\u65b0\u9a8c\u8bc1\u4ee3\u7801"

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 138
    const/4 v2, -0x2

    const-string/jumbo v3, "I Know"

    new-instance v4, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog$1;

    invoke-direct {v4, p0}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog$1;-><init>(Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportFcDialog;)V

    invoke-virtual {v1, v2, v3, v4}, Lmiui/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 150
    invoke-virtual {v1, v5}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 151
    return-object v1
.end method
