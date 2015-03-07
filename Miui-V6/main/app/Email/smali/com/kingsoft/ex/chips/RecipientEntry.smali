.class public Lcom/kingsoft/ex/chips/RecipientEntry;
.super Ljava/lang/Object;
.source "RecipientEntry.java"


# static fields
.field private static final EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

.field public static final ENTRY_TYPE_PERSON:I = 0x0

.field public static final ENTRY_TYPE_SIZE:I = 0x1

.field static final GENERATED_CONTACT:I = -0x2

.field static final INVALID_CONTACT:I = -0x1

.field static final INVALID_DESTINATION_TYPE:I = -0x1


# instance fields
.field private final mContactId:J

.field private final mDataId:J

.field private final mDestination:Ljava/lang/String;

.field private final mDestinationLabel:Ljava/lang/String;

.field private final mDestinationType:I

.field private final mDisplayName:Ljava/lang/String;

.field private final mEntryType:I

.field private final mIsDivider:Z

.field private mIsFirstLevel:Z

.field private final mIsGalContact:Z

.field private mIsValid:Z

.field private mLetterTileProvider:Lcom/kingsoft/mail/photomanager/LetterTileProvider;

.field private mPhotoBytes:[B

.field private final mPhotoThumbnailUri:Landroid/net/Uri;

.field public mybitmapBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "[^\\s@]+@([^\\s@\\.]+\\.)+[a-zA-z][a-zA-Z][a-zA-Z]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/ex/chips/RecipientEntry;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZZ)V
    .locals 1
    .param p1, "entryType"    # I
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "destinationType"    # I
    .param p5, "destinationLabel"    # Ljava/lang/String;
    .param p6, "contactId"    # J
    .param p8, "dataId"    # J
    .param p10, "photoThumbnailUri"    # Landroid/net/Uri;
    .param p11, "isFirstLevel"    # Z
    .param p12, "isValid"    # Z
    .param p13, "isGalContact"    # Z

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput p1, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mEntryType:I

    .line 121
    iput-boolean p11, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mIsFirstLevel:Z

    .line 122
    iput-object p2, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    .line 123
    iput-object p3, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    .line 124
    iput p4, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mDestinationType:I

    .line 125
    iput-object p5, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mDestinationLabel:Ljava/lang/String;

    .line 126
    iput-wide p6, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mContactId:J

    .line 127
    iput-wide p8, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mDataId:J

    .line 128
    iput-object p10, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mPhotoThumbnailUri:Landroid/net/Uri;

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mPhotoBytes:[B

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mIsDivider:Z

    .line 131
    iput-boolean p12, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mIsValid:Z

    .line 132
    iput-boolean p13, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mIsGalContact:Z

    .line 136
    return-void
.end method

.method public static constructFakeEntry(Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;
    .locals 15
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "isValid"    # Z

    .prologue
    .line 173
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v14

    .line 174
    .local v14, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v0, v14

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, v14, v0

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "tokenizedAddress":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/kingsoft/ex/chips/RecipientEntry;

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object v3, v2

    move/from16 v12, p1

    invoke-direct/range {v0 .. v13}, Lcom/kingsoft/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZZ)V

    return-object v0

    .end local v2    # "tokenizedAddress":Ljava/lang/String;
    :cond_0
    move-object v2, p0

    .line 174
    goto :goto_0
.end method

.method public static constructFakePhoneEntry(Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;
    .locals 14
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "isValid"    # Z

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 186
    new-instance v0, Lcom/kingsoft/ex/chips/RecipientEntry;

    const/4 v4, -0x1

    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p0

    move-wide v8, v6

    move-object v10, v5

    move v12, p1

    move v13, v1

    invoke-direct/range {v0 .. v13}, Lcom/kingsoft/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZZ)V

    return-object v0
.end method

.method public static constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/kingsoft/ex/chips/RecipientEntry;
    .locals 14
    .param p0, "display"    # Ljava/lang/String;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isValid"    # Z

    .prologue
    .line 209
    new-instance v0, Lcom/kingsoft/ex/chips/RecipientEntry;

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-wide/16 v6, -0x2

    const-wide/16 v8, -0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object v2, p0

    move-object v3, p1

    move/from16 v12, p2

    invoke-direct/range {v0 .. v13}, Lcom/kingsoft/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZZ)V

    return-object v0
.end method

.method public static constructSecondLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;ZZ)Lcom/kingsoft/ex/chips/RecipientEntry;
    .locals 17
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "displayNameSource"    # I
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "destinationType"    # I
    .param p4, "destinationLabel"    # Ljava/lang/String;
    .param p5, "contactId"    # J
    .param p7, "dataId"    # J
    .param p9, "thumbnailUriAsString"    # Ljava/lang/String;
    .param p10, "isValid"    # Z
    .param p11, "isGalContact"    # Z

    .prologue
    .line 235
    new-instance v3, Lcom/kingsoft/ex/chips/RecipientEntry;

    const/4 v4, 0x0

    move/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/kingsoft/ex/chips/RecipientEntry;->pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz p9, :cond_0

    invoke-static/range {p9 .. p9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    :goto_0
    const/4 v14, 0x0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v15, p10

    move/from16 v16, p11

    invoke-direct/range {v3 .. v16}, Lcom/kingsoft/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZZ)V

    return-object v3

    :cond_0
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public static constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZ)Lcom/kingsoft/ex/chips/RecipientEntry;
    .locals 17
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "displayNameSource"    # I
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "destinationType"    # I
    .param p4, "destinationLabel"    # Ljava/lang/String;
    .param p5, "contactId"    # J
    .param p7, "dataId"    # J
    .param p9, "photoThumbnailUri"    # Landroid/net/Uri;
    .param p10, "isValid"    # Z
    .param p11, "isGalContact"    # Z

    .prologue
    .line 217
    new-instance v3, Lcom/kingsoft/ex/chips/RecipientEntry;

    const/4 v4, 0x0

    move/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/kingsoft/ex/chips/RecipientEntry;->pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-object/from16 v13, p9

    move/from16 v15, p10

    move/from16 v16, p11

    invoke-direct/range {v3 .. v16}, Lcom/kingsoft/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZZ)V

    return-object v3
.end method

.method public static constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;ZZ)Lcom/kingsoft/ex/chips/RecipientEntry;
    .locals 17
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "displayNameSource"    # I
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "destinationType"    # I
    .param p4, "destinationLabel"    # Ljava/lang/String;
    .param p5, "contactId"    # J
    .param p7, "dataId"    # J
    .param p9, "thumbnailUriAsString"    # Ljava/lang/String;
    .param p10, "isValid"    # Z
    .param p11, "isGalContact"    # Z

    .prologue
    .line 225
    new-instance v3, Lcom/kingsoft/ex/chips/RecipientEntry;

    const/4 v4, 0x0

    move/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/kingsoft/ex/chips/RecipientEntry;->pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz p9, :cond_0

    invoke-static/range {p9 .. p9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    :goto_0
    const/4 v14, 0x1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v15, p10

    move/from16 v16, p11

    invoke-direct/range {v3 .. v16}, Lcom/kingsoft/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;ZZZ)V

    return-object v3

    :cond_0
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public static isCreatedRecipient(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 164
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValid(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "address"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    :goto_0
    return v2

    .line 154
    :cond_0
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 155
    .local v0, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v3, v0

    if-ne v3, v1, :cond_1

    sget-object v3, Lcom/kingsoft/ex/chips/RecipientEntry;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private makeLetterTile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "senderAddress"    # Ljava/lang/String;
    .param p3, "ctx"    # Landroid/content/Context;

    .prologue
    .line 94
    iget-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mLetterTileProvider:Lcom/kingsoft/mail/photomanager/LetterTileProvider;

    if-nez v4, :cond_0

    .line 95
    new-instance v4, Lcom/kingsoft/mail/photomanager/LetterTileProvider;

    invoke-direct {v4, p3}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mLetterTileProvider:Lcom/kingsoft/mail/photomanager/LetterTileProvider;

    .line 101
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 102
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x1050006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 104
    .local v1, "idealIconHeight":I
    const v4, 0x1050005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 107
    .local v2, "idealIconWidth":I
    new-instance v0, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    const/high16 v4, 0x3f800000

    invoke-direct {v0, v2, v1, v4}, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;-><init>(IIF)V

    .line 111
    .local v0, "dimensions":Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;
    new-instance v4, Lcom/kingsoft/mail/photomanager/LetterTileProvider;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0, p1, p2}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getLetterTile(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private static pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "displayNameSource"    # I
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;

    .prologue
    .line 199
    const/16 v0, 0x14

    if-le p0, v0, :cond_0

    .end local p1    # "displayName":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "displayName":Ljava/lang/String;
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .prologue
    .line 262
    iget-wide v0, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mContactId:J

    return-wide v0
.end method

.method public getDataId()J
    .locals 2

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mDataId:J

    return-wide v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mDestinationLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationType()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mDestinationType:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryType()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mEntryType:I

    return v0
.end method

.method public declared-synchronized getPhotoBytes()[B
    .locals 1

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mPhotoBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPhotoThumbnailUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mPhotoThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isFirstLevel()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mIsFirstLevel:Z

    return v0
.end method

.method public isGalContact()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mIsGalContact:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mEntryType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeparator()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mIsDivider:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingsoft/ex/chips/RecipientEntry;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setPhotoBytes([B)V
    .locals 1
    .param p1, "photoBytes"    # [B

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mPhotoBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">, isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kingsoft/ex/chips/RecipientEntry;->mIsValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
