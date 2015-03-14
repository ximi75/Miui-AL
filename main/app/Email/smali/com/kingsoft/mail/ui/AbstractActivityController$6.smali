.class Lcom/kingsoft/mail/ui/AbstractActivityController$6;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/AbstractActivityController$LoadFinishedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;->markConversationMessagesUnread(Lcom/kingsoft/mail/providers/Conversation;Ljava/util/Set;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

.field final synthetic val$conv:Lcom/kingsoft/mail/providers/Conversation;

.field final synthetic val$originalConversationInfo:[B

.field final synthetic val$unreadMessageUris:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Conversation;Ljava/util/Set;[B)V
    .locals 0

    .prologue
    .line 2206
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$6;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$6;->val$conv:Lcom/kingsoft/mail/providers/Conversation;

    iput-object p3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$6;->val$unreadMessageUris:Ljava/util/Set;

    iput-object p4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$6;->val$originalConversationInfo:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinished()V
    .locals 4

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$6;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$6;->val$conv:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$6;->val$unreadMessageUris:Ljava/util/Set;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$6;->val$originalConversationInfo:[B

    # invokes: Lcom/kingsoft/mail/ui/AbstractActivityController;->doMarkConversationMessagesUnread(Lcom/kingsoft/mail/providers/Conversation;Ljava/util/Set;[B)V
    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$500(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Conversation;Ljava/util/Set;[B)V

    .line 2211
    return-void
.end method
