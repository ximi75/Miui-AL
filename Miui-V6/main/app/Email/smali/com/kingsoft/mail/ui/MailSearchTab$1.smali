.class Lcom/kingsoft/mail/ui/MailSearchTab$1;
.super Ljava/lang/Object;
.source "MailSearchTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/MailSearchTab;->addTab(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/MailSearchTab;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/MailSearchTab;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailSearchTab$1;->this$0:Lcom/kingsoft/mail/ui/MailSearchTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailSearchTab$1;->this$0:Lcom/kingsoft/mail/ui/MailSearchTab;

    # getter for: Lcom/kingsoft/mail/ui/MailSearchTab;->mSelectionChangedListener:Lcom/kingsoft/mail/ui/MailSearchTab$OnTabSelectionChanged;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/MailSearchTab;->access$000(Lcom/kingsoft/mail/ui/MailSearchTab;)Lcom/kingsoft/mail/ui/MailSearchTab$OnTabSelectionChanged;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailSearchTab$1;->this$0:Lcom/kingsoft/mail/ui/MailSearchTab;

    # getter for: Lcom/kingsoft/mail/ui/MailSearchTab;->mSelectionChangedListener:Lcom/kingsoft/mail/ui/MailSearchTab$OnTabSelectionChanged;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/MailSearchTab;->access$000(Lcom/kingsoft/mail/ui/MailSearchTab;)Lcom/kingsoft/mail/ui/MailSearchTab$OnTabSelectionChanged;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/kingsoft/mail/ui/MailSearchTab$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailSearchTab$1;->this$0:Lcom/kingsoft/mail/ui/MailSearchTab;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/ui/MailSearchTab;->setSelect(I)V

    .line 139
    return-void
.end method
