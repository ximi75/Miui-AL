.class final Lcom/kingsoft/email2/ui/MailActivityEmail$1;
.super Ljava/lang/Object;
.source "MailActivityEmail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email2/ui/MailActivityEmail;->setServicesEnabledAsync(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/kingsoft/email2/ui/MailActivityEmail$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/kingsoft/email2/ui/MailActivityEmail$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/email2/ui/MailActivityEmail;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 118
    return-void
.end method
