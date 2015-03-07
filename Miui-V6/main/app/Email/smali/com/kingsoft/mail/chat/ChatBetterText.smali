.class public Lcom/kingsoft/mail/chat/ChatBetterText;
.super Ljava/lang/Object;
.source "ChatBetterText.java"


# static fields
.field public static final BETTER_BODYTEXT_DEL_STR1:Ljava/lang/String; = "&nbsp;"

.field public static final BETTER_BODYTEXT_MAXCHAR:I = 0xc8

.field public static final BETTER_BODYTEXT_MAXLINE:I = 0xa

.field public static final NBSP:I = 0xa0

.field private static mInstance:Lcom/kingsoft/mail/chat/ChatBetterText;


# instance fields
.field private mPicInBodyStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/mail/chat/ChatBetterText;->mInstance:Lcom/kingsoft/mail/chat/ChatBetterText;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private eraseDeadLine(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "srcStr"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    const/4 v6, 0x0

    .line 145
    move-object v4, p1

    .line 146
    .local v4, "rstStr":Ljava/lang/String;
    move v1, p2

    .local v1, "end":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 147
    .local v3, "length":I
    const/4 v2, 0x0

    .line 149
    .local v2, "isReplace":Ljava/lang/Boolean;
    const/4 v0, 0x0

    .line 150
    .local v0, "c":C
    :goto_0
    if-ge v1, v3, :cond_4

    .line 151
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 152
    const/16 v5, 0x8

    if-eq v0, v5, :cond_0

    const/16 v5, 0x9

    if-eq v0, v5, :cond_0

    const/16 v5, 0x20

    if-eq v0, v5, :cond_0

    const/16 v5, 0xa0

    if-ne v0, v5, :cond_2

    .line 153
    :cond_0
    if-nez v2, :cond_1

    .line 154
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 156
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_2
    const/16 v5, 0xa

    if-ne v0, v5, :cond_4

    .line 158
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    .line 159
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 161
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 168
    :cond_4
    if-nez v2, :cond_6

    .line 183
    .end local v4    # "rstStr":Ljava/lang/String;
    :cond_5
    :goto_1
    return-object v4

    .line 170
    .restart local v4    # "rstStr":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 171
    if-ne v1, v3, :cond_7

    .line 172
    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 174
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 176
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5

    .line 177
    if-ne v1, v3, :cond_5

    .line 178
    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private eraseRepeatStr(Ljava/lang/String;Ljava/lang/String;II)Lcom/kingsoft/mail/utils/Pair;
    .locals 9
    .param p1, "srcStr"    # Ljava/lang/String;
    .param p2, "repeatStr"    # Ljava/lang/String;
    .param p3, "repeatNum"    # I
    .param p4, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/kingsoft/mail/utils/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    move-object v5, p1

    .line 233
    .local v5, "rstStr":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "curNum":I
    move v1, p4

    .line 234
    .local v1, "end":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 235
    .local v4, "repeatStrLgh":I
    const/4 v2, 0x0

    .local v2, "isExist":Z
    const/4 v3, 0x0

    .line 238
    .local v3, "isReplace":Z
    :cond_0
    :goto_0
    invoke-virtual {v5, p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    .line 239
    if-nez v2, :cond_1

    .line 248
    if-eqz v3, :cond_2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v5, v8, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kingsoft/mail/utils/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/kingsoft/mail/utils/Pair;

    move-result-object v6

    :goto_1
    return-object v6

    .line 242
    :cond_1
    add-int/2addr v1, v4

    .line 243
    add-int/lit8 v0, v0, 0x1

    if-ne v0, p3, :cond_0

    .line 244
    const/4 v3, 0x1

    goto :goto_0

    .line 248
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private eraseSpecialRepeatStr(Ljava/lang/String;Ljava/lang/String;I)Lcom/kingsoft/mail/utils/Pair;
    .locals 9
    .param p1, "srcStr"    # Ljava/lang/String;
    .param p2, "specialRepeatStr"    # Ljava/lang/String;
    .param p3, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/kingsoft/mail/utils/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    move-object v5, p1

    .line 266
    .local v5, "rstStr":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "curNum":I
    move v1, p3

    .line 267
    .local v1, "end":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 268
    .local v4, "repeatStrLgh":I
    const/4 v2, 0x0

    .local v2, "isExist":Z
    const/4 v3, 0x0

    .line 271
    .local v3, "isReplace":Z
    :cond_0
    :goto_0
    invoke-virtual {v5, p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    .line 272
    if-nez v2, :cond_1

    .line 282
    if-eqz v3, :cond_2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v5, v8, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kingsoft/mail/utils/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/kingsoft/mail/utils/Pair;

    move-result-object v6

    :goto_1
    return-object v6

    .line 275
    :cond_1
    add-int/2addr v1, v4

    .line 276
    invoke-direct {p0, v5, p2, v1}, Lcom/kingsoft/mail/chat/ChatBetterText;->getUselessCharCount(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    add-int/2addr v1, v6

    .line 277
    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    .line 278
    const/4 v3, 0x1

    goto :goto_0

    .line 282
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private eraseUselessStr(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "srcStr"    # Ljava/lang/String;
    .param p2, "isHead"    # Z

    .prologue
    const/4 v5, 0x0

    .line 193
    move-object v4, p1

    .line 194
    .local v4, "rstStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 195
    .local v3, "length":I
    if-eqz p2, :cond_3

    move v1, v5

    .line 196
    .local v1, "end":I
    :goto_0
    const/4 v2, 0x0

    .line 198
    .local v2, "isErase":Z
    const/4 v0, 0x0

    .line 200
    .local v0, "c":C
    :cond_0
    :goto_1
    if-eqz p2, :cond_4

    .line 201
    if-lt v1, v3, :cond_5

    .line 220
    :cond_1
    if-eqz v2, :cond_2

    if-eqz p2, :cond_8

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "rstStr":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v4

    .line 195
    .end local v0    # "c":C
    .end local v1    # "end":I
    .end local v2    # "isErase":Z
    .restart local v4    # "rstStr":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    .line 205
    .restart local v0    # "c":C
    .restart local v1    # "end":I
    .restart local v2    # "isErase":Z
    :cond_4
    if-ltz v1, :cond_1

    .line 209
    :cond_5
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 210
    const/16 v6, 0x8

    if-eq v0, v6, :cond_6

    const/16 v6, 0x9

    if-eq v0, v6, :cond_6

    const/16 v6, 0x20

    if-eq v0, v6, :cond_6

    const/16 v6, 0xa

    if-ne v0, v6, :cond_1

    .line 211
    :cond_6
    if-eqz p2, :cond_7

    add-int/lit8 v1, v1, 0x1

    .line 212
    :goto_3
    if-nez v2, :cond_0

    .line 213
    const/4 v2, 0x1

    goto :goto_1

    .line 211
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 220
    :cond_8
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public static getInstance()Lcom/kingsoft/mail/chat/ChatBetterText;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/kingsoft/mail/chat/ChatBetterText;->mInstance:Lcom/kingsoft/mail/chat/ChatBetterText;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/kingsoft/mail/chat/ChatBetterText;

    invoke-direct {v0}, Lcom/kingsoft/mail/chat/ChatBetterText;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/chat/ChatBetterText;->mInstance:Lcom/kingsoft/mail/chat/ChatBetterText;

    .line 26
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/chat/ChatBetterText;->mInstance:Lcom/kingsoft/mail/chat/ChatBetterText;

    return-object v0
.end method

.method private getUselessCharCount(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "srcStr"    # Ljava/lang/String;
    .param p2, "repeatStr"    # Ljava/lang/String;
    .param p3, "start"    # I

    .prologue
    const/4 v6, 0x0

    .line 295
    const/4 v0, 0x0

    .local v0, "c":C
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 296
    .local v2, "flag":C
    move v1, p3

    .local v1, "end":I
    const/4 v5, 0x0

    .local v5, "num":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 297
    .local v4, "length":I
    const/4 v3, 0x0

    .line 300
    .local v3, "isUseLess":Z
    :goto_0
    if-lt v1, v4, :cond_1

    .line 315
    :cond_0
    :goto_1
    if-eqz v3, :cond_4

    .end local v5    # "num":I
    :goto_2
    return v5

    .line 303
    .restart local v5    # "num":I
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 304
    const/16 v7, 0xa

    if-eq v0, v7, :cond_2

    const/16 v7, 0x20

    if-eq v0, v7, :cond_2

    const/16 v7, 0x9

    if-eq v0, v7, :cond_2

    const/16 v7, 0x8

    if-ne v0, v7, :cond_3

    .line 305
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 306
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 307
    :cond_3
    if-ne v0, v2, :cond_0

    .line 308
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    .line 309
    goto :goto_1

    :cond_4
    move v5, v6

    .line 315
    goto :goto_2
.end method


# virtual methods
.method public eraseSpecialStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "srcStr"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, "rstStr":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 121
    .local v1, "i":I
    const/4 v0, 0x0

    .line 123
    .local v0, "c":C
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 124
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 125
    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 127
    :cond_0
    const/16 v3, 0xa0

    if-ne v0, v3, :cond_1

    .line 128
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 129
    const/16 v3, 0x20

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getBetterBodytext(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p1, "bodyText"    # Ljava/lang/String;
    .param p2, "isFull"    # Z

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x3

    .line 45
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 46
    :cond_0
    const/4 v4, 0x0

    .line 111
    :cond_1
    :goto_0
    return-object v4

    .line 48
    :cond_2
    const/4 v3, 0x0

    .line 49
    .local v3, "pair":Lcom/kingsoft/mail/utils/Pair;, "Lcom/kingsoft/mail/utils/Pair<Ljava/lang/Boolean;Ljava/lang/String;>;"
    move-object v4, p1

    .line 50
    .local v4, "rstStr":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v1, 0x0

    .line 51
    .local v1, "curLineNum":I
    const/4 v0, 0x0

    .line 53
    .local v0, "c":C
    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/chat/ChatBetterText;->eraseSpecialStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 56
    const/4 v2, 0x0

    :cond_3
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 57
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 58
    const/16 v5, 0x26

    if-ne v0, v5, :cond_5

    .line 59
    const-string/jumbo v5, "&nbsp;"

    invoke-direct {p0, v4, v5, v7, v2}, Lcom/kingsoft/mail/chat/ChatBetterText;->eraseRepeatStr(Ljava/lang/String;Ljava/lang/String;II)Lcom/kingsoft/mail/utils/Pair;

    move-result-object v3

    .line 60
    if-nez v3, :cond_4

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 63
    :cond_4
    iget-object v4, v3, Lcom/kingsoft/mail/utils/Pair;->second:Ljava/lang/Object;

    .end local v4    # "rstStr":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 64
    .restart local v4    # "rstStr":Ljava/lang/String;
    const-string/jumbo v5, "&nbsp;"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_1

    .line 66
    :cond_5
    if-ne v0, v8, :cond_7

    .line 67
    const-string/jumbo v5, "\n"

    const/4 v6, 0x2

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/kingsoft/mail/chat/ChatBetterText;->eraseRepeatStr(Ljava/lang/String;Ljava/lang/String;II)Lcom/kingsoft/mail/utils/Pair;

    move-result-object v3

    .line 68
    if-eqz v3, :cond_6

    .line 69
    iget-object v4, v3, Lcom/kingsoft/mail/utils/Pair;->second:Ljava/lang/Object;

    .end local v4    # "rstStr":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 71
    .restart local v4    # "rstStr":Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 72
    invoke-direct {p0, v4, v2}, Lcom/kingsoft/mail/chat/ChatBetterText;->eraseDeadLine(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    if-nez p2, :cond_3

    if-ne v1, v8, :cond_3

    goto :goto_0

    .line 77
    :cond_7
    const/16 v5, 0x20

    if-ne v0, v5, :cond_9

    .line 78
    const-string/jumbo v5, " "

    invoke-direct {p0, v4, v5, v7, v2}, Lcom/kingsoft/mail/chat/ChatBetterText;->eraseRepeatStr(Ljava/lang/String;Ljava/lang/String;II)Lcom/kingsoft/mail/utils/Pair;

    move-result-object v3

    .line 79
    if-eqz v3, :cond_8

    .line 80
    iget-object v4, v3, Lcom/kingsoft/mail/utils/Pair;->second:Ljava/lang/Object;

    .end local v4    # "rstStr":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 82
    .restart local v4    # "rstStr":Ljava/lang/String;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 83
    :cond_9
    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatBetterText;->mPicInBodyStr:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_b

    .line 84
    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatBetterText;->mPicInBodyStr:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v2}, Lcom/kingsoft/mail/chat/ChatBetterText;->eraseSpecialRepeatStr(Ljava/lang/String;Ljava/lang/String;I)Lcom/kingsoft/mail/utils/Pair;

    move-result-object v3

    .line 85
    if-nez v3, :cond_a

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    :cond_a
    iget-object v4, v3, Lcom/kingsoft/mail/utils/Pair;->second:Ljava/lang/Object;

    .end local v4    # "rstStr":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 89
    .restart local v4    # "rstStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatBetterText;->mPicInBodyStr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_1

    .line 91
    :cond_b
    const/16 v5, 0x8

    if-ne v0, v5, :cond_d

    .line 92
    const-string/jumbo v5, "\u0008"

    invoke-direct {p0, v4, v5, v7, v2}, Lcom/kingsoft/mail/chat/ChatBetterText;->eraseRepeatStr(Ljava/lang/String;Ljava/lang/String;II)Lcom/kingsoft/mail/utils/Pair;

    move-result-object v3

    .line 93
    if-eqz v3, :cond_c

    .line 94
    iget-object v4, v3, Lcom/kingsoft/mail/utils/Pair;->second:Ljava/lang/Object;

    .end local v4    # "rstStr":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 96
    .restart local v4    # "rstStr":Ljava/lang/String;
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 97
    :cond_d
    const/16 v5, 0x9

    if-ne v0, v5, :cond_f

    .line 98
    const-string/jumbo v5, "\t"

    invoke-direct {p0, v4, v5, v7, v2}, Lcom/kingsoft/mail/chat/ChatBetterText;->eraseRepeatStr(Ljava/lang/String;Ljava/lang/String;II)Lcom/kingsoft/mail/utils/Pair;

    move-result-object v3

    .line 99
    if-eqz v3, :cond_e

    .line 100
    iget-object v4, v3, Lcom/kingsoft/mail/utils/Pair;->second:Ljava/lang/Object;

    .end local v4    # "rstStr":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 102
    .restart local v4    # "rstStr":Ljava/lang/String;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 104
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 105
    if-nez p2, :cond_3

    const/16 v5, 0xc8

    if-le v2, v5, :cond_3

    goto/16 :goto_0
.end method

.method public init(Ljava/lang/String;)V
    .locals 1
    .param p1, "picInBodyStr"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatBetterText;->mPicInBodyStr:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 31
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatBetterText;->mPicInBodyStr:Ljava/lang/String;

    .line 33
    :cond_0
    return-void
.end method
