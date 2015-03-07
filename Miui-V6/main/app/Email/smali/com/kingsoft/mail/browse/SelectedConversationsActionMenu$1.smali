.class Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu$1;
.super Lcom/kingsoft/mail/providers/AccountObserver;
.source "SelectedConversationsActionMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;-><init>(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/ui/ConversationSelectionSet;Lcom/kingsoft/mail/providers/Folder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu$1;->this$0:Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;

    invoke-direct {p0}, Lcom/kingsoft/mail/providers/AccountObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/kingsoft/mail/providers/Account;)V
    .locals 1
    .param p1, "newAccount"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu$1;->this$0:Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;

    # setter for: Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v0, p1}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->access$002(Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Account;

    .line 118
    return-void
.end method
