.class Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;
.super Ljava/lang/Object;
.source "TextUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/emailcommon/utility/TextUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchTerm"
.end annotation


# instance fields
.field final mLength:I

.field mMatchLength:I

.field mMatchStart:I

.field final mTerm:Ljava/lang/String;

.field final mTermLowerCase:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "term"    # Ljava/lang/String;

    .prologue
    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    .line 667
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    .line 670
    iput-object p1, p0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mTerm:Ljava/lang/String;

    .line 671
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mTermLowerCase:Ljava/lang/String;

    .line 672
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mLength:I

    .line 673
    return-void
.end method
