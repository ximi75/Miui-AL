.class Lcom/kingsoft/mail/ui/AbstractActivityController$8;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/AbstractActivityController$LoadFinishedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;->markConversationsRead(Ljava/util/Collection;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

.field final synthetic val$read:Z

.field final synthetic val$targets:Ljava/util/Collection;

.field final synthetic val$viewed:Z


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Ljava/util/Collection;ZZ)V
    .locals 0

    .prologue
    .line 2285
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$8;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$8;->val$targets:Ljava/util/Collection;

    iput-boolean p3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$8;->val$read:Z

    iput-boolean p4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$8;->val$viewed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinished()V
    .locals 5

    .prologue
    .line 2288
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$8;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$8;->val$targets:Ljava/util/Collection;

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$8;->val$read:Z

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$8;->val$viewed:Z

    const/4 v4, 0x1

    # invokes: Lcom/kingsoft/mail/ui/AbstractActivityController;->markConversationsRead(Ljava/util/Collection;ZZZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$600(Lcom/kingsoft/mail/ui/AbstractActivityController;Ljava/util/Collection;ZZZ)V

    .line 2289
    return-void
.end method
