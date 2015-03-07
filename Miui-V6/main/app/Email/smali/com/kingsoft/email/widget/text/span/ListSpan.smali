.class public Lcom/kingsoft/email/widget/text/span/ListSpan;
.super Ljava/lang/Object;
.source "ListSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/widget/text/span/ListSpan$1;,
        Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;
    }
.end annotation


# instance fields
.field private mAutoNumberingType:Lcom/kingsoft/email/widget/text/span/AutoNumberingType;

.field private mBulletChar:Ljava/lang/String;

.field private final mFirst:I

.field private mListType:Lcom/kingsoft/email/widget/text/span/ListType;

.field private final mRest:I


# direct methods
.method private constructor <init>(II)V
    .locals 1
    .param p1, "first"    # I
    .param p2, "rest"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/kingsoft/email/widget/text/span/ListType;->UNNUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mListType:Lcom/kingsoft/email/widget/text/span/ListType;

    .line 38
    sget-object v0, Lcom/kingsoft/email/widget/text/span/AutoNumberingType;->BulletArabicPeriod:Lcom/kingsoft/email/widget/text/span/AutoNumberingType;

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mAutoNumberingType:Lcom/kingsoft/email/widget/text/span/AutoNumberingType;

    .line 39
    const-string/jumbo v0, "\u2022"

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mBulletChar:Ljava/lang/String;

    .line 42
    iput p1, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mFirst:I

    .line 43
    iput p2, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mRest:I

    .line 44
    return-void
.end method

.method synthetic constructor <init>(IILcom/kingsoft/email/widget/text/span/ListSpan$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/kingsoft/email/widget/text/span/ListSpan$1;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/email/widget/text/span/ListSpan;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/kingsoft/email/widget/text/span/ListType;->UNNUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mListType:Lcom/kingsoft/email/widget/text/span/ListType;

    .line 38
    sget-object v0, Lcom/kingsoft/email/widget/text/span/AutoNumberingType;->BulletArabicPeriod:Lcom/kingsoft/email/widget/text/span/AutoNumberingType;

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mAutoNumberingType:Lcom/kingsoft/email/widget/text/span/AutoNumberingType;

    .line 39
    const-string/jumbo v0, "\u2022"

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mBulletChar:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mFirst:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mRest:I

    .line 73
    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "layout"    # Landroid/text/Layout;

    .prologue
    .line 87
    return-void
.end method

.method public getAutoNumberingType()Lcom/kingsoft/email/widget/text/span/AutoNumberingType;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mAutoNumberingType:Lcom/kingsoft/email/widget/text/span/AutoNumberingType;

    return-object v0
.end method

.method public getBulletChar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mBulletChar:Ljava/lang/String;

    return-object v0
.end method

.method public getLeadingMargin(Z)I
    .locals 1
    .param p1, "first"    # Z

    .prologue
    .line 81
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mFirst:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mRest:I

    goto :goto_0
.end method

.method public getListType()Lcom/kingsoft/email/widget/text/span/ListType;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mListType:Lcom/kingsoft/email/widget/text/span/ListType;

    return-object v0
.end method

.method public setAutoNumberingType(Lcom/kingsoft/email/widget/text/span/AutoNumberingType;)V
    .locals 0
    .param p1, "autoNumberingType"    # Lcom/kingsoft/email/widget/text/span/AutoNumberingType;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mAutoNumberingType:Lcom/kingsoft/email/widget/text/span/AutoNumberingType;

    .line 60
    return-void
.end method

.method public setBulletChar(Ljava/lang/String;)V
    .locals 0
    .param p1, "bulletChar"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mBulletChar:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setListType(Lcom/kingsoft/email/widget/text/span/ListType;)V
    .locals 0
    .param p1, "listType"    # Lcom/kingsoft/email/widget/text/span/ListType;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mListType:Lcom/kingsoft/email/widget/text/span/ListType;

    .line 52
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 76
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mFirst:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/ListSpan;->mRest:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return-void
.end method
