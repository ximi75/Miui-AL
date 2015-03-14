.class Lcom/kingsoft/mail/lib/base/CharEscaper$1;
.super Ljava/lang/Object;
.source "CharEscaper.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/lib/base/CharEscaper;->escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/lib/base/CharEscaper;

.field final synthetic val$out:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/lib/base/CharEscaper;Ljava/lang/Appendable;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/kingsoft/mail/lib/base/CharEscaper$1;->this$0:Lcom/kingsoft/mail/lib/base/CharEscaper;

    iput-object p2, p0, Lcom/kingsoft/mail/lib/base/CharEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 6
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v5, p0, Lcom/kingsoft/mail/lib/base/CharEscaper$1;->this$0:Lcom/kingsoft/mail/lib/base/CharEscaper;

    invoke-virtual {v5, p1}, Lcom/kingsoft/mail/lib/base/CharEscaper;->escape(C)[C

    move-result-object v2

    .line 96
    .local v2, "escaped":[C
    if-nez v2, :cond_1

    .line 97
    iget-object v5, p0, Lcom/kingsoft/mail/lib/base/CharEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v5, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 103
    :cond_0
    return-object p0

    .line 99
    :cond_1
    move-object v0, v2

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-char v1, v0, v3

    .line 100
    .local v1, "e":C
    iget-object v5, p0, Lcom/kingsoft/mail/lib/base/CharEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v5, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kingsoft/mail/lib/base/CharEscaper$1;->val$out:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/kingsoft/mail/lib/base/CharEscaper$1;->this$0:Lcom/kingsoft/mail/lib/base/CharEscaper;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/lib/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 86
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/kingsoft/mail/lib/base/CharEscaper$1;->val$out:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/kingsoft/mail/lib/base/CharEscaper$1;->this$0:Lcom/kingsoft/mail/lib/base/CharEscaper;

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/lib/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 91
    return-object p0
.end method
