.class Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;
.super Ljava/lang/Object;
.source "HtmlTreeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TableFixer"
.end annotation


# static fields
.field static final IN_CAPTION:I = 0x2

.field static final IN_CELL:I = 0x1

.field static final NULL:I


# instance fields
.field private state:I

.field private tables:I

.field final synthetic this$0:Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;


# direct methods
.method constructor <init>(Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;)V
    .locals 1

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->this$0:Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    return-void
.end method

.method private ensureCellState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 289
    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    if-eq v1, v3, :cond_0

    .line 290
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->this$0:Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;

    sget-object v2, Lcom/google/android/mail/common/html/parser/HTML4;->TD_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    # invokes: Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->push(Lcom/google/android/mail/common/html/parser/HTML$Element;)V
    invoke-static {v1, v2}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->access$000(Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;Lcom/google/android/mail/common/html/parser/HTML$Element;)V

    .line 292
    sget-object v1, Lcom/google/android/mail/common/html/parser/HTML4;->TD_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v0

    .line 293
    .local v0, "tdTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->this$0:Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;

    # getter for: Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tree:Lcom/google/android/mail/common/html/parser/HtmlTree;
    invoke-static {v1}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->access$100(Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->addStartTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V

    .line 295
    iput v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    .line 297
    .end local v0    # "tdTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_0
    return-void
.end method

.method private ensureTableState()V
    .locals 3

    .prologue
    .line 276
    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    if-nez v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->this$0:Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;

    sget-object v2, Lcom/google/android/mail/common/html/parser/HTML4;->TABLE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    # invokes: Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->push(Lcom/google/android/mail/common/html/parser/HTML$Element;)V
    invoke-static {v1, v2}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->access$000(Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;Lcom/google/android/mail/common/html/parser/HTML$Element;)V

    .line 279
    sget-object v1, Lcom/google/android/mail/common/html/parser/HTML4;->TABLE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v0

    .line 281
    .local v0, "tableTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->this$0:Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;

    # getter for: Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tree:Lcom/google/android/mail/common/html/parser/HtmlTree;
    invoke-static {v1}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->access$100(Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->addStartTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V

    .line 283
    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    .line 285
    .end local v0    # "tableTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_0
    return-void
.end method


# virtual methods
.method finish()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 270
    iget v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 271
    iget v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 272
    return-void

    :cond_0
    move v0, v2

    .line 270
    goto :goto_0

    :cond_1
    move v1, v2

    .line 271
    goto :goto_1
.end method

.method seeEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;)V
    .locals 4
    .param p1, "endTag"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 238
    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v0

    .line 240
    .local v0, "element":Lcom/google/android/mail/common/html/parser/HTML$Element;
    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getType()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 242
    sget-object v1, Lcom/google/android/mail/common/html/parser/HTML4;->TD_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/mail/common/html/parser/HTML4;->TR_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/mail/common/html/parser/HTML4;->TH_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    :cond_0
    iput v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    .line 257
    :cond_1
    :goto_0
    return-void

    .line 248
    :cond_2
    sget-object v1, Lcom/google/android/mail/common/html/parser/HTML4;->CAPTION_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    iput v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    goto :goto_0

    .line 251
    :cond_3
    sget-object v1, Lcom/google/android/mail/common/html/parser/HTML4;->TABLE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    if-lez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 253
    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    .line 254
    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    if-lez v1, :cond_5

    :goto_2
    iput v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    goto :goto_0

    :cond_4
    move v1, v3

    .line 252
    goto :goto_1

    :cond_5
    move v2, v3

    .line 254
    goto :goto_2
.end method

.method seeTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V
    .locals 3
    .param p1, "tag"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .prologue
    const/4 v2, 0x1

    .line 202
    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v0

    .line 203
    .local v0, "element":Lcom/google/android/mail/common/html/parser/HTML$Element;
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getType()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 205
    sget-object v1, Lcom/google/android/mail/common/html/parser/HTML4;->TABLE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    if-lez v1, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->ensureCellState()V

    .line 209
    :cond_0
    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    .line 210
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    .line 235
    :cond_1
    :goto_0
    return-void

    .line 214
    :cond_2
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->ensureTableState()V

    .line 217
    sget-object v1, Lcom/google/android/mail/common/html/parser/HTML4;->TD_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/google/android/mail/common/html/parser/HTML4;->TH_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    :cond_3
    iput v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    goto :goto_0

    .line 221
    :cond_4
    sget-object v1, Lcom/google/android/mail/common/html/parser/HTML4;->CAPTION_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    goto :goto_0

    .line 226
    :cond_5
    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    if-lez v1, :cond_1

    .line 230
    sget-object v1, Lcom/google/android/mail/common/html/parser/HTML4;->FORM_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->ensureCellState()V

    goto :goto_0
.end method

.method seeText(Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;)V
    .locals 1
    .param p1, "textNode"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .prologue
    .line 262
    iget v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->tables:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->state:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->isWhitespace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->ensureCellState()V

    .line 267
    :cond_0
    return-void
.end method
