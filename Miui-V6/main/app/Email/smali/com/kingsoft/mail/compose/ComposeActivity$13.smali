.class Lcom/kingsoft/mail/compose/ComposeActivity$13;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/ComposeActivity;->updateBccMyself()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

.field final synthetic val$address:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/ComposeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2040
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$13;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iput-object p2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$13;->val$address:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$13;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$13;->val$address:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$13;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mBcc:Lcom/kingsoft/ex/chips/RecipientEditTextView;
    invoke-static {v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$300(Lcom/kingsoft/mail/compose/ComposeActivity;)Lcom/kingsoft/ex/chips/RecipientEditTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity$13;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mInitListBcc:Ljava/util/List;
    invoke-static {v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$900(Lcom/kingsoft/mail/compose/ComposeActivity;)Ljava/util/List;

    move-result-object v3

    # invokes: Lcom/kingsoft/mail/compose/ComposeActivity;->addAddressToList(Ljava/lang/String;Lcom/kingsoft/ex/chips/RecipientEditTextView;Ljava/util/List;)V
    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$1000(Lcom/kingsoft/mail/compose/ComposeActivity;Ljava/lang/String;Lcom/kingsoft/ex/chips/RecipientEditTextView;Ljava/util/List;)V

    .line 2044
    return-void
.end method
