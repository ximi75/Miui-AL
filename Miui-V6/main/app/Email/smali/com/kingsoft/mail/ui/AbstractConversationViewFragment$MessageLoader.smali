.class Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoader;
.super Lcom/kingsoft/mail/content/ObjectCursorLoader;
.source "AbstractConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingsoft/mail/content/ObjectCursorLoader",
        "<",
        "Lcom/kingsoft/mail/browse/ConversationMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private mDeliveredFirstResults:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "messageListUri"    # Landroid/net/Uri;

    .prologue
    .line 697
    sget-object v0, Lcom/kingsoft/mail/providers/UIProvider;->MESSAGE_PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/kingsoft/mail/browse/ConversationMessage;->FACTORY:Lcom/kingsoft/mail/content/CursorCreator;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/kingsoft/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/kingsoft/mail/content/CursorCreator;)V

    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoader;->mDeliveredFirstResults:Z

    .line 698
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/kingsoft/mail/content/ObjectCursor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 705
    .local p1, "result":Lcom/kingsoft/mail/content/ObjectCursor;, "Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/browse/ConversationMessage;>;"
    invoke-super {p0, p1}, Lcom/kingsoft/mail/content/ObjectCursorLoader;->deliverResult(Lcom/kingsoft/mail/content/ObjectCursor;)V

    .line 707
    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoader;->mDeliveredFirstResults:Z

    if-nez v2, :cond_0

    .line 708
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoader;->mDeliveredFirstResults:Z

    .line 709
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoader;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 713
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Lcom/kingsoft/mail/providers/ListParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/kingsoft/mail/providers/ListParams;-><init>(IZ)V

    .line 717
    .local v0, "listParams":Lcom/kingsoft/mail/providers/ListParams;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "listParams"

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/ListParams;->serialize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 721
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoader;->setUri(Landroid/net/Uri;)V

    .line 723
    .end local v0    # "listParams":Lcom/kingsoft/mail/providers/ListParams;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 693
    check-cast p1, Lcom/kingsoft/mail/content/ObjectCursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoader;->deliverResult(Lcom/kingsoft/mail/content/ObjectCursor;)V

    return-void
.end method

.method protected getObjectCursor(Landroid/database/Cursor;)Lcom/kingsoft/mail/content/ObjectCursor;
    .locals 1
    .param p1, "inner"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 727
    new-instance v0, Lcom/kingsoft/mail/browse/MessageCursor;

    invoke-direct {v0, p1}, Lcom/kingsoft/mail/browse/MessageCursor;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method
