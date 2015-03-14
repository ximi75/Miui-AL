.class Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$2;
.super Ljava/lang/Object;
.source "ConversationListFooterViewController.java"

# interfaces
.implements Lcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->onFooterViewLoadMoreClick(Lcom/kingsoft/mail/providers/Folder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$2;->this$0:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelRemoteSearch()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$2;->this$0:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->setTxtRemoteSearch()V

    .line 237
    return-void
.end method

.method public onPostRemoteSearch()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$2;->this$0:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->setTxtRemoteSearch()V

    .line 232
    return-void
.end method

.method public onPreRemoteSearch()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$2;->this$0:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->setTxtRemoteSearching()V

    .line 227
    return-void
.end method
