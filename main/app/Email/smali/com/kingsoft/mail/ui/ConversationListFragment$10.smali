.class Lcom/kingsoft/mail/ui/ConversationListFragment$10;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/ConversationSetObserver;


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
    .line 1315
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$10;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetChanged(Lcom/kingsoft/mail/ui/ConversationSelectionSet;)V
    .locals 0
    .param p1, "set"    # Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    .prologue
    .line 1329
    return-void
.end method

.method public onSetEmpty()V
    .locals 3

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$10;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->mSelectionModeExitedTimestamp:J
    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$1202(Lcom/kingsoft/mail/ui/ConversationListFragment;J)J

    .line 1324
    return-void
.end method

.method public onSetPopulated(Lcom/kingsoft/mail/ui/ConversationSelectionSet;)V
    .locals 0
    .param p1, "set"    # Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    .prologue
    .line 1319
    return-void
.end method
