.class Lcom/kingsoft/mail/browse/EmlViewerActivity$AccountLoadCallbacks;
.super Ljava/lang/Object;
.source "EmlViewerActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/EmlViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountLoadCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/kingsoft/mail/content/ObjectCursor",
        "<",
        "Lcom/kingsoft/mail/providers/Account;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/EmlViewerActivity;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/browse/EmlViewerActivity;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/kingsoft/mail/browse/EmlViewerActivity$AccountLoadCallbacks;->this$0:Lcom/kingsoft/mail/browse/EmlViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/browse/EmlViewerActivity;Lcom/kingsoft/mail/browse/EmlViewerActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/browse/EmlViewerActivity;
    .param p2, "x1"    # Lcom/kingsoft/mail/browse/EmlViewerActivity$1;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/EmlViewerActivity$AccountLoadCallbacks;-><init>(Lcom/kingsoft/mail/browse/EmlViewerActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Account;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 178
    sget-object v1, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    .line 179
    .local v1, "projection":[Ljava/lang/String;
    sget-object v0, Lcom/kingsoft/mail/providers/Account;->FACTORY:Lcom/kingsoft/mail/content/CursorCreator;

    .line 180
    .local v0, "factory":Lcom/kingsoft/mail/content/CursorCreator;, "Lcom/kingsoft/mail/content/CursorCreator<Lcom/kingsoft/mail/providers/Account;>;"
    new-instance v2, Lcom/kingsoft/mail/content/ObjectCursorLoader;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/EmlViewerActivity$AccountLoadCallbacks;->this$0:Lcom/kingsoft/mail/browse/EmlViewerActivity;

    iget-object v4, p0, Lcom/kingsoft/mail/browse/EmlViewerActivity$AccountLoadCallbacks;->this$0:Lcom/kingsoft/mail/browse/EmlViewerActivity;

    # getter for: Lcom/kingsoft/mail/browse/EmlViewerActivity;->mAccountUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/kingsoft/mail/browse/EmlViewerActivity;->access$100(Lcom/kingsoft/mail/browse/EmlViewerActivity;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/kingsoft/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/kingsoft/mail/content/CursorCreator;)V

    return-object v2
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/content/ObjectCursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Account;",
            ">;>;",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Account;>;>;"
    .local p2, "data":Lcom/kingsoft/mail/content/ObjectCursor;, "Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Account;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/kingsoft/mail/browse/EmlViewerActivity$AccountLoadCallbacks;->this$0:Lcom/kingsoft/mail/browse/EmlViewerActivity;

    invoke-virtual {p2}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Account;

    # setter for: Lcom/kingsoft/mail/browse/EmlViewerActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v1, v0}, Lcom/kingsoft/mail/browse/EmlViewerActivity;->access$202(Lcom/kingsoft/mail/browse/EmlViewerActivity;Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Account;

    .line 190
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 173
    check-cast p2, Lcom/kingsoft/mail/content/ObjectCursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/browse/EmlViewerActivity$AccountLoadCallbacks;->onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/content/ObjectCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Account;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Account;>;>;"
    return-void
.end method
