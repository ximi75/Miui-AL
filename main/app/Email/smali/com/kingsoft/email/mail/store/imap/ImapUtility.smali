.class public Lcom/kingsoft/email/mail/store/imap/ImapUtility;
.super Ljava/lang/Object;
.source "ImapUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImapRangeValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p0, "range"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 102
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 105
    const/16 v7, 0x3a

    :try_start_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 106
    .local v0, "colonPos":I
    if-lez v0, :cond_1

    .line 107
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 108
    .local v2, "first":I
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 109
    .local v5, "second":I
    if-ge v2, v5, :cond_0

    .line 110
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-gt v3, v5, :cond_1

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local v3    # "i":I
    :cond_0
    move v3, v2

    .restart local v3    # "i":I
    :goto_1
    if-lt v3, v5, :cond_1

    .line 115
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 120
    .end local v0    # "colonPos":I
    .end local v2    # "first":I
    .end local v3    # "i":I
    .end local v5    # "second":I
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "Invalid range value"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v10

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 123
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 124
    .local v6, "stringList":[Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method public static getImapSequenceValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 17
    .param p0, "set"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    .line 70
    const-string/jumbo v13, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 71
    .local v11, "setItems":[Ljava/lang/String;
    move-object v1, v11

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v6, v1, v5

    .line 72
    .local v6, "item":Ljava/lang/String;
    const/16 v13, 0x3a

    invoke-virtual {v6, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_1

    .line 75
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 76
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v5    # "i$":I
    :cond_0
    :goto_1
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 77
    :catch_0
    move-exception v3

    .line 78
    .local v3, "e":Ljava/lang/NumberFormatException;
    sget-object v13, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Invalid UID value"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v3, v15, v16

    invoke-static {v13, v14, v15}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 82
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-static {v6}, Lcom/kingsoft/email/mail/store/imap/ImapUtility;->getImapRangeValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v8, :cond_0

    aget-object v10, v2, v4

    .line 83
    .local v10, "rangeItem":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 88
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "item":Ljava/lang/String;
    .end local v8    # "len$":I
    .end local v10    # "rangeItem":Ljava/lang/String;
    .end local v11    # "setItems":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v12, v13, [Ljava/lang/String;

    .line 89
    .local v12, "stringList":[Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    return-object v13
.end method

.method public static imapQuoted(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string/jumbo v1, "\\\\"

    const-string/jumbo v2, "\\\\\\\\"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "result":Ljava/lang/String;
    const-string/jumbo v1, "\""

    const-string/jumbo v2, "\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
