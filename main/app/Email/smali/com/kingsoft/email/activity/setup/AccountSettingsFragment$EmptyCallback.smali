.class Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$EmptyCallback;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyCallback"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 256
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$EmptyCallback;

    invoke-direct {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$EmptyCallback;-><init>()V

    sput-object v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$EmptyCallback;->INSTANCE:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abandonEdit()V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public onEditQuickResponses(Lcom/kingsoft/mail/providers/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 258
    return-void
.end method

.method public onIncomingSettings(Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 259
    return-void
.end method

.method public onOutgoingSettings(Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 260
    return-void
.end method

.method public onSettingsChanged(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "preference"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 257
    return-void
.end method
