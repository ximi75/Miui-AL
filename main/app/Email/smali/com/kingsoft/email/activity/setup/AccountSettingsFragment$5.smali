.class Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$5;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->loadSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

.field final synthetic val$mAccountNameEd:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$5;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$5;->val$mAccountNameEd:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 815
    if-eqz p2, :cond_0

    .line 816
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$5;->val$mAccountNameEd:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$5;->val$mAccountNameEd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 817
    :cond_0
    return-void
.end method
