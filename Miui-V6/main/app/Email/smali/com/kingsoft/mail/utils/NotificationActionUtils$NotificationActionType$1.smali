.class final Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType$1;
.super Ljava/lang/Object;
.source "NotificationActionUtils.java"

# interfaces
.implements Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType$ActionToggler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/utils/NotificationActionUtils$NotificationActionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldDisplayPrimary(Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/providers/Message;)Z
    .locals 1
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p3, "message"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Folder;->isInbox()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
