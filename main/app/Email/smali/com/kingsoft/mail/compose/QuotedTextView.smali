.class public Lcom/kingsoft/mail/compose/QuotedTextView;
.super Landroid/widget/RelativeLayout;
.source "QuotedTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/compose/QuotedTextView$RespondInlineListener;,
        Lcom/kingsoft/mail/compose/QuotedTextView$ShowHideQuotedTextListener;
    }
.end annotation


# static fields
.field public static final BLOCKQUOTE_BEGIN:Ljava/lang/String; = "<blockquote class=\"quote\" style=\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\">"

.field public static final BLOCKQUOTE_END:Ljava/lang/String; = "</blockquote>"

.field public static final HEADER_SEPARATOR:Ljava/lang/String; = "<br type=\'attribution\'>"

.field public static final HEADER_SEPARATOR_LENGTH:I

.field public static final QUOTE_END:Ljava/lang/String; = "</div>"

.field private static sQuoteBegin:Ljava/lang/String;


# instance fields
.field private mIncludeText:Z

.field private mQuotedText:Ljava/lang/CharSequence;

.field private mQuotedTextWebView:Landroid/webkit/WebView;

.field private mRespondInlineButton:Landroid/widget/Button;

.field private mRespondInlineListener:Lcom/kingsoft/mail/compose/QuotedTextView$RespondInlineListener;

.field private mShowHideCheckBox:Landroid/widget/CheckBox;

.field private mShowHideListener:Lcom/kingsoft/mail/compose/QuotedTextView$ShowHideQuotedTextListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "<br type=\'attribution\'>"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/kingsoft/mail/compose/QuotedTextView;->HEADER_SEPARATOR_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/compose/QuotedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/compose/QuotedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-boolean v3, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mIncludeText:Z

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 83
    .local v0, "factory":Landroid/view/LayoutInflater;
    const v2, 0x7f04009f

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 85
    const v2, 0x7f0c0219

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    .line 86
    iget-object v2, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->restrictWebView(Landroid/webkit/WebView;)V

    .line 87
    iget-object v2, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 88
    .local v1, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 90
    const v2, 0x7f0c0215

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    .line 91
    iget-object v2, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 92
    iget-object v2, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100312

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/kingsoft/mail/compose/QuotedTextView;->sQuoteBegin:Ljava/lang/String;

    .line 94
    const v2, 0x7f0c0216

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v2, 0x7f0c0217

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    .line 98
    iget-object v2, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    :cond_0
    return-void
.end method

.method public static containsQuotedText(Ljava/lang/String;)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 347
    sget-object v1, Lcom/kingsoft/mail/compose/QuotedTextView;->sQuoteBegin:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 348
    .local v0, "pos":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static findQuotedTextIndex(Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "htmlText"    # Ljava/lang/CharSequence;

    .prologue
    .line 361
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    const/4 v1, -0x1

    .line 365
    :goto_0
    return v1

    .line 364
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "textString":Ljava/lang/String;
    sget-object v1, Lcom/kingsoft/mail/compose/QuotedTextView;->sQuoteBegin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private static getHtmlText(Lcom/kingsoft/mail/providers/Message;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 237
    iget-object v1, p0, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    .line 247
    :goto_0
    return-object v1

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/providers/Message;->bodyText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 242
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Message;->bodyText:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 243
    .local v0, "spannable":Landroid/text/SpannableString;
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 245
    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 247
    .end local v0    # "spannable":Landroid/text/SpannableString;
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getQuotedTextOffset(Ljava/lang/String;)I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 352
    const-string/jumbo v0, "<br type=\'attribution\'>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/kingsoft/mail/compose/QuotedTextView;->HEADER_SEPARATOR_LENGTH:I

    add-int/2addr v0, v1

    return v0
.end method

.method private populateData()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/QuotedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10032e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, "backgroundColor":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/QuotedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10032f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, "fontColor":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<head><style type=\"text/css\">* body { background-color: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "; color: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "; }</style></head>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mQuotedText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "html":Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method private respondInline()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 209
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/QuotedTextView;->getQuotedText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->convertHtmlToPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "plainText":Ljava/lang/String;
    iget-object v1, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mRespondInlineListener:Lcom/kingsoft/mail/compose/QuotedTextView$RespondInlineListener;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mRespondInlineListener:Lcom/kingsoft/mail/compose/QuotedTextView$RespondInlineListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/kingsoft/mail/compose/QuotedTextView$RespondInlineListener;->onRespondInline(Ljava/lang/String;)V

    .line 214
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/QuotedTextView;->updateCheckedState(Z)V

    .line 215
    iget-object v1, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/compose/QuotedTextView;->setVisibility(I)V

    .line 218
    return-void
.end method

.method private setQuotedText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "quotedText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 331
    iput-object p1, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mQuotedText:Ljava/lang/CharSequence;

    .line 332
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/QuotedTextView;->populateData()V

    .line 333
    iget-object v0, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 334
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 337
    iget-object v0, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateQuotedTextVisibility(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 191
    iget-object v1, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 192
    iput-boolean p1, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mIncludeText:Z

    .line 193
    return-void

    .line 191
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public allowQuotedText(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 114
    const v1, 0x7f0c0214

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, "quotedTextRow":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 116
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :cond_0
    return-void

    .line 116
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public allowRespondInline(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mRespondInlineButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    :cond_0
    return-void

    .line 126
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getQuotedText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mQuotedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getQuotedTextIfIncluded()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mIncludeText:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mQuotedText:Ljava/lang/CharSequence;

    .line 138
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextIncluded()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mIncludeText:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 168
    .local v0, "id":I
    const v1, 0x7f0c0217

    if-ne v0, v1, :cond_1

    .line 169
    invoke-direct {p0}, Lcom/kingsoft/mail/compose/QuotedTextView;->respondInline()V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const v1, 0x7f0c0215

    if-ne v0, v1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/QuotedTextView;->updateCheckedState(Z)V

    goto :goto_0

    .line 172
    :cond_2
    const v1, 0x7f0c0216

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/QuotedTextView;->updateCheckedState(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mQuotedTextWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 107
    :cond_0
    return-void
.end method

.method public setQuotedText(ILcom/kingsoft/mail/providers/Message;Z)V
    .locals 11
    .param p1, "action"    # I
    .param p2, "refMessage"    # Lcom/kingsoft/mail/providers/Message;
    .param p3, "allow"    # Z

    .prologue
    .line 252
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/kingsoft/mail/compose/QuotedTextView;->setVisibility(I)V

    .line 253
    invoke-static {p2}, Lcom/kingsoft/mail/compose/QuotedTextView;->getHtmlText(Lcom/kingsoft/mail/providers/Message;)Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "htmlText":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v4, "quotedText":Ljava/lang/StringBuilder;
    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-static {v6, v7}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    .line 256
    .local v2, "dateFormat":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/Date;

    iget-wide v6, p2, Lcom/kingsoft/mail/providers/Message;->dateReceivedMs:J

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 257
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/QuotedTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 258
    .local v5, "resources":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    const/4 v6, 0x1

    if-ne p1, v6, :cond_2

    .line 259
    :cond_0
    sget-object v6, Lcom/kingsoft/mail/compose/QuotedTextView;->sQuoteBegin:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const v6, 0x7f100344

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Message;->getFrom()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/kingsoft/mail/utils/Utils;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string/jumbo v6, "<br type=\'attribution\'>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string/jumbo v6, "<blockquote class=\"quote\" style=\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\">"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string/jumbo v6, "</blockquote>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string/jumbo v6, "</div>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_1
    :goto_0
    invoke-direct {p0, v4}, Lcom/kingsoft/mail/compose/QuotedTextView;->setQuotedText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {p0, p3}, Lcom/kingsoft/mail/compose/QuotedTextView;->allowQuotedText(Z)V

    .line 293
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/kingsoft/mail/compose/QuotedTextView;->allowRespondInline(Z)V

    .line 294
    return-void

    .line 271
    :cond_2
    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    .line 272
    sget-object v6, Lcom/kingsoft/mail/compose/QuotedTextView;->sQuoteBegin:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const v6, 0x7f1001db

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Message;->getFrom()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/kingsoft/mail/utils/Utils;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p2, Lcom/kingsoft/mail/providers/Message;->subject:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/kingsoft/mail/utils/Utils;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Message;->getTo()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/kingsoft/mail/utils/Utils;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Message;->getCc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "ccAddresses":Ljava/lang/String;
    const v6, 0x7f10010f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v0, v9}, Lcom/kingsoft/mail/utils/Utils;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string/jumbo v6, "<br type=\'attribution\'>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string/jumbo v6, "<blockquote class=\"quote\" style=\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\">"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string/jumbo v6, "</blockquote>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string/jumbo v6, "</div>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public setQuotedTextFromDraft(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "htmlText"    # Ljava/lang/CharSequence;
    .param p2, "forward"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/QuotedTextView;->setVisibility(I)V

    .line 298
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/compose/QuotedTextView;->setQuotedText(Ljava/lang/CharSequence;)V

    .line 299
    if-nez p2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/QuotedTextView;->allowQuotedText(Z)V

    .line 302
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/QuotedTextView;->allowRespondInline(Z)V

    .line 303
    return-void
.end method

.method public setQuotedTextFromHtml(Ljava/lang/CharSequence;Z)V
    .locals 5
    .param p1, "htmlText"    # Ljava/lang/CharSequence;
    .param p2, "shouldQuoteText"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 306
    invoke-virtual {p0, v3}, Lcom/kingsoft/mail/compose/QuotedTextView;->setVisibility(I)V

    .line 307
    if-eqz p2, :cond_0

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .local v0, "quotedText":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/QuotedTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 310
    .local v1, "resources":Landroid/content/res/Resources;
    sget-object v2, Lcom/kingsoft/mail/compose/QuotedTextView;->sQuoteBegin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const v2, 0x7f1001dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string/jumbo v2, "<br type=\'attribution\'>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string/jumbo v2, "<blockquote class=\"quote\" style=\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 316
    const-string/jumbo v2, "</blockquote>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string/jumbo v2, "</div>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/compose/QuotedTextView;->setQuotedText(Ljava/lang/CharSequence;)V

    .line 322
    .end local v0    # "quotedText":Ljava/lang/StringBuilder;
    .end local v1    # "resources":Landroid/content/res/Resources;
    :goto_0
    const v2, 0x7f0c0218

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 323
    const v2, 0x7f0c0213

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 324
    const v2, 0x7f0c0217

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 325
    return-void

    .line 320
    :cond_0
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/compose/QuotedTextView;->setQuotedText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setRespondInlineListener(Lcom/kingsoft/mail/compose/QuotedTextView$RespondInlineListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kingsoft/mail/compose/QuotedTextView$RespondInlineListener;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mRespondInlineListener:Lcom/kingsoft/mail/compose/QuotedTextView$RespondInlineListener;

    .line 162
    return-void
.end method

.method public setShowHideListener(Lcom/kingsoft/mail/compose/QuotedTextView$ShowHideQuotedTextListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kingsoft/mail/compose/QuotedTextView$ShowHideQuotedTextListener;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mShowHideListener:Lcom/kingsoft/mail/compose/QuotedTextView$ShowHideQuotedTextListener;

    .line 157
    return-void
.end method

.method public setUpperDividerVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 369
    const v0, 0x7f0c0213

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 371
    return-void

    .line 369
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateCheckedState(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mShowHideCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 184
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/compose/QuotedTextView;->updateQuotedTextVisibility(Z)V

    .line 185
    iget-object v0, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mShowHideListener:Lcom/kingsoft/mail/compose/QuotedTextView$ShowHideQuotedTextListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/kingsoft/mail/compose/QuotedTextView;->mShowHideListener:Lcom/kingsoft/mail/compose/QuotedTextView$ShowHideQuotedTextListener;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/compose/QuotedTextView$ShowHideQuotedTextListener;->onShowHideQuotedText(Z)V

    .line 188
    :cond_0
    return-void
.end method
