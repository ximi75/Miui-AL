.class public Lcom/kingsoft/common/Rfc822InputFilter;
.super Ljava/lang/Object;
.source "Rfc822InputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/4 v2, 0x0

    .line 38
    sub-int v4, p3, p2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    .line 73
    :cond_0
    :goto_0
    :sswitch_0
    return-object v2

    .line 44
    :cond_1
    move v3, p5

    .line 45
    .local v3, "scanBack":I
    const/4 v1, 0x0

    .line 46
    .local v1, "dotFound":Z
    :goto_1
    if-lez v3, :cond_0

    .line 47
    add-int/lit8 v3, v3, -0x1

    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 48
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 50
    :sswitch_1
    const/4 v1, 0x1

    .line 51
    goto :goto_1

    .line 55
    :sswitch_2
    if-eqz v1, :cond_0

    .line 60
    instance-of v4, p1, Landroid/text/Spanned;

    if-eqz v4, :cond_2

    .line 61
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v4, ","

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 62
    .local v2, "sb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 65
    .end local v2    # "sb":Landroid/text/SpannableStringBuilder;
    :cond_2
    const-string/jumbo v2, ", "

    goto :goto_0

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x2e -> :sswitch_1
        0x40 -> :sswitch_2
    .end sparse-switch
.end method