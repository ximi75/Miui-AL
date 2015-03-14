.class Lcom/kingsoft/mail/ui/AbstractActivityController$22;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;->getStorageErrorClickedListener()Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;
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
    .line 5108
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$22;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionClicked(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5111
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$22;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # invokes: Lcom/kingsoft/mail/ui/AbstractActivityController;->showStorageErrorDialog()V
    invoke-static {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3300(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    .line 5112
    return-void
.end method
