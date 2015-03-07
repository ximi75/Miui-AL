.class Lcom/kingsoft/mail/browse/SuperCollapsedBlock$1;
.super Ljava/lang/Object;
.source "SuperCollapsedBlock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/SuperCollapsedBlock;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/SuperCollapsedBlock;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/SuperCollapsedBlock;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/kingsoft/mail/browse/SuperCollapsedBlock$1;->this$0:Lcom/kingsoft/mail/browse/SuperCollapsedBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SuperCollapsedBlock$1;->this$0:Lcom/kingsoft/mail/browse/SuperCollapsedBlock;

    # getter for: Lcom/kingsoft/mail/browse/SuperCollapsedBlock;->mClick:Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/SuperCollapsedBlock;->access$100(Lcom/kingsoft/mail/browse/SuperCollapsedBlock;)Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/browse/SuperCollapsedBlock$1;->this$0:Lcom/kingsoft/mail/browse/SuperCollapsedBlock;

    # getter for: Lcom/kingsoft/mail/browse/SuperCollapsedBlock;->mModel:Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;
    invoke-static {v1}, Lcom/kingsoft/mail/browse/SuperCollapsedBlock;->access$000(Lcom/kingsoft/mail/browse/SuperCollapsedBlock;)Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;->onSuperCollapsedClick(Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;)V

    .line 88
    return-void
.end method
