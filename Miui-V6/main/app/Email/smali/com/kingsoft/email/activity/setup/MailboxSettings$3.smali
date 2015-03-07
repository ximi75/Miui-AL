.class Lcom/kingsoft/email/activity/setup/MailboxSettings$3;
.super Ljava/lang/Object;
.source "MailboxSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/MailboxSettings;->initializeActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/MailboxSettings;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$3;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings$3;->this$0:Lcom/kingsoft/email/activity/setup/MailboxSettings;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->finish()V

    .line 402
    return-void
.end method
