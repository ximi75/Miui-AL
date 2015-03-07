.class public Lcom/kingsoft/mail/compose/AnswerDialog;
.super Landroid/app/Dialog;
.source "AnswerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_MARG_DISMENS:I = 0x32


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mButtonPanel:Landroid/view/View;

.field private mCenterLine:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Landroid/widget/TextView;

.field private mMessageDivider:Landroid/view/View;

.field private mNegative:Landroid/widget/Button;

.field private mPositive:Landroid/widget/Button;

.field private mTitle:Landroid/widget/TextView;

.field private margDismens:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const v0, 0x7f11007c

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/compose/AnswerDialog;-><init>(Landroid/content/Context;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    const/16 v0, 0x32

    iput v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->margDismens:I

    .line 56
    iput-object p1, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/compose/AnswerDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/compose/AnswerDialog;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getMessageTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNegativeButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mNegative:Landroid/widget/Button;

    return-object v0
.end method

.method public getPostiveButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mPositive:Landroid/widget/Button;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f04004e

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/AnswerDialog;->setContentView(I)V

    .line 63
    const v0, 0x7f0c004a

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/AnswerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mTitle:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0c0133

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/AnswerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mListView:Landroid/widget/ListView;

    .line 65
    const v0, 0x7f0c0134

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/AnswerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessage:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0c0135

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/AnswerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessageDivider:Landroid/view/View;

    .line 67
    const v0, 0x7f0c0136

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/AnswerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mButtonPanel:Landroid/view/View;

    .line 68
    const v0, 0x7f0c0139

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/AnswerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mPositive:Landroid/widget/Button;

    .line 69
    const v0, 0x7f0c0138

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/AnswerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mCenterLine:Landroid/view/View;

    .line 70
    const v0, 0x7f0c0137

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/AnswerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mNegative:Landroid/widget/Button;

    .line 72
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mActivity:Landroid/app/Activity;

    .line 143
    return-void
.end method

.method public setButtonPanelDismiss()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 128
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mButtonPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mButtonPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessageDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessageDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mCenterLine:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mCenterLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :cond_2
    return-void
.end method

.method public setItems([Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 3
    .param p1, "datas"    # [Ljava/lang/String;
    .param p2, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;-><init>(Lcom/kingsoft/mail/compose/AnswerDialog;[Ljava/lang/String;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/kingsoft/mail/compose/AnswerDialog$2;

    invoke-direct {v1, p0, p2}, Lcom/kingsoft/mail/compose/AnswerDialog$2;-><init>(Lcom/kingsoft/mail/compose/AnswerDialog;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 181
    :cond_0
    return-void
.end method

.method public setItems([Ljava/lang/String;[ILandroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .param p1, "datas"    # [Ljava/lang/String;
    .param p2, "icons"    # [I
    .param p3, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingsoft/mail/compose/AnswerDialog$ListAdapter;-><init>(Lcom/kingsoft/mail/compose/AnswerDialog;[Ljava/lang/String;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/kingsoft/mail/compose/AnswerDialog$1;

    invoke-direct {v1, p0, p3}, Lcom/kingsoft/mail/compose/AnswerDialog$1;-><init>(Lcom/kingsoft/mail/compose/AnswerDialog;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 165
    :cond_0
    return-void
.end method

.method public setMessageText(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    const/4 v1, 0x0

    .line 228
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessageDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 230
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessageDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :cond_0
    return-void
.end method

.method public setMessageText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessageDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessageDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    :cond_0
    return-void
.end method

.method public setMessageText(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessageDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mMessageDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :cond_0
    return-void
.end method

.method public setNegativeButtonDismiss()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 118
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mNegative:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mNegative:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mCenterLine:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mCenterLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_1
    return-void
.end method

.method public setNegativeClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mNegative:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mNegative:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 105
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mNegative:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    :cond_0
    return-void
.end method

.method public setNegativeClickListener(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mNegative:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mNegative:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mNegative:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_0
    return-void
.end method

.method public setPositveClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mPositive:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 89
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mPositive:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_0
    return-void
.end method

.method public setPositveClickListener(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mPositive:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mPositive:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mPositive:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_0
    return-void
.end method

.method public setTitleText(I)V
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 200
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 203
    :cond_0
    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_0
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 77
    iget-object v3, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 78
    iget-object v3, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 79
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 80
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/AnswerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 81
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/kingsoft/mail/compose/AnswerDialog;->margDismens:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 82
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/AnswerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method
