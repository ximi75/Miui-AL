.class Lcom/kingsoft/mail/ui/ActionableToastBar$1;
.super Ljava/lang/Object;
.source "ActionableToastBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/ActionableToastBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ActionableToastBar;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ActionableToastBar;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ActionableToastBar$1;->this$0:Lcom/kingsoft/mail/ui/ActionableToastBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar$1;->this$0:Lcom/kingsoft/mail/ui/ActionableToastBar;

    # getter for: Lcom/kingsoft/mail/ui/ActionableToastBar;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->access$000(Lcom/kingsoft/mail/ui/ActionableToastBar;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 64
    return-void
.end method
