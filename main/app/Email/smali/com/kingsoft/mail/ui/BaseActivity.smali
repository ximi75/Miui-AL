.class public Lcom/kingsoft/mail/ui/BaseActivity;
.super Lmiui/app/Activity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 22
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/BaseActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "BaseActivity setRequestedOrientation exception"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
