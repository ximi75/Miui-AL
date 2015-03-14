.class public Lde/innosystec/unrar/rarfile/FileHeader;
.super Lde/innosystec/unrar/rarfile/BlockHeader;
.source "FileHeader.java"


# static fields
.field private static final NEWLHD_SIZE:B = 0x20t

.field private static final SALT_SIZE:B = 0x8t


# instance fields
.field private aTime:Ljava/util/Date;

.field private arcTime:Ljava/util/Date;

.field private cTime:Ljava/util/Date;

.field private fileAttr:I

.field private final fileCRC:I

.field private fileName:Ljava/lang/String;

.field private final fileNameBytes:[B

.field private fileNameW:Ljava/lang/String;

.field private final fileTime:I

.field private fullPackSize:J

.field private fullUnpackSize:J

.field private highPackSize:I

.field private highUnpackSize:I

.field private final hostOS:Lde/innosystec/unrar/rarfile/HostSystem;

.field private mTime:Ljava/util/Date;

.field private nameSize:S

.field private paddedSize:I

.field private recoverySectors:I

.field private final salt:[B

.field private subData:[B

.field private subFlags:I

.field private unpMethod:B

.field private unpSize:J

.field private unpVersion:B


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/BlockHeader;[B)V
    .locals 13
    .param p1, "bh"    # Lde/innosystec/unrar/rarfile/BlockHeader;
    .param p2, "fileHeader"    # [B

    .prologue
    const-wide/16 v8, -0x1

    const/16 v5, 0x1000

    const/16 v12, 0x20

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 88
    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/BlockHeader;-><init>(Lde/innosystec/unrar/rarfile/BlockHeader;)V

    .line 65
    new-array v6, v11, [B

    iput-object v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->salt:[B

    .line 83
    const/4 v6, -0x1

    iput v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->recoverySectors:I

    .line 90
    const/4 v4, 0x0

    .line 91
    .local v4, "position":I
    invoke-static {p2, v4}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->unpSize:J

    .line 92
    add-int/lit8 v4, v4, 0x4

    .line 93
    const/4 v6, 0x4

    aget-byte v6, p2, v6

    invoke-static {v6}, Lde/innosystec/unrar/rarfile/HostSystem;->findHostSystem(B)Lde/innosystec/unrar/rarfile/HostSystem;

    move-result-object v6

    iput-object v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->hostOS:Lde/innosystec/unrar/rarfile/HostSystem;

    .line 94
    add-int/lit8 v4, v4, 0x1

    .line 96
    invoke-static {p2, v4}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v6

    iput v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileCRC:I

    .line 97
    add-int/lit8 v4, v4, 0x4

    .line 99
    invoke-static {p2, v4}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v6

    iput v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileTime:I

    .line 100
    add-int/lit8 v4, v4, 0x4

    .line 102
    iget-byte v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->unpVersion:B

    const/16 v7, 0xd

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-byte v6, v6

    iput-byte v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->unpVersion:B

    .line 103
    add-int/lit8 v4, v4, 0x1

    .line 104
    iget-byte v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->unpMethod:B

    const/16 v7, 0xe

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-byte v6, v6

    iput-byte v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->unpMethod:B

    .line 105
    add-int/lit8 v4, v4, 0x1

    .line 106
    invoke-static {p2, v4}, Lde/innosystec/unrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v6

    iput-short v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->nameSize:S

    .line 107
    add-int/lit8 v4, v4, 0x2

    .line 109
    invoke-static {p2, v4}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v6

    iput v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileAttr:I

    .line 110
    add-int/lit8 v4, v4, 0x4

    .line 111
    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->isLargeBlock()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 112
    invoke-static {p2, v4}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v6

    iput v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->highPackSize:I

    .line 113
    add-int/lit8 v4, v4, 0x4

    .line 115
    invoke-static {p2, v4}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v6

    iput v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->highUnpackSize:I

    .line 116
    add-int/lit8 v4, v4, 0x4

    .line 127
    :cond_0
    :goto_0
    iget-wide v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fullPackSize:J

    iget v8, p0, Lde/innosystec/unrar/rarfile/FileHeader;->highPackSize:I

    int-to-long v8, v8

    or-long/2addr v6, v8

    iput-wide v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fullPackSize:J

    .line 128
    iget-wide v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fullPackSize:J

    shl-long/2addr v6, v12

    iput-wide v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fullPackSize:J

    .line 129
    iget-wide v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fullPackSize:J

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->getPackSize()I

    move-result v8

    int-to-long v8, v8

    or-long/2addr v6, v8

    iput-wide v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fullPackSize:J

    .line 131
    iget-wide v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fullUnpackSize:J

    iget v8, p0, Lde/innosystec/unrar/rarfile/FileHeader;->highUnpackSize:I

    int-to-long v8, v8

    or-long/2addr v6, v8

    iput-wide v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fullUnpackSize:J

    .line 132
    iget-wide v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fullUnpackSize:J

    shl-long/2addr v6, v12

    iput-wide v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fullUnpackSize:J

    .line 133
    iget-wide v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fullUnpackSize:J

    iget-wide v8, p0, Lde/innosystec/unrar/rarfile/FileHeader;->unpSize:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fullUnpackSize:J

    .line 135
    iget-short v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->nameSize:S

    if-le v6, v5, :cond_9

    :goto_1
    iput-short v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->nameSize:S

    .line 137
    iget-short v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->nameSize:S

    new-array v5, v5, [B

    iput-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileNameBytes:[B

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-short v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->nameSize:S

    if-lt v1, v5, :cond_a

    .line 143
    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->isFileHeader()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 144
    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->isUnicode()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, "length":I
    const-string/jumbo v5, ""

    iput-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    .line 147
    const-string/jumbo v5, ""

    iput-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    .line 148
    :goto_3
    iget-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileNameBytes:[B

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 149
    iget-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileNameBytes:[B

    aget-byte v5, v5, v2

    if-nez v5, :cond_b

    .line 152
    :cond_1
    new-array v3, v2, [B

    .line 153
    .local v3, "name":[B
    iget-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileNameBytes:[B

    array-length v6, v3

    invoke-static {v5, v10, v3, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    .line 155
    iget-short v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->nameSize:S

    if-eq v2, v5, :cond_2

    .line 156
    add-int/lit8 v2, v2, 0x1

    .line 157
    iget-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileNameBytes:[B

    invoke-static {v5, v2}, Lde/innosystec/unrar/rarfile/FileNameDecoder;->decode([BI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    .line 165
    .end local v2    # "length":I
    .end local v3    # "name":[B
    :cond_2
    :goto_4
    iget-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    invoke-direct {p0, v5}, Lde/innosystec/unrar/rarfile/FileHeader;->existZH(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 166
    iget-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    iput-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    .line 170
    :cond_3
    sget-object v5, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->NewSubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    iget-byte v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->headerType:B

    invoke-virtual {v5, v6}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 171
    iget-short v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->headerSize:S

    add-int/lit8 v5, v5, -0x20

    iget-short v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->nameSize:S

    sub-int v0, v5, v6

    .line 172
    .local v0, "datasize":I
    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->hasSalt()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 173
    add-int/lit8 v0, v0, -0x8

    .line 175
    :cond_4
    if-lez v0, :cond_5

    .line 176
    new-array v5, v0, [B

    iput-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->subData:[B

    .line 177
    const/4 v1, 0x0

    :goto_5
    if-lt v1, v0, :cond_d

    .line 183
    :cond_5
    sget-object v5, Lde/innosystec/unrar/rarfile/NewSubHeaderType;->SUBHEAD_TYPE_RR:Lde/innosystec/unrar/rarfile/NewSubHeaderType;

    iget-object v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileNameBytes:[B

    invoke-virtual {v5, v6}, Lde/innosystec/unrar/rarfile/NewSubHeaderType;->byteEquals([B)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 184
    iget-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->subData:[B

    aget-byte v5, v5, v11

    iget-object v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->subData:[B

    const/16 v7, 0x9

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    .line 185
    iget-object v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->subData:[B

    const/16 v7, 0xa

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    iget-object v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->subData:[B

    const/16 v7, 0xb

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x18

    add-int/2addr v5, v6

    .line 184
    iput v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->recoverySectors:I

    .line 189
    .end local v0    # "datasize":I
    :cond_6
    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->hasSalt()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 190
    const/4 v1, 0x0

    :goto_6
    if-lt v1, v11, :cond_e

    .line 195
    :cond_7
    iget v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileTime:I

    invoke-direct {p0, v5}, Lde/innosystec/unrar/rarfile/FileHeader;->getDateDos(I)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->mTime:Ljava/util/Date;

    .line 198
    return-void

    .line 118
    .end local v1    # "i":I
    :cond_8
    iput v10, p0, Lde/innosystec/unrar/rarfile/FileHeader;->highPackSize:I

    .line 119
    iput v10, p0, Lde/innosystec/unrar/rarfile/FileHeader;->highUnpackSize:I

    .line 120
    iget-wide v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->unpSize:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 122
    iput-wide v8, p0, Lde/innosystec/unrar/rarfile/FileHeader;->unpSize:J

    .line 123
    const v6, 0x7fffffff

    iput v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->highUnpackSize:I

    goto/16 :goto_0

    .line 135
    :cond_9
    iget-short v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->nameSize:S

    goto/16 :goto_1

    .line 139
    .restart local v1    # "i":I
    :cond_a
    iget-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileNameBytes:[B

    aget-byte v6, p2, v4

    aput-byte v6, v5, v1

    .line 140
    add-int/lit8 v4, v4, 0x1

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 150
    .restart local v2    # "length":I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 160
    .end local v2    # "length":I
    :cond_c
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileNameBytes:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    .line 161
    const-string/jumbo v5, ""

    iput-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    goto/16 :goto_4

    .line 178
    .restart local v0    # "datasize":I
    :cond_d
    iget-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->subData:[B

    aget-byte v6, p2, v4

    aput-byte v6, v5, v1

    .line 179
    add-int/lit8 v4, v4, 0x1

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 191
    .end local v0    # "datasize":I
    :cond_e
    iget-object v5, p0, Lde/innosystec/unrar/rarfile/FileHeader;->salt:[B

    aget-byte v6, p2, v4

    aput-byte v6, v5, v1

    .line 192
    add-int/lit8 v4, v4, 0x1

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private existZH(Ljava/lang/String;)Z
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string/jumbo v2, "[\\u4e00-\\u9fa5]"

    .line 202
    .local v2, "regEx":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 203
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 204
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    const/4 v3, 0x1

    .line 207
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getDateDos(I)Ljava/util/Date;
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 238
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 239
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x19

    add-int/lit16 v2, v2, 0x7bc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 240
    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x15

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 241
    const/4 v1, 0x5

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit8 v2, v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 242
    const/16 v1, 0xb

    ushr-int/lit8 v2, p1, 0xb

    and-int/lit8 v2, v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 243
    const/16 v1, 0xc

    ushr-int/lit8 v2, p1, 0x5

    and-int/lit8 v2, v2, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 244
    const/16 v1, 0xd

    and-int/lit8 v2, p1, 0x1f

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 245
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getATime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->aTime:Ljava/util/Date;

    return-object v0
.end method

.method public getArcTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->arcTime:Ljava/util/Date;

    return-object v0
.end method

.method public getCTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->cTime:Ljava/util/Date;

    return-object v0
.end method

.method public getFileAttr()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileAttr:I

    return v0
.end method

.method public getFileCRC()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileCRC:I

    return v0
.end method

.method public getFileNameByteArray()[B
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileNameBytes:[B

    return-object v0
.end method

.method public getFileNameString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    return-object v0
.end method

.method public getFullPackSize()J
    .locals 2

    .prologue
    .line 357
    iget-wide v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fullPackSize:J

    return-wide v0
.end method

.method public getFullUnpackSize()J
    .locals 2

    .prologue
    .line 361
    iget-wide v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fullUnpackSize:J

    return-wide v0
.end method

.method public getHighPackSize()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->highPackSize:I

    return v0
.end method

.method public getHighUnpackSize()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->highUnpackSize:I

    return v0
.end method

.method public getHostOS()Lde/innosystec/unrar/rarfile/HostSystem;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->hostOS:Lde/innosystec/unrar/rarfile/HostSystem;

    return-object v0
.end method

.method public getMTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->mTime:Ljava/util/Date;

    return-object v0
.end method

.method public getNameSize()S
    .locals 1

    .prologue
    .line 325
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->nameSize:S

    return v0
.end method

.method public getPaddedSize()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->paddedSize:I

    return v0
.end method

.method public getRecoverySectors()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->recoverySectors:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->salt:[B

    return-object v0
.end method

.method public getSubData()[B
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->subData:[B

    return-object v0
.end method

.method public getSubFlags()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->subFlags:I

    return v0
.end method

.method public getUnpMethod()B
    .locals 1

    .prologue
    .line 345
    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->unpMethod:B

    return v0
.end method

.method public getUnpSize()J
    .locals 2

    .prologue
    .line 349
    iget-wide v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->unpSize:J

    return-wide v0
.end method

.method public getUnpVersion()B
    .locals 1

    .prologue
    .line 353
    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->unpVersion:B

    return v0
.end method

.method public hasSalt()Z
    .locals 1

    .prologue
    .line 419
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->flags:S

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 432
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->flags:S

    and-int/lit16 v0, v0, 0xe0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 402
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->flags:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFileHeader()Z
    .locals 2

    .prologue
    .line 415
    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/FileHeader;->headerType:B

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    return v0
.end method

.method public isLargeBlock()Z
    .locals 1

    .prologue
    .line 423
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->flags:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSolid()Z
    .locals 1

    .prologue
    .line 393
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->flags:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSplitAfter()Z
    .locals 1

    .prologue
    .line 375
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->flags:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSplitBefore()Z
    .locals 1

    .prologue
    .line 384
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->flags:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnicode()Z
    .locals 1

    .prologue
    .line 411
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/FileHeader;->flags:S

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public print()V
    .locals 4

    .prologue
    .line 212
    invoke-super {p0}, Lde/innosystec/unrar/rarfile/BlockHeader;->print()V

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v0, "str":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unpSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->getUnpSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nHostOS: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lde/innosystec/unrar/rarfile/FileHeader;->hostOS:Lde/innosystec/unrar/rarfile/HostSystem;

    invoke-virtual {v2}, Lde/innosystec/unrar/rarfile/HostSystem;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nMDate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lde/innosystec/unrar/rarfile/FileHeader;->mTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nFileName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nunpMethod: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->getUnpMethod()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nunpVersion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->getUnpVersion()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nfullpackedsize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nfullunpackedsize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->getFullUnpackSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nisEncrypted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->isEncrypted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nisfileHeader: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->isFileHeader()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nisSolid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->isSolid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nisSplitafter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->isSplitAfter()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nisSplitBefore:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->isSplitBefore()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nunpSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->getUnpSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\ndataSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->getDataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nisUnicode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->isUnicode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nhasVolumeNumber: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->hasVolumeNumber()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nhasArchiveDataCRC: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->hasArchiveDataCRC()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nhasSalt: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->hasSalt()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nhasEncryptVersions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->hasEncryptVersion()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nisSubBlock: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/FileHeader;->isSubBlock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    return-void
.end method

.method public setATime(Ljava/util/Date;)V
    .locals 0
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 261
    iput-object p1, p0, Lde/innosystec/unrar/rarfile/FileHeader;->aTime:Ljava/util/Date;

    .line 262
    return-void
.end method

.method public setArcTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "arcTime"    # Ljava/util/Date;

    .prologue
    .line 253
    iput-object p1, p0, Lde/innosystec/unrar/rarfile/FileHeader;->arcTime:Ljava/util/Date;

    .line 254
    return-void
.end method

.method public setCTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 269
    iput-object p1, p0, Lde/innosystec/unrar/rarfile/FileHeader;->cTime:Ljava/util/Date;

    .line 270
    return-void
.end method

.method public setFileAttr(I)V
    .locals 0
    .param p1, "fileAttr"    # I

    .prologue
    .line 277
    iput p1, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileAttr:I

    .line 278
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileName:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setFileNameW(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileNameW"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lde/innosystec/unrar/rarfile/FileHeader;->fileNameW:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setMTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 321
    iput-object p1, p0, Lde/innosystec/unrar/rarfile/FileHeader;->mTime:Ljava/util/Date;

    .line 322
    return-void
.end method

.method public setPaddingSize(I)V
    .locals 0
    .param p1, "paddedSize"    # I

    .prologue
    .line 436
    iput p1, p0, Lde/innosystec/unrar/rarfile/FileHeader;->paddedSize:I

    .line 438
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
