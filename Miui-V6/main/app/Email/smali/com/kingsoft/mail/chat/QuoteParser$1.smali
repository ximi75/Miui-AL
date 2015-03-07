.class final Lcom/kingsoft/mail/chat/QuoteParser$1;
.super Ljava/lang/Object;
.source "QuoteParser.java"

# interfaces
.implements Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/QuoteParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance()Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/kingsoft/mail/chat/QuoteParser$BodyPlainTextConverter;

    # getter for: Lcom/kingsoft/mail/chat/QuoteParser;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/kingsoft/mail/chat/QuoteParser;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/chat/QuoteParser$BodyPlainTextConverter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
