.class public Lcom/kingsoft/email/activity/setup/AccountSetupList;
.super Lcom/kingsoft/email/activity/setup/AccountSetupActivity;
.source "AccountSetupList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/AccountSetupList$1;,
        Lcom/kingsoft/email/activity/setup/AccountSetupList$MainServerBean;
    }
.end annotation


# static fields
.field private static final ACTION_CREATE_ACCOUNT:Ljava/lang/String; = "com.android.email.CREATE_ACCOUNT"

.field private static final EXTRA_FLOW_ACCOUNT_TYPE:Ljava/lang/String; = "FLOW_ACCOUNT_TYPE"

.field private static final EXTRA_FLOW_MODE:Ljava/lang/String; = "FLOW_MODE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 185
    return-void
.end method

.method public static actionAccountCreateFinished(Landroid/app/Activity;Lcom/android/emailcommon/provider/Account;)V
    .locals 4
    .param p0, "fromActivity"    # Landroid/app/Activity;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingsoft/email/activity/setup/AccountSetupList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.email.setupdata"

    new-instance v2, Lcom/kingsoft/email/activity/setup/SetupData;

    const/4 v3, 0x6

    invoke-direct {v2, v3, p1}, Lcom/kingsoft/email/activity/setup/SetupData;-><init>(ILcom/android/emailcommon/provider/Account;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 221
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 223
    return-void
.end method

.method public static actionNewAccount(Landroid/app/Activity;)V
    .locals 2
    .param p0, "fromActivity"    # Landroid/app/Activity;

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingsoft/email/activity/setup/AccountSetupList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v0, "i":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 141
    return-void
.end method

.method public static actionNewAccountWithResult(Landroid/app/Activity;)V
    .locals 2
    .param p0, "fromActivity"    # Landroid/app/Activity;

    .prologue
    .line 144
    new-instance v0, Lcom/kingsoft/email/activity/setup/ForwardingIntent;

    const-class v1, Lcom/kingsoft/email/activity/setup/AccountSetupList;

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/email/activity/setup/ForwardingIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 147
    return-void
.end method


# virtual methods
.method public getServerList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/activity/setup/AccountSetupList$MainServerBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/activity/setup/AccountSetupList$MainServerBean;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 153
    .local v2, "res":Landroid/content/res/Resources;
    const v6, 0x7f07000c

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 156
    .local v4, "xml":Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    .local v5, "xmlEventType":I
    if-eq v5, v8, :cond_1

    .line 157
    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const-string/jumbo v6, "server_list"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    sget-object v6, Lcom/android/email/R$styleable;->EmailServerList:[I

    invoke-virtual {v2, v4, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 161
    .local v3, "ta":Landroid/content/res/TypedArray;
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountSetupList$MainServerBean;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v6}, Lcom/kingsoft/email/activity/setup/AccountSetupList$MainServerBean;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupList;Lcom/kingsoft/email/activity/setup/AccountSetupList$1;)V

    .line 162
    .local v0, "bean":Lcom/kingsoft/email/activity/setup/AccountSetupList$MainServerBean;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/kingsoft/email/activity/setup/AccountSetupList$MainServerBean;->name:Ljava/lang/String;

    .line 163
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/kingsoft/email/activity/setup/AccountSetupList$MainServerBean;->domain:Ljava/lang/String;

    .line 164
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 167
    .end local v0    # "bean":Lcom/kingsoft/email/activity/setup/AccountSetupList$MainServerBean;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "ta":Landroid/content/res/TypedArray;
    .end local v4    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v5    # "xmlEventType":I
    :catch_0
    move-exception v6

    .line 172
    :cond_1
    :goto_1
    return-object v1

    .line 169
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public onAutoDiscoverComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 213
    return-void
.end method

.method public onCheckSettingsComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupList;->finish()V

    .line 207
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "domain":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v2, "ksdomain"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupList;->startActivity(Landroid/content/Intent;)V

    .line 183
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super/range {p0 .. p1}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupList;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 42
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "action":Ljava/lang/String;
    const-string/jumbo v17, "com.android.email.CREATE_ACCOUNT"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/emailcommon/service/ServiceProxy;->getIntentStringForEmailPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 46
    new-instance v17, Lcom/kingsoft/email/activity/setup/SetupData;

    const/16 v18, 0x4

    invoke-direct/range {v17 .. v18}, Lcom/kingsoft/email/activity/setup/SetupData;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupList;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 56
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupList;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/email/activity/setup/SetupData;->getFlowMode()I

    move-result v6

    .line 58
    .local v6, "flowMode":I
    const/16 v17, 0x6

    move/from16 v0, v17

    if-ne v6, v0, :cond_3

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupList;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    .line 60
    .local v2, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v2, :cond_3

    iget-wide v0, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-ltz v17, :cond_3

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupList;->finish()V

    .line 135
    .end local v2    # "account":Lcom/android/emailcommon/provider/Account;
    :cond_1
    return-void

    .line 48
    .end local v6    # "flowMode":I
    :cond_2
    const-string/jumbo v17, "FLOW_MODE"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 50
    .local v11, "intentFlowMode":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_0

    .line 51
    new-instance v17, Lcom/kingsoft/email/activity/setup/SetupData;

    const-string/jumbo v18, "FLOW_ACCOUNT_TYPE"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Lcom/kingsoft/email/activity/setup/SetupData;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupList;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    goto :goto_0

    .line 69
    .end local v11    # "intentFlowMode":I
    .restart local v6    # "flowMode":I
    :cond_3
    const v17, 0x7f040020

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupList;->setContentView(I)V

    .line 70
    const v17, 0x7f0c0071

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupList;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 73
    .local v13, "ll":Landroid/widget/LinearLayout;
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 74
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v17, 0x7f040018

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 75
    .local v15, "title":Landroid/view/ViewGroup;
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupList;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupList;->getServerList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 77
    .local v5, "buttonList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/activity/setup/AccountSetupList$MainServerBean;>;"
    const/4 v8, 0x0

    .line 78
    .local v8, "index":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/email/activity/setup/AccountSetupList$MainServerBean;

    .line 79
    .local v4, "bean":Lcom/kingsoft/email/activity/setup/AccountSetupList$MainServerBean;
    const v17, 0x7f0400a8

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 80
    .local v12, "item":Landroid/widget/RelativeLayout;
    const v17, 0x7f0c022a

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 82
    .local v14, "logo":Landroid/widget/ImageView;
    const v17, 0x7f0c0067

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 83
    .local v16, "txt":Landroid/widget/TextView;
    iget-object v0, v4, Lcom/kingsoft/email/activity/setup/AccountSetupList$MainServerBean;->domain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 84
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    packed-switch v8, :pswitch_data_0

    .line 131
    :goto_2
    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    add-int/lit8 v8, v8, 0x1

    .line 133
    goto :goto_1

    .line 87
    :pswitch_0
    const v17, 0x7f02020d

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 88
    const v17, 0x7f0201d2

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 93
    :pswitch_1
    const v17, 0x7f020213

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 94
    const v17, 0x7f0201d5

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 99
    :pswitch_2
    const v17, 0x7f020213

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 100
    const v17, 0x7f0201d1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 105
    :pswitch_3
    const v17, 0x7f020213

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 106
    const v17, 0x7f0201d0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 111
    :pswitch_4
    const v17, 0x7f020213

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 112
    const v17, 0x7f0201d3

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 117
    :pswitch_5
    const v17, 0x7f020213

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 118
    const v17, 0x7f0201d4

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 123
    :pswitch_6
    const v17, 0x7f020210

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 124
    const v17, 0x7f0201d4

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->onResume()V

    .line 194
    return-void
.end method
