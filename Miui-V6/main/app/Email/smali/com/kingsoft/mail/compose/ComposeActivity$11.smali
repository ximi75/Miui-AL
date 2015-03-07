.class Lcom/kingsoft/mail/compose/ComposeActivity$11;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/ComposeActivity;->isAddPreMessageAttachment()V
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
    .line 1990
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$11;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$11;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$11;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-object v1, v1, Lcom/kingsoft/mail/compose/ComposeActivity;->mRefMessage:Lcom/kingsoft/mail/providers/Message;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->initAttachments(Lcom/kingsoft/mail/providers/Message;)V

    .line 1996
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$11;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # invokes: Lcom/kingsoft/mail/compose/ComposeActivity;->scrollToAttachmentView()V
    invoke-static {v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$800(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    .line 1997
    return-void
.end method
