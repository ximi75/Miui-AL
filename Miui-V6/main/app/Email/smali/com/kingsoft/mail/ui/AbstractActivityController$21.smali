.class Lcom/kingsoft/mail/ui/AbstractActivityController$21;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;->getSignInClickedListener()Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;
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
    .line 5099
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$21;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionClicked(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5102
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$21;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$21;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    # invokes: Lcom/kingsoft/mail/ui/AbstractActivityController;->promptUserForAuthentication(Lcom/kingsoft/mail/providers/Account;)V
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3200(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Account;)V

    .line 5103
    return-void
.end method
