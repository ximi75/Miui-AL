.class Lcom/kingsoft/mail/providers/MailAppProvider$1;
.super Ljava/lang/Object;
.source "MailAppProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/providers/MailAppProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/providers/MailAppProvider;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/providers/MailAppProvider;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/kingsoft/mail/providers/MailAppProvider$1;->this$0:Lcom/kingsoft/mail/providers/MailAppProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 155
    iget-object v7, p0, Lcom/kingsoft/mail/providers/MailAppProvider$1;->this$0:Lcom/kingsoft/mail/providers/MailAppProvider;

    invoke-virtual {v7}, Lcom/kingsoft/mail/providers/MailAppProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 157
    .local v5, "res":Landroid/content/res/Resources;
    const/high16 v7, 0x7f090000

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "accountQueryUris":[Ljava/lang/String;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 160
    .local v0, "accountQueryUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 161
    .local v6, "uri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/kingsoft/mail/providers/MailAppProvider$1;->this$0:Lcom/kingsoft/mail/providers/MailAppProvider;

    # invokes: Lcom/kingsoft/mail/providers/MailAppProvider;->addAccountsForUriAsync(Landroid/net/Uri;)V
    invoke-static {v7, v6}, Lcom/kingsoft/mail/providers/MailAppProvider;->access$000(Lcom/kingsoft/mail/providers/MailAppProvider;Landroid/net/Uri;)V

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "accountQueryUri":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method
