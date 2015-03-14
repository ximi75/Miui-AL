.class Lcom/kingsoft/mail/ui/AbstractActivityController$10;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;->showNextConversation(Ljava/util/Collection;Ljava/lang/Runnable;Lcom/kingsoft/mail/ui/DestructiveAction;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

.field final synthetic val$target:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 2402
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$10;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$10;->val$target:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2405
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$10;->val$target:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Conversation;

    .line 2406
    .local v0, "conversation":Lcom/kingsoft/mail/providers/Conversation;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$10;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v0, Lcom/kingsoft/mail/providers/Conversation;->messageListUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 2408
    .end local v0    # "conversation":Lcom/kingsoft/mail/providers/Conversation;
    :cond_0
    return-void
.end method
