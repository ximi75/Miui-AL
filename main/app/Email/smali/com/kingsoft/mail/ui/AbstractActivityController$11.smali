.class Lcom/kingsoft/mail/ui/AbstractActivityController$11;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;->displayAutoAdvanceDialogAndPerformAction(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

.field final synthetic val$autoAdvanceOptionValues:[Ljava/lang/String;

.field final synthetic val$operation:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 2457
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$11;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$11;->val$autoAdvanceOptionValues:[Ljava/lang/String;

    iput-object p3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$11;->val$operation:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichItem"    # I

    .prologue
    const/4 v5, 0x0

    .line 2460
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$11;->val$autoAdvanceOptionValues:[Ljava/lang/String;

    aget-object v0, v4, p2

    .line 2461
    .local v0, "autoAdvanceValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/mail/providers/UIProvider$AutoAdvance;->getAutoAdvanceInt(Ljava/lang/String;)I

    move-result v1

    .line 2463
    .local v1, "autoAdvanceValueInt":I
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$11;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    invoke-virtual {v4, v1}, Lcom/kingsoft/mail/providers/Settings;->setAutoAdvanceSetting(I)V

    .line 2466
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 2467
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "auto_advance"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$11;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2470
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$11;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Account;->updateSettingsUri:Landroid/net/Uri;

    invoke-virtual {v2, v4, v3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2474
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2475
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$11;->val$operation:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 2476
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$11;->val$operation:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 2478
    :cond_0
    return-void
.end method
