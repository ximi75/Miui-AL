.class public final Lcom/kingsoft/mail/preferences/FolderPreferences$PreferenceKeys;
.super Ljava/lang/Object;
.source "FolderPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/preferences/FolderPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreferenceKeys"
.end annotation


# static fields
.field public static final BACKUP_KEYS:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTIFICATIONS_ENABLED:Ljava/lang/String; = "notifications-enabled"

.field public static final NOTIFICATION_NOTIFY_EVERY_MESSAGE:Ljava/lang/String; = "notification-notify-every-message"

.field public static final NOTIFICATION_RINGTONE:Ljava/lang/String; = "notification-ringtone"

.field public static final NOTIFICATION_VIBRATE:Ljava/lang/String; = "notification-vibrate"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    const-string/jumbo v1, "notifications-enabled"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string/jumbo v1, "notification-ringtone"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string/jumbo v1, "notification-vibrate"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string/jumbo v1, "notification-notify-every-message"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/preferences/FolderPreferences$PreferenceKeys;->BACKUP_KEYS:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
