.class Lcom/kingsoft/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;
.super Ljava/lang/Object;
.source "EmlMessageViewFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/EmlMessageViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageLoadCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/kingsoft/mail/browse/ConversationMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/browse/EmlMessageViewFragment;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;->this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/browse/EmlMessageViewFragment;Lcom/kingsoft/mail/browse/EmlMessageViewFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/browse/EmlMessageViewFragment;
    .param p2, "x1"    # Lcom/kingsoft/mail/browse/EmlMessageViewFragment$1;

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;-><init>(Lcom/kingsoft/mail/browse/EmlMessageViewFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    packed-switch p1, :pswitch_data_0

    .line 263
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 261
    :pswitch_0
    new-instance v0, Lcom/kingsoft/mail/browse/EmlMessageLoader;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;->this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;->this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    # getter for: Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mEmlFileUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->access$400(Lcom/kingsoft/mail/browse/EmlMessageViewFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/browse/EmlMessageLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/browse/ConversationMessage;)V
    .locals 2
    .param p2, "data"    # Lcom/kingsoft/mail/browse/ConversationMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationMessage;",
            ">;",
            "Lcom/kingsoft/mail/browse/ConversationMessage;",
            ")V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/browse/ConversationMessage;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;->this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    # getter for: Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->access$300(Lcom/kingsoft/mail/browse/EmlMessageViewFragment;)Lcom/kingsoft/mail/ui/SecureConversationViewController;

    move-result-object v0

    iget-object v1, p2, Lcom/kingsoft/mail/browse/ConversationMessage;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->setSubject(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;->this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    # getter for: Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->access$300(Lcom/kingsoft/mail/browse/EmlMessageViewFragment;)Lcom/kingsoft/mail/ui/SecureConversationViewController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->renderMessage(Lcom/kingsoft/mail/browse/ConversationMessage;)V

    .line 271
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 255
    check-cast p2, Lcom/kingsoft/mail/browse/ConversationMessage;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;->onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/browse/ConversationMessage;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/browse/ConversationMessage;>;"
    return-void
.end method
