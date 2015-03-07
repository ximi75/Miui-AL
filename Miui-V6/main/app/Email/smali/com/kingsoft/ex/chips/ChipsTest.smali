.class public Lcom/kingsoft/ex/chips/ChipsTest;
.super Landroid/test/AndroidTestCase;
.source "ChipsTest.java"


# annotations
.annotation runtime Landroid/test/suitebuilder/annotation/SmallTest;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/ex/chips/ChipsTest$TestBaseRecipientAdapter;,
        Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;,
        Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;
    }
.end annotation


# instance fields
.field private mEditable:Landroid/text/Editable;

.field private mMockEntries:[Lcom/kingsoft/ex/chips/RecipientEntry;

.field private mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

.field private mTokenizer:Landroid/text/util/Rfc822Tokenizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/ex/chips/ChipsTest;)Landroid/text/util/Rfc822Tokenizer;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/ChipsTest;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/kingsoft/ex/chips/ChipsTest;Landroid/text/util/Rfc822Tokenizer;)Landroid/text/util/Rfc822Tokenizer;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/ChipsTest;
    .param p1, "x1"    # Landroid/text/util/Rfc822Tokenizer;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/kingsoft/ex/chips/ChipsTest;)[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/ChipsTest;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/ex/chips/ChipsTest;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/ChipsTest;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createChipBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/ex/chips/ChipsTest;)Landroid/text/Editable;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/ChipsTest;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method private attemptCreateReplacementChipOriginalText(Ljava/lang/String;)V
    .locals 5
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 991
    new-instance v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 993
    .local v0, "view":Lcom/kingsoft/ex/chips/RecipientEditTextView;
    invoke-virtual {v0, p1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 994
    iget-object v1, v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createReplacementChip(IILandroid/text/Editable;Z)V

    .line 998
    const-string/jumbo v1, ",\\s*$"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v0, Lcom/kingsoft/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v1}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    return-void
.end method

.method private createChipBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 922
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 923
    .local v0, "drawable":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private createTestMoreItem()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 927
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 928
    .local v0, "view":Landroid/widget/TextView;
    const-string/jumbo v1, "<xliff:g id=\'count\'>%1$s</xliff:g> more..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    return-object v0
.end method

.method private createViewForTesting()Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;
    .locals 3

    .prologue
    .line 139
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 140
    new-instance v0, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;-><init>(Lcom/kingsoft/ex/chips/ChipsTest;Landroid/content/Context;)V

    .line 141
    .local v0, "view":Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;
    new-instance v1, Lcom/kingsoft/ex/chips/ChipsTest$TestBaseRecipientAdapter;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/kingsoft/ex/chips/ChipsTest$TestBaseRecipientAdapter;-><init>(Lcom/kingsoft/ex/chips/ChipsTest;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    return-object v0
.end method

.method private populateMocks(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 933
    new-array v1, p1, [Lcom/kingsoft/ex/chips/RecipientEntry;

    iput-object v1, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockEntries:[Lcom/kingsoft/ex/chips/RecipientEntry;

    .line 934
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 935
    iget-object v1, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockEntries:[Lcom/kingsoft/ex/chips/RecipientEntry;

    const-string/jumbo v2, "user"

    const-string/jumbo v3, "user@username.com"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v2

    aput-object v2, v1, v0

    .line 934
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 938
    :cond_0
    new-array v1, p1, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iput-object v1, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 939
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 940
    iget-object v1, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    new-instance v2, Lcom/kingsoft/ex/chips/recipientchip/VisibleRecipientChip;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockEntries:[Lcom/kingsoft/ex/chips/RecipientEntry;

    aget-object v4, v4, v0

    invoke-direct {v2, v3, v4}, Lcom/kingsoft/ex/chips/recipientchip/VisibleRecipientChip;-><init>(Landroid/graphics/drawable/Drawable;Lcom/kingsoft/ex/chips/RecipientEntry;)V

    aput-object v2, v1, v0

    .line 939
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 942
    :cond_1
    return-void
.end method

.method private testCreateReplacementChipOriginalText(Ljava/lang/String;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 985
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingsoft/ex/chips/ChipsTest;->attemptCreateReplacementChipOriginalText(Ljava/lang/String;)V

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingsoft/ex/chips/ChipsTest;->attemptCreateReplacementChipOriginalText(Ljava/lang/String;)V

    .line 988
    return-void
.end method


# virtual methods
.method public testCountTokens()V
    .locals 8

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createViewForTesting()Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;

    move-result-object v5

    .line 263
    .local v5, "view":Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createTestMoreItem()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setMoreItem(Landroid/widget/TextView;)V

    .line 264
    iget-object v6, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v7, "FIRST"

    invoke-virtual {v6, v7}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 265
    .local v1, "first":Ljava/lang/String;
    iget-object v6, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v7, "SECOND"

    invoke-virtual {v6, v7}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 266
    .local v3, "second":Ljava/lang/String;
    iget-object v6, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v7, "THIRD"

    invoke-virtual {v6, v7}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 267
    .local v4, "third":Ljava/lang/String;
    const-string/jumbo v2, "FOURTH,"

    .line 268
    .local v2, "fourth":Ljava/lang/String;
    const-string/jumbo v0, "FIFTH,"

    .line 269
    .local v0, "fifth":Ljava/lang/String;
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v6, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 270
    iget-object v6, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 271
    iget-object v6, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v5, v6}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->countTokens(Landroid/text/Editable;)I

    move-result v6

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 272
    return-void
.end method

.method public testCreateDisplayText()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 146
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createViewForTesting()Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;

    move-result-object v6

    .line 147
    .local v6, "view":Lcom/kingsoft/ex/chips/RecipientEditTextView;
    const-string/jumbo v7, "User Name, Jr"

    const-string/jumbo v8, "user@username.com"

    invoke-static {v7, v8, v9}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v3

    .line 149
    .local v3, "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    invoke-virtual {v6, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createAddressText(Lcom/kingsoft/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "testAddress":Ljava/lang/String;
    invoke-virtual {v6, v3}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createChipDisplayText(Lcom/kingsoft/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "testDisplay":Ljava/lang/String;
    const-string/jumbo v7, "Expected a properly formatted RFC email address"

    const-string/jumbo v8, "\"User Name, Jr\" <user@username.com>, "

    invoke-static {v7, v8, v4}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v7, "Expected a displayable name"

    const-string/jumbo v8, "User Name, Jr"

    invoke-static {v7, v8, v5}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string/jumbo v7, "user@username.com, "

    invoke-static {v7, v9}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v0

    .line 157
    .local v0, "alreadyFormatted":Lcom/kingsoft/ex/chips/RecipientEntry;
    invoke-virtual {v6, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createAddressText(Lcom/kingsoft/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-virtual {v6, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createChipDisplayText(Lcom/kingsoft/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v5

    .line 159
    const-string/jumbo v7, "Expected a properly formatted RFC email address"

    const-string/jumbo v8, "<user@username.com>, "

    invoke-static {v7, v8, v4}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v7, "Expected a displayable name"

    const-string/jumbo v8, "user@username.com"

    invoke-static {v7, v8, v5}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v7, "user@username.com,"

    invoke-static {v7, v9}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v1

    .line 165
    .local v1, "alreadyFormattedNoSpace":Lcom/kingsoft/ex/chips/RecipientEntry;
    invoke-virtual {v6, v1}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createAddressText(Lcom/kingsoft/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v4

    .line 166
    const-string/jumbo v7, "Expected a properly formatted RFC email address"

    const-string/jumbo v8, "<user@username.com>, "

    invoke-static {v7, v8, v4}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v7, "User Name"

    const-string/jumbo v8, "\"User Name, Jr\" <user@username.com>"

    invoke-static {v7, v8, v9}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v2

    .line 171
    .local v2, "alreadyNamed":Lcom/kingsoft/ex/chips/RecipientEntry;
    invoke-virtual {v6, v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createAddressText(Lcom/kingsoft/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {v6, v2}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createChipDisplayText(Lcom/kingsoft/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v5

    .line 173
    const-string/jumbo v7, "Expected address that used the name not the excess address name"

    const-string/jumbo v8, "User Name <user@username.com>, "

    invoke-static {v7, v8, v4}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string/jumbo v7, "Expected a displayable name"

    const-string/jumbo v8, "User Name"

    invoke-static {v7, v8, v5}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public testCreateReplacementChipOriginalText()V
    .locals 1

    .prologue
    .line 968
    const-string/jumbo v0, "\"Android User\" <android@example.com>,"

    invoke-direct {p0, v0}, Lcom/kingsoft/ex/chips/ChipsTest;->testCreateReplacementChipOriginalText(Ljava/lang/String;)V

    .line 970
    const-string/jumbo v0, "\"Android User\" android@example.com,"

    invoke-direct {p0, v0}, Lcom/kingsoft/ex/chips/ChipsTest;->testCreateReplacementChipOriginalText(Ljava/lang/String;)V

    .line 972
    const-string/jumbo v0, "\"Android User\","

    invoke-direct {p0, v0}, Lcom/kingsoft/ex/chips/ChipsTest;->testCreateReplacementChipOriginalText(Ljava/lang/String;)V

    .line 974
    const-string/jumbo v0, "Android User <android@example.com>,"

    invoke-direct {p0, v0}, Lcom/kingsoft/ex/chips/ChipsTest;->testCreateReplacementChipOriginalText(Ljava/lang/String;)V

    .line 976
    const-string/jumbo v0, "Android User,"

    invoke-direct {p0, v0}, Lcom/kingsoft/ex/chips/ChipsTest;->testCreateReplacementChipOriginalText(Ljava/lang/String;)V

    .line 978
    const-string/jumbo v0, "<android@example.com>,"

    invoke-direct {p0, v0}, Lcom/kingsoft/ex/chips/ChipsTest;->testCreateReplacementChipOriginalText(Ljava/lang/String;)V

    .line 980
    const-string/jumbo v0, "android@example.com,"

    invoke-direct {p0, v0}, Lcom/kingsoft/ex/chips/ChipsTest;->testCreateReplacementChipOriginalText(Ljava/lang/String;)V

    .line 981
    return-void
.end method

.method public testCreateTokenizedEntryForPhone()V
    .locals 15

    .prologue
    .line 1003
    const-string/jumbo v10, "[^\\d]*888[^\\d]*555[^\\d]*1234[^\\d]*"

    .line 1004
    .local v10, "phonePattern":Ljava/lang/String;
    const-string/jumbo v7, "8885551234"

    .line 1005
    .local v7, "phone1":Ljava/lang/String;
    const-string/jumbo v8, "888-555-1234"

    .line 1006
    .local v8, "phone2":Ljava/lang/String;
    const-string/jumbo v9, "(888) 555-1234"

    .line 1008
    .local v9, "phone3":Ljava/lang/String;
    new-instance v11, Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/kingsoft/ex/chips/RecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1009
    .local v11, "view":Lcom/kingsoft/ex/chips/RecipientEditTextView;
    new-instance v0, Lcom/kingsoft/ex/chips/ChipsTest$TestBaseRecipientAdapter;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->getContext()Landroid/content/Context;

    move-result-object v12

    const/16 v13, 0xa

    const/4 v14, 0x1

    invoke-direct {v0, p0, v12, v13, v14}, Lcom/kingsoft/ex/chips/ChipsTest$TestBaseRecipientAdapter;-><init>(Lcom/kingsoft/ex/chips/ChipsTest;Landroid/content/Context;II)V

    .line 1011
    .local v0, "adapter":Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
    invoke-virtual {v11, v0}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1013
    const-string/jumbo v12, "8885551234"

    invoke-virtual {v11, v12}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v4

    .line 1014
    .local v4, "entry1":Lcom/kingsoft/ex/chips/RecipientEntry;
    invoke-virtual {v4}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, "destination1":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "8885551234 failed with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "[^\\d]*888[^\\d]*555[^\\d]*1234[^\\d]*"

    invoke-static {v13, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v13

    invoke-static {v12, v13}, Lcom/kingsoft/ex/chips/ChipsTest;->assertTrue(Ljava/lang/String;Z)V

    .line 1018
    const-string/jumbo v12, "888-555-1234"

    invoke-virtual {v11, v12}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v5

    .line 1019
    .local v5, "entry2":Lcom/kingsoft/ex/chips/RecipientEntry;
    invoke-virtual {v5}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v2

    .line 1020
    .local v2, "destination2":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "888-555-1234 failed with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "[^\\d]*888[^\\d]*555[^\\d]*1234[^\\d]*"

    invoke-static {v13, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v13

    invoke-static {v12, v13}, Lcom/kingsoft/ex/chips/ChipsTest;->assertTrue(Ljava/lang/String;Z)V

    .line 1023
    const-string/jumbo v12, "(888) 555-1234"

    invoke-virtual {v11, v12}, Lcom/kingsoft/ex/chips/RecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v6

    .line 1024
    .local v6, "entry3":Lcom/kingsoft/ex/chips/RecipientEntry;
    invoke-virtual {v6}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v3

    .line 1025
    .local v3, "destination3":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "(888) 555-1234 failed with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "[^\\d]*888[^\\d]*555[^\\d]*1234[^\\d]*"

    invoke-static {v13, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v13

    invoke-static {v12, v13}, Lcom/kingsoft/ex/chips/ChipsTest;->assertTrue(Ljava/lang/String;Z)V

    .line 1027
    return-void
.end method

.method public testGetLastChip()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 895
    const/4 v10, 0x3

    invoke-direct {p0, v10}, Lcom/kingsoft/ex/chips/ChipsTest;->populateMocks(I)V

    .line 896
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createViewForTesting()Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;

    move-result-object v9

    .line 897
    .local v9, "view":Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createTestMoreItem()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setMoreItem(Landroid/widget/TextView;)V

    .line 898
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createChipBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setChipBackground(Landroid/graphics/drawable/Drawable;)V

    .line 899
    const/16 v10, 0x30

    invoke-virtual {v9, v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setChipHeight(I)V

    .line 900
    iget-object v10, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v11, "FIRST"

    invoke-virtual {v10, v11}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 901
    .local v0, "first":Ljava/lang/String;
    iget-object v10, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v11, "SECOND"

    invoke-virtual {v10, v11}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 902
    .local v3, "second":Ljava/lang/String;
    iget-object v10, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v11, "THIRD"

    invoke-virtual {v10, v11}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 903
    .local v6, "third":Ljava/lang/String;
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v10, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 904
    iget-object v10, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 907
    iget-object v10, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 908
    .local v2, "firstStart":I
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int v1, v2, v10

    .line 909
    .local v1, "firstEnd":I
    iget-object v10, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 910
    .local v5, "secondStart":I
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int v4, v5, v10

    .line 911
    .local v4, "secondEnd":I
    iget-object v10, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 912
    .local v8, "thirdStart":I
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int v7, v8, v10

    .line 913
    .local v7, "thirdEnd":I
    iget-object v10, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v12, v12

    add-int/lit8 v12, v12, -0x3

    aget-object v11, v11, v12

    invoke-interface {v10, v11, v2, v1, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 914
    iget-object v10, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v12, v12

    add-int/lit8 v12, v12, -0x2

    aget-object v11, v11, v12

    invoke-interface {v10, v11, v5, v4, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 915
    iget-object v10, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    aget-object v11, v11, v12

    invoke-interface {v10, v11, v8, v7, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 916
    invoke-virtual {v9}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->getLastChip()Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v10

    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    aget-object v11, v11, v12

    invoke-static {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 917
    iget-object v10, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const-string/jumbo v11, "extra"

    invoke-interface {v10, v11}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 918
    invoke-virtual {v9}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->getLastChip()Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v10

    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    aget-object v11, v11, v12

    invoke-static {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 919
    return-void
.end method

.method public testGetPastTerminators()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 848
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createViewForTesting()Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;

    move-result-object v1

    .line 849
    .local v1, "view":Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createTestMoreItem()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setMoreItem(Landroid/widget/TextView;)V

    .line 850
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createChipBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setChipBackground(Landroid/graphics/drawable/Drawable;)V

    .line 851
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setChipHeight(I)V

    .line 852
    const-string/jumbo v0, "test"

    .line 853
    .local v0, "test":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v2, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 854
    iget-object v2, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v2, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 855
    iget-object v2, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    iget-object v3, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->movePastTerminators(I)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 858
    const-string/jumbo v0, "test,"

    .line 859
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v2, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 860
    iget-object v2, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v2, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 861
    iget-object v2, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    iget-object v3, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->movePastTerminators(I)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 864
    const-string/jumbo v0, "test, "

    .line 865
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v2, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 866
    iget-object v2, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v2, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 867
    iget-object v2, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    iget-object v3, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->movePastTerminators(I)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 870
    const-string/jumbo v0, "test;"

    .line 871
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v2, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 872
    iget-object v2, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v2, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 873
    iget-object v2, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    iget-object v3, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->movePastTerminators(I)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 876
    const-string/jumbo v0, "test; "

    .line 877
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v2, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 878
    iget-object v2, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v2, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 879
    iget-object v2, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    iget-object v3, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->movePastTerminators(I)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 881
    return-void
.end method

.method public testHandlePaste()V
    .locals 15

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createViewForTesting()Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;

    move-result-object v10

    .line 724
    .local v10, "view":Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createTestMoreItem()Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setMoreItem(Landroid/widget/TextView;)V

    .line 725
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createChipBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setChipBackground(Landroid/graphics/drawable/Drawable;)V

    .line 726
    const/16 v11, 0x30

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setChipHeight(I)V

    .line 727
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 728
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const-string/jumbo v12, "user@user.com"

    invoke-interface {v11, v12}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 729
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setSelection(I)V

    .line 730
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->handlePaste()Ljava/util/ArrayList;

    .line 731
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    const-class v14, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 732
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "user@user.com"

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 737
    const-string/jumbo v9, "user@user.com "

    .line 738
    .local v9, "tokenizedUser":Ljava/lang/String;
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11, v9}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 739
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setSelection(I)V

    .line 740
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->handlePaste()Ljava/util/ArrayList;

    .line 741
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    const-class v14, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 742
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 747
    const-string/jumbo v9, "user@user.com;"

    .line 748
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11, v9}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 749
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setSelection(I)V

    .line 750
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->handlePaste()Ljava/util/ArrayList;

    .line 751
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    const-class v14, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 756
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 757
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const-string/jumbo v12, "user1,user2@user.com"

    invoke-interface {v11, v12}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 758
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setSelection(I)V

    .line 759
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->handlePaste()Ljava/util/ArrayList;

    .line 760
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    const-class v14, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 761
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "user2@user.com"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const-class v14, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 763
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "<user1>, user2@user.com"

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const/4 v11, 0x3

    invoke-direct {p0, v11}, Lcom/kingsoft/ex/chips/ChipsTest;->populateMocks(I)V

    .line 768
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v12, "FIRST"

    invoke-virtual {v11, v12}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 769
    .local v0, "first":Ljava/lang/String;
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v12, "SECOND"

    invoke-virtual {v11, v12}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 770
    .local v3, "second":Ljava/lang/String;
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v12, "THIRD"

    invoke-virtual {v11, v12}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 771
    .local v6, "third":Ljava/lang/String;
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 772
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 773
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setSelection(I)V

    .line 774
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 775
    .local v2, "firstStart":I
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v1, v2, v11

    .line 776
    .local v1, "firstEnd":I
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 777
    .local v5, "secondStart":I
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v4, v5, v11

    .line 778
    .local v4, "secondEnd":I
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 779
    .local v8, "thirdStart":I
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v7, v8, v11

    .line 780
    .local v7, "thirdEnd":I
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v2, v1, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 781
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v5, v4, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 782
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v8, v7, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 784
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const-string/jumbo v12, "user@user.com"

    invoke-interface {v11, v12}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 785
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setSelection(I)V

    .line 786
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->handlePaste()Ljava/util/ArrayList;

    .line 787
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    const-class v14, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v12, v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 789
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "user@user.com"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const/4 v11, 0x3

    invoke-direct {p0, v11}, Lcom/kingsoft/ex/chips/ChipsTest;->populateMocks(I)V

    .line 794
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 795
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 797
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v2, v1, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 798
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v5, v4, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 799
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v8, v7, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 801
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const-string/jumbo v12, "user1, user2@user.com"

    invoke-interface {v11, v12}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 802
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setSelection(I)V

    .line 803
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->handlePaste()Ljava/util/ArrayList;

    .line 804
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    const-class v14, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v12, v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 806
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "<user1>"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "user2@user.com"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    const-class v14, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 808
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "user2@user.com"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    const-class v14, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 810
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "<user1>, user2@user.com"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const/4 v11, 0x3

    invoke-direct {p0, v11}, Lcom/kingsoft/ex/chips/ChipsTest;->populateMocks(I)V

    .line 816
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 817
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 819
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v2, v1, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 820
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v5, v4, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 821
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v8, v7, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 823
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const-string/jumbo v12, "user1,user2@user.com"

    invoke-interface {v11, v12}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 824
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setSelection(I)V

    .line 825
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->handlePaste()Ljava/util/ArrayList;

    .line 826
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    const-class v14, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v12, v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 828
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "<user1>"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "user2@user.com"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    const-class v14, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 830
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "user2@user.com"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    const-class v14, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 832
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "<user1>, user2@user.com"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 836
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const-string/jumbo v12, "user1, user2@user.com,"

    invoke-interface {v11, v12}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 837
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setSelection(I)V

    .line 838
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->handlePaste()Ljava/util/ArrayList;

    .line 839
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    const-class v14, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    const/4 v12, 0x2

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 840
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "<user1>"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "user2@user.com"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    const-class v14, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 842
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "user2@user.com"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    const-class v14, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 844
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "<user1>, <user2@user.com>, "

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method public testIsCompletedToken()V
    .locals 2

    .prologue
    .line 884
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createViewForTesting()Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;

    move-result-object v0

    .line 885
    .local v0, "view":Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createTestMoreItem()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setMoreItem(Landroid/widget/TextView;)V

    .line 886
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createChipBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setChipBackground(Landroid/graphics/drawable/Drawable;)V

    .line 887
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setChipHeight(I)V

    .line 888
    const-string/jumbo v1, "test;"

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertTrue(Z)V

    .line 889
    const-string/jumbo v1, "test,"

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertTrue(Z)V

    .line 890
    const-string/jumbo v1, "test"

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertFalse(Z)V

    .line 891
    const-string/jumbo v1, "test "

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertFalse(Z)V

    .line 892
    return-void
.end method

.method public testMoreChip()V
    .locals 14

    .prologue
    .line 296
    const/4 v11, 0x3

    invoke-direct {p0, v11}, Lcom/kingsoft/ex/chips/ChipsTest;->populateMocks(I)V

    .line 297
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createViewForTesting()Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;

    move-result-object v10

    .line 298
    .local v10, "view":Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createTestMoreItem()Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setMoreItem(Landroid/widget/TextView;)V

    .line 299
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v12, "FIRST"

    invoke-virtual {v11, v12}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 300
    .local v0, "first":Ljava/lang/String;
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v12, "SECOND"

    invoke-virtual {v11, v12}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 301
    .local v4, "second":Ljava/lang/String;
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v12, "THIRD"

    invoke-virtual {v11, v12}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 302
    .local v7, "third":Ljava/lang/String;
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 303
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 305
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 306
    .local v2, "firstStart":I
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v1, v2, v11

    .line 307
    .local v1, "firstEnd":I
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 308
    .local v6, "secondStart":I
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v5, v6, v11

    .line 309
    .local v5, "secondEnd":I
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 310
    .local v9, "thirdStart":I
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v8, v9, v11

    .line 311
    .local v8, "thirdEnd":I
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v2, v1, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 312
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v6, v5, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 313
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v9, v8, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 315
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->createMoreChip()V

    .line 316
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v2}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 318
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v6}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 320
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->getMoreChip()Landroid/text/style/ImageSpan;

    move-result-object v3

    .line 321
    .local v3, "moreChip":Landroid/text/style/ImageSpan;
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v9}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 322
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    add-int/lit8 v12, v8, 0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 324
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->removeMoreChip()V

    .line 325
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v2}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 327
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 328
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v6}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 329
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v9}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 330
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v8}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 331
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->getMoreChip()Landroid/text/style/ImageSpan;

    move-result-object v3

    .line 332
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 335
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->createMoreChip()V

    .line 336
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v2}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 338
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v6}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 340
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->getMoreChip()Landroid/text/style/ImageSpan;

    move-result-object v3

    .line 341
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v9}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 342
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    add-int/lit8 v12, v8, 0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 344
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->removeMoreChip()V

    .line 345
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v2}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 347
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 348
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v6}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 349
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v9}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 350
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v8}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 351
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->getMoreChip()Landroid/text/style/ImageSpan;

    move-result-object v3

    .line 352
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 353
    return-void
.end method

.method public testMoreChipDupes()V
    .locals 17

    .prologue
    .line 477
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/kingsoft/ex/chips/ChipsTest;->populateMocks(I)V

    .line 478
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createViewForTesting()Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;

    move-result-object v13

    .line 479
    .local v13, "view":Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createTestMoreItem()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setMoreItem(Landroid/widget/TextView;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v15, "FIRST"

    invoke-virtual {v14, v15}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 481
    .local v1, "first":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v15, "SECOND"

    invoke-virtual {v14, v15}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 482
    .local v5, "second":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v15, "THIRD"

    invoke-virtual {v14, v15}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 483
    .local v8, "third":Ljava/lang/String;
    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 484
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 486
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 487
    .local v3, "firstStart":I
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int v2, v3, v14

    .line 488
    .local v2, "firstEnd":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 489
    .local v7, "secondStart":I
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int v6, v7, v14

    .line 490
    .local v6, "secondEnd":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 491
    .local v12, "thirdStart":I
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int v9, v12, v14

    .line 492
    .local v9, "thirdEnd":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 493
    .local v11, "thirdNextStart":I
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int v10, v11, v14

    .line 494
    .local v10, "thirdNextEnd":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x4

    aget-object v15, v15, v16

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v14, v15, v3, v2, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 495
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x3

    aget-object v15, v15, v16

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v14, v15, v7, v6, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 496
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x2

    aget-object v15, v15, v16

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v14, v15, v12, v9, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 497
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget-object v15, v15, v16

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v14, v15, v11, v10, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 499
    invoke-virtual {v13}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->createMoreChip()V

    .line 500
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x4

    aget-object v15, v15, v16

    invoke-interface {v14, v15}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14, v3}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 502
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x3

    aget-object v15, v15, v16

    invoke-interface {v14, v15}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14, v7}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 504
    invoke-virtual {v13}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->getMoreChip()Landroid/text/style/ImageSpan;

    move-result-object v4

    .line 505
    .local v4, "moreChip":Landroid/text/style/ImageSpan;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v14, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 506
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v14, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    add-int/lit8 v15, v10, 0x1

    invoke-static {v14, v15}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 508
    invoke-virtual {v13}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->removeMoreChip()V

    .line 509
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x4

    aget-object v15, v15, v16

    invoke-interface {v14, v15}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14, v3}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 511
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x4

    aget-object v15, v15, v16

    invoke-interface {v14, v15}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14, v2}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 512
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x3

    aget-object v15, v15, v16

    invoke-interface {v14, v15}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14, v7}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 513
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x2

    aget-object v15, v15, v16

    invoke-interface {v14, v15}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 514
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x2

    aget-object v15, v15, v16

    invoke-interface {v14, v15}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14, v9}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 515
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget-object v15, v15, v16

    invoke-interface {v14, v15}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14, v11}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 516
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget-object v15, v15, v16

    invoke-interface {v14, v15}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14, v10}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 517
    invoke-virtual {v13}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->getMoreChip()Landroid/text/style/ImageSpan;

    move-result-object v4

    .line 518
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v14, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    const/4 v15, -0x1

    invoke-static {v14, v15}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 519
    return-void
.end method

.method public testMoreChipLotsOfUsers()V
    .locals 40

    .prologue
    .line 357
    const/16 v37, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/kingsoft/ex/chips/ChipsTest;->populateMocks(I)V

    .line 358
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createViewForTesting()Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;

    move-result-object v36

    .line 359
    .local v36, "view":Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createTestMoreItem()Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setMoreItem(Landroid/widget/TextView;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    move-object/from16 v37, v0

    const-string/jumbo v38, "FIRST"

    invoke-virtual/range {v37 .. v38}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 361
    .local v11, "first":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    move-object/from16 v37, v0

    const-string/jumbo v38, "SECOND"

    invoke-virtual/range {v37 .. v38}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 362
    .local v21, "second":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    move-object/from16 v37, v0

    const-string/jumbo v38, "THIRD"

    invoke-virtual/range {v37 .. v38}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 363
    .local v33, "third":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    move-object/from16 v37, v0

    const-string/jumbo v38, "FOURTH"

    invoke-virtual/range {v37 .. v38}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 364
    .local v14, "fourth":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    move-object/from16 v37, v0

    const-string/jumbo v38, "FIFTH"

    invoke-virtual/range {v37 .. v38}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 365
    .local v8, "fifth":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    move-object/from16 v37, v0

    const-string/jumbo v38, "SIXTH"

    invoke-virtual/range {v37 .. v38}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 366
    .local v27, "sixth":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    move-object/from16 v37, v0

    const-string/jumbo v38, "SEVENTH"

    invoke-virtual/range {v37 .. v38}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 367
    .local v24, "seventh":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    move-object/from16 v37, v0

    const-string/jumbo v38, "EIGHTH"

    invoke-virtual/range {v37 .. v38}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 368
    .local v7, "eigth":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    move-object/from16 v37, v0

    const-string/jumbo v38, "NINTH"

    invoke-virtual/range {v37 .. v38}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 369
    .local v18, "ninth":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    move-object/from16 v37, v0

    const-string/jumbo v38, "TENTH"

    invoke-virtual/range {v37 .. v38}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 370
    .local v30, "tenth":Ljava/lang/String;
    new-instance v37, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v37 .. v37}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 374
    .local v13, "firstStart":I
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    add-int v12, v13, v37

    .line 375
    .local v12, "firstEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 376
    .local v23, "secondStart":I
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    add-int v22, v23, v37

    .line 377
    .local v22, "secondEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v35

    .line 378
    .local v35, "thirdStart":I
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    add-int v34, v35, v37

    .line 379
    .local v34, "thirdEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 380
    .local v16, "fourthStart":I
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    add-int v15, v16, v37

    .line 381
    .local v15, "fourthEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 382
    .local v10, "fifthStart":I
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    add-int v9, v10, v37

    .line 383
    .local v9, "fifthEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v29

    .line 384
    .local v29, "sixthStart":I
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    add-int v28, v29, v37

    .line 385
    .local v28, "sixthEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    .line 386
    .local v26, "seventhStart":I
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    add-int v25, v26, v37

    .line 387
    .local v25, "seventhEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 388
    .local v6, "eighthStart":I
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    add-int v5, v6, v37

    .line 389
    .local v5, "eighthEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 390
    .local v20, "ninthStart":I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    add-int v19, v20, v37

    .line 391
    .local v19, "ninthEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v32

    .line 392
    .local v32, "tenthStart":I
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    add-int v31, v32, v37

    .line 393
    .local v31, "tenthEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0xa

    aget-object v38, v38, v39

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-interface {v0, v1, v13, v12, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x9

    aget-object v38, v38, v39

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move/from16 v2, v23

    move/from16 v3, v22

    move/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x8

    aget-object v38, v38, v39

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move/from16 v2, v35

    move/from16 v3, v34

    move/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x7

    aget-object v38, v38, v39

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move/from16 v2, v16

    move/from16 v3, v39

    invoke-interface {v0, v1, v2, v15, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x6

    aget-object v38, v38, v39

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-interface {v0, v1, v10, v9, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x5

    aget-object v38, v38, v39

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move/from16 v2, v29

    move/from16 v3, v28

    move/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x4

    aget-object v38, v38, v39

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move/from16 v2, v26

    move/from16 v3, v25

    move/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x3

    aget-object v38, v38, v39

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-interface {v0, v1, v6, v5, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x2

    aget-object v38, v38, v39

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x1

    aget-object v38, v38, v39

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move/from16 v2, v32

    move/from16 v3, v31

    move/from16 v4, v39

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 404
    invoke-virtual/range {v36 .. v36}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->createMoreChip()V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0xa

    aget-object v38, v38, v39

    invoke-interface/range {v37 .. v38}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v37

    move/from16 v0, v37

    invoke-static {v0, v13}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x9

    aget-object v38, v38, v39

    invoke-interface/range {v37 .. v38}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v37

    move/from16 v0, v37

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 410
    invoke-virtual/range {v36 .. v36}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->getMoreChip()Landroid/text/style/ImageSpan;

    move-result-object v17

    .line 411
    .local v17, "moreChip":Landroid/text/style/ImageSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v37

    move/from16 v0, v37

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v37

    add-int/lit8 v38, v31, 0x1

    invoke-static/range {v37 .. v38}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 414
    invoke-virtual/range {v36 .. v36}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->removeMoreChip()V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0xa

    aget-object v38, v38, v39

    invoke-interface/range {v37 .. v38}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v37

    move/from16 v0, v37

    invoke-static {v0, v13}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x9

    aget-object v38, v38, v39

    invoke-interface/range {v37 .. v38}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v37

    move/from16 v0, v37

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x8

    aget-object v38, v38, v39

    invoke-interface/range {v37 .. v38}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v37

    move/from16 v0, v37

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x7

    aget-object v38, v38, v39

    invoke-interface/range {v37 .. v38}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v37

    move/from16 v0, v37

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x6

    aget-object v38, v38, v39

    invoke-interface/range {v37 .. v38}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v37

    move/from16 v0, v37

    invoke-static {v0, v10}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x5

    aget-object v38, v38, v39

    invoke-interface/range {v37 .. v38}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v37

    move/from16 v0, v37

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x4

    aget-object v38, v38, v39

    invoke-interface/range {v37 .. v38}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v37

    move/from16 v0, v37

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x3

    aget-object v38, v38, v39

    invoke-interface/range {v37 .. v38}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v37

    move/from16 v0, v37

    invoke-static {v0, v6}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x2

    aget-object v38, v38, v39

    invoke-interface/range {v37 .. v38}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v37

    move/from16 v0, v37

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x1

    aget-object v38, v38, v39

    invoke-interface/range {v37 .. v38}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v37

    move/from16 v0, v37

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 428
    invoke-virtual/range {v36 .. v36}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->getMoreChip()Landroid/text/style/ImageSpan;

    move-result-object v17

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v37

    const/16 v38, -0x1

    invoke-static/range {v37 .. v38}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 431
    return-void
.end method

.method public testMoreChipPlainText()V
    .locals 9

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createViewForTesting()Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;

    move-result-object v6

    .line 247
    .local v6, "view":Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createTestMoreItem()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setMoreItem(Landroid/widget/TextView;)V

    .line 248
    iget-object v7, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v8, "FIRST"

    invoke-virtual {v7, v8}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    .local v0, "first":Ljava/lang/String;
    iget-object v7, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v8, "SECOND"

    invoke-virtual {v7, v8}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 250
    .local v2, "second":Ljava/lang/String;
    iget-object v7, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v8, "THIRD"

    invoke-virtual {v7, v8}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 251
    .local v3, "third":Ljava/lang/String;
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v7, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 252
    iget-object v7, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 253
    iget-object v7, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 254
    .local v5, "thirdStart":I
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int v4, v5, v7

    .line 255
    .local v4, "thirdEnd":I
    invoke-virtual {v6}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->createMoreChipPlainText()V

    .line 256
    invoke-virtual {v6}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->getMoreChip()Landroid/text/style/ImageSpan;

    move-result-object v1

    .line 257
    .local v1, "moreChip":Landroid/text/style/ImageSpan;
    iget-object v7, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v7, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7, v5}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 258
    iget-object v7, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v7, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    add-int/lit8 v8, v4, 0x1

    invoke-static {v7, v8}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 259
    return-void
.end method

.method public testMoreChipSpecialChars()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 436
    const/4 v11, 0x3

    invoke-direct {p0, v11}, Lcom/kingsoft/ex/chips/ChipsTest;->populateMocks(I)V

    .line 437
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createViewForTesting()Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;

    move-result-object v10

    .line 438
    .local v10, "view":Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createTestMoreItem()Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setMoreItem(Landroid/widget/TextView;)V

    .line 439
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v12, "FI,RST"

    invoke-virtual {v11, v12}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 440
    .local v0, "first":Ljava/lang/String;
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v12, "SE,COND"

    invoke-virtual {v11, v12}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 441
    .local v4, "second":Ljava/lang/String;
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v12, "THI,RD"

    invoke-virtual {v11, v12}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 442
    .local v7, "third":Ljava/lang/String;
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 443
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 445
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 446
    .local v2, "firstStart":I
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v1, v2, v11

    .line 447
    .local v1, "firstEnd":I
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 448
    .local v6, "secondStart":I
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v5, v6, v11

    .line 449
    .local v5, "secondEnd":I
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 450
    .local v9, "thirdStart":I
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v8, v9, v11

    .line 451
    .local v8, "thirdEnd":I
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12, v2, v1, v14}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 452
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12, v6, v5, v14}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 453
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12, v9, v8, v14}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 455
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->createMoreChip()V

    .line 456
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v2}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 458
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v6}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 460
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->getMoreChip()Landroid/text/style/ImageSpan;

    move-result-object v3

    .line 461
    .local v3, "moreChip":Landroid/text/style/ImageSpan;
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v9}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 462
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    add-int/lit8 v12, v8, 0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 464
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->removeMoreChip()V

    .line 465
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v2}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 467
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 468
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v6}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 469
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v9}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 470
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v8}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 471
    invoke-virtual {v10}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->getMoreChip()Landroid/text/style/ImageSpan;

    move-result-object v3

    .line 472
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v11, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 473
    return-void
.end method

.method public testRemoveChip()V
    .locals 14

    .prologue
    .line 523
    const/4 v11, 0x3

    invoke-direct {p0, v11}, Lcom/kingsoft/ex/chips/ChipsTest;->populateMocks(I)V

    .line 524
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createViewForTesting()Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;

    move-result-object v10

    .line 525
    .local v10, "view":Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createTestMoreItem()Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setMoreItem(Landroid/widget/TextView;)V

    .line 526
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v12, "FIRST"

    invoke-virtual {v11, v12}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 527
    .local v0, "first":Ljava/lang/String;
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v12, "SECOND"

    invoke-virtual {v11, v12}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 528
    .local v4, "second":Ljava/lang/String;
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v12, "THIRD"

    invoke-virtual {v11, v12}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 529
    .local v7, "third":Ljava/lang/String;
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 530
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 532
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 533
    .local v2, "firstStart":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    add-int v1, v2, v11

    .line 534
    .local v1, "firstEnd":I
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 535
    .local v6, "secondStart":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    add-int v5, v6, v11

    .line 536
    .local v5, "secondEnd":I
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 537
    .local v9, "thirdStart":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int v8, v9, v11

    .line 538
    .local v8, "thirdEnd":I
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v2, v1, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 539
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v6, v5, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 540
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v9, v8, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 541
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v12, v12

    add-int/lit8 v12, v12, -0x2

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->removeChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 544
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v2}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 546
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 547
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 548
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 549
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 550
    .local v3, "newThirdStart":I
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v3}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 551
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v3

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 555
    const/4 v11, 0x3

    invoke-direct {p0, v11}, Lcom/kingsoft/ex/chips/ChipsTest;->populateMocks(I)V

    .line 556
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createViewForTesting()Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;

    move-result-object v10

    .line 557
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createTestMoreItem()Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setMoreItem(Landroid/widget/TextView;)V

    .line 558
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 559
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 561
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 562
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    add-int v1, v2, v11

    .line 563
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 564
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    add-int v5, v6, v11

    .line 565
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 566
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int v8, v9, v11

    .line 567
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v2, v1, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 568
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v6, v5, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 569
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v9, v8, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 570
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v12, v12

    add-int/lit8 v12, v12, -0x3

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->removeChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 572
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 574
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 575
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 576
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 577
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 578
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v3}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 579
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v3

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 583
    const/4 v11, 0x3

    invoke-direct {p0, v11}, Lcom/kingsoft/ex/chips/ChipsTest;->populateMocks(I)V

    .line 584
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createViewForTesting()Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;

    move-result-object v10

    .line 585
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createTestMoreItem()Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setMoreItem(Landroid/widget/TextView;)V

    .line 586
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 587
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 589
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 590
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    add-int v1, v2, v11

    .line 591
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 592
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    add-int v5, v6, v11

    .line 593
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 594
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int v8, v9, v11

    .line 595
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v2, v1, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 596
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v6, v5, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 597
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v9, v8, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 598
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->removeChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 600
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v2}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 602
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 603
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v6}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 604
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v5}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 605
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 606
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 607
    return-void
.end method

.method public testReplaceChip()V
    .locals 15

    .prologue
    .line 610
    const/4 v11, 0x3

    invoke-direct {p0, v11}, Lcom/kingsoft/ex/chips/ChipsTest;->populateMocks(I)V

    .line 611
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createViewForTesting()Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;

    move-result-object v10

    .line 612
    .local v10, "view":Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createTestMoreItem()Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setMoreItem(Landroid/widget/TextView;)V

    .line 613
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createChipBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setChipBackground(Landroid/graphics/drawable/Drawable;)V

    .line 614
    const/16 v11, 0x30

    invoke-virtual {v10, v11}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->setChipHeight(I)V

    .line 615
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v12, "FIRST"

    invoke-virtual {v11, v12}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 616
    .local v0, "first":Ljava/lang/String;
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v12, "SECOND"

    invoke-virtual {v11, v12}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 617
    .local v3, "second":Ljava/lang/String;
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v12, "THIRD"

    invoke-virtual {v11, v12}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 618
    .local v7, "third":Ljava/lang/String;
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 619
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 622
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 623
    .local v2, "firstStart":I
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v1, v2, v11

    .line 624
    .local v1, "firstEnd":I
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 625
    .local v5, "secondStart":I
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v4, v5, v11

    .line 626
    .local v4, "secondEnd":I
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 627
    .local v9, "thirdStart":I
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v8, v9, v11

    .line 628
    .local v8, "thirdEnd":I
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v2, v1, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 629
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v5, v4, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 630
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v9, v8, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 631
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v12, v12

    add-int/lit8 v12, v12, -0x3

    aget-object v11, v11, v12

    const-string/jumbo v12, "replacement"

    const-string/jumbo v13, "replacement@replacement.com"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->replaceChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;Lcom/kingsoft/ex/chips/RecipientEntry;)V

    .line 634
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v14, "replacement <replacement@replacement.com>"

    invoke-virtual {v13, v14}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 638
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 639
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 641
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 644
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 646
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 649
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    const-class v14, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 651
    .local v6, "spans":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v11, v6

    const/4 v12, 0x3

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 652
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    const-class v14, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "spans":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    check-cast v6, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 654
    .restart local v6    # "spans":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-interface {v11}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getDisplay()Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v12, "replacement"

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 659
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 660
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 661
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v1, v2, v11

    .line 662
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 663
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v4, v5, v11

    .line 664
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 665
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v8, v9, v11

    .line 666
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v2, v1, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 667
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v5, v4, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 668
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v9, v8, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 669
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v12, v12

    add-int/lit8 v12, v12, -0x2

    aget-object v11, v11, v12

    const-string/jumbo v12, "replacement"

    const-string/jumbo v13, "replacement@replacement.com"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->replaceChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;Lcom/kingsoft/ex/chips/RecipientEntry;)V

    .line 672
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v14, "replacement <replacement@replacement.com>"

    invoke-virtual {v13, v14}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v2}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 675
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 676
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 677
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 678
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 680
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 683
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    const-class v14, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "spans":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    check-cast v6, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 684
    .restart local v6    # "spans":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v11, v6

    const/4 v12, 0x3

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 685
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    const-class v13, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v1, v12, v13}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "spans":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    check-cast v6, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 687
    .restart local v6    # "spans":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-interface {v11}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getDisplay()Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v12, "replacement"

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 692
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 693
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 694
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v1, v2, v11

    .line 695
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 696
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v4, v5, v11

    .line 697
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 698
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v8, v9, v11

    .line 699
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v2, v1, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 700
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v5, v4, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 701
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v11, v12, v9, v8, v13}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 702
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    aget-object v11, v11, v12

    const-string/jumbo v12, "replacement"

    const-string/jumbo v13, "replacement@replacement.com"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->replaceChip(Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;Lcom/kingsoft/ex/chips/RecipientEntry;)V

    .line 705
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v14, "replacement <replacement@replacement.com>"

    invoke-virtual {v13, v14}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v2}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 708
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v1}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 709
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v5}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 710
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11, v4}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 711
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 712
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    invoke-interface {v11, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 713
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    const-class v14, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "spans":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    check-cast v6, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 714
    .restart local v6    # "spans":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    array-length v11, v6

    const/4 v12, 0x3

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 715
    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v12, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v12

    const-class v13, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v11, v4, v12, v13}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "spans":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    check-cast v6, [Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 717
    .restart local v6    # "spans":[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;
    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-interface {v11}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getDisplay()Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v12, "replacement"

    invoke-static {v11, v12}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public testSanitizeBetween()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 182
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/kingsoft/ex/chips/ChipsTest;->populateMocks(I)V

    .line 183
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createViewForTesting()Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;

    move-result-object v8

    .line 184
    .local v8, "view":Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v10, "FIRST"

    invoke-virtual {v9, v10}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    .local v2, "first":Ljava/lang/String;
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v10, "SECOND"

    invoke-virtual {v9, v10}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 186
    .local v5, "second":Ljava/lang/String;
    const-string/jumbo v1, "EXTRA"

    .line 187
    .local v1, "extra":Ljava/lang/String;
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 188
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 189
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 190
    .local v4, "firstStart":I
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int v3, v4, v9

    .line 191
    .local v3, "firstEnd":I
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 192
    .local v7, "secondStart":I
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int v6, v7, v9

    .line 193
    .local v6, "secondEnd":I
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v10, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x2

    aget-object v10, v10, v11

    invoke-interface {v9, v10, v4, v3, v12}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 194
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v10, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget-object v10, v10, v11

    invoke-interface {v9, v10, v7, v6, v12}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 195
    invoke-virtual {v8}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->sanitizeBetween()V

    .line 196
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "editableString":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    invoke-static {v9, v10}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 198
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9, v4}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 199
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v10, v7, v10

    invoke-static {v9, v10}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 200
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 204
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/kingsoft/ex/chips/ChipsTest;->populateMocks(I)V

    .line 205
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v9, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 206
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v9, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 207
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 208
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int v3, v4, v9

    .line 209
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v10, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget-object v10, v10, v11

    invoke-interface {v9, v10, v4, v3, v12}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 210
    invoke-virtual {v8}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->sanitizeBetween()V

    .line 211
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v10, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget-object v10, v10, v11

    invoke-interface {v9, v10}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v10, v4, v10

    invoke-static {v9, v10}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 214
    return-void
.end method

.method public testSanitizeEnd()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 219
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/kingsoft/ex/chips/ChipsTest;->populateMocks(I)V

    .line 220
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createViewForTesting()Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;

    move-result-object v8

    .line 221
    .local v8, "view":Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v10, "FIRST"

    invoke-virtual {v9, v10}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 222
    .local v2, "first":Ljava/lang/String;
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v10, "SECOND"

    invoke-virtual {v9, v10}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 223
    .local v5, "second":Ljava/lang/String;
    const-string/jumbo v1, "EXTRA"

    .line 224
    .local v1, "extra":Ljava/lang/String;
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    .line 225
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 226
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 227
    .local v4, "firstStart":I
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int v3, v4, v9

    .line 228
    .local v3, "firstEnd":I
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 229
    .local v7, "secondStart":I
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int v6, v7, v9

    .line 230
    .local v6, "secondEnd":I
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v10, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x2

    aget-object v10, v10, v11

    invoke-interface {v9, v10, v4, v3, v12}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 231
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    iget-object v10, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v11, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mMockRecips:[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget-object v10, v10, v11

    invoke-interface {v9, v10, v7, v6, v12}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 232
    invoke-virtual {v8}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->sanitizeEnd()V

    .line 233
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "editableString":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    invoke-static {v9, v10}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 235
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9, v4}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 236
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9, v7}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 237
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-interface {v9, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 239
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v8}, Lcom/kingsoft/ex/chips/ChipsTest$MockRecipientEditTextView;->sanitizeEnd()V

    .line 242
    iget-object v9, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mEditable:Landroid/text/Editable;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public testTooManyRecips()V
    .locals 8

    .prologue
    const/16 v7, 0x64

    .line 275
    new-instance v3, Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;-><init>(Lcom/kingsoft/ex/chips/ChipsTest;Landroid/content/Context;)V

    .line 276
    .local v3, "view":Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/ChipsTest;->createTestMoreItem()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;->setMoreItem(Landroid/widget/TextView;)V

    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_0

    .line 278
    iget-object v4, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;->append(Ljava/lang/CharSequence;)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;->countTokens(Landroid/text/Editable;)I

    move-result v4

    invoke-static {v4, v7}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 281
    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;->handlePendingChips()V

    .line 282
    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;->createMoreChip()V

    .line 283
    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;->getMoreChip()Landroid/text/style/ImageSpan;

    move-result-object v1

    .line 285
    .local v1, "moreChip":Landroid/text/style/ImageSpan;
    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/kingsoft/ex/chips/ChipsTest;->mTokenizer:Landroid/text/util/Rfc822Tokenizer;

    const-string/jumbo v6, "2"

    invoke-virtual {v4, v6}, Landroid/text/util/Rfc822Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 287
    .local v2, "secondStart":I
    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4, v2}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 288
    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;->length()I

    move-result v5

    invoke-static {v4, v5}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(II)V

    .line 289
    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/ChipsTest$BaseMockRecipientEditTextView;->getSortedRecipients()[Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/kingsoft/ex/chips/ChipsTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 290
    return-void
.end method
