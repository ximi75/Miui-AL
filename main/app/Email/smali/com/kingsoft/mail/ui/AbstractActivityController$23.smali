.class Lcom/kingsoft/mail/ui/AbstractActivityController$23;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;->getInternalErrorClickedListener()Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V
    .locals 0

    .prologue
    .line 5126
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$23;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionClicked(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5129
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$23;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$23;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/Utils;->sendFeedback(Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;Lcom/kingsoft/mail/providers/Account;Z)V

    .line 5130
    return-void
.end method
