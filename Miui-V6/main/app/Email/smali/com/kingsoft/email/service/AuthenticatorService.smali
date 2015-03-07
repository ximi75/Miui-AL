.class public Lcom/kingsoft/email/service/AuthenticatorService;
.super Landroid/app/Service;
.source "AuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/service/AuthenticatorService$Authenticator;
    }
.end annotation


# static fields
.field public static final OPTIONS_CALENDAR_SYNC_ENABLED:Ljava/lang/String; = "calendar"

.field public static final OPTIONS_CONTACTS_SYNC_ENABLED:Ljava/lang/String; = "contacts"

.field public static final OPTIONS_EMAIL_SYNC_ENABLED:Ljava/lang/String; = "email"

.field public static final OPTIONS_PASSWORD:Ljava/lang/String; = "password"

.field public static final OPTIONS_USERNAME:Ljava/lang/String; = "username"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 153
    const-string/jumbo v0, "android.accounts.AccountAuthenticator"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Lcom/kingsoft/email/service/AuthenticatorService$Authenticator;

    invoke-direct {v0, p0, p0}, Lcom/kingsoft/email/service/AuthenticatorService$Authenticator;-><init>(Lcom/kingsoft/email/service/AuthenticatorService;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/kingsoft/email/service/AuthenticatorService$Authenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
