.class Lcom/kingsoft/mail/ui/AnimatedAdapter$4;
.super Ljava/lang/Object;
.source "AnimatedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AnimatedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

.field final synthetic val$conv:Lcom/kingsoft/mail/providers/Conversation;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AnimatedAdapter;Lcom/kingsoft/mail/providers/Conversation;I)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4;->val$conv:Lcom/kingsoft/mail/providers/Conversation;

    iput p3, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 653
    const-string/jumbo v7, "A04"

    invoke-static {v7}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 654
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # getter for: Lcom/kingsoft/mail/ui/AnimatedAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$1000(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v2

    .line 655
    .local v2, "mPreferences":Lcom/kingsoft/email/Preferences;
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # getter for: Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v7}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$1100(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # getter for: Lcom/kingsoft/mail/ui/AnimatedAdapter;->mFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v7}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$1100(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kingsoft/mail/providers/Folder;->isDraft()Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v6

    .line 656
    .local v1, "isDraft":Z
    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {v2}, Lcom/kingsoft/email/Preferences;->getConfirmDelete()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 658
    :cond_0
    if-eqz v1, :cond_2

    .line 659
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100130

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 665
    .local v3, "message":Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10012f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 666
    .local v5, "title":Ljava/lang/String;
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # getter for: Lcom/kingsoft/mail/ui/AnimatedAdapter;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;
    invoke-static {v6}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$800(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Lcom/kingsoft/mail/ui/ControllableActivity;

    move-result-object v6

    invoke-interface {v6}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 667
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 668
    const v6, 0x7f10029f

    new-instance v7, Lcom/kingsoft/mail/ui/AnimatedAdapter$4$1;

    invoke-direct {v7, p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter$4$1;-><init>(Lcom/kingsoft/mail/ui/AnimatedAdapter$4;)V

    invoke-virtual {v0, v6, v7}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 675
    const v6, 0x7f100107

    new-instance v7, Lcom/kingsoft/mail/ui/AnimatedAdapter$4$2;

    invoke-direct {v7, p0}, Lcom/kingsoft/mail/ui/AnimatedAdapter$4$2;-><init>(Lcom/kingsoft/mail/ui/AnimatedAdapter$4;)V

    invoke-virtual {v0, v6, v7}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 683
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    .line 687
    .end local v0    # "builder":Lmiui/app/AlertDialog$Builder;
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v5    # "title":Ljava/lang/String;
    :goto_2
    return-void

    .line 655
    .end local v1    # "isDraft":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 661
    .restart local v1    # "isDraft":Z
    :cond_2
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4;->val$conv:Lcom/kingsoft/mail/providers/Conversation;

    iget v7, v7, Lcom/kingsoft/mail/providers/Conversation;->mergeCount:I

    if-gt v7, v6, :cond_3

    const v4, 0x7f0f0002

    .line 663
    .local v4, "resId":I
    :goto_3
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # getter for: Lcom/kingsoft/mail/ui/AnimatedAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$1000(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4, v6}, Lcom/kingsoft/mail/utils/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "message":Ljava/lang/CharSequence;
    goto :goto_1

    .line 661
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v4    # "resId":I
    :cond_3
    const v4, 0x7f0f0003

    goto :goto_3

    .line 685
    :cond_4
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    iget-object v7, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4;->val$conv:Lcom/kingsoft/mail/providers/Conversation;

    iget v8, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$4;->val$position:I

    # invokes: Lcom/kingsoft/mail/ui/AnimatedAdapter;->delete(Lcom/kingsoft/mail/providers/Conversation;I)V
    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$1200(Lcom/kingsoft/mail/ui/AnimatedAdapter;Lcom/kingsoft/mail/providers/Conversation;I)V

    goto :goto_2
.end method
