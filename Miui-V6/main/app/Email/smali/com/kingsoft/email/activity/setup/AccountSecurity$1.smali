.class final Lcom/kingsoft/email/activity/setup/AccountSecurity$1;
.super Ljava/lang/Object;
.source "AccountSecurity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/kingsoft/email/SecurityPolicy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;

.field final synthetic val$security:Lcom/kingsoft/email/SecurityPolicy;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/SecurityPolicy;Lcom/android/emailcommon/provider/Account;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSecurity$1;->val$security:Lcom/kingsoft/email/SecurityPolicy;

    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSecurity$1;->val$account:Lcom/android/emailcommon/provider/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSecurity$1;->val$security:Lcom/kingsoft/email/SecurityPolicy;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSecurity$1;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/SecurityPolicy;->policiesRequired(J)V

    .line 359
    return-void
.end method
