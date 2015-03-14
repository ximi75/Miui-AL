.class Lcom/kingsoft/email/activity/setup/AccountSetupNames$2;
.super Ljava/lang/Object;
.source "AccountSetupNames.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupNames;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSetupNames;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupNames;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupNames;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupNames;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSetupNames;->onNext()V
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupNames;->access$000(Lcom/kingsoft/email/activity/setup/AccountSetupNames;)V

    .line 111
    return-void
.end method
