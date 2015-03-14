.class Lcom/kingsoft/mail/compose/AddToAddressListActivity$1;
.super Ljava/lang/Object;
.source "AddToAddressListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/AddToAddressListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/AddToAddressListActivity;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/AddToAddressListActivity;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/kingsoft/mail/compose/AddToAddressListActivity$1;->this$0:Lcom/kingsoft/mail/compose/AddToAddressListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AddToAddressListActivity$1;->this$0:Lcom/kingsoft/mail/compose/AddToAddressListActivity;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/AddToAddressListActivity;->onBackPressed()V

    .line 49
    return-void
.end method
