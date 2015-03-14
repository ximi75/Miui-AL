.class public Lde/innosystec/unrar/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 19
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 15
    const/4 v6, 0x0

    .line 16
    .local v6, "file":Ljava/lang/String;
    const/4 v10, 0x0

    .line 17
    .local v10, "password":Ljava/lang/String;
    const/4 v14, 0x0

    .line 18
    .local v14, "test":Z
    move-object/from16 v0, p0

    array-length v15, v0

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object/from16 v0, p0

    array-length v15, v0

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 19
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    array-length v15, v0

    if-lt v7, v15, :cond_6

    .line 37
    .end local v7    # "i":I
    :cond_1
    if-eqz v6, :cond_2

    if-nez v10, :cond_3

    .line 38
    :cond_2
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v16, "Usage:"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v16, "-f\t<filename>"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v16, "-p\t<password>"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v16, "-t\tOption, run in test mode."

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/System;->exit(I)V

    .line 45
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_4

    .line 47
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "File "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " does not exiest."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/System;->exit(I)V

    .line 50
    :cond_4
    const/4 v1, 0x0

    .line 51
    .local v1, "a":Lde/innosystec/unrar/Archive;
    const/4 v11, 0x0

    .line 53
    .local v11, "result":Z
    if-eqz v14, :cond_a

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 56
    .local v12, "start":J
    :try_start_0
    new-instance v2, Lde/innosystec/unrar/Archive;

    const/4 v15, 0x1

    invoke-direct {v2, v4, v10, v15}, Lde/innosystec/unrar/Archive;-><init>(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1    # "a":Lde/innosystec/unrar/Archive;
    .local v2, "a":Lde/innosystec/unrar/Archive;
    :try_start_1
    invoke-virtual {v2}, Lde/innosystec/unrar/Archive;->test()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v11

    move-object v1, v2

    .line 62
    .end local v2    # "a":Lde/innosystec/unrar/Archive;
    .restart local v1    # "a":Lde/innosystec/unrar/Archive;
    :goto_1
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "PWD:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 63
    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v12

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "ms"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 62
    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    .end local v12    # "start":J
    :cond_5
    return-void

    .line 20
    .end local v1    # "a":Lde/innosystec/unrar/Archive;
    .end local v4    # "f":Ljava/io/File;
    .end local v11    # "result":Z
    .restart local v7    # "i":I
    :cond_6
    const-string/jumbo v15, "-f"

    aget-object v16, p0, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 21
    add-int/lit8 v15, v7, 0x1

    aget-object v6, p0, v15

    .line 19
    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 25
    :cond_8
    const-string/jumbo v15, "-p"

    aget-object v16, p0, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 26
    add-int/lit8 v15, v7, 0x1

    aget-object v10, p0, v15

    .line 27
    goto :goto_2

    .line 30
    :cond_9
    const-string/jumbo v15, "-t"

    aget-object v16, p0, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 31
    const/4 v14, 0x1

    goto :goto_2

    .line 58
    .end local v7    # "i":I
    .restart local v1    # "a":Lde/innosystec/unrar/Archive;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v11    # "result":Z
    .restart local v12    # "start":J
    :catch_0
    move-exception v3

    .line 59
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    const/4 v11, 0x0

    goto :goto_1

    .line 66
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v12    # "start":J
    :cond_a
    :try_start_2
    new-instance v2, Lde/innosystec/unrar/Archive;

    const/4 v15, 0x0

    invoke-direct {v2, v4, v10, v15}, Lde/innosystec/unrar/Archive;-><init>(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v1    # "a":Lde/innosystec/unrar/Archive;
    .restart local v2    # "a":Lde/innosystec/unrar/Archive;
    move-object v1, v2

    .line 71
    .end local v2    # "a":Lde/innosystec/unrar/Archive;
    .restart local v1    # "a":Lde/innosystec/unrar/Archive;
    :goto_4
    if-eqz v1, :cond_5

    .line 72
    invoke-virtual {v1}, Lde/innosystec/unrar/Archive;->getMainHeader()Lde/innosystec/unrar/rarfile/MainHeader;

    move-result-object v15

    invoke-virtual {v15}, Lde/innosystec/unrar/rarfile/MainHeader;->print()V

    .line 73
    invoke-virtual {v1}, Lde/innosystec/unrar/Archive;->nextFileHeader()Lde/innosystec/unrar/rarfile/FileHeader;

    move-result-object v5

    .line 74
    .local v5, "fh":Lde/innosystec/unrar/rarfile/FileHeader;
    :goto_5
    if-eqz v5, :cond_5

    .line 76
    :try_start_3
    new-instance v9, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 77
    invoke-virtual {v5}, Lde/innosystec/unrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 76
    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v9, "out":Ljava/io/File;
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 80
    .local v8, "os":Ljava/io/FileOutputStream;
    invoke-virtual {v1, v5, v8}, Lde/innosystec/unrar/Archive;->extractFile(Lde/innosystec/unrar/rarfile/FileHeader;Ljava/io/OutputStream;)V

    .line 81
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 85
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .end local v9    # "out":Ljava/io/File;
    :goto_6
    invoke-virtual {v1}, Lde/innosystec/unrar/Archive;->nextFileHeader()Lde/innosystec/unrar/rarfile/FileHeader;

    move-result-object v5

    goto :goto_5

    .line 67
    .end local v5    # "fh":Lde/innosystec/unrar/rarfile/FileHeader;
    :catch_1
    move-exception v3

    .line 68
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 82
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "fh":Lde/innosystec/unrar/rarfile/FileHeader;
    :catch_2
    move-exception v3

    .line 83
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 58
    .end local v1    # "a":Lde/innosystec/unrar/Archive;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "fh":Lde/innosystec/unrar/rarfile/FileHeader;
    .restart local v2    # "a":Lde/innosystec/unrar/Archive;
    .restart local v12    # "start":J
    :catch_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "a":Lde/innosystec/unrar/Archive;
    .restart local v1    # "a":Lde/innosystec/unrar/Archive;
    goto :goto_3
.end method
