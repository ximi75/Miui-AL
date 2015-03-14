.class Lcom/kingsoft/mail/ui/ActionableToastBar$2;
.super Ljava/lang/Object;
.source "ActionableToastBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ActionableToastBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 81
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ActionableToastBar$2;->this$0:Lcom/kingsoft/mail/ui/ActionableToastBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar$2;->this$0:Lcom/kingsoft/mail/ui/ActionableToastBar;

    # getter for: Lcom/kingsoft/mail/ui/ActionableToastBar;->mHidden:Z
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->access$100(Lcom/kingsoft/mail/ui/ActionableToastBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar$2;->this$0:Lcom/kingsoft/mail/ui/ActionableToastBar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/ui/ActionableToastBar;->hide(ZZ)V

    .line 87
    :cond_0
    return-void
.end method
