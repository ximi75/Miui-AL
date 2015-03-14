.class Lcom/kingsoft/mail/ui/AbstractActivityController$20;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;->getRetryClickedListener(Lcom/kingsoft/mail/providers/Folder;)Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

.field final synthetic val$folder:Lcom/kingsoft/mail/providers/Folder;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 0

    .prologue
    .line 5086
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$20;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$20;->val$folder:Lcom/kingsoft/mail/providers/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionClicked(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5089
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$20;->val$folder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v0, v1, Lcom/kingsoft/mail/providers/Folder;->refreshUri:Landroid/net/Uri;

    .line 5091
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 5092
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$20;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # invokes: Lcom/kingsoft/mail/ui/AbstractActivityController;->startAsyncRefreshTask(Landroid/net/Uri;)V
    invoke-static {v1, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3100(Lcom/kingsoft/mail/ui/AbstractActivityController;Landroid/net/Uri;)V

    .line 5094
    :cond_0
    return-void
.end method
