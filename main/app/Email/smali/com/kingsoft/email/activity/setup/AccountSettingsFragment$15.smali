.class Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$15;
.super Ljava/util/TimerTask;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->createDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 1474
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$15;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$15;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1481
    return-void
.end method
