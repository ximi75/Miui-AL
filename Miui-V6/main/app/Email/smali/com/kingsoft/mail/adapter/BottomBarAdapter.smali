.class public Lcom/kingsoft/mail/adapter/BottomBarAdapter;
.super Landroid/widget/BaseAdapter;
.source "BottomBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/adapter/BottomBarAdapter$IMoreMenuLogic;,
        Lcom/kingsoft/mail/adapter/BottomBarAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final DELETE:I = 0x3

.field public static final FORWARD:I = 0x2

.field public static final MOVE_TO:I = 0x7

.field public static final QUICK_REPLY:I = 0x6

.field public static final REPLY:I = 0x0

.field public static final REPLYALL:I = 0x1

.field public static final STAR:I = 0x4

.field public static final UNREAD:I = 0x5


# instance fields
.field final Margin:I

.field private enableMoveTo:Z

.field private imageSource:[I

.field private mContext:Landroid/content/Context;

.field private mSearching:Z

.field private textSource:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZZ)V
    .locals 5
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "star"    # Z
    .param p3, "enableMoveTo"    # Z
    .param p4, "isCommonReply"    # Z
    .param p5, "searching"    # Z

    .prologue
    const v4, 0x7f02021d

    const/16 v1, 0x8

    const/4 v3, 0x7

    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->imageSource:[I

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->textSource:[I

    .line 48
    iput-object p1, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41200000

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->Margin:I

    .line 50
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->init(Z)V

    .line 51
    iput-boolean p3, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->enableMoveTo:Z

    .line 52
    iput-boolean p5, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->mSearching:Z

    .line 53
    if-nez p3, :cond_0

    .line 54
    iget-object v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->imageSource:[I

    aput v4, v0, v3

    .line 57
    :cond_0
    if-eqz p4, :cond_1

    .line 58
    iget-object v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->imageSource:[I

    const/4 v1, 0x6

    const v2, 0x7f0200d6

    aput v2, v0, v1

    .line 61
    :cond_1
    if-eqz p5, :cond_2

    .line 62
    iget-object v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->imageSource:[I

    const/4 v1, 0x3

    const v2, 0x7f02021a

    aput v2, v0, v1

    .line 63
    iget-object v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->imageSource:[I

    const/4 v1, 0x4

    const v2, 0x7f020220

    aput v2, v0, v1

    .line 64
    iget-object v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->imageSource:[I

    const/4 v1, 0x5

    const v2, 0x7f0200df

    aput v2, v0, v1

    .line 65
    iget-object v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->imageSource:[I

    aput v4, v0, v3

    .line 67
    :cond_2
    return-void

    .line 39
    :array_0
    .array-data 4
        0x7f0200dd
        0x7f0200da
        0x7f0200d3
        0x7f0200d0
        0x7f0200e3
        0x7f0200e2
        0x7f0200d7
        0x7f0200d4
    .end array-data

    .line 43
    :array_1
    .array-data 4
        0x7f100342
        0x7f100343
        0x7f1001d9
        0x7f10016a
        0x7f1000ca
        0x7f100242
        0x7f100103
        0x7f10025b
    .end array-data
.end method

.method private init(Z)V
    .locals 3
    .param p1, "star"    # Z

    .prologue
    const/4 v2, 0x4

    .line 127
    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->imageSource:[I

    const v1, 0x7f0200e3

    aput v1, v0, v2

    .line 129
    iget-object v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->textSource:[I

    const v1, 0x7f100341

    aput v1, v0, v2

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->imageSource:[I

    const v1, 0x7f0200de

    aput v1, v0, v2

    .line 132
    iget-object v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->textSource:[I

    const v1, 0x7f1000ca

    aput v1, v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->imageSource:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 81
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "postion"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 102
    if-nez p2, :cond_1

    .line 103
    new-instance v2, Lcom/kingsoft/mail/adapter/BottomBarAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/kingsoft/mail/adapter/BottomBarAdapter$ViewHolder;-><init>()V

    .line 104
    .local v2, "viewHolder":Lcom/kingsoft/mail/adapter/BottomBarAdapter$ViewHolder;
    iget-object v3, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 105
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040036

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 106
    .local v1, "view":Landroid/view/View;
    const v3, 0x7f0c00ed

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/kingsoft/mail/adapter/BottomBarAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 107
    const v3, 0x7f0c00ee

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/kingsoft/mail/adapter/BottomBarAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 108
    move-object p2, v1

    .line 109
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    iget-object v3, v2, Lcom/kingsoft/mail/adapter/BottomBarAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->imageSource:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 114
    iget-object v3, v2, Lcom/kingsoft/mail/adapter/BottomBarAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->textSource:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 115
    const/4 v3, 0x7

    if-ne p1, v3, :cond_0

    iget-boolean v3, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->enableMoveTo:Z

    if-nez v3, :cond_0

    .line 116
    iget-object v3, v2, Lcom/kingsoft/mail/adapter/BottomBarAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f11013a

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 118
    :cond_0
    return-object p2

    .line 111
    .end local v2    # "viewHolder":Lcom/kingsoft/mail/adapter/BottomBarAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/adapter/BottomBarAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/kingsoft/mail/adapter/BottomBarAdapter$ViewHolder;
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x7

    const/4 v0, 0x0

    .line 87
    iget-boolean v1, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->mSearching:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-eq v1, p1, :cond_0

    const/4 v1, 0x4

    if-eq v1, p1, :cond_0

    const/4 v1, 0x5

    if-eq v1, p1, :cond_0

    if-ne v2, p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    iget-boolean v1, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->enableMoveTo:Z

    if-nez v1, :cond_2

    if-eq v2, p1, :cond_0

    .line 96
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public refresh(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "deal"    # Z

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x5

    .line 141
    packed-switch p1, :pswitch_data_0

    .line 162
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->notifyDataSetChanged()V

    .line 163
    return-void

    .line 143
    :pswitch_1
    if-eqz p2, :cond_0

    .line 144
    iget-object v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->imageSource:[I

    const v1, 0x7f0200d4

    aput v1, v0, v3

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->imageSource:[I

    const v1, 0x7f02021d

    aput v1, v0, v3

    goto :goto_0

    .line 150
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->init(Z)V

    goto :goto_0

    .line 153
    :pswitch_3
    if-eqz p2, :cond_1

    .line 154
    iget-object v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->imageSource:[I

    const v1, 0x7f0200e2

    aput v1, v0, v2

    .line 155
    iget-object v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->textSource:[I

    const v1, 0x7f100242

    aput v1, v0, v2

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->imageSource:[I

    const v1, 0x7f020216

    aput v1, v0, v2

    .line 158
    iget-object v0, p0, Lcom/kingsoft/mail/adapter/BottomBarAdapter;->textSource:[I

    const v1, 0x7f100241

    aput v1, v0, v2

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
