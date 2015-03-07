.class public Lcom/kingsoft/mail/preferences/PreferenceMigratorHolder;
.super Ljava/lang/Object;
.source "PreferenceMigratorHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/preferences/PreferenceMigratorHolder$PreferenceMigratorCreator;
    }
.end annotation


# static fields
.field private static sCreator:Lcom/kingsoft/mail/preferences/PreferenceMigratorHolder$PreferenceMigratorCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static createPreferenceMigrator()Lcom/kingsoft/mail/preferences/BasePreferenceMigrator;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/kingsoft/mail/preferences/PreferenceMigratorHolder;->sCreator:Lcom/kingsoft/mail/preferences/PreferenceMigratorHolder$PreferenceMigratorCreator;

    invoke-interface {v0}, Lcom/kingsoft/mail/preferences/PreferenceMigratorHolder$PreferenceMigratorCreator;->createPreferenceMigrator()Lcom/kingsoft/mail/preferences/BasePreferenceMigrator;

    move-result-object v0

    return-object v0
.end method

.method public static setPreferenceMigratorCreator(Lcom/kingsoft/mail/preferences/PreferenceMigratorHolder$PreferenceMigratorCreator;)V
    .locals 0
    .param p0, "creator"    # Lcom/kingsoft/mail/preferences/PreferenceMigratorHolder$PreferenceMigratorCreator;

    .prologue
    .line 30
    sput-object p0, Lcom/kingsoft/mail/preferences/PreferenceMigratorHolder;->sCreator:Lcom/kingsoft/mail/preferences/PreferenceMigratorHolder$PreferenceMigratorCreator;

    .line 31
    return-void
.end method
