.class final Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$1;
.super Ljava/lang/Object;
.source "AttachmentUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->selectComposeAccount(Landroid/content/Context;)Lcom/kingsoft/mail/providers/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accounts:[Lcom/kingsoft/mail/providers/Account;

.field final synthetic val$lstAccount:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;[Lcom/kingsoft/mail/providers/Account;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$1;->val$lstAccount:Ljava/util/List;

    iput-object p2, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$1;->val$accounts:[Lcom/kingsoft/mail/providers/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$1;->val$lstAccount:Ljava/util/List;

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$1;->val$accounts:[Lcom/kingsoft/mail/providers/Account;

    aget-object v1, v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    return-void
.end method
