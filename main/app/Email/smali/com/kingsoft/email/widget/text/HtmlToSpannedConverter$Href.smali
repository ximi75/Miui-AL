.class Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Href;
.super Ljava/lang/Object;
.source "SpannedHtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Href"
.end annotation


# instance fields
.field public mHref:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 1123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1124
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    .line 1125
    return-void
.end method
