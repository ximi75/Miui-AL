.class Lcom/kingsoft/mail/ui/AbstractActivityController$2;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;->changeAccountAtBackground(Lcom/kingsoft/mail/providers/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

.field final synthetic val$emailAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$2;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$2;->val$emailAddress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$2;->val$emailAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingsoft/mail/ui/MailActivity;->setNfcMessage(Ljava/lang/String;)V

    .line 795
    return-void
.end method
