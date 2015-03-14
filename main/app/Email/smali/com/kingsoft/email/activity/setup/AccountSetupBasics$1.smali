.class Lcom/kingsoft/email/activity/setup/AccountSetupBasics$1;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    iget-object v2, v2, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 362
    return-void
.end method
