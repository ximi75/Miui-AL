.class Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$2;
.super Landroid/os/Handler;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 196
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 197
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_1

    .line 198
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f10001a

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->di:Landroid/content/DialogInterface;
    invoke-static {v2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$100(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/DialogInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->di:Landroid/content/DialogInterface;
    invoke-static {v2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$100(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/DialogInterface;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "mShowing"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 202
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 203
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->di:Landroid/content/DialogInterface;
    invoke-static {v2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$100(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/DialogInterface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->di:Landroid/content/DialogInterface;
    invoke-static {v2, v4}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$102(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    .line 218
    :cond_1
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->di:Landroid/content/DialogInterface;
    invoke-static {v2, v4}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$102(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    goto :goto_0

    .line 208
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->di:Landroid/content/DialogInterface;
    invoke-static {v2, v4}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$102(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    goto :goto_0

    .line 211
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->di:Landroid/content/DialogInterface;
    invoke-static {v2, v4}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$102(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->di:Landroid/content/DialogInterface;
    invoke-static {v3, v4}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$102(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    throw v2
.end method
