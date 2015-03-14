.class final Lcom/kingsoft/mail/ui/MailActionBarView$UpdateProvider;
.super Landroid/os/AsyncTask;
.source "MailActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/MailActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final mAccount:Landroid/net/Uri;

.field final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/kingsoft/mail/ui/MailActionBarView;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/ui/MailActionBarView;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "account"    # Landroid/net/Uri;
    .param p3, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailActionBarView$UpdateProvider;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 288
    iput-object p2, p0, Lcom/kingsoft/mail/ui/MailActionBarView$UpdateProvider;->mAccount:Landroid/net/Uri;

    .line 289
    iput-object p3, p0, Lcom/kingsoft/mail/ui/MailActionBarView$UpdateProvider;->mResolver:Landroid/content/ContentResolver;

    .line 290
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 283
    check-cast p1, [Landroid/os/Bundle;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView$UpdateProvider;->doInBackground([Landroid/os/Bundle;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/os/Bundle;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Landroid/os/Bundle;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$UpdateProvider;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView$UpdateProvider;->mAccount:Landroid/net/Uri;

    const-string/jumbo v2, "set_current_account"

    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView$UpdateProvider;->mAccount:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 297
    const/4 v0, 0x0

    return-object v0
.end method
