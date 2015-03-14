.class Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog$2;
.super Ljava/lang/Object;
.source "EditQuickResponseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;

.field final synthetic val$create:Z

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;ZLandroid/net/Uri;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog$2;->this$0:Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;

    iput-boolean p2, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog$2;->val$create:Z

    iput-object p3, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog$2;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 110
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog$2;->this$0:Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;

    # getter for: Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->access$100(Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 112
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "quickResponse"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-boolean v2, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog$2;->val$create:Z

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog$2;->this$0:Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog$2;->val$uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog$2;->this$0:Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/EditQuickResponseDialog$2;->val$uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
