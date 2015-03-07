.class Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;
.super Ljava/lang/Object;
.source "AccountSettingsEditQuickResponsesFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

.field final synthetic val$adapter:Landroid/widget/SimpleCursorAdapter;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;Landroid/widget/SimpleCursorAdapter;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->val$adapter:Landroid/widget/SimpleCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 89
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v2}, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v2

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    sget-object v3, Lcom/kingsoft/mail/providers/UIProvider;->QUICK_RESPONSE_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->val$adapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 96
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 86
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->val$adapter:Landroid/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 101
    return-void
.end method
