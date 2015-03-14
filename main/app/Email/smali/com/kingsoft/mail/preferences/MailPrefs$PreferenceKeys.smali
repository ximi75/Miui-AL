.class public final Lcom/kingsoft/mail/preferences/MailPrefs$PreferenceKeys;
.super Ljava/lang/Object;
.source "MailPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/preferences/MailPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreferenceKeys"
.end annotation


# static fields
.field public static final ACCOUNT_POP3_SERVER_SORT_TYPE:Ljava/lang/String; = "account_pop3_server_sort_type"

.field public static final AIRPLANE_MODE_ON_DISMISSES:Ljava/lang/String; = "num-of-dismisses-airplane-mode-on"

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

.field public static final BCC_TO_MYSELF:Ljava/lang/String; = "always-bcc-to-myself"

.field private static final CACHED_ACTIVE_NOTIFICATION_SET:Ljava/lang/String; = "cache-active-notification-set"

.field public static final CHAT_VIEW:Ljava/lang/String; = "chat-view"

.field private static final CONVERSATION_PHOTO_TEASER_SHOWN:Ljava/lang/String; = "conversation-photo-teaser-shown-three"

.field public static final DEFAULT_REPLY_ALL:Ljava/lang/String; = "default-reply-all"

.field public static final DEFAULT_SILENCE_PERIOD:I = 0x17000700

.field public static final DISPLAY_IMAGES:Ljava/lang/String; = "display_images"

.field public static final DISPLAY_IMAGES_PATTERNS:Ljava/lang/String; = "display_sender_images_patterns_set"

.field public static final EXCHANGE_ACCOUNT_SYNC:Ljava/lang/String; = "exchange_account_sync"

.field public static final EXPERIMENT_AP_PARALLAX_DIRECTION_ALTERNATIVE:Ljava/lang/String; = "ap-parallax-direction"

.field public static final EXPERIMENT_AP_PARALLAX_SPEED_ALTERNATIVE:Ljava/lang/String; = "ap-parallax-speed"

.field public static final GLOBAL_SYNC_OFF_DISMISSES:Ljava/lang/String; = "num-of-dismisses-auto-sync-off"

.field public static final LAST_AM_ACCOUNT_COUNT:Ljava/lang/String; = "_last_am_account_count_"

.field public static final LOCAL_SEARCH:Ljava/lang/String; = "local-search"

.field public static final LONG_PRESS_TO_SELECT_TIP_SHOWN:Ljava/lang/String; = "long-press-to-select-tip-shown"

.field private static final MIGRATED_VERSION:Ljava/lang/String; = "migrated-version"

.field public static final REMOVAL_ACTION:Ljava/lang/String; = "removal-action"

.field public static final SHOW_SENDER_IMAGES:Ljava/lang/String; = "conversation-list-sender-image"

.field public static final SILENCE_PERIOD:Ljava/lang/String; = "donot_disturb_preference"

.field public static final SILENCE_PERIOD_TIME:Ljava/lang/String; = "silence_period_start_end"

.field public static final WHATS_NEW_LAST_SHOWN_VERSION:Ljava/lang/String; = "whats-new-last-shown-version"

.field public static final WIDGET_ACCOUNT_PREFIX:Ljava/lang/String; = "widget-account-"

.field public static final WITH_PRE_MESSAGE_ATTACHMENT:Ljava/lang/String; = "with-pre-message-attachment"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    const-string/jumbo v1, "default-reply-all"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string/jumbo v1, "removal-action"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string/jumbo v1, "display_images"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string/jumbo v1, "display_sender_images_patterns_set"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string/jumbo v1, "conversation-list-sender-image"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string/jumbo v1, "long-press-to-select-tip-shown"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string/jumbo v1, "chat-view"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/preferences/MailPrefs$PreferenceKeys;->BACKUP_KEYS:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
