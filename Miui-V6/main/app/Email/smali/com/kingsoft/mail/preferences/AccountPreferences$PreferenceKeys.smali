.class public final Lcom/kingsoft/mail/preferences/AccountPreferences$PreferenceKeys;
.super Ljava/lang/Object;
.source "AccountPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/preferences/AccountPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreferenceKeys"
.end annotation


# static fields
.field public static final ACCOUNT_SYNC_OFF_DISMISSES:Ljava/lang/String; = "num-of-dismisses-account-sync-off"

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

.field private static final DEFAULT_INBOX_NOTIFICATIONS_ENABLED:Ljava/lang/String; = "inbox-notifications-enabled"

.field public static final LAST_SEEN_OUTBOX_COUNT:Ljava/lang/String; = "last-seen-outbox-count"

.field public static final NOTIFICATIONS_ENABLED:Ljava/lang/String; = "notifications-enabled"

.field public static final NOTIFICATION_RINGTONE:Ljava/lang/String; = "notification-ringtone"

.field public static final NOTIFICATION_VIBRATE:Ljava/lang/String; = "notification-vibrate"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    const-string/jumbo v1, "notifications-enabled"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/preferences/AccountPreferences$PreferenceKeys;->BACKUP_KEYS:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
