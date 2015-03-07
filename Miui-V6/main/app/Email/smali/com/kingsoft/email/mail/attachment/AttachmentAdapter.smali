.class public Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AttachmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/kingsoft/email/mail/attachment/FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const v0, 0x7f040031

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 19
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;->mContext:Landroid/content/Context;

    .line 20
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 21
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 31
    const/4 v5, 0x0

    .line 34
    .local v5, "rl":Landroid/widget/RelativeLayout;
    if-nez p2, :cond_0

    .line 35
    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040031

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .end local v5    # "rl":Landroid/widget/RelativeLayout;
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 40
    .restart local v5    # "rl":Landroid/widget/RelativeLayout;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/mail/attachment/FileInfo;

    .line 41
    .local v1, "fi":Lcom/kingsoft/email/mail/attachment/FileInfo;
    const v7, 0x7f0c00d9

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 42
    .local v2, "format":Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/kingsoft/email/mail/attachment/FileInfo;->getFormatIcon()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    const v7, 0x7f0c00da

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 45
    .local v3, "name":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/kingsoft/email/mail/attachment/FileInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "path":Ljava/lang/String;
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v7, 0x7f0c00db

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    .local v0, "date":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/kingsoft/email/mail/attachment/AttachmentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/kingsoft/email/mail/attachment/FileInfo;->getDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v7, 0x7f0c00dc

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 51
    .local v6, "size":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/kingsoft/email/mail/attachment/FileInfo;->getDisplaySize()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-object v5

    .end local v0    # "date":Landroid/widget/TextView;
    .end local v1    # "fi":Lcom/kingsoft/email/mail/attachment/FileInfo;
    .end local v2    # "format":Landroid/widget/ImageView;
    .end local v3    # "name":Landroid/widget/TextView;
    .end local v4    # "path":Ljava/lang/String;
    .end local v6    # "size":Landroid/widget/TextView;
    :cond_0
    move-object v5, p2

    .line 37
    check-cast v5, Landroid/widget/RelativeLayout;

    goto :goto_0
.end method
