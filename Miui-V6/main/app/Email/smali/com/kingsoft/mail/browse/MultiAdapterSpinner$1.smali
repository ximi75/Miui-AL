.class Lcom/kingsoft/mail/browse/MultiAdapterSpinner$1;
.super Ljava/lang/Object;
.source "MultiAdapterSpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/MultiAdapterSpinner;

.field final synthetic val$result:Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/MultiAdapterSpinner;Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner$1;->this$0:Lcom/kingsoft/mail/browse/MultiAdapterSpinner;

    iput-object p2, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner$1;->val$result:Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner$1;->val$result:Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;

    check-cast v0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner$1;->val$result:Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;

    iget v1, v1, Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;->onClick(I)V

    .line 178
    return-void
.end method
