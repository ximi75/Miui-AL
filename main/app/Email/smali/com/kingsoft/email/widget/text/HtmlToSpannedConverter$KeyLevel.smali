.class Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$KeyLevel;
.super Ljava/lang/Object;
.source "SpannedHtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyLevel"
.end annotation


# instance fields
.field public mLevel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 1207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1208
    iput p1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$KeyLevel;->mLevel:I

    .line 1209
    return-void
.end method
