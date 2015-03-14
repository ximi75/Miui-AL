.class public Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;
.super Lcom/kingsoft/emailcommon/mail/MessagingException;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoDiscoverResults"
.end annotation


# instance fields
.field public final mHostAuth:Lcom/android/emailcommon/provider/HostAuth;


# direct methods
.method public constructor <init>(ZLcom/android/emailcommon/provider/HostAuth;)V
    .locals 1
    .param p1, "authenticationError"    # Z
    .param p2, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;

    .prologue
    .line 489
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 490
    if-eqz p1, :cond_0

    .line 491
    const/16 v0, 0xb

    iput v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;->mExceptionType:I

    .line 495
    :goto_0
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 496
    return-void

    .line 493
    :cond_0
    const/16 v0, 0xc

    iput v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;->mExceptionType:I

    goto :goto_0
.end method
