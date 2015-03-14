.class Lcom/kingsoft/ex/chips/RecipientEditTextView$10;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/ex/chips/RecipientEditTextView;->showCopyDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 3234
    iput-object p1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$10;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 3238
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$10;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3240
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$10;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    # getter for: Lcom/kingsoft/ex/chips/RecipientEditTextView;->mCopyAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$3200(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 3241
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$10;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    # getter for: Lcom/kingsoft/ex/chips/RecipientEditTextView;->mCopyDialog:Lmiui/app/AlertDialog;
    invoke-static {v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->access$3300(Lcom/kingsoft/ex/chips/RecipientEditTextView;)Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->dismiss()V

    .line 3242
    return-void
.end method
