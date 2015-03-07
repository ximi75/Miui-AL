.class Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;
.super Ljava/lang/Object;
.source "SpannedHtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Font"
.end annotation


# instance fields
.field public mColor:Ljava/lang/String;

.field public mFace:Ljava/lang/String;

.field public mSize:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;
    .param p2, "size"    # Ljava/lang/String;
    .param p3, "face"    # Ljava/lang/String;

    .prologue
    .line 1113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1114
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    .line 1115
    iput-object p2, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;->mSize:Ljava/lang/String;

    .line 1116
    iput-object p3, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    .line 1117
    return-void
.end method
