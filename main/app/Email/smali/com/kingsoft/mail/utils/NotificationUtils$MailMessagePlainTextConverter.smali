.class public Lcom/kingsoft/mail/utils/NotificationUtils$MailMessagePlainTextConverter;
.super Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/utils/NotificationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MailMessagePlainTextConverter"
.end annotation


# static fields
.field private static final ELIDED_TEXT_ATTRIBUTE:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_CLASS_VALUE:Ljava/lang/String; = "elided-text"

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_NAME:Ljava/lang/String; = "class"

.field private static final ELIDED_TEXT_ELEMENT_NAME:Ljava/lang/String; = "div"

.field private static final ELIDED_TEXT_REPLACEMENT_NODE:Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;


# instance fields
.field private mEndNodeElidedTextBlock:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1771
    new-instance v0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    const-string/jumbo v1, "class"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/mail/common/html/parser/HTML$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/utils/NotificationUtils$MailMessagePlainTextConverter;->ELIDED_TEXT_ATTRIBUTE:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    .line 1774
    sget-object v0, Lcom/google/android/mail/common/html/parser/HTML4;->BR_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-static {v0, v3, v3, v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createSelfTerminatingTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/utils/NotificationUtils$MailMessagePlainTextConverter;->ELIDED_TEXT_REPLACEMENT_NODE:Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1765
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;-><init>()V

    .line 1777
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/mail/utils/NotificationUtils$MailMessagePlainTextConverter;->mEndNodeElidedTextBlock:I

    return-void
.end method


# virtual methods
.method public addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)Z
    .locals 9
    .param p1, "n"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    .param p2, "nodeNum"    # I
    .param p3, "endNum"    # I

    .prologue
    const/4 v6, 0x1

    .line 1782
    iget v7, p0, Lcom/kingsoft/mail/utils/NotificationUtils$MailMessagePlainTextConverter;->mEndNodeElidedTextBlock:I

    if-ge p2, v7, :cond_1

    .line 1814
    :cond_0
    :goto_0
    return v6

    .line 1784
    :cond_1
    iget v7, p0, Lcom/kingsoft/mail/utils/NotificationUtils$MailMessagePlainTextConverter;->mEndNodeElidedTextBlock:I

    if-ne p2, v7, :cond_2

    .line 1785
    sget-object v7, Lcom/kingsoft/mail/utils/NotificationUtils$MailMessagePlainTextConverter;->ELIDED_TEXT_REPLACEMENT_NODE:Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    invoke-super {p0, v7, p2, p3}, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)Z

    goto :goto_0

    .line 1790
    :cond_2
    instance-of v7, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    if-eqz v7, :cond_5

    .line 1791
    const/4 v2, 0x0

    .local v2, "foundElidedTextTag":Z
    move-object v4, p1

    .line 1792
    check-cast v4, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .line 1793
    .local v4, "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    invoke-virtual {v4}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v3

    .line 1794
    .local v3, "htmlElement":Lcom/google/android/mail/common/html/parser/HTML$Element;
    const-string/jumbo v7, "div"

    invoke-virtual {v3}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1796
    sget-object v7, Lcom/kingsoft/mail/utils/NotificationUtils$MailMessagePlainTextConverter;->ELIDED_TEXT_ATTRIBUTE:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    invoke-virtual {v4, v7}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getAttributes(Lcom/google/android/mail/common/html/parser/HTML$Attribute;)Ljava/util/List;

    move-result-object v1

    .line 1798
    .local v1, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    .line 1799
    .local v0, "attribute":Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    const-string/jumbo v7, "elided-text"

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1802
    iput p3, p0, Lcom/kingsoft/mail/utils/NotificationUtils$MailMessagePlainTextConverter;->mEndNodeElidedTextBlock:I

    .line 1803
    const/4 v2, 0x1

    .line 1809
    .end local v0    # "attribute":Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    .end local v1    # "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    if-nez v2, :cond_0

    .line 1814
    .end local v2    # "foundElidedTextTag":Z
    .end local v3    # "htmlElement":Lcom/google/android/mail/common/html/parser/HTML$Element;
    .end local v4    # "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)Z

    move-result v6

    goto :goto_0
.end method
