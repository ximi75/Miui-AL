.class Lcom/kingsoft/mail/browse/MessageInviteView$InviteCommandHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MessageInviteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/MessageInviteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InviteCommandHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/MessageInviteView;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/browse/MessageInviteView;)V
    .locals 1

    .prologue
    .line 156
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageInviteView$InviteCommandHandler;->this$0:Lcom/kingsoft/mail/browse/MessageInviteView;

    .line 157
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/MessageInviteView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 158
    return-void
.end method


# virtual methods
.method public sendCommand(Landroid/content/ContentValues;)V
    .locals 7
    .param p1, "params"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 161
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageInviteView$InviteCommandHandler;->this$0:Lcom/kingsoft/mail/browse/MessageInviteView;

    # getter for: Lcom/kingsoft/mail/browse/MessageInviteView;->mMessage:Lcom/kingsoft/mail/providers/Message;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/MessageInviteView;->access$000(Lcom/kingsoft/mail/browse/MessageInviteView;)Lcom/kingsoft/mail/providers/Message;

    move-result-object v0

    iget-object v3, v0, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, p1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/kingsoft/mail/browse/MessageInviteView$InviteCommandHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 162
    return-void
.end method
