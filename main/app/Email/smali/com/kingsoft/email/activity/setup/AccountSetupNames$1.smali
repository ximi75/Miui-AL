.class final Lcom/kingsoft/email/activity/setup/AccountSetupNames$1;
.super Ljava/lang/Object;
.source "AccountSetupNames.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupNames;->actionSetNames(Landroid/app/Activity;Lcom/kingsoft/email/activity/setup/SetupData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fromActivity:Landroid/app/Activity;

.field final synthetic val$setupData:Lcom/kingsoft/email/activity/setup/SetupData;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/SetupData;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$1;->val$setupData:Lcom/kingsoft/email/activity/setup/SetupData;

    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$1;->val$fromActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$1;->val$setupData:Lcom/kingsoft/email/activity/setup/SetupData;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$1;->val$fromActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->onNext2(Lcom/kingsoft/email/activity/setup/SetupData;Landroid/content/Context;)V

    .line 78
    return-void
.end method
