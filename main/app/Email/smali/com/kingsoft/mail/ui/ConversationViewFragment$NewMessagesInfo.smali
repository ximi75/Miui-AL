.class Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;
.super Ljava/lang/Object;
.source "ConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/ConversationViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewMessagesInfo"
.end annotation


# instance fields
.field count:I

.field countFromSelf:I

.field senderAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;)V
    .locals 0

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;Lcom/kingsoft/mail/ui/ConversationViewFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/ui/ConversationViewFragment;
    .param p2, "x1"    # Lcom/kingsoft/mail/ui/ConversationViewFragment$1;

    .prologue
    .line 1257
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;-><init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;)V

    return-void
.end method


# virtual methods
.method public getNotificationText()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 1269
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1270
    .local v1, "res":Landroid/content/res/Resources;
    iget v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;->count:I

    if-le v2, v4, :cond_0

    .line 1271
    const v2, 0x7f0f0017

    iget v3, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;->count:I

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;->count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1274
    :goto_0
    return-object v2

    .line 1273
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;->this$0:Lcom/kingsoft/mail/ui/ConversationViewFragment;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;->senderAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v0

    .line 1274
    .local v0, "addr":Lcom/kingsoft/mail/providers/Address;
    const v3, 0x7f100284

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Address;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Address;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
