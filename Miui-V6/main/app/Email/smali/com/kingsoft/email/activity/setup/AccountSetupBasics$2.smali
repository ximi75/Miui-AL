.class Lcom/kingsoft/email/activity/setup/AccountSetupBasics$2;
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
    .line 375
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$000(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$000(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 379
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$000(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$000(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 382
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$000(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    iget-object v1, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 385
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->loginValidbyHua()V

    .line 386
    return-void
.end method
