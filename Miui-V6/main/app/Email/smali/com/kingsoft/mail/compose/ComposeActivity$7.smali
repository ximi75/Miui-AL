.class Lcom/kingsoft/mail/compose/ComposeActivity$7;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/ComposeActivity;->initActionBar2()V
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
    .line 1882
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$7;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$7;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mDropDownSingleChoiceMenu:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;
    invoke-static {v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$700(Lcom/kingsoft/mail/compose/ComposeActivity;)Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->show()V

    .line 1887
    return-void
.end method
