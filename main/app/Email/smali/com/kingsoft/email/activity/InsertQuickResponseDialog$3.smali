.class Lcom/kingsoft/email/activity/InsertQuickResponseDialog$3;
.super Ljava/lang/Object;
.source "InsertQuickResponseDialog.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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
.field final synthetic this$0:Lcom/kingsoft/email/activity/InsertQuickResponseDialog;

.field final synthetic val$account:Lcom/kingsoft/mail/providers/Account;

.field final synthetic val$adapter:Landroid/widget/SimpleCursorAdapter;

.field final synthetic val$dlg:Lmiui/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/InsertQuickResponseDialog;Lcom/kingsoft/mail/providers/Account;Landroid/widget/SimpleCursorAdapter;Lmiui/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$3;->this$0:Lcom/kingsoft/email/activity/InsertQuickResponseDialog;

    iput-object p2, p0, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$3;->val$account:Lcom/kingsoft/mail/providers/Account;

    iput-object p3, p0, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$3;->val$adapter:Landroid/widget/SimpleCursorAdapter;

    iput-object p4, p0, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$3;->val$dlg:Lmiui/app/AlertDialog;

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

    .line 135
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$3;->this$0:Lcom/kingsoft/email/activity/InsertQuickResponseDialog;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$3;->val$account:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    sget-object v3, Lcom/kingsoft/mail/providers/UIProvider;->QUICK_RESPONSE_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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
    .line 141
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$3;->val$adapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 142
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$3;->val$dlg:Lmiui/app/AlertDialog;

    iget-object v1, p0, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$3;->this$0:Lcom/kingsoft/email/activity/InsertQuickResponseDialog;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100311

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 132
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$3;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 149
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/kingsoft/email/activity/InsertQuickResponseDialog$3;->val$adapter:Landroid/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 150
    return-void
.end method
