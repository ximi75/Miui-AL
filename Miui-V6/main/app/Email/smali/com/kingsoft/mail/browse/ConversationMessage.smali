.class public final Lcom/kingsoft/mail/browse/ConversationMessage;
.super Lcom/kingsoft/mail/providers/Message;
.source "ConversationMessage.java"


# static fields
.field public static final FACTORY:Lcom/kingsoft/mail/content/CursorCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingsoft/mail/content/CursorCreator",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient mController:Lcom/kingsoft/mail/browse/MessageCursor$ConversationController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationMessage$1;

    invoke-direct {v0}, Lcom/kingsoft/mail/browse/ConversationMessage$1;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationMessage;->FACTORY:Lcom/kingsoft/mail/content/CursorCreator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kingsoft/emailcommon/internet/MimeMessage;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mimeMessage"    # Lcom/kingsoft/emailcommon/internet/MimeMessage;
    .param p3, "emlFileUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/mail/providers/Message;-><init>(Landroid/content/Context;Lcom/kingsoft/emailcommon/internet/MimeMessage;Landroid/net/Uri;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/providers/Message;-><init>(Landroid/database/Cursor;)V

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/kingsoft/mail/browse/ConversationMessage$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # Lcom/kingsoft/mail/browse/ConversationMessage$1;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationMessage;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method private getAttachmentsStateHashCode()I
    .locals 5

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "hash":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationMessage;->getAttachments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Attachment;

    .line 81
    .local v0, "a":Lcom/kingsoft/mail/providers/Attachment;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Attachment;->getIdentifierUri()Landroid/net/Uri;

    move-result-object v3

    .line 82
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    .line 83
    goto :goto_0

    .line 82
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 84
    .end local v0    # "a":Lcom/kingsoft/mail/providers/Attachment;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    return v1
.end method


# virtual methods
.method public getConversation()Lcom/kingsoft/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationMessage;->mController:Lcom/kingsoft/mail/browse/MessageCursor$ConversationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationMessage;->mController:Lcom/kingsoft/mail/browse/MessageCursor$ConversationController;

    invoke-interface {v0}, Lcom/kingsoft/mail/browse/MessageCursor$ConversationController;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStateHashCode()I
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationMessage;->uri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationMessage;->read:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationMessage;->starred:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationMessage;->getAttachmentsStateHashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isConversationStarred()Z
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationMessage;->mController:Lcom/kingsoft/mail/browse/MessageCursor$ConversationController;

    invoke-interface {v1}, Lcom/kingsoft/mail/browse/MessageCursor$ConversationController;->getMessageCursor()Lcom/kingsoft/mail/browse/MessageCursor;

    move-result-object v0

    .line 89
    .local v0, "c":Lcom/kingsoft/mail/browse/MessageCursor;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageCursor;->isConversationStarred()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setController(Lcom/kingsoft/mail/browse/MessageCursor$ConversationController;)V
    .locals 0
    .param p1, "controller"    # Lcom/kingsoft/mail/browse/MessageCursor$ConversationController;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationMessage;->mController:Lcom/kingsoft/mail/browse/MessageCursor$ConversationController;

    .line 62
    return-void
.end method

.method public star(Z)V
    .locals 2
    .param p1, "newStarred"    # Z

    .prologue
    .line 93
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationMessage;->mController:Lcom/kingsoft/mail/browse/MessageCursor$ConversationController;

    invoke-interface {v1}, Lcom/kingsoft/mail/browse/MessageCursor$ConversationController;->getListController()Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-result-object v0

    .line 94
    .local v0, "listController":Lcom/kingsoft/mail/ui/ConversationUpdater;
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p0, p1}, Lcom/kingsoft/mail/ui/ConversationUpdater;->starMessage(Lcom/kingsoft/mail/browse/ConversationMessage;Z)V

    .line 97
    :cond_0
    return-void
.end method
