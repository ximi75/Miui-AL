.class public Lcom/kingsoft/emailcommon/utility/MimeUtil;
.super Ljava/lang/Object;
.source "MimeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MimeDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "encodeText"    # Ljava/lang/String;

    .prologue
    .line 18
    if-eqz p0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    :cond_0
    const-string/jumbo p0, ""

    .line 25
    .end local p0    # "encodeText":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 22
    .restart local p0    # "encodeText":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
