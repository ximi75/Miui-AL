.class public Lcom/kingsoft/exchange/Exchange;
.super Landroid/app/Application;
.source "Exchange.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "Exchange"

    invoke-static {v0}, Lcom/kingsoft/mail/utils/LogTag;->setLogTag(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 32
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent;->init(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Lcom/kingsoft/exchange/Exchange;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "fix_parent_keys"

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 35
    return-void
.end method
