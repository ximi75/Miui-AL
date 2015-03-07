.class Lcom/kingsoft/mail/compose/ContactListActivity$1;
.super Ljava/lang/Object;
.source "ContactListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/ContactListActivity;->inflateSearchView(Lmiui/app/Activity;Landroid/view/ActionMode$Callback;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

.field final synthetic val$searchCallback:Landroid/view/ActionMode$Callback;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/ContactListActivity;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ContactListActivity$1;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    iput-object p2, p0, Lcom/kingsoft/mail/compose/ContactListActivity$1;->val$searchCallback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ContactListActivity$1;->this$0:Lcom/kingsoft/mail/compose/ContactListActivity;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/ContactListActivity$1;->val$searchCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/ContactListActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 147
    return-void
.end method
