.class public Lcom/kingsoft/ex/photo/util/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraExif"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation(Ljava/io/InputStream;J)I
    .locals 18
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "byteSize"    # J

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v15, 0x0

    .line 179
    :goto_0
    return v15

    .line 64
    :cond_0
    const/16 v7, 0x10

    .line 65
    .local v7, "lookAhead":I
    const/4 v13, 0x4

    .line 66
    .local v13, "readBackwards":I
    new-instance v4, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;

    const/16 v15, 0x10

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v4, v0, v15, v1}, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;-><init>(Ljava/io/InputStream;IZ)V

    .line 68
    .local v4, "jpeg":Lcom/kingsoft/ex/photo/util/InputStreamBuffer;
    const/4 v9, 0x0

    .line 69
    .local v9, "offset":I
    const/4 v5, 0x0

    .line 71
    .local v5, "length":I
    const/4 v15, 0x1

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1, v15}, Lcom/kingsoft/ex/photo/util/Exif;->has(Lcom/kingsoft/ex/photo/util/InputStreamBuffer;JI)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 73
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->get(I)B

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->get(I)B

    move-result v15

    const/16 v16, -0x28

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    const/4 v12, 0x1

    .line 75
    .local v12, "possibleJpegFormat":Z
    :goto_1
    if-nez v12, :cond_2

    .line 76
    const/4 v15, 0x0

    goto :goto_0

    .line 73
    .end local v12    # "possibleJpegFormat":Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 81
    :cond_2
    :goto_2
    add-int/lit8 v15, v9, 0x3

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1, v15}, Lcom/kingsoft/ex/photo/util/Exif;->has(Lcom/kingsoft/ex/photo/util/InputStreamBuffer;JI)Z

    move-result v15

    if-eqz v15, :cond_5

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "offset":I
    .local v10, "offset":I
    invoke-virtual {v4, v9}, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->get(I)B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    const/16 v16, 0xff

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 82
    invoke-virtual {v4, v10}, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->get(I)B

    move-result v15

    and-int/lit16 v8, v15, 0xff

    .line 85
    .local v8, "marker":I
    const/16 v15, 0xff

    if-ne v8, v15, :cond_3

    move v9, v10

    .line 86
    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_2

    .line 88
    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    :cond_3
    add-int/lit8 v9, v10, 0x1

    .line 91
    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    const/16 v15, 0xd8

    if-eq v8, v15, :cond_2

    const/4 v15, 0x1

    if-eq v8, v15, :cond_2

    .line 95
    const/16 v15, 0xd9

    if-eq v8, v15, :cond_4

    const/16 v15, 0xda

    if-ne v8, v15, :cond_6

    .line 97
    :cond_4
    add-int/lit8 v15, v9, -0x4

    invoke-virtual {v4, v15}, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->advanceTo(I)V

    .line 128
    .end local v8    # "marker":I
    :cond_5
    :goto_3
    const/16 v15, 0x8

    if-le v5, v15, :cond_f

    .line 130
    const/4 v15, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v4, v9, v15, v0}, Lcom/kingsoft/ex/photo/util/Exif;->pack(Lcom/kingsoft/ex/photo/util/InputStreamBuffer;IIZ)I

    move-result v14

    .line 131
    .local v14, "tag":I
    const v15, 0x49492a00

    if-eq v14, v15, :cond_a

    const v15, 0x4d4d002a

    if-eq v14, v15, :cond_a

    .line 132
    const-string/jumbo v15, "CameraExif"

    const-string/jumbo v16, "Invalid byte order"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 133
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 102
    .end local v14    # "tag":I
    .restart local v8    # "marker":I
    :cond_6
    const/4 v15, 0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v4, v9, v15, v0}, Lcom/kingsoft/ex/photo/util/Exif;->pack(Lcom/kingsoft/ex/photo/util/InputStreamBuffer;IIZ)I

    move-result v5

    .line 103
    const/4 v15, 0x2

    if-lt v5, v15, :cond_7

    add-int v15, v9, v5

    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1, v15}, Lcom/kingsoft/ex/photo/util/Exif;->has(Lcom/kingsoft/ex/photo/util/InputStreamBuffer;JI)Z

    move-result v15

    if-nez v15, :cond_8

    .line 104
    :cond_7
    const-string/jumbo v15, "CameraExif"

    const-string/jumbo v16, "Invalid length"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 109
    :cond_8
    const/16 v15, 0xe1

    if-ne v8, v15, :cond_9

    const/16 v15, 0x8

    if-lt v5, v15, :cond_9

    add-int/lit8 v15, v9, 0x2

    const/16 v16, 0x4

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v15, v0, v1}, Lcom/kingsoft/ex/photo/util/Exif;->pack(Lcom/kingsoft/ex/photo/util/InputStreamBuffer;IIZ)I

    move-result v15

    const v16, 0x45786966

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    add-int/lit8 v15, v9, 0x6

    const/16 v16, 0x2

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v15, v0, v1}, Lcom/kingsoft/ex/photo/util/Exif;->pack(Lcom/kingsoft/ex/photo/util/InputStreamBuffer;IIZ)I

    move-result v15

    if-nez v15, :cond_9

    .line 112
    add-int/lit8 v9, v9, 0x8

    .line 113
    add-int/lit8 v5, v5, -0x8

    .line 115
    add-int/lit8 v15, v9, -0x4

    invoke-virtual {v4, v15}, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->advanceTo(I)V

    goto/16 :goto_3

    .line 120
    :cond_9
    add-int/2addr v9, v5

    .line 121
    const/4 v5, 0x0

    .line 124
    add-int/lit8 v15, v9, -0x4

    invoke-virtual {v4, v15}, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->advanceTo(I)V

    goto/16 :goto_2

    .line 135
    .end local v8    # "marker":I
    .restart local v14    # "tag":I
    :cond_a
    const v15, 0x49492a00

    if-ne v14, v15, :cond_c

    const/4 v6, 0x1

    .line 138
    .local v6, "littleEndian":Z
    :goto_4
    add-int/lit8 v15, v9, 0x4

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v4, v15, v0, v6}, Lcom/kingsoft/ex/photo/util/Exif;->pack(Lcom/kingsoft/ex/photo/util/InputStreamBuffer;IIZ)I

    move-result v15

    add-int/lit8 v2, v15, 0x2

    .line 139
    .local v2, "count":I
    const/16 v15, 0xa

    if-lt v2, v15, :cond_b

    if-le v2, v5, :cond_d

    .line 140
    :cond_b
    const-string/jumbo v15, "CameraExif"

    const-string/jumbo v16, "Invalid offset"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 141
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 135
    .end local v2    # "count":I
    .end local v6    # "littleEndian":Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_4

    .line 143
    .restart local v2    # "count":I
    .restart local v6    # "littleEndian":Z
    :cond_d
    add-int/2addr v9, v2

    .line 144
    sub-int/2addr v5, v2

    .line 147
    add-int/lit8 v15, v9, -0x4

    invoke-virtual {v4, v15}, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->advanceTo(I)V

    .line 150
    add-int/lit8 v15, v9, -0x2

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v4, v15, v0, v6}, Lcom/kingsoft/ex/photo/util/Exif;->pack(Lcom/kingsoft/ex/photo/util/InputStreamBuffer;IIZ)I

    move-result v2

    move v3, v2

    .line 152
    .end local v2    # "count":I
    .local v3, "count":I
    :goto_5
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    if-lez v3, :cond_f

    const/16 v15, 0xc

    if-lt v5, v15, :cond_f

    .line 154
    const/4 v15, 0x2

    invoke-static {v4, v9, v15, v6}, Lcom/kingsoft/ex/photo/util/Exif;->pack(Lcom/kingsoft/ex/photo/util/InputStreamBuffer;IIZ)I

    move-result v14

    .line 155
    const/16 v15, 0x112

    if-ne v14, v15, :cond_e

    .line 157
    add-int/lit8 v15, v9, 0x8

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v4, v15, v0, v6}, Lcom/kingsoft/ex/photo/util/Exif;->pack(Lcom/kingsoft/ex/photo/util/InputStreamBuffer;IIZ)I

    move-result v11

    .line 158
    .local v11, "orientation":I
    packed-switch v11, :pswitch_data_0

    .line 168
    :pswitch_0
    const-string/jumbo v15, "CameraExif"

    const-string/jumbo v16, "Unsupported orientation"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 169
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 160
    :pswitch_1
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 162
    :pswitch_2
    const/16 v15, 0xb4

    goto/16 :goto_0

    .line 164
    :pswitch_3
    const/16 v15, 0x5a

    goto/16 :goto_0

    .line 166
    :pswitch_4
    const/16 v15, 0x10e

    goto/16 :goto_0

    .line 171
    .end local v11    # "orientation":I
    :cond_e
    add-int/lit8 v9, v9, 0xc

    .line 172
    add-int/lit8 v5, v5, -0xc

    .line 175
    add-int/lit8 v15, v9, -0x4

    invoke-virtual {v4, v15}, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->advanceTo(I)V

    move v3, v2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto :goto_5

    .line 179
    .end local v3    # "count":I
    .end local v6    # "littleEndian":Z
    .end local v14    # "tag":I
    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_0

    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    :cond_10
    move v9, v10

    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_3

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getOrientation([B)I
    .locals 3
    .param p0, "jpeg"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p0

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/kingsoft/ex/photo/util/Exif;->getOrientation(Ljava/io/InputStream;J)I

    move-result v0

    return v0
.end method

.method private static has(Lcom/kingsoft/ex/photo/util/InputStreamBuffer;JI)Z
    .locals 2
    .param p0, "jpeg"    # Lcom/kingsoft/ex/photo/util/InputStreamBuffer;
    .param p1, "byteSize"    # J
    .param p3, "index"    # I

    .prologue
    .line 199
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 200
    int-to-long v0, p3

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {p0, p3}, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->has(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static pack(Lcom/kingsoft/ex/photo/util/InputStreamBuffer;IIZ)I
    .locals 5
    .param p0, "bytes"    # Lcom/kingsoft/ex/photo/util/InputStreamBuffer;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "littleEndian"    # Z

    .prologue
    .line 184
    const/4 v1, 0x1

    .line 185
    .local v1, "step":I
    if-eqz p3, :cond_0

    .line 186
    add-int/lit8 v3, p2, -0x1

    add-int/2addr p1, v3

    .line 187
    const/4 v1, -0x1

    .line 190
    :cond_0
    const/4 v2, 0x0

    .local v2, "value":I
    move v0, p2

    .line 191
    .end local p2    # "length":I
    .local v0, "length":I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "length":I
    .restart local p2    # "length":I
    if-lez v0, :cond_1

    .line 192
    shl-int/lit8 v3, v2, 0x8

    invoke-virtual {p0, p1}, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 193
    add-int/2addr p1, v1

    move v0, p2

    .end local p2    # "length":I
    .restart local v0    # "length":I
    goto :goto_0

    .line 195
    .end local v0    # "length":I
    .restart local p2    # "length":I
    :cond_1
    return v2
.end method
