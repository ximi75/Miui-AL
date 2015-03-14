.class public Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog;
.super Landroid/app/DialogFragment;
.source "KingsoftAgentDebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportEventDialog"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GettingSetupDataDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 161
    return-void
.end method

.method public static newInstance()Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog;

    invoke-direct {v0}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog;-><init>()V

    .line 165
    .local v0, "f":Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 170
    invoke-virtual {p0}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 171
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-direct {v1, v0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 172
    .local v1, "dialog":Lmiui/app/ProgressDialog;
    invoke-virtual {v1, v5}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 173
    const-string/jumbo v2, "\u70b9\u51fbI KNOW \u6309\u94ae\u540e\uff0c\u7a0d\u540e\u4f1a\u5f39\u51fa\u63d0\u793a\uff1atest report successed\u3002\u5982\u679c\u6ca1toast\u63d0\u793a\uff0c\u8bf4\u660e\u4e0a\u62a5\u5931\u8d25\uff0c\u9700\u8981\u91cd\u65b0\u9a8c\u8bc1\u4ee3\u7801\u3002\n\u5efa\u8bae\u591a\u64cd\u4f5c\u51e0\u4e2a\u90ae\u7bb1\u529f\u80fd\u540e\uff0c\u591a\u89e6\u53d1\u51e0\u6b21\u57cb\u70b9\u540e\u3002\u518d\u6d4b\u8bd5\u6b64\u9879\u3002"

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 175
    const/4 v2, -0x2

    const-string/jumbo v3, "I Know"

    new-instance v4, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog$1;

    invoke-direct {v4, p0, v0}, Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog$1;-><init>(Lcom/kingsoft/email/statistics/KingsoftAgentDebugActivity$ReportEventDialog;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v4}, Lmiui/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 183
    invoke-virtual {v1, v5}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 184
    return-object v1
.end method
