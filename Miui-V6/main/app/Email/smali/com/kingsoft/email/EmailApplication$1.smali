.class final Lcom/kingsoft/email/EmailApplication$1;
.super Ljava/lang/Object;
.source "EmailApplication.java"

# interfaces
.implements Lcom/kingsoft/mail/preferences/PreferenceMigratorHolder$PreferenceMigratorCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/EmailApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPreferenceMigrator()Lcom/kingsoft/mail/preferences/BasePreferenceMigrator;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/kingsoft/email/preferences/EmailPreferenceMigrator;

    invoke-direct {v0}, Lcom/kingsoft/email/preferences/EmailPreferenceMigrator;-><init>()V

    return-object v0
.end method
