.class Lcom/kingsoft/mail/compose/ComposeActivity$14;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/compose/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/ComposeActivity;)V
    .locals 0

    .prologue
    .line 2099
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$14;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .param p1, "p"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2102
    const-string/jumbo v0, "always-bcc-to-myself"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2103
    const-string/jumbo v0, "ComposeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSharedPreferenceChanged key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2104
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$14;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mWindowFocused:Z
    invoke-static {v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$1100(Lcom/kingsoft/mail/compose/ComposeActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2105
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$14;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    const/4 v1, 0x1

    # setter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mPendingShowSelf:Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$1202(Lcom/kingsoft/mail/compose/ComposeActivity;Z)Z

    .line 2111
    :cond_0
    :goto_0
    return-void

    .line 2107
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$14;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # setter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mPendingShowSelf:Z
    invoke-static {v0, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$1202(Lcom/kingsoft/mail/compose/ComposeActivity;Z)Z

    .line 2108
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$14;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # invokes: Lcom/kingsoft/mail/compose/ComposeActivity;->updateBccMyself()V
    invoke-static {v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$1300(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    goto :goto_0
.end method
