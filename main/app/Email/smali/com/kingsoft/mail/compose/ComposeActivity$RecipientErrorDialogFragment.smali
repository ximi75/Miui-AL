.class public Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/compose/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecipientErrorDialogFragment"
.end annotation


# static fields
.field static final TYPE_RECIEPINT_ERROR:I = 0x2

.field static final TYPE_RECIPIENT_NULL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3364
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 3365
    return-void
.end method

.method static synthetic access$1600(Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;

    .prologue
    .line 3359
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->showInputMethod()V

    return-void
.end method

.method private hideInputMethod()V
    .locals 4

    .prologue
    .line 3405
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3407
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3409
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 3410
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3411
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3414
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;I)Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 3368
    new-instance v1, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;

    invoke-direct {v1}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;-><init>()V

    .line 3369
    .local v1, "frag":Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 3370
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3371
    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3372
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3373
    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 3374
    return-object v1
.end method

.method private showInputMethod()V
    .locals 4

    .prologue
    .line 3417
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3419
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3421
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 3422
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 3423
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 3426
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 3379
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 3380
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->showInputMethod()V

    .line 3381
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 3385
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3386
    .local v2, "type":I
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->hideInputMethod()V

    .line 3387
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3388
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3393
    .local v1, "title":Ljava/lang/String;
    new-instance v3, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f10029f

    new-instance v5, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment$1;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
