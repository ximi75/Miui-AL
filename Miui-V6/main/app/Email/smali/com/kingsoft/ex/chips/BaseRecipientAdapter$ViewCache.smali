.class Lcom/kingsoft/ex/chips/BaseRecipientAdapter$ViewCache;
.super Ljava/lang/Object;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewCache"
.end annotation


# instance fields
.field iv:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;


# direct methods
.method public constructor <init>(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$ViewCache;->this$0:Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1213
    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->getPhotoId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$ViewCache;->iv:Landroid/widget/ImageView;

    .line 1214
    return-void
.end method
