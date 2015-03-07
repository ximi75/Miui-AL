.class abstract Lcom/google/common/cache/Striped64;
.super Ljava/lang/Number;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/Striped64$ThreadHashCode;,
        Lcom/google/common/cache/Striped64$HashCode;,
        Lcom/google/common/cache/Striped64$Cell;
    }
.end annotation


# static fields
.field static final NCPU:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final baseOffset:J

.field private static final busyOffset:J

.field static final threadHashCode:Lcom/google/common/cache/Striped64$ThreadHashCode;


# instance fields
.field volatile transient base:J

.field volatile transient busy:I

.field volatile transient cells:[Lcom/google/common/cache/Striped64$Cell;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 145
    new-instance v2, Lcom/google/common/cache/Striped64$ThreadHashCode;

    invoke-direct {v2}, Lcom/google/common/cache/Striped64$ThreadHashCode;-><init>()V

    sput-object v2, Lcom/google/common/cache/Striped64;->threadHashCode:Lcom/google/common/cache/Striped64$ThreadHashCode;

    .line 148
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    sput v2, Lcom/google/common/cache/Striped64;->NCPU:I

    .line 306
    :try_start_0
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    .line 307
    const-class v1, Lcom/google/common/cache/Striped64;

    .line 308
    .local v1, "sk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string/jumbo v3, "base"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    .line 310
    sget-object v2, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string/jumbo v3, "busy"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/cache/Striped64;->busyOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 170
    return-void
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 4

    .prologue
    .line 326
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 329
    :goto_0
    return-object v1

    .line 327
    :catch_0
    move-exception v1

    .line 329
    :try_start_1
    new-instance v1, Lcom/google/common/cache/Striped64$1;

    invoke-direct {v1}, Lcom/google/common/cache/Striped64$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 341
    :catch_1
    move-exception v0

    .line 342
    .local v0, "e":Ljava/security/PrivilegedActionException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final casBase(JJ)Z
    .locals 8
    .param p1, "cmp"    # J
    .param p3, "val"    # J

    .prologue
    .line 176
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method final casBusy()Z
    .locals 6

    .prologue
    .line 183
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->busyOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method abstract fn(JJ)J
.end method

.method final internalReset(J)V
    .locals 4
    .param p1, "initialValue"    # J

    .prologue
    .line 288
    iget-object v1, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 289
    .local v1, "as":[Lcom/google/common/cache/Striped64$Cell;
    iput-wide p1, p0, Lcom/google/common/cache/Striped64;->base:J

    .line 290
    if-eqz v1, :cond_1

    .line 291
    array-length v3, v1

    .line 292
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 293
    aget-object v0, v1, v2

    .line 294
    .local v0, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v0, :cond_0

    .line 295
    iput-wide p1, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    .line 292
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v0    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_1
    return-void
.end method

.method final retryUpdate(JLcom/google/common/cache/Striped64$HashCode;Z)V
    .locals 21
    .param p1, "x"    # J
    .param p3, "hc"    # Lcom/google/common/cache/Striped64$HashCode;
    .param p4, "wasUncontended"    # Z

    .prologue
    .line 209
    move-object/from16 v0, p3

    iget v9, v0, Lcom/google/common/cache/Striped64$HashCode;->code:I

    .line 210
    .local v9, "h":I
    const/4 v7, 0x0

    .line 213
    .local v7, "collide":Z
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .local v6, "as":[Lcom/google/common/cache/Striped64$Cell;
    if-eqz v6, :cond_c

    array-length v14, v6

    .local v14, "n":I
    if-lez v14, :cond_c

    .line 214
    add-int/lit8 v19, v14, -0x1

    and-int v19, v19, v9

    aget-object v5, v6, v19

    .local v5, "a":Lcom/google/common/cache/Striped64$Cell;
    if-nez v5, :cond_5

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 216
    new-instance v15, Lcom/google/common/cache/Striped64$Cell;

    move-wide/from16 v0, p1

    invoke-direct {v15, v0, v1}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    .line 217
    .local v15, "r":Lcom/google/common/cache/Striped64$Cell;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 218
    const/4 v8, 0x0

    .line 221
    .local v8, "created":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v16, v0

    .local v16, "rs":[Lcom/google/common/cache/Striped64$Cell;
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    array-length v13, v0

    .local v13, "m":I
    if-lez v13, :cond_1

    add-int/lit8 v19, v13, -0x1

    and-int v12, v19, v9

    .local v12, "j":I
    aget-object v19, v16, v12

    if-nez v19, :cond_1

    .line 224
    aput-object v15, v16, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    const/4 v8, 0x1

    .line 228
    .end local v12    # "j":I
    .end local v13    # "m":I
    :cond_1
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 230
    if-eqz v8, :cond_0

    .line 281
    .end local v5    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v8    # "created":Z
    .end local v14    # "n":I
    .end local v15    # "r":Lcom/google/common/cache/Striped64$Cell;
    .end local v16    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_2
    :goto_1
    move-object/from16 v0, p3

    iput v9, v0, Lcom/google/common/cache/Striped64$HashCode;->code:I

    .line 282
    return-void

    .line 228
    .restart local v5    # "a":Lcom/google/common/cache/Striped64$Cell;
    .restart local v8    # "created":Z
    .restart local v14    # "n":I
    .restart local v15    # "r":Lcom/google/common/cache/Striped64$Cell;
    :catchall_0
    move-exception v19

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v19

    .line 235
    .end local v8    # "created":Z
    .end local v15    # "r":Lcom/google/common/cache/Striped64$Cell;
    :cond_3
    const/4 v7, 0x0

    .line 259
    :cond_4
    :goto_2
    shl-int/lit8 v19, v9, 0xd

    xor-int v9, v9, v19

    .line 260
    ushr-int/lit8 v19, v9, 0x11

    xor-int v9, v9, v19

    .line 261
    shl-int/lit8 v19, v9, 0x5

    xor-int v9, v9, v19

    goto :goto_0

    .line 237
    :cond_5
    if-nez p4, :cond_6

    .line 238
    const/16 p4, 0x1

    goto :goto_2

    .line 239
    :cond_6
    iget-wide v0, v5, Lcom/google/common/cache/Striped64$Cell;->value:J

    move-wide/from16 v17, v0

    .local v17, "v":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-wide/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v19

    move-wide/from16 v0, v17

    move-wide/from16 v2, v19

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v19

    if-nez v19, :cond_2

    .line 241
    sget v19, Lcom/google/common/cache/Striped64;->NCPU:I

    move/from16 v0, v19

    if-ge v14, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v6, :cond_8

    .line 242
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 243
    :cond_8
    if-nez v7, :cond_9

    .line 244
    const/4 v7, 0x1

    goto :goto_2

    .line 245
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v19, v0

    if-nez v19, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 247
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v0, v6, :cond_b

    .line 248
    shl-int/lit8 v19, v14, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v16, v0

    .line 249
    .restart local v16    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v14, :cond_a

    .line 250
    aget-object v19, v6, v10

    aput-object v19, v16, v10

    .line 249
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 251
    :cond_a
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    .end local v10    # "i":I
    .end local v16    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_b
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 256
    const/4 v7, 0x0

    .line 257
    goto/16 :goto_0

    .line 254
    :catchall_1
    move-exception v19

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v19

    .line 263
    .end local v5    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v14    # "n":I
    .end local v17    # "v":J
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v0, v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 264
    const/4 v11, 0x0

    .line 266
    .local v11, "init":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v0, v6, :cond_d

    .line 267
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v16, v0

    .line 268
    .restart local v16    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    and-int/lit8 v19, v9, 0x1

    new-instance v20, Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    aput-object v20, v16, v19

    .line 269
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 270
    const/4 v11, 0x1

    .line 273
    .end local v16    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_d
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 275
    if-eqz v11, :cond_0

    goto/16 :goto_1

    .line 273
    :catchall_2
    move-exception v19

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v19

    .line 278
    .end local v11    # "init":Z
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/common/cache/Striped64;->base:J

    move-wide/from16 v17, v0

    .restart local v17    # "v":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-wide/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-wide/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->casBase(JJ)Z

    move-result v19

    if-eqz v19, :cond_0

    goto/16 :goto_1
.end method
