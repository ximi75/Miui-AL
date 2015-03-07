.class public Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
.super Landroid/app/DialogFragment;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorDialog"
.end annotation


# static fields
.field private static final ARGS_EXCEPTION_ID:Ljava/lang/String; = "ErrorDialog.ExceptionId"

.field private static final ARGS_MESSAGE:Ljava/lang/String; = "ErrorDialog.Message"

.field public static final TAG:Ljava/lang/String; = "ErrorDialog"


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)V
    .locals 0

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 1074
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Landroid/content/Context;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;Ljava/lang/String;)Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 1060
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->newInstance(Landroid/content/Context;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;Ljava/lang/String;)Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Landroid/content/Context;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;Lcom/kingsoft/emailcommon/mail/MessagingException;Lcom/kingsoft/email/activity/setup/SetupData;)Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
    .param p3, "x3"    # Lcom/kingsoft/emailcommon/mail/MessagingException;
    .param p4, "x4"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 1060
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->newInstance(Landroid/content/Context;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;Lcom/kingsoft/emailcommon/mail/MessagingException;Lcom/kingsoft/email/activity/setup/SetupData;)Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    move-result-object v0

    return-object v0
.end method

.method private newInstance(Landroid/content/Context;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;Lcom/kingsoft/emailcommon/mail/MessagingException;Lcom/kingsoft/email/activity/setup/SetupData;)Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
    .param p3, "ex"    # Lcom/kingsoft/emailcommon/mail/MessagingException;
    .param p4, "setupdata"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 1078
    new-instance v1, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {v1, v2}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;-><init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)V

    .line 1079
    .local v1, "fragment":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 1080
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v2, "ErrorDialog.Message"

    invoke-static {p1, p3, p4}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getErrorString(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/MessagingException;Lcom/kingsoft/email/activity/setup/SetupData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const-string/jumbo v2, "ErrorDialog.ExceptionId"

    invoke-virtual {p3}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1082
    invoke-virtual {v1, v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->setArguments(Landroid/os/Bundle;)V

    .line 1083
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1084
    return-object v1
.end method

.method private newInstance(Landroid/content/Context;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;Ljava/lang/String;)Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 1090
    new-instance v1, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {v1, v2}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;-><init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)V

    .line 1091
    .local v1, "fragment":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 1092
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v2, "ErrorDialog.Message"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-string/jumbo v2, "ErrorDialog.ExceptionId"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1094
    invoke-virtual {v1, v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->setArguments(Landroid/os/Bundle;)V

    .line 1095
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1096
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 1103
    .local v4, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 1104
    .local v2, "arguments":Landroid/os/Bundle;
    const-string/jumbo v10, "ErrorDialog.Message"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1105
    .local v6, "message":Ljava/lang/String;
    const-string/jumbo v10, "ErrorDialog.ExceptionId"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1106
    .local v5, "exceptionId":I
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    .line 1108
    .local v8, "target":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
    new-instance v10, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v10, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    .line 1111
    .local v3, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f04008d

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1113
    .local v7, "shareView":Landroid/view/View;
    const v10, 0x7f0c01f4

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1114
    .local v9, "textView":Landroid/widget/TextView;
    const v10, 0x7f0c01f3

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 1115
    .local v1, "alert_message_scro":Landroid/widget/ScrollView;
    const v10, 0x7f0c01f2

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1116
    .local v0, "alert_message_ll":Landroid/widget/LinearLayout;
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x32

    if-ge v10, v11, :cond_0

    .line 1118
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v10}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1119
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1124
    :goto_0
    const/16 v10, 0xf

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1125
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1126
    invoke-virtual {v3, v7}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    .line 1132
    const/16 v10, 0xb

    if-ne v5, v10, :cond_1

    .line 1133
    const v10, 0x7f100053

    invoke-virtual {v3, v10}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 1139
    :goto_1
    const/16 v10, 0x10

    if-ne v5, v10, :cond_2

    .line 1143
    const v10, 0x104000a

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$1;

    invoke-direct {v11, p0, v8}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$1;-><init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)V

    invoke-virtual {v3, v10, v11}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 1153
    const/high16 v10, 0x1040000

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$2;

    invoke-direct {v11, p0, v8}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$2;-><init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)V

    invoke-virtual {v3, v10, v11}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 1207
    :goto_2
    invoke-virtual {v3}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v10

    return-object v10

    .line 1121
    :cond_0
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/16 v12, 0x12c

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v10}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1122
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/16 v12, 0x12c

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1135
    :cond_1
    const v10, 0x7f10006f

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    goto :goto_1

    .line 1164
    :cond_2
    const/4 v10, -0x1

    if-ne v5, v10, :cond_3

    .line 1165
    const v10, 0x7f10012d

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$3;

    invoke-direct {v11, p0, v8}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$3;-><init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)V

    invoke-virtual {v3, v10, v11}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 1175
    const v10, 0x7f100056

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$4;

    invoke-direct {v11, p0, v8}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$4;-><init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)V

    invoke-virtual {v3, v10, v11}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    goto :goto_2

    .line 1195
    :cond_3
    const v10, 0x7f10006c

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$5;

    invoke-direct {v11, p0, v8}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$5;-><init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)V

    invoke-virtual {v3, v10, v11}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    goto :goto_2
.end method
