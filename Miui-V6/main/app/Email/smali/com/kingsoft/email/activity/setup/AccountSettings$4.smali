.class Lcom/kingsoft/email/activity/setup/AccountSettings$4;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSettings;->deleteAccount(Lcom/android/emailcommon/provider/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettings;Lcom/android/emailcommon/provider/Account;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$4;->val$account:Lcom/android/emailcommon/provider/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 871
    const-string/jumbo v1, "uiaccount"

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$4;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 872
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 873
    return-void
.end method
