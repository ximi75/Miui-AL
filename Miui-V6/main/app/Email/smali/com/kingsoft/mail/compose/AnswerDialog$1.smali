.class Lcom/kingsoft/mail/compose/AnswerDialog$1;
.super Ljava/lang/Object;
.source "AnswerDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/AnswerDialog;->setItems([Ljava/lang/String;[ILandroid/widget/AdapterView$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/AnswerDialog;

.field final synthetic val$l:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/AnswerDialog;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/kingsoft/mail/compose/AnswerDialog$1;->this$0:Lcom/kingsoft/mail/compose/AnswerDialog;

    iput-object p2, p0, Lcom/kingsoft/mail/compose/AnswerDialog$1;->val$l:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog$1;->val$l:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog$1;->val$l:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 161
    :cond_0
    return-void
.end method
