.class Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$4;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;)V
    .locals 0

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$4;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1021
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$4;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;

    iget-object v0, v0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener$4;->this$1:Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->conversation:Lcom/kingsoft/mail/providers/Conversation;
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->access$2400(Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v1

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Conversation;->messageListUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1022
    return-void
.end method
