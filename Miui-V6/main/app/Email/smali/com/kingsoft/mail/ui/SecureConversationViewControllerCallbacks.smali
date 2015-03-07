.class public interface abstract Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;
.super Ljava/lang/Object;
.source "SecureConversationViewControllerCallbacks.java"


# virtual methods
.method public abstract getAccountUri()Landroid/net/Uri;
.end method

.method public abstract getAddressCache()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/providers/Address;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBaseUri()Ljava/lang/String;
.end method

.method public abstract getContactInfoSource()Lcom/kingsoft/mail/ContactInfoSource;
.end method

.method public abstract getConversationAccountController()Lcom/kingsoft/mail/browse/ConversationAccountController;
.end method

.method public abstract getFragment()Landroid/app/Fragment;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getSearchFilter()Ljava/lang/String;
.end method

.method public abstract getWebViewClient()Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;
.end method

.method public abstract isSearchMode()Z
.end method

.method public abstract isViewOnlyMode()Z
.end method

.method public abstract isViewVisibleToUser()Z
.end method

.method public abstract setupConversationHeaderView(Lcom/kingsoft/mail/browse/ConversationViewHeader;)V
.end method

.method public abstract setupMessageHeaderVeiledMatcher(Lcom/kingsoft/mail/browse/MessageHeaderView;)V
.end method

.method public abstract startMessageLoader()V
.end method
