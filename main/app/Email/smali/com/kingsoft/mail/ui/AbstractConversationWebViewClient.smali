.class public Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AbstractConversationWebViewClient.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/kingsoft/mail/providers/Account;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/kingsoft/mail/providers/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 52
    return-void
.end method

.method private generateProxyIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 101
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v9, v9, Lcom/kingsoft/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 102
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "original_uri"

    invoke-virtual {v3, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    const-string/jumbo v8, "account"

    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 105
    const/4 v4, 0x0

    .line 109
    .local v4, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v8, p0, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 114
    :goto_0
    if-eqz v4, :cond_1

    .line 116
    const/high16 v8, 0x10000

    invoke-virtual {v4, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 119
    .local v7, "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v8, p0, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 126
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 127
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 128
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    return-object v3

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    sget-object v8, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Error getting package manager"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v1, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public setAccount(Lcom/kingsoft/mail/providers/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 56
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->mActivity:Landroid/app/Activity;

    .line 60
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 70
    const/4 v1, 0x0

    .line 97
    :goto_0
    return v1

    .line 73
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 74
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v3, v2, v4}, Lcom/kingsoft/mail/utils/Utils;->divertMailtoUri(Landroid/content/Context;Landroid/net/Uri;Lcom/kingsoft/mail/providers/Account;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    const/4 v1, 0x1

    goto :goto_0

    .line 79
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 80
    invoke-direct {p0, v2}, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->generateProxyIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    :goto_1
    const/4 v1, 0x0

    .line 88
    .local v1, "result":Z
    const/high16 v3, 0x90000

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    const/4 v1, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "result":Z
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.browser.application_id"

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 92
    .restart local v1    # "result":Z
    :catch_0
    move-exception v3

    goto :goto_0
.end method
