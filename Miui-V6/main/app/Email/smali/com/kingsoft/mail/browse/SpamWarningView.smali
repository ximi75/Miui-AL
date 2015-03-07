.class public Lcom/kingsoft/mail/browse/SpamWarningView;
.super Landroid/widget/RelativeLayout;
.source "SpamWarningView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mHighWarningColor:I

.field private final mLowWarningColor:I

.field private mSpamWarningIcon:Landroid/widget/ImageView;

.field private mSpamWarningLink:Landroid/widget/TextView;

.field private mSpamWarningText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/SpamWarningView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/SpamWarningView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/browse/SpamWarningView;->mHighWarningColor:I

    .line 32
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/SpamWarningView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/browse/SpamWarningView;->mLowWarningColor:I

    .line 33
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 49
    .local v0, "id":I
    const v1, 0x7f0c01bc

    if-ne v0, v1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const v1, 0x7f0c01bf

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p0}, Lcom/kingsoft/mail/browse/SpamWarningView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v0, 0x7f0c01bd

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/SpamWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/SpamWarningView;->mSpamWarningIcon:Landroid/widget/ImageView;

    .line 40
    const v0, 0x7f0c01be

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/SpamWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/SpamWarningView;->mSpamWarningText:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0c01bf

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/SpamWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/SpamWarningView;->mSpamWarningLink:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SpamWarningView;->mSpamWarningLink:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method

.method public showSpamWarning(Lcom/kingsoft/mail/providers/Message;Lcom/kingsoft/mail/providers/Address;)V
    .locals 9
    .param p1, "message"    # Lcom/kingsoft/mail/providers/Message;
    .param p2, "sender"    # Lcom/kingsoft/mail/providers/Address;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 59
    invoke-virtual {p0, v7}, Lcom/kingsoft/mail/browse/SpamWarningView;->setVisibility(I)V

    .line 63
    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "senderAddress":Ljava/lang/String;
    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "senderDomain":Ljava/lang/String;
    iget-object v3, p0, Lcom/kingsoft/mail/browse/SpamWarningView;->mSpamWarningText:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/kingsoft/mail/providers/Message;->spamWarningString:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/mail/utils/Utils;->convertHtmlToPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget v3, p1, Lcom/kingsoft/mail/providers/Message;->spamWarningLevel:I

    if-ne v3, v8, :cond_0

    .line 69
    iget-object v3, p0, Lcom/kingsoft/mail/browse/SpamWarningView;->mSpamWarningText:Landroid/widget/TextView;

    iget v4, p0, Lcom/kingsoft/mail/browse/SpamWarningView;->mHighWarningColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v3, p0, Lcom/kingsoft/mail/browse/SpamWarningView;->mSpamWarningIcon:Landroid/widget/ImageView;

    const v4, 0x7f02017a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    :goto_0
    iget v0, p1, Lcom/kingsoft/mail/providers/Message;->spamLinkType:I

    .line 79
    .local v0, "linkType":I
    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_1
    return-void

    .line 72
    .end local v0    # "linkType":I
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/mail/browse/SpamWarningView;->mSpamWarningText:Landroid/widget/TextView;

    iget v4, p0, Lcom/kingsoft/mail/browse/SpamWarningView;->mLowWarningColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v3, p0, Lcom/kingsoft/mail/browse/SpamWarningView;->mSpamWarningIcon:Landroid/widget/ImageView;

    const v4, 0x7f020179

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 81
    .restart local v0    # "linkType":I
    :pswitch_0
    iget-object v3, p0, Lcom/kingsoft/mail/browse/SpamWarningView;->mSpamWarningLink:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 84
    :pswitch_1
    iget-object v3, p0, Lcom/kingsoft/mail/browse/SpamWarningView;->mSpamWarningLink:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v3, p0, Lcom/kingsoft/mail/browse/SpamWarningView;->mSpamWarningLink:Landroid/widget/TextView;

    const v4, 0x7f1001fe

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 88
    :pswitch_2
    iget-object v3, p0, Lcom/kingsoft/mail/browse/SpamWarningView;->mSpamWarningLink:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v3, p0, Lcom/kingsoft/mail/browse/SpamWarningView;->mSpamWarningLink:Landroid/widget/TextView;

    const v4, 0x7f100348

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
