.class public Lcom/kingsoft/email/activity/setup/SetupData;
.super Ljava/lang/Object;
.source "SetupData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/SetupData$SetupDataContainer;
    }
.end annotation


# static fields
.field public static final CHECK_AUTODISCOVER:I = 0x4

.field public static final CHECK_INCOMING:I = 0x1

.field public static final CHECK_OUTGOING:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingsoft/email/activity/setup/SetupData;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_SETUP_DATA:Ljava/lang/String; = "com.android.email.setupdata"

.field public static final FLOW_MODE_ACCOUNT_MANAGER:I = 0x1

.field public static final FLOW_MODE_EDIT:I = 0x3

.field public static final FLOW_MODE_FORCE_CREATE:I = 0x4

.field public static final FLOW_MODE_NORMAL:I = 0x0

.field public static final FLOW_MODE_NO_ACCOUNTS:I = 0x8

.field public static final FLOW_MODE_RETURN_NO_ACCOUNTS_RESULT:I = 0x7

.field public static final FLOW_MODE_RETURN_TO_CALLER:I = 0x5

.field public static final FLOW_MODE_RETURN_TO_MESSAGE_LIST:I = 0x6

.field public static final FLOW_MODE_UNSPECIFIED:I = -0x1


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

.field private mAccountInfo:Lcom/kingsoft/email/data/AccountInfo;

.field private mAllowAutodiscover:Z

.field private mCheckSettingsMode:I

.field private mFlowAccountType:Ljava/lang/String;

.field private mFlowMode:I

.field private mPassword:Ljava/lang/String;

.field private mPolicy:Lcom/android/emailcommon/provider/Policy;

.field private mSelectedProtocal:Ljava/lang/String;

.field private mUiAccount:Lcom/kingsoft/mail/providers/Account;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/kingsoft/email/activity/setup/SetupData$1;

    invoke-direct {v0}, Lcom/kingsoft/email/activity/setup/SetupData$1;-><init>()V

    sput-object v0, Lcom/kingsoft/email/activity/setup/SetupData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v2, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mFlowMode:I

    .line 56
    iput v2, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 57
    iput-boolean v3, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    .line 59
    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 62
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mSelectedProtocal:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 80
    iput-boolean v3, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    .line 81
    iput v2, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 82
    new-instance v0, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Account;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 83
    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 86
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "flowMode"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/SetupData;-><init>()V

    .line 90
    iput p1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mFlowMode:I

    .line 91
    return-void
.end method

.method public constructor <init>(ILcom/android/emailcommon/provider/Account;)V
    .locals 0
    .param p1, "flowMode"    # I
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/SetupData;-><init>(I)V

    .line 100
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 101
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "flowMode"    # I
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/SetupData;-><init>(I)V

    .line 95
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mFlowAccountType:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v3, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mFlowMode:I

    .line 56
    iput v3, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 57
    iput-boolean v2, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 62
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mSelectedProtocal:Ljava/lang/String;

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 216
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mFlowMode:I

    .line 217
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/Account;

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    .line 222
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/Policy;

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 223
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mSelectedProtocal:Ljava/lang/String;

    .line 227
    const-class v1, Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Account;

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mUiAccount:Lcom/kingsoft/mail/providers/Account;

    .line 228
    const-class v1, Lcom/kingsoft/email/data/AccountInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/data/AccountInfo;

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccountInfo:Lcom/kingsoft/email/data/AccountInfo;

    .line 229
    return-void

    :cond_0
    move v1, v3

    .line 221
    goto :goto_0
.end method


# virtual methods
.method public debugString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SetupData"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, ":acct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v1, :cond_5

    const-string/jumbo v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 236
    const-string/jumbo v1, ":user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 240
    const-string/jumbo v1, ":pass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_1
    const-string/jumbo v1, ":a/d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-boolean v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 245
    const-string/jumbo v1, ":check="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/SetupData;->isCheckIncoming()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "in+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/SetupData;->isCheckOutgoing()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "out+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/SetupData;->isCheckAutodiscover()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "a/d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_4
    const-string/jumbo v1, ":policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    if-nez v1, :cond_6

    const-string/jumbo v1, "none"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 234
    :cond_5
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 250
    :cond_6
    const-string/jumbo v1, "exists"

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()Lcom/android/emailcommon/provider/Account;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method public getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    return-object v0
.end method

.method public getAccountInf()Lcom/kingsoft/email/data/AccountInfo;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccountInfo:Lcom/kingsoft/email/data/AccountInfo;

    return-object v0
.end method

.method public getFlowAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mFlowAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getFlowMode()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mFlowMode:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicy()Lcom/android/emailcommon/provider/Policy;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    return-object v0
.end method

.method public getSelectedProtocal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mSelectedProtocal:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getmUiAccount()Lcom/kingsoft/mail/providers/Account;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mUiAccount:Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method

.method public isAllowAutodiscover()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    return v0
.end method

.method public isCheckAutodiscover()Z
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mCheckSettingsMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCheckIncoming()Z
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mCheckSettingsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCheckOutgoing()Z
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mCheckSettingsMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccount(Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 121
    return-void
.end method

.method public setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V
    .locals 0
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 176
    return-void
.end method

.method public setAccountInf(Lcom/kingsoft/email/data/AccountInfo;)V
    .locals 0
    .param p1, "accountInfo"    # Lcom/kingsoft/email/data/AccountInfo;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccountInfo:Lcom/kingsoft/email/data/AccountInfo;

    .line 260
    return-void
.end method

.method public setAllowAutodiscover(Z)V
    .locals 0
    .param p1, "allowAutodiscover"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    .line 159
    return-void
.end method

.method public setCheckSettingsMode(I)V
    .locals 0
    .param p1, "checkSettingsMode"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 141
    return-void
.end method

.method public setFlowMode(I)V
    .locals 0
    .param p1, "flowMode"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mFlowMode:I

    .line 113
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setPolicy(Lcom/android/emailcommon/provider/Policy;)V
    .locals 1
    .param p1, "policy"    # Lcom/android/emailcommon/provider/Policy;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 167
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput-object p1, v0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 168
    return-void
.end method

.method public setSelectedProtocal(Ljava/lang/String;)V
    .locals 0
    .param p1, "selectedProtocal"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mSelectedProtocal:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setmUiAccount(Lcom/kingsoft/mail/providers/Account;)V
    .locals 0
    .param p1, "mUiAccount"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mUiAccount:Lcom/kingsoft/mail/providers/Account;

    .line 269
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 199
    iget v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mFlowMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 201
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mCheckSettingsMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 206
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 208
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mSelectedProtocal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mUiAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 211
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/SetupData;->mAccountInfo:Lcom/kingsoft/email/data/AccountInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 212
    return-void

    :cond_0
    move v0, v1

    .line 204
    goto :goto_0
.end method
