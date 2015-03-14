.class public Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;
.super Ljava/lang/Object;
.source "SnippetUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/emailcommon/utility/SnippetUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnippetInfo"
.end annotation


# instance fields
.field private isBodyCalc:Z

.field private mNoQuoteText:Ljava/lang/StringBuffer;

.field private mQuoteIdx:J

.field private snippet:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBodyCalc()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->isBodyCalc:Z

    return v0
.end method

.method public getNoQuoteText()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->mNoQuoteText:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getQuoteIdx()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->mQuoteIdx:J

    return-wide v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->snippet:Ljava/lang/String;

    return-object v0
.end method

.method public setBodyCalc(Z)V
    .locals 0
    .param p1, "bodyCalc"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->isBodyCalc:Z

    .line 78
    return-void
.end method

.method public setNoQuoteText(Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/StringBuffer;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->mNoQuoteText:Ljava/lang/StringBuffer;

    .line 94
    return-void
.end method

.method public setQuoteIdx(J)V
    .locals 0
    .param p1, "mQuoteIdx"    # J

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->mQuoteIdx:J

    .line 102
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 0
    .param p1, "snippet"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/kingsoft/emailcommon/utility/SnippetUtility$SnippetInfo;->snippet:Ljava/lang/String;

    .line 86
    return-void
.end method
