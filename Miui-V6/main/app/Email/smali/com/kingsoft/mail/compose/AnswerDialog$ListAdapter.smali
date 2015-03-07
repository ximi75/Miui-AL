.class Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AnswerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/compose/AnswerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListAdapter"
.end annotation


# instance fields
.field mDatas:[Ljava/lang/String;

.field mHeight:I

.field mIcons:[I

.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/kingsoft/mail/compose/AnswerDialog;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/AnswerDialog;[Ljava/lang/String;[I)V
    .locals 3
    .param p2, "datas"    # [Ljava/lang/String;
    .param p3, "icons"    # [I

    .prologue
    .line 249
    iput-object p1, p0, Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;->this$0:Lcom/kingsoft/mail/compose/AnswerDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;->mHeight:I

    .line 250
    iput-object p2, p0, Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;->mDatas:[Ljava/lang/String;

    .line 251
    iput-object p3, p0, Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;->mIcons:[I

    .line 252
    # getter for: Lcom/kingsoft/mail/compose/AnswerDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/kingsoft/mail/compose/AnswerDialog;->access$000(Lcom/kingsoft/mail/compose/AnswerDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 253
    const/4 v0, 0x1

    const/high16 v1, 0x42480000

    # getter for: Lcom/kingsoft/mail/compose/AnswerDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/kingsoft/mail/compose/AnswerDialog;->access$000(Lcom/kingsoft/mail/compose/AnswerDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;->mHeight:I

    .line 256
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;->mDatas:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;->mDatas:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 270
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 275
    iget-object v2, p0, Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04004f

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 277
    .local v1, "v":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v2, p0, Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;->mIcons:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;->mIcons:[I

    array-length v2, v2

    if-lez v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;->this$0:Lcom/kingsoft/mail/compose/AnswerDialog;

    # getter for: Lcom/kingsoft/mail/compose/AnswerDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/mail/compose/AnswerDialog;->access$000(Lcom/kingsoft/mail/compose/AnswerDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;->mIcons:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 281
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 283
    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 285
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget v2, p0, Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;->mHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 286
    return-object v1
.end method
