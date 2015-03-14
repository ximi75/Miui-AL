.class public Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;
.super Landroid/app/DialogFragment;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiThreadErrorDialog"
.end annotation


# static fields
.field private static final ARGS_EXCEPTION_ID:Ljava/lang/String; = "ErrorDialog.ExceptionId"

.field private static final ARGS_MESSAGE:Ljava/lang/String; = "ErrorDialog.Message"

.field public static final TAG:Ljava/lang/String; = "ErrorDialog"


# instance fields
.field private mCallback:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

.field private setupData:Lcom/kingsoft/email/activity/setup/SetupData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1231
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 1232
    return-void
.end method

.method static synthetic access$700(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;

    .prologue
    .line 1215
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->onEditCertificateOk()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;Ljava/lang/String;Lcom/kingsoft/email/activity/setup/SetupData;)Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "setupdata"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 1238
    new-instance v1, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;

    invoke-direct {v1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;-><init>()V

    .line 1239
    .local v1, "fragment":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 1240
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v2, "ErrorDialog.Message"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    const-string/jumbo v2, "ErrorDialog.ExceptionId"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1242
    invoke-virtual {v1, v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->setArguments(Landroid/os/Bundle;)V

    .line 1243
    iput-object p1, v1, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->mCallback:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    .line 1244
    iput-object p3, v1, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->setupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 1245
    return-object v1
.end method

.method private onEditCertificateOk()V
    .locals 3

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->mCallback:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->mCallback:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->setupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-interface {v0, v1, v2}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V

    .line 1365
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 1252
    .local v4, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 1253
    .local v2, "arguments":Landroid/os/Bundle;
    const-string/jumbo v9, "ErrorDialog.Message"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1254
    .local v6, "message":Ljava/lang/String;
    const-string/jumbo v9, "ErrorDialog.ExceptionId"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1256
    .local v5, "exceptionId":I
    new-instance v9, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v9, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    .line 1259
    .local v3, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f04008d

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1261
    .local v7, "shareView":Landroid/view/View;
    const v9, 0x7f0c01f4

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1262
    .local v8, "textView":Landroid/widget/TextView;
    const v9, 0x7f0c01f3

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 1263
    .local v1, "alert_message_scro":Landroid/widget/ScrollView;
    const v9, 0x7f0c01f2

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1264
    .local v0, "alert_message_ll":Landroid/widget/LinearLayout;
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1265
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x32

    if-ge v9, v10, :cond_0

    .line 1266
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v9}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1267
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1272
    :goto_0
    const/16 v9, 0xf

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1273
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1274
    invoke-virtual {v3, v7}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    .line 1280
    const/16 v9, 0xb

    if-ne v5, v9, :cond_1

    .line 1281
    const v9, 0x7f100053

    invoke-virtual {v3, v9}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 1290
    :goto_1
    const/16 v9, 0x10

    if-ne v5, v9, :cond_2

    .line 1294
    const v9, 0x104000a

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog$1;

    invoke-direct {v10, p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog$1;-><init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;)V

    invoke-virtual {v3, v9, v10}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 1304
    const/high16 v9, 0x1040000

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog$2;

    invoke-direct {v10, p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog$2;-><init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;)V

    invoke-virtual {v3, v9, v10}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 1358
    :goto_2
    invoke-virtual {v3}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v9

    return-object v9

    .line 1269
    :cond_0
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/16 v11, 0x12c

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v9}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1270
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/16 v11, 0x12c

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1284
    :cond_1
    const v9, 0x7f10006f

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    goto :goto_1

    .line 1315
    :cond_2
    const/4 v9, -0x1

    if-ne v5, v9, :cond_3

    .line 1316
    const v9, 0x7f10012d

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog$3;

    invoke-direct {v10, p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog$3;-><init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;)V

    invoke-virtual {v3, v9, v10}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 1326
    const v9, 0x7f100056

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog$4;

    invoke-direct {v10, p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog$4;-><init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;)V

    invoke-virtual {v3, v9, v10}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    goto :goto_2

    .line 1346
    :cond_3
    const v9, 0x7f10006c

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog$5;

    invoke-direct {v10, p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog$5;-><init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;)V

    invoke-virtual {v3, v9, v10}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method onErrorDialogEditButton()V
    .locals 3

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->mCallback:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->mCallback:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->setupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-interface {v0, v1, v2}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V

    .line 1371
    :cond_0
    return-void
.end method
