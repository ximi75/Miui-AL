.class public Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;
.super Lcom/kingsoft/mail/ui/BasePreferenceActivity;
.source "DisturbSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DISTURB_PREFERENCE_KEY:Ljava/lang/String; = "donot_disturb_preference"

.field private static final END_TIME_PREFERENCE_KEY:Ljava/lang/String; = "do_not_disturb_endTime_preference"

.field private static final MINUTE_TO_MILLIONSECOND:I = 0xea60

.field private static final START_TIME_PREFERENCE_KEY:Ljava/lang/String; = "do_not_disturb_starttime_preference"


# instance fields
.field private mDisturbPreference:Landroid/preference/CheckBoxPreference;

.field private mEndHour:I

.field private mEndMinute:I

.field private mEndTimePreference:Landroid/preference/Preference;

.field private mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

.field private mOldDisturb:Z

.field private mOldEndHour:I

.field private mOldEndMinute:I

.field private mOldStartHour:I

.field private mOldStartMinute:I

.field private mStartHour:I

.field private mStartMinute:I

.field private mStartTimePreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mStartHour:I

    return p1
.end method

.method static synthetic access$102(Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mStartMinute:I

    return p1
.end method

.method static synthetic access$200(Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->setSummaryForStartTime()V

    return-void
.end method

.method static synthetic access$302(Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mEndHour:I

    return p1
.end method

.method static synthetic access$402(Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mEndMinute:I

    return p1
.end method

.method static synthetic access$500(Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->setSummaryForEndTime()V

    return-void
.end method

.method private initTimeData()V
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-virtual {v1}, Lcom/kingsoft/mail/preferences/MailPrefs;->getSilenceTime()I

    move-result v0

    .line 63
    .local v0, "silencePeriod":I
    shr-int/lit8 v1, v0, 0x18

    iput v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mStartHour:I

    .line 64
    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mStartMinute:I

    .line 65
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mEndHour:I

    .line 66
    and-int/lit16 v1, v0, 0xff

    iput v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mEndMinute:I

    .line 68
    iget v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mStartHour:I

    iput v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mOldStartHour:I

    .line 69
    iget v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mStartMinute:I

    iput v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mOldStartMinute:I

    .line 70
    iget v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mEndHour:I

    iput v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mOldEndHour:I

    .line 71
    iget v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mEndMinute:I

    iput v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mOldEndMinute:I

    .line 72
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-virtual {v1}, Lcom/kingsoft/mail/preferences/MailPrefs;->getIsSilencePeriodEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mOldDisturb:Z

    .line 74
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->setSummaryForStartTime()V

    .line 75
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->setSummaryForEndTime()V

    .line 76
    return-void
.end method

.method private setSummaryForEndTime()V
    .locals 5

    .prologue
    .line 86
    iget v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mEndHour:I

    mul-int/lit8 v1, v1, 0x3c

    iget v2, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mEndMinute:I

    add-int/2addr v1, v2

    const v2, 0xea60

    mul-int/2addr v1, v2

    int-to-long v1, v1

    const/16 v3, 0xc

    const-string/jumbo v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lmiui/date/DateUtils;->formatDateTime(JILjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "temp":Ljava/lang/String;
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mEndTimePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method private setSummaryForStartTime()V
    .locals 5

    .prologue
    .line 79
    iget v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mStartHour:I

    mul-int/lit8 v1, v1, 0x3c

    iget v2, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mStartMinute:I

    add-int/2addr v1, v2

    const v2, 0xea60

    mul-int/2addr v1, v2

    int-to-long v1, v1

    const/16 v3, 0xc

    const-string/jumbo v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lmiui/date/DateUtils;->formatDateTime(JILjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "temp":Ljava/lang/String;
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mStartTimePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    .line 53
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "do_not_disturb_starttime_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mStartTimePreference:Landroid/preference/Preference;

    .line 54
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mStartTimePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "do_not_disturb_endTime_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mEndTimePreference:Landroid/preference/Preference;

    .line 56
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mEndTimePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "donot_disturb_preference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mDisturbPreference:Landroid/preference/CheckBoxPreference;

    .line 58
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->initTimeData()V

    .line 59
    return-void
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mOldDisturb:Z

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mDisturbPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mOldStartMinute:I

    iget v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mStartMinute:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mOldStartHour:I

    iget v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mStartHour:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mOldEndHour:I

    iget v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mEndHour:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mOldEndMinute:I

    iget v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mEndMinute:I

    if-eq v0, v1, :cond_1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    iget v1, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mStartHour:I

    iget v2, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mStartMinute:I

    iget v3, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mEndHour:I

    iget v4, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mEndMinute:I

    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mDisturbPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/preferences/MailPrefs;->setSilenceTime(IIIIZ)Z

    .line 144
    invoke-static {p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->getInstance(Landroid/content/Context;)Lcom/kingsoft/mail/optimize/battery/SilenceManager;

    move-result-object v6

    .line 145
    .local v6, "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->handleSilenceModeAsync(Z)V

    .line 147
    .end local v6    # "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    :cond_1
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onDestroy()V

    .line 148
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v1, "do_not_disturb_starttime_preference"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->showTimePicker(Z)V

    .line 105
    :cond_0
    :goto_0
    return v2

    .line 102
    :cond_1
    const-string/jumbo v1, "do_not_disturb_endTime_preference"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0, v2}, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->showTimePicker(Z)V

    goto :goto_0
.end method

.method public showTimePicker(Z)V
    .locals 6
    .param p1, "start"    # Z

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget v3, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mStartHour:I

    .line 112
    .local v3, "hour":I
    iget v4, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mStartMinute:I

    .line 118
    .local v4, "minute":I
    :goto_0
    new-instance v0, Lmiui/app/TimePickerDialog;

    new-instance v2, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity$1;-><init>(Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;Z)V

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmiui/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiui/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 133
    .local v0, "timePickerDialog":Lmiui/app/TimePickerDialog;
    invoke-virtual {v0}, Lmiui/app/TimePickerDialog;->show()V

    .line 134
    return-void

    .line 115
    .end local v0    # "timePickerDialog":Lmiui/app/TimePickerDialog;
    .end local v3    # "hour":I
    .end local v4    # "minute":I
    :cond_0
    iget v3, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mEndHour:I

    .line 116
    .restart local v3    # "hour":I
    iget v4, p0, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;->mEndMinute:I

    .restart local v4    # "minute":I
    goto :goto_0
.end method
