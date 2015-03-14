.class public Lcom/kingsoft/mail/ui/BaseActionBarActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "BaseActionBarActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/BaseActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/BaseActionBarActivity;->setRequestedOrientation(I)V

    .line 24
    :cond_0
    return-void
.end method
