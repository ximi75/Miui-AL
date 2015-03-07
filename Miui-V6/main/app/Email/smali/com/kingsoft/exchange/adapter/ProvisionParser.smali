.class public Lcom/kingsoft/exchange/adapter/ProvisionParser;
.super Lcom/kingsoft/exchange/adapter/Parser;
.source "ProvisionParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Exchange"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsSupportable:Z

.field private mPolicy:Lcom/android/emailcommon/provider/Policy;

.field private mRemoteWipe:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mSecuritySyncKey:Ljava/lang/String;

.field private smimeRequired:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p2}, Lcom/kingsoft/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 45
    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 46
    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mSecuritySyncKey:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    .line 49
    iput-boolean v1, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->smimeRequired:Z

    .line 54
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mResources:Landroid/content/res/Resources;

    .line 56
    return-void
.end method

.method private addPolicyString(Ljava/lang/StringBuilder;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "res"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    return-void
.end method

.method private deviceSupportsEncryption()Z
    .locals 4

    .prologue
    .line 108
    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 110
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    .line 111
    .local v1, "status":I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private hasRemovableStorage()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 617
    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/ContextCompat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    .line 618
    .local v0, "cacheDirs":[Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-le v2, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseCharacteristic(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "policy"    # Lcom/android/emailcommon/provider/Policy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 441
    const/4 v0, 0x1

    .line 443
    .local v0, "enforceInactivityTimer":Z
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    .line 444
    .local v2, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "characteristic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 479
    return-void

    .line 446
    :cond_1
    if-ne v2, v7, :cond_0

    .line 447
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "parm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 448
    const-string/jumbo v4, "name"

    invoke-interface {p0, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v4, "value"

    invoke-interface {p0, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "AEFrequencyValue"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 451
    if-eqz v0, :cond_0

    .line 452
    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 453
    iput v6, p1, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    goto :goto_0

    .line 455
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    iput v4, p1, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    goto :goto_0

    .line 458
    :cond_3
    const-string/jumbo v4, "AEFrequencyType"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 460
    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 461
    const/4 v0, 0x0

    goto :goto_0

    .line 463
    :cond_4
    const-string/jumbo v4, "DeviceWipeThreshold"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 464
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    goto :goto_0

    .line 465
    :cond_5
    const-string/jumbo v4, "CodewordFrequency"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 467
    const-string/jumbo v4, "MinimumPasswordLength"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 468
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    goto/16 :goto_0

    .line 469
    :cond_6
    const-string/jumbo v4, "PasswordComplexity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 470
    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 471
    iput v7, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    goto/16 :goto_0

    .line 473
    :cond_7
    iput v6, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    goto/16 :goto_0
.end method

.method private parseDeviceInformation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    :goto_0
    const/16 v0, 0x496

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 571
    iget v0, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->tag:I

    const/16 v1, 0x486

    if-ne v0, v1, :cond_0

    .line 572
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "DeviceInformation status: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 577
    :cond_1
    return-void
.end method

.method private parsePolicies()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    :goto_0
    const/16 v0, 0x386

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 561
    iget v0, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->tag:I

    const/16 v1, 0x387

    if-ne v0, v1, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->parsePolicy()V

    goto :goto_0

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 567
    :cond_1
    return-void
.end method

.method private parsePolicy()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 531
    const/4 v0, 0x0

    .line 532
    .local v0, "policyType":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x387

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 533
    iget v1, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 554
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 535
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 536
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "Policy type: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 539
    :pswitch_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mSecuritySyncKey:Ljava/lang/String;

    goto :goto_0

    .line 542
    :pswitch_2
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "Policy status: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 545
    :pswitch_3
    const-string/jumbo v1, "MS-WAP-Provisioning-XML"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->parseProvisionDocXml(Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->parseProvisionData()V

    goto :goto_0

    .line 557
    :cond_1
    return-void

    .line 533
    :pswitch_data_0
    .packed-switch 0x388
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private parseProvisionData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    :goto_0
    const/16 v0, 0x38a

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 522
    iget v0, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->tag:I

    const/16 v1, 0x38d

    if-ne v0, v1, :cond_0

    .line 523
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->parseProvisionDocWbxml()V

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 528
    :cond_1
    return-void
.end method

.method private parseProvisionDocWbxml()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 115
    new-instance v3, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v3}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    .line 116
    .local v3, "policy":Lcom/android/emailcommon/provider/Policy;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v7, "unsupportedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 119
    .local v2, "passwordEnabled":Z
    :cond_0
    :goto_0
    const/16 v9, 0x38d

    invoke-virtual {p0, v9}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v9

    const/4 v12, 0x3

    if-eq v9, v12, :cond_c

    .line 120
    const/4 v6, 0x1

    .line 121
    .local v6, "tagIsSupported":Z
    const/4 v4, 0x0

    .line 122
    .local v4, "res":I
    iget v9, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->tag:I

    packed-switch v9, :pswitch_data_0

    .line 343
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->skipTag()V

    .line 346
    :cond_1
    :goto_1
    if-nez v6, :cond_0

    .line 347
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Policy not supported: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v12, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->tag:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->log(Ljava/lang/String;)V

    .line 348
    iput-boolean v11, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    if-ne v9, v10, :cond_1

    .line 125
    const/4 v2, 0x1

    .line 126
    iget v9, v3, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-nez v9, :cond_1

    .line 127
    iput v10, v3, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    goto :goto_1

    .line 132
    :pswitch_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    iput v9, v3, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    goto :goto_1

    .line 135
    :pswitch_3
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    if-ne v9, v10, :cond_1

    .line 136
    iput v13, v3, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    goto :goto_1

    .line 141
    :pswitch_4
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    iput v9, v3, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    goto :goto_1

    .line 144
    :pswitch_5
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    iput v9, v3, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    goto :goto_1

    .line 147
    :pswitch_6
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    iput v9, v3, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    goto :goto_1

    .line 150
    :pswitch_7
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    iput v9, v3, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    goto :goto_1

    .line 153
    :pswitch_8
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    if-nez v9, :cond_2

    move v9, v10

    :goto_2
    iput-boolean v9, v3, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    goto :goto_1

    :cond_2
    move v9, v11

    goto :goto_2

    .line 158
    :pswitch_9
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    goto :goto_1

    .line 172
    :pswitch_a
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    if-nez v9, :cond_1

    .line 173
    const/4 v6, 0x0

    .line 174
    iget v9, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->tag:I

    sparse-switch v9, :sswitch_data_0

    .line 210
    :goto_3
    if-lez v4, :cond_1

    .line 211
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 176
    :sswitch_0
    const v4, 0x7f1002d8

    .line 177
    goto :goto_3

    .line 179
    :sswitch_1
    const v4, 0x7f1002da

    .line 180
    goto :goto_3

    .line 182
    :sswitch_2
    const v4, 0x7f1002db

    .line 183
    goto :goto_3

    .line 185
    :sswitch_3
    const v4, 0x7f1002dc

    .line 186
    goto :goto_3

    .line 188
    :sswitch_4
    const v4, 0x7f1002d9

    .line 189
    goto :goto_3

    .line 191
    :sswitch_5
    const v4, 0x7f1002d7

    .line 192
    goto :goto_3

    .line 194
    :sswitch_6
    const v4, 0x7f1002d6

    .line 195
    goto :goto_3

    .line 197
    :sswitch_7
    const v4, 0x7f1002d4

    .line 198
    iput-boolean v10, v3, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    goto :goto_3

    .line 201
    :sswitch_8
    const v4, 0x7f1002d1

    .line 202
    goto :goto_3

    .line 204
    :sswitch_9
    const v4, 0x7f1002d3

    .line 205
    goto :goto_3

    .line 207
    :sswitch_a
    const v4, 0x7f1002d5

    goto :goto_3

    .line 216
    :pswitch_b
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    if-eq v9, v10, :cond_3

    move v9, v10

    :goto_4
    iput-boolean v9, v3, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    goto/16 :goto_1

    :cond_3
    move v9, v11

    goto :goto_4

    .line 220
    :pswitch_c
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    if-eq v9, v13, :cond_1

    .line 221
    const/4 v6, 0x0

    .line 222
    const v9, 0x7f1002ce

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 228
    :pswitch_d
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    if-ne v9, v10, :cond_1

    .line 229
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->deviceSupportsEncryption()Z

    move-result v9

    if-nez v9, :cond_4

    .line 230
    const/4 v6, 0x0

    .line 231
    const v9, 0x7f1002e2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 233
    :cond_4
    iput-boolean v10, v3, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    goto/16 :goto_1

    .line 240
    :pswitch_e
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    if-ne v9, v10, :cond_1

    .line 241
    const-string/jumbo v9, "Policy requires SD card encryption"

    invoke-virtual {p0, v9}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->log(Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->deviceSupportsEncryption()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 247
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->hasRemovableStorage()Z

    move-result v9

    if-nez v9, :cond_5

    move v6, v10

    .line 248
    :goto_5
    if-eqz v6, :cond_7

    .line 250
    const-string/jumbo v9, "Device supports SD card encryption"

    invoke-virtual {p0, v9}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->log(Ljava/lang/String;)V

    .line 251
    iput-boolean v10, v3, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    goto/16 :goto_1

    :cond_5
    move v6, v11

    .line 247
    goto :goto_5

    .line 255
    :cond_6
    const-string/jumbo v9, "Device doesn\'t support encryption; failing"

    invoke-virtual {p0, v9}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->log(Ljava/lang/String;)V

    .line 256
    const/4 v6, 0x0

    .line 259
    :cond_7
    const v9, 0x7f1002e5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 264
    :pswitch_f
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    if-ne v9, v10, :cond_8

    move v9, v10

    :goto_6
    iput-boolean v9, v3, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    goto/16 :goto_1

    :cond_8
    move v9, v11

    goto :goto_6

    .line 271
    :pswitch_10
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    if-ne v9, v10, :cond_9

    move v9, v10

    :goto_7
    iput-boolean v9, v3, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    goto/16 :goto_1

    :cond_9
    move v9, v11

    goto :goto_7

    .line 278
    :pswitch_11
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    if-ne v9, v10, :cond_1

    .line 279
    const/4 v6, 0x0

    .line 280
    iget-boolean v9, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->smimeRequired:Z

    if-nez v9, :cond_1

    .line 281
    const v9, 0x7f1002e6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iput-boolean v10, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->smimeRequired:Z

    goto/16 :goto_1

    .line 287
    :pswitch_12
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v1

    .line 288
    .local v1, "max":I
    if-lez v1, :cond_1

    .line 289
    iput v1, v3, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    goto/16 :goto_1

    .line 294
    .end local v1    # "max":I
    :pswitch_13
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    iput v9, v3, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    goto/16 :goto_1

    .line 301
    :pswitch_14
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_1

    .line 307
    :pswitch_15
    iget v9, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->tag:I

    invoke-direct {p0, v9}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->specifiesApplications(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 308
    const/4 v6, 0x0

    .line 309
    iget v9, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->tag:I

    const/16 v12, 0x3b7

    if-ne v9, v12, :cond_a

    .line 310
    const v9, 0x7f1002cc

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 312
    :cond_a
    const v9, 0x7f1002cd

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 319
    :pswitch_16
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    iput v9, v3, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    goto/16 :goto_1

    .line 323
    :pswitch_17
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    iput v9, v3, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    goto/16 :goto_1

    .line 328
    :pswitch_18
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 330
    .local v8, "value":Ljava/lang/String;
    const-string/jumbo v9, "-1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 331
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 332
    .restart local v1    # "max":I
    iget v9, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->tag:I

    const/16 v12, 0x3ab

    if-ne v9, v12, :cond_b

    .line 333
    iput v1, v3, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    .line 334
    const v9, 0x7f1002e8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    :goto_8
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 336
    :cond_b
    iput v1, v3, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    .line 337
    const v9, 0x7f1002de

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 353
    .end local v1    # "max":I
    .end local v4    # "res":I
    .end local v6    # "tagIsSupported":Z
    .end local v8    # "value":Ljava/lang/String;
    :cond_c
    if-nez v2, :cond_d

    .line 354
    iput v11, v3, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 357
    :cond_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_f

    .line 358
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 360
    .restart local v4    # "res":I
    invoke-direct {p0, v5, v4}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->addPolicyString(Ljava/lang/StringBuilder;I)V

    goto :goto_9

    .line 362
    .end local v4    # "res":I
    :cond_e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    .line 365
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_f
    invoke-direct {p0, v3}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->setPolicy(Lcom/android/emailcommon/provider/Policy;)V

    .line 366
    return-void

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x38e
        :pswitch_1
        :pswitch_3
        :pswitch_e
        :pswitch_10
        :pswitch_0
        :pswitch_b
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_12
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_13
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_a
        :pswitch_f
        :pswitch_14
        :pswitch_16
        :pswitch_a
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_14
        :pswitch_14
        :pswitch_a
        :pswitch_a
        :pswitch_14
        :pswitch_a
        :pswitch_15
        :pswitch_0
        :pswitch_15
    .end packed-switch

    .line 174
    :sswitch_data_0
    .sparse-switch
        0x39b -> :sswitch_0
        0x39e -> :sswitch_1
        0x39f -> :sswitch_2
        0x3a1 -> :sswitch_3
        0x3a2 -> :sswitch_4
        0x3a3 -> :sswitch_5
        0x3a5 -> :sswitch_6
        0x3a9 -> :sswitch_7
        0x3b3 -> :sswitch_8
        0x3b4 -> :sswitch_9
        0x3b6 -> :sswitch_a
    .end sparse-switch
.end method

.method private static parseRegistry(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "policy"    # Lcom/android/emailcommon/provider/Policy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    .line 485
    .local v1, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "characteristic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 494
    return-void

    .line 487
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 488
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "characteristic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    invoke-static {p0, p1}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->parseCharacteristic(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V

    goto :goto_0
.end method

.method private static parseSecurityPolicy(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 418
    const/4 v1, 0x1

    .line 420
    .local v1, "passwordRequired":Z
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v3

    .line 421
    .local v3, "type":I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "characteristic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 436
    return v1

    .line 423
    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 424
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "parm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 426
    const-string/jumbo v5, "name"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v5, "4131"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 428
    const-string/jumbo v5, "value"

    invoke-interface {p0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 430
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseWapProvisioningDoc(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "policy"    # Lcom/android/emailcommon/provider/Policy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    .line 500
    .local v2, "type":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wap-provisioningdoc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 518
    :goto_0
    return-void

    .line 502
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 503
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v3, "characteristic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 505
    const/4 v3, 0x0

    const-string/jumbo v4, "type"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "atype":Ljava/lang/String;
    const-string/jumbo v3, "SecurityPolicy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 508
    invoke-static {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->parseSecurityPolicy(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 511
    :cond_2
    const-string/jumbo v3, "Registry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 512
    invoke-static {p0, p1}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->parseRegistry(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V

    goto :goto_0
.end method

.method private setPolicy(Lcom/android/emailcommon/provider/Policy;)V
    .locals 2
    .param p1, "policy"    # Lcom/android/emailcommon/provider/Policy;

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Policy;->normalize()V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p1, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-eqz v1, :cond_0

    .line 98
    const v1, 0x7f1002d0

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->addPolicyString(Ljava/lang/StringBuilder;I)V

    .line 100
    :cond_0
    iget-boolean v1, p1, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    if-eqz v1, :cond_1

    .line 101
    const v1, 0x7f1002e3

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->addPolicyString(Ljava/lang/StringBuilder;I)V

    .line 103
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 105
    return-void
.end method

.method private specifiesApplications(I)Z
    .locals 3
    .param p1, "endTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "specifiesApplications":Z
    :goto_0
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 377
    iget v1, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 383
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 380
    :pswitch_1
    const/4 v0, 0x1

    .line 381
    goto :goto_0

    .line 386
    :cond_0
    return v0

    .line 377
    :pswitch_data_0
    .packed-switch 0x3b8
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clearUnsupportablePolicies()V
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    .line 80
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public getPolicy()Lcom/android/emailcommon/provider/Policy;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    return-object v0
.end method

.method public getRemoteWipe()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    return v0
.end method

.method public getSecuritySyncKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mSecuritySyncKey:Ljava/lang/String;

    return-object v0
.end method

.method public hasSupportablePolicySet()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, "res":Z
    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v4

    const/16 v5, 0x385

    if-eq v4, v5, :cond_0

    .line 583
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 588
    :sswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v1

    .line 589
    .local v1, "status":I
    const-string/jumbo v4, "Exchange"

    const-string/jumbo v5, "Provision status: %d"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 590
    if-ne v1, v2, :cond_1

    move v0, v2

    .line 585
    .end local v1    # "status":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 586
    iget v4, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->tag:I

    sparse-switch v4, :sswitch_data_0

    .line 603
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .restart local v1    # "status":I
    :cond_1
    move v0, v3

    .line 590
    goto :goto_0

    .line 593
    .end local v1    # "status":I
    :sswitch_1
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->parseDeviceInformation()V

    goto :goto_0

    .line 596
    :sswitch_2
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->parsePolicies()V

    goto :goto_0

    .line 600
    :sswitch_3
    iput-boolean v2, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    goto :goto_0

    .line 606
    :cond_2
    return v0

    .line 586
    nop

    :sswitch_data_0
    .sparse-switch
        0x386 -> :sswitch_2
        0x38b -> :sswitch_0
        0x38c -> :sswitch_3
        0x496 -> :sswitch_1
    .end sparse-switch
.end method

.method parseProvisionDocXml(Ljava/lang/String;)V
    .locals 8
    .param p1, "doc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    new-instance v3, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v3}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    .line 393
    .local v3, "policy":Lcom/android/emailcommon/provider/Policy;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 394
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 395
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v7, "UTF-8"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 396
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 397
    .local v5, "type":I
    if-nez v5, :cond_0

    .line 398
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 399
    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 400
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "wap-provisioningdoc"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 402
    invoke-static {v2, v3}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->parseWapProvisioningDoc(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v3}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->setPolicy(Lcom/android/emailcommon/provider/Policy;)V

    .line 411
    return-void

    .line 406
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
.end method

.method public setSecuritySyncKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "securitySyncKey"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/ProvisionParser;->mSecuritySyncKey:Ljava/lang/String;

    .line 68
    return-void
.end method
