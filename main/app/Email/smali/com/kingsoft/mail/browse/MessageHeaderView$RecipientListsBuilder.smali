.class Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;
.super Ljava/lang/Object;
.source "MessageHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/MessageHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecipientListsBuilder"
.end annotation


# instance fields
.field private final mAddressCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/providers/Address;",
            ">;"
        }
    .end annotation
.end field

.field private final mBuilder:Landroid/text/SpannableStringBuilder;

.field private final mContext:Landroid/content/Context;

.field private final mDelimiter:Ljava/lang/CharSequence;

.field mFirst:Z

.field private final mMatcher:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

.field private final mMe:Ljava/lang/String;

.field private final mMyName:Ljava/lang/String;

.field mRecipientCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/kingsoft/mail/utils/VeiledAddressMatcher;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "me"    # Ljava/lang/String;
    .param p3, "myName"    # Ljava/lang/String;
    .param p5, "matcher"    # Lcom/kingsoft/mail/utils/VeiledAddressMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/providers/Address;",
            ">;",
            "Lcom/kingsoft/mail/utils/VeiledAddressMatcher;",
            ")V"
        }
    .end annotation

    .prologue
    .line 877
    .local p4, "addressCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/mail/providers/Address;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 873
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mRecipientCount:I

    .line 874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mFirst:Z

    .line 878
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mContext:Landroid/content/Context;

    .line 879
    iput-object p2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mMe:Ljava/lang/String;

    .line 880
    iput-object p3, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mMyName:Ljava/lang/String;

    .line 881
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f1001a4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mDelimiter:Ljava/lang/CharSequence;

    .line 882
    iput-object p4, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mAddressCache:Ljava/util/Map;

    .line 883
    iput-object p5, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mMatcher:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    .line 884
    return-void
.end method

.method private getSummaryTextForHeading(Ljava/lang/String;I[Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "myEmail"    # Ljava/lang/String;
    .param p2, "headingStrRes"    # I
    .param p3, "rawAddrs"    # [Ljava/lang/String;
    .param p4, "maxToCopy"    # I

    .prologue
    const/4 v10, 0x0

    .line 904
    if-eqz p3, :cond_0

    array-length v7, p3

    if-eqz v7, :cond_0

    if-nez p4, :cond_2

    .line 905
    :cond_0
    const/4 v6, 0x0

    .line 942
    :cond_1
    return-object v6

    .line 908
    :cond_2
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 909
    .local v6, "ssb":Landroid/text/SpannableStringBuilder;
    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v6, v7, v10, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 912
    array-length v7, p3

    invoke-static {p4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 913
    .local v4, "len":I
    const/4 v2, 0x1

    .line 914
    .local v2, "first":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 915
    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mAddressCache:Ljava/util/Map;

    aget-object v8, p3, v3

    invoke-static {v7, v8}, Lcom/kingsoft/mail/browse/MessageHeaderView;->getAddress(Ljava/util/Map;Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v0

    .line 916
    .local v0, "email":Lcom/kingsoft/mail/providers/Address;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 918
    .local v1, "emailAddress":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Address;->getSimplifiedName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v7, v8}, Lcom/kingsoft/mail/utils/ContactHelper;->getContactNameByEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 934
    .local v5, "name":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 935
    const/4 v2, 0x0

    .line 939
    :goto_1
    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 914
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 937
    :cond_3
    iget-object v7, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mDelimiter:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public append([Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "recipients"    # [Ljava/lang/String;
    .param p2, "headingRes"    # I
    .param p3, "myEmail"    # Ljava/lang/String;

    .prologue
    .line 887
    iget v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mRecipientCount:I

    rsub-int/lit8 v0, v2, 0x32

    .line 888
    .local v0, "addLimit":I
    invoke-direct {p0, p3, p2, p1, v0}, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->getSummaryTextForHeading(Ljava/lang/String;I[Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 889
    .local v1, "recipientList":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 892
    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mFirst:Z

    if-eqz v2, :cond_1

    .line 893
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mFirst:Z

    .line 897
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 898
    iget v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mRecipientCount:I

    array-length v3, p1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mRecipientCount:I

    .line 900
    :cond_0
    return-void

    .line 895
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    const-string/jumbo v3, "   "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method public build()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$RecipientListsBuilder;->mBuilder:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method
