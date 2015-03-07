.class Lcom/kingsoft/mail/ui/ConversationListFragment$7;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V
    .locals 0

    .prologue
    .line 950
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$7;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isExitingSelectionMode()Z
    .locals 6

    .prologue
    .line 953
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$7;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    # getter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->mSelectionModeExitedTimestamp:J
    invoke-static {v2}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$1200(Lcom/kingsoft/mail/ui/ConversationListFragment;)J

    move-result-wide v2

    # getter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->sSelectionModeAnimationDuration:J
    invoke-static {}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$1300()J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
