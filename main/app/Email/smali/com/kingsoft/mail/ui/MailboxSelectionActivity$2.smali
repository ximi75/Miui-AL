.class Lcom/kingsoft/mail/ui/MailboxSelectionActivity$2;
.super Ljava/lang/Object;
.source "MailboxSelectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->completeSetupWithAccounts(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/MailboxSelectionActivity;

.field final synthetic val$accounts:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/MailboxSelectionActivity;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity$2;->this$0:Lcom/kingsoft/mail/ui/MailboxSelectionActivity;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity$2;->val$accounts:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity$2;->this$0:Lcom/kingsoft/mail/ui/MailboxSelectionActivity;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailboxSelectionActivity$2;->val$accounts:Landroid/database/Cursor;

    # invokes: Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->updateAccountList(Landroid/database/Cursor;)V
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/MailboxSelectionActivity;->access$100(Lcom/kingsoft/mail/ui/MailboxSelectionActivity;Landroid/database/Cursor;)V

    .line 218
    return-void
.end method
