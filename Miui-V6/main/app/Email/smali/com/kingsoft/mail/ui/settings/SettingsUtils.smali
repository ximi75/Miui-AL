.class public Lcom/kingsoft/mail/ui/settings/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updatePreferenceSummary(Landroid/preference/Preference;Ljava/lang/String;I)V
    .locals 1
    .param p0, "preference"    # Landroid/preference/Preference;
    .param p1, "summary"    # Ljava/lang/String;
    .param p2, "defaultRes"    # I

    .prologue
    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0, p2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method
