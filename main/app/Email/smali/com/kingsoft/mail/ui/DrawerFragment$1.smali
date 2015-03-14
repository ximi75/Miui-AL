.class Lcom/kingsoft/mail/ui/DrawerFragment$1;
.super Ljava/lang/Object;
.source "DrawerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/DrawerFragment;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/DrawerFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/DrawerFragment;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/kingsoft/mail/ui/DrawerFragment$1;->this$0:Lcom/kingsoft/mail/ui/DrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DrawerFragment$1;->this$0:Lcom/kingsoft/mail/ui/DrawerFragment;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/DrawerFragment;->actionBarTitle:Landroid/widget/TextView;

    const v1, 0x7f020148

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 128
    iget-object v0, p0, Lcom/kingsoft/mail/ui/DrawerFragment$1;->this$0:Lcom/kingsoft/mail/ui/DrawerFragment;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/DrawerFragment;->mDropDownSingleChoiceMenu:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    invoke-virtual {v0}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->show()V

    .line 129
    return-void
.end method
