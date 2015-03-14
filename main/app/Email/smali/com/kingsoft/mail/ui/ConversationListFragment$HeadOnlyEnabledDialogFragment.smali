.class Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment;
.super Landroid/app/DialogFragment;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeadOnlyEnabledDialogFragment"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1397
    const-class v0, Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1395
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/ui/ConversationListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/ui/ConversationListFragment$1;

    .prologue
    .line 1395
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1401
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1001f1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1001ee

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1001f0

    new-instance v2, Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment$2;-><init>(Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1001ef

    new-instance v2, Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment$1;-><init>(Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
