.class Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;
.super Ljava/lang/Object;
.source "SpannedHtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpanStack"
.end annotation


# instance fields
.field private mSpanLevel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$KeyLevel;",
            ">;"
        }
    .end annotation
.end field

.field private mSpans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->mSpanLevel:Ljava/util/Map;

    .line 1159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->mSpans:Ljava/util/Map;

    .line 1160
    return-void
.end method


# virtual methods
.method public addLevel(Ljava/lang/Object;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 1163
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->mSpanLevel:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1164
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->mSpanLevel:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$KeyLevel;

    .line 1165
    .local v0, "newLevel":Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$KeyLevel;
    iget v1, v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$KeyLevel;->mLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$KeyLevel;->mLevel:I

    .line 1166
    iget v1, v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$KeyLevel;->mLevel:I

    .line 1169
    .end local v0    # "newLevel":Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$KeyLevel;
    :goto_0
    return v1

    .line 1168
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->mSpanLevel:Ljava/util/Map;

    new-instance v3, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$KeyLevel;

    invoke-direct {v3, v1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$KeyLevel;-><init>(I)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addSpan(Ljava/lang/Object;Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "span"    # Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;

    .prologue
    .line 1184
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->mSpans:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1185
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->mSpans:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    :goto_0
    return-void

    .line 1187
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    .local v0, "lstSpan":Ljava/util/ArrayList;
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->mSpans:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->mSpanLevel:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1199
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->mSpans:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1200
    return-void
.end method

.method public getSpans(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->mSpans:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public subLevel(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1174
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->mSpanLevel:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1175
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->mSpanLevel:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$KeyLevel;

    .line 1176
    .local v0, "newLevel":Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$KeyLevel;
    iget v1, v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$KeyLevel;->mLevel:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$KeyLevel;->mLevel:I

    .line 1177
    iget v1, v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$KeyLevel;->mLevel:I

    .line 1179
    .end local v0    # "newLevel":Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$KeyLevel;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
