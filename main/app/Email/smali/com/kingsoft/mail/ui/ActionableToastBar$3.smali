.class Lcom/kingsoft/mail/ui/ActionableToastBar$3;
.super Ljava/lang/Object;
.source "ActionableToastBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ActionableToastBar;->show(Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;ILjava/lang/CharSequence;ZIZLcom/kingsoft/mail/ui/ToastBarOperation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ActionableToastBar;

.field final synthetic val$listener:Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;

.field final synthetic val$op:Lcom/kingsoft/mail/ui/ToastBarOperation;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ActionableToastBar;Lcom/kingsoft/mail/ui/ToastBarOperation;Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ActionableToastBar$3;->this$0:Lcom/kingsoft/mail/ui/ActionableToastBar;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/ActionableToastBar$3;->val$op:Lcom/kingsoft/mail/ui/ToastBarOperation;

    iput-object p3, p0, Lcom/kingsoft/mail/ui/ActionableToastBar$3;->val$listener:Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 137
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar$3;->val$op:Lcom/kingsoft/mail/ui/ToastBarOperation;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ToastBarOperation;->shouldTakeOnActionClickedPrecedence()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar$3;->val$op:Lcom/kingsoft/mail/ui/ToastBarOperation;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ActionableToastBar$3;->this$0:Lcom/kingsoft/mail/ui/ActionableToastBar;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ActionableToastBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ToastBarOperation;->onActionClicked(Landroid/content/Context;)V

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar$3;->this$0:Lcom/kingsoft/mail/ui/ActionableToastBar;

    invoke-virtual {v0, v2, v2}, Lcom/kingsoft/mail/ui/ActionableToastBar;->hide(ZZ)V

    .line 143
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar$3;->val$listener:Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ActionableToastBar$3;->this$0:Lcom/kingsoft/mail/ui/ActionableToastBar;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ActionableToastBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;->onActionClicked(Landroid/content/Context;)V

    goto :goto_0
.end method
