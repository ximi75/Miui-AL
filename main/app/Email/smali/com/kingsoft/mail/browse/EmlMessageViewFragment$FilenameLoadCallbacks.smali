.class Lcom/kingsoft/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;
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
    name = "FilenameLoadCallbacks"
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
.field final synthetic this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/browse/EmlMessageViewFragment;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;->this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/browse/EmlMessageViewFragment;Lcom/kingsoft/mail/browse/EmlMessageViewFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/browse/EmlMessageViewFragment;
    .param p2, "x1"    # Lcom/kingsoft/mail/browse/EmlMessageViewFragment$1;

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;-><init>(Lcom/kingsoft/mail/browse/EmlMessageViewFragment;)V

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

    .line 282
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 288
    :goto_0
    return-object v0

    .line 284
    :pswitch_0
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;->this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;->this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    # getter for: Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mEmlFileUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->access$400(Lcom/kingsoft/mail/browse/EmlMessageViewFragment;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_display_name"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "_size"

    aput-object v6, v3, v5

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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
    .line 294
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;->this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string/jumbo v1, "_display_name"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 279
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
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
    .line 304
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
