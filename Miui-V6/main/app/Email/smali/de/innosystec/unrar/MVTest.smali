.class public Lde/innosystec/unrar/MVTest;
.super Ljava/lang/Object;
.source "MVTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 18
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 14
    const-string/jumbo v5, "c:/testdata/test3.rar"

    .line 15
    .local v5, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .local v3, "f":Ljava/io/File;
    const/4 v0, 0x0

    .line 17
    .local v0, "a":Lde/innosystec/unrar/Archive;
    const/4 v10, 0x0

    .line 19
    .local v10, "result":Z
    const/4 v13, 0x1

    .line 21
    .local v13, "test":Z
    if-eqz v13, :cond_2

    .line 22
    const/4 v14, 0x3

    new-array v9, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "114"

    aput-object v15, v9, v14

    const/4 v14, 0x1

    const-string/jumbo v15, "1234"

    aput-object v15, v9, v14

    const/4 v14, 0x2

    const-string/jumbo v15, "sdfsdfsdfsdf"

    aput-object v15, v9, v14

    .line 24
    .local v9, "pwds":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v14, v9

    if-lt v6, v14, :cond_1

    .line 61
    .end local v6    # "i":I
    .end local v9    # "pwds":[Ljava/lang/String;
    :cond_0
    return-void

    .line 25
    .restart local v6    # "i":I
    .restart local v9    # "pwds":[Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 27
    .local v11, "start":J
    :try_start_0
    new-instance v1, Lde/innosystec/unrar/Archive;

    aget-object v14, v9, v6

    const/4 v15, 0x1

    invoke-direct {v1, v3, v14, v15}, Lde/innosystec/unrar/Archive;-><init>(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v0    # "a":Lde/innosystec/unrar/Archive;
    .local v1, "a":Lde/innosystec/unrar/Archive;
    :try_start_1
    invoke-virtual {v1}, Lde/innosystec/unrar/Archive;->test()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v10

    move-object v0, v1

    .line 33
    .end local v1    # "a":Lde/innosystec/unrar/Archive;
    .restart local v0    # "a":Lde/innosystec/unrar/Archive;
    :goto_1
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "PWD["

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "]:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v9, v6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 34
    const-string/jumbo v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v11

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 33
    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 29
    :catch_0
    move-exception v2

    .line 30
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v10, 0x0

    goto :goto_1

    .line 38
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "i":I
    .end local v9    # "pwds":[Ljava/lang/String;
    .end local v11    # "start":J
    :cond_2
    :try_start_2
    new-instance v1, Lde/innosystec/unrar/Archive;

    const-string/jumbo v14, "1234"

    const/4 v15, 0x0

    invoke-direct {v1, v3, v14, v15}, Lde/innosystec/unrar/Archive;-><init>(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0    # "a":Lde/innosystec/unrar/Archive;
    .restart local v1    # "a":Lde/innosystec/unrar/Archive;
    move-object v0, v1

    .line 43
    .end local v1    # "a":Lde/innosystec/unrar/Archive;
    .restart local v0    # "a":Lde/innosystec/unrar/Archive;
    :goto_3
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lde/innosystec/unrar/Archive;->getMainHeader()Lde/innosystec/unrar/rarfile/MainHeader;

    move-result-object v14

    invoke-virtual {v14}, Lde/innosystec/unrar/rarfile/MainHeader;->print()V

    .line 45
    invoke-virtual {v0}, Lde/innosystec/unrar/Archive;->nextFileHeader()Lde/innosystec/unrar/rarfile/FileHeader;

    move-result-object v4

    .line 46
    .local v4, "fh":Lde/innosystec/unrar/rarfile/FileHeader;
    :goto_4
    if-eqz v4, :cond_0

    .line 48
    :try_start_3
    new-instance v8, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "c:/testdata/"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v4}, Lde/innosystec/unrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 48
    invoke-direct {v8, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v8, "out":Ljava/io/File;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 52
    .local v7, "os":Ljava/io/FileOutputStream;
    invoke-virtual {v0, v4, v7}, Lde/innosystec/unrar/Archive;->extractFile(Lde/innosystec/unrar/rarfile/FileHeader;Ljava/io/OutputStream;)V

    .line 53
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 57
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .end local v8    # "out":Ljava/io/File;
    :goto_5
    invoke-virtual {v0}, Lde/innosystec/unrar/Archive;->nextFileHeader()Lde/innosystec/unrar/rarfile/FileHeader;

    move-result-object v4

    goto :goto_4

    .line 39
    .end local v4    # "fh":Lde/innosystec/unrar/rarfile/FileHeader;
    :catch_1
    move-exception v2

    .line 40
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 54
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "fh":Lde/innosystec/unrar/rarfile/FileHeader;
    :catch_2
    move-exception v2

    .line 55
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 29
    .end local v0    # "a":Lde/innosystec/unrar/Archive;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "fh":Lde/innosystec/unrar/rarfile/FileHeader;
    .restart local v1    # "a":Lde/innosystec/unrar/Archive;
    .restart local v6    # "i":I
    .restart local v9    # "pwds":[Ljava/lang/String;
    .restart local v11    # "start":J
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "a":Lde/innosystec/unrar/Archive;
    .restart local v0    # "a":Lde/innosystec/unrar/Archive;
    goto :goto_2
.end method
