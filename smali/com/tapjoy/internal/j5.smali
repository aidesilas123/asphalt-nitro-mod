###### Class com.tapjoy.internal.j5 (com.tapjoy.internal.j5)
.class public final Lcom/tapjoy/internal/j5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:Ljava/nio/ByteBuffer;

.field public c:Lcom/tapjoy/internal/s4;

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tapjoy/internal/j5;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/j5;->d:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iget v0, v0, Lcom/tapjoy/internal/s4;->b:I

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final b(I)[I
    .registers 11

    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    :try_start_4
    iget-object v1, p0, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v1, 0x100

    new-array v1, v1, [I
    :try_end_d
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_d} :catch_33

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v2, p1, :cond_3a

    add-int/lit8 v4, v3, 0x1

    :try_start_13
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    shl-int/lit8 v3, v3, 0x10

    const/high16 v8, -0x1000000

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    aput v3, v1, v2
    :try_end_30
    .catch Ljava/nio/BufferUnderflowException; {:try_start_13 .. :try_end_30} :catch_35

    move v3, v6

    move v2, v7

    goto :goto_f

    :catch_33
    const/4 p1, 0x0

    move-object v1, p1

    :catch_35
    iget-object p1, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    const/4 v0, 0x1

    iput v0, p1, Lcom/tapjoy/internal/s4;->b:I

    :cond_3a
    return-object v1
.end method

.method public final c()Lcom/tapjoy/internal/s4;
    .registers 13

    iget-object v0, p0, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_290

    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    return-object v0

    :cond_d
    const-string v0, ""

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    :goto_12
    const/4 v4, 0x6

    if-ge v2, v4, :cond_2c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->d()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2c
    const-string v2, "GIF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v2, :cond_3b

    iget-object v2, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iput v4, v2, Lcom/tapjoy/internal/s4;->b:I

    goto :goto_92

    :cond_3b
    iget-object v2, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iget-object v5, p0, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    iput v5, v2, Lcom/tapjoy/internal/s4;->f:I

    iget-object v2, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iget-object v5, p0, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    iput v5, v2, Lcom/tapjoy/internal/s4;->g:I

    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->d()I

    move-result v2

    iget-object v5, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    and-int/lit16 v6, v2, 0x80

    if-eqz v6, :cond_5b

    const/4 v6, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v6, 0x0

    :goto_5c
    iput-boolean v6, v5, Lcom/tapjoy/internal/s4;->h:Z

    and-int/lit8 v2, v2, 0x7

    shl-int v2, v3, v2

    iput v2, v5, Lcom/tapjoy/internal/s4;->i:I

    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->d()I

    move-result v2

    iput v2, v5, Lcom/tapjoy/internal/s4;->j:I

    iget-object v2, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->d()I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iget-boolean v2, v2, Lcom/tapjoy/internal/s4;->h:Z

    if-eqz v2, :cond_92

    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->a()Z

    move-result v2

    if-nez v2, :cond_92

    iget-object v2, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iget v5, v2, Lcom/tapjoy/internal/s4;->i:I

    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/j5;->b(I)[I

    move-result-object v5

    iput-object v5, v2, Lcom/tapjoy/internal/s4;->a:[I

    iget-object v2, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iget-object v5, v2, Lcom/tapjoy/internal/s4;->a:[I

    iget v6, v2, Lcom/tapjoy/internal/s4;->j:I

    aget v5, v5, v6

    iput v5, v2, Lcom/tapjoy/internal/s4;->k:I

    :cond_92
    :goto_92
    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->a()Z

    move-result v2

    if-nez v2, :cond_28d

    const v2, 0x7fffffff

    const/4 v5, 0x0

    :cond_9c
    :goto_9c
    if-nez v5, :cond_285

    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->a()Z

    move-result v6

    if-nez v6, :cond_285

    iget-object v6, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iget v6, v6, Lcom/tapjoy/internal/s4;->c:I

    if-gt v6, v2, :cond_285

    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->d()I

    move-result v6

    const/16 v7, 0x21

    if-eq v6, v7, :cond_164

    const/16 v7, 0x2c

    if-eq v6, v7, :cond_c1

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_bf

    iget-object v6, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iput v4, v6, Lcom/tapjoy/internal/s4;->b:I

    goto :goto_9c

    :cond_bf
    const/4 v5, 0x1

    goto :goto_9c

    :cond_c1
    iget-object v6, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iget-object v7, v6, Lcom/tapjoy/internal/s4;->d:Lcom/tapjoy/internal/g4;

    if-nez v7, :cond_ce

    new-instance v7, Lcom/tapjoy/internal/g4;

    invoke-direct {v7}, Lcom/tapjoy/internal/g4;-><init>()V

    iput-object v7, v6, Lcom/tapjoy/internal/s4;->d:Lcom/tapjoy/internal/g4;

    :cond_ce
    iget-object v6, v6, Lcom/tapjoy/internal/s4;->d:Lcom/tapjoy/internal/g4;

    iget-object v7, p0, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    iput v7, v6, Lcom/tapjoy/internal/g4;->a:I

    iget-object v6, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iget-object v6, v6, Lcom/tapjoy/internal/s4;->d:Lcom/tapjoy/internal/g4;

    iget-object v7, p0, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    iput v7, v6, Lcom/tapjoy/internal/g4;->b:I

    iget-object v6, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iget-object v6, v6, Lcom/tapjoy/internal/s4;->d:Lcom/tapjoy/internal/g4;

    iget-object v7, p0, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    iput v7, v6, Lcom/tapjoy/internal/g4;->c:I

    iget-object v6, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iget-object v6, v6, Lcom/tapjoy/internal/s4;->d:Lcom/tapjoy/internal/g4;

    iget-object v7, p0, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    iput v7, v6, Lcom/tapjoy/internal/g4;->d:I

    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->d()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    if-eqz v7, :cond_106

    const/4 v7, 0x1

    goto :goto_107

    :cond_106
    const/4 v7, 0x0

    :goto_107
    and-int/lit8 v8, v6, 0x7

    add-int/2addr v8, v4

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v8, v8

    iget-object v9, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iget-object v9, v9, Lcom/tapjoy/internal/s4;->d:Lcom/tapjoy/internal/g4;

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_11c

    const/4 v6, 0x1

    goto :goto_11d

    :cond_11c
    const/4 v6, 0x0

    :goto_11d
    iput-boolean v6, v9, Lcom/tapjoy/internal/g4;->e:Z

    if-eqz v7, :cond_128

    invoke-virtual {p0, v8}, Lcom/tapjoy/internal/j5;->b(I)[I

    move-result-object v6

    iput-object v6, v9, Lcom/tapjoy/internal/g4;->k:[I

    goto :goto_12b

    :cond_128
    const/4 v6, 0x0

    iput-object v6, v9, Lcom/tapjoy/internal/g4;->k:[I

    :goto_12b
    iget-object v6, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iget-object v6, v6, Lcom/tapjoy/internal/s4;->d:Lcom/tapjoy/internal/g4;

    iget-object v7, p0, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->position()I

    move-result v7

    iput v7, v6, Lcom/tapjoy/internal/g4;->j:I

    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->d()I

    :cond_13a
    :try_start_13a
    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->d()I

    move-result v6

    iget-object v7, p0, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->position()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_148
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13a .. :try_end_148} :catch_14b

    if-gtz v6, :cond_13a

    goto :goto_14c

    :catch_14b
    nop

    :goto_14c
    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->a()Z

    move-result v6

    if-eqz v6, :cond_154

    goto/16 :goto_9c

    :cond_154
    iget-object v6, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iget v7, v6, Lcom/tapjoy/internal/s4;->c:I

    add-int/2addr v7, v4

    iput v7, v6, Lcom/tapjoy/internal/s4;->c:I

    iget-object v7, v6, Lcom/tapjoy/internal/s4;->e:Ljava/util/ArrayList;

    iget-object v6, v6, Lcom/tapjoy/internal/s4;->d:Lcom/tapjoy/internal/g4;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    :cond_164
    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->d()I

    move-result v6

    if-eq v6, v4, :cond_270

    const/16 v7, 0xf9

    if-eq v6, v7, :cond_22b

    const/16 v7, 0xfe

    if-eq v6, v7, :cond_219

    const/16 v7, 0xff

    if-eq v6, v7, :cond_188

    :cond_176
    :try_start_176
    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->d()I

    move-result v6

    iget-object v7, p0, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->position()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_184
    .catch Ljava/lang/IllegalArgumentException; {:try_start_176 .. :try_end_184} :catch_282

    if-gtz v6, :cond_176

    goto/16 :goto_9c

    :cond_188
    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->d()I

    move-result v6

    iput v6, p0, Lcom/tapjoy/internal/j5;->d:I

    if-lez v6, :cond_1a3

    const/4 v6, 0x0

    :goto_191
    :try_start_191
    iget v8, p0, Lcom/tapjoy/internal/j5;->d:I

    if-ge v6, v8, :cond_1a3

    sub-int/2addr v8, v6

    iget-object v9, p0, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    iget-object v10, p0, Lcom/tapjoy/internal/j5;->a:[B

    invoke-virtual {v9, v10, v6, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_19d} :catch_19f

    add-int/2addr v6, v8

    goto :goto_191

    :catch_19f
    iget-object v6, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iput v4, v6, Lcom/tapjoy/internal/s4;->b:I

    :cond_1a3
    move-object v8, v0

    const/4 v6, 0x0

    :goto_1a5
    const/16 v9, 0xb

    if-ge v6, v9, :cond_1c0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/tapjoy/internal/j5;->a:[B

    aget-byte v8, v8, v6

    int-to-char v8, v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a5

    :cond_1c0
    const-string v6, "NETSCAPE2.0"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_207

    :cond_1c8
    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->d()I

    move-result v6

    iput v6, p0, Lcom/tapjoy/internal/j5;->d:I

    if-lez v6, :cond_1e3

    const/4 v6, 0x0

    :goto_1d1
    :try_start_1d1
    iget v8, p0, Lcom/tapjoy/internal/j5;->d:I

    if-ge v6, v8, :cond_1e3

    sub-int/2addr v8, v6

    iget-object v9, p0, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    iget-object v10, p0, Lcom/tapjoy/internal/j5;->a:[B

    invoke-virtual {v9, v10, v6, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_1d1 .. :try_end_1dd} :catch_1df

    add-int/2addr v6, v8

    goto :goto_1d1

    :catch_1df
    iget-object v6, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iput v4, v6, Lcom/tapjoy/internal/s4;->b:I

    :cond_1e3
    iget-object v6, p0, Lcom/tapjoy/internal/j5;->a:[B

    aget-byte v8, v6, v1

    if-ne v8, v4, :cond_1fb

    aget-byte v8, v6, v4

    and-int/2addr v8, v7

    aget-byte v6, v6, v3

    and-int/2addr v6, v7

    iget-object v9, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v8

    iput v6, v9, Lcom/tapjoy/internal/s4;->l:I

    if-nez v6, :cond_1fb

    const/4 v6, -0x1

    iput v6, v9, Lcom/tapjoy/internal/s4;->l:I

    :cond_1fb
    iget v6, p0, Lcom/tapjoy/internal/j5;->d:I

    if-lez v6, :cond_9c

    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->a()Z

    move-result v6

    if-eqz v6, :cond_1c8

    goto/16 :goto_9c

    :cond_207
    :try_start_207
    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->d()I

    move-result v6

    iget-object v7, p0, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->position()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-gtz v6, :cond_207

    goto/16 :goto_9c

    :cond_219
    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->d()I

    move-result v6

    iget-object v7, p0, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->position()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_227
    .catch Ljava/lang/IllegalArgumentException; {:try_start_207 .. :try_end_227} :catch_282

    if-gtz v6, :cond_219

    goto/16 :goto_9c

    :cond_22b
    iget-object v6, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    new-instance v7, Lcom/tapjoy/internal/g4;

    invoke-direct {v7}, Lcom/tapjoy/internal/g4;-><init>()V

    iput-object v7, v6, Lcom/tapjoy/internal/s4;->d:Lcom/tapjoy/internal/g4;

    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->d()I

    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->d()I

    move-result v6

    iget-object v7, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iget-object v7, v7, Lcom/tapjoy/internal/s4;->d:Lcom/tapjoy/internal/g4;

    and-int/lit8 v8, v6, 0x1c

    shr-int/2addr v8, v3

    iput v8, v7, Lcom/tapjoy/internal/g4;->g:I

    if-nez v8, :cond_248

    iput v4, v7, Lcom/tapjoy/internal/g4;->g:I

    :cond_248
    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_24e

    const/4 v6, 0x1

    goto :goto_24f

    :cond_24e
    const/4 v6, 0x0

    :goto_24f
    iput-boolean v6, v7, Lcom/tapjoy/internal/g4;->f:Z

    iget-object v6, p0, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    const/16 v7, 0xa

    if-ge v6, v3, :cond_25d

    const/16 v6, 0xa

    :cond_25d
    iget-object v8, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iget-object v8, v8, Lcom/tapjoy/internal/s4;->d:Lcom/tapjoy/internal/g4;

    mul-int/lit8 v6, v6, 0xa

    iput v6, v8, Lcom/tapjoy/internal/g4;->i:I

    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->d()I

    move-result v6

    iput v6, v8, Lcom/tapjoy/internal/g4;->h:I

    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->d()I

    goto/16 :goto_9c

    :cond_270
    :try_start_270
    invoke-virtual {p0}, Lcom/tapjoy/internal/j5;->d()I

    move-result v6

    iget-object v7, p0, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->position()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_27e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_270 .. :try_end_27e} :catch_282

    if-gtz v6, :cond_270

    goto/16 :goto_9c

    :catch_282
    nop

    goto/16 :goto_9c

    :cond_285
    iget-object v0, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iget v1, v0, Lcom/tapjoy/internal/s4;->c:I

    if-gez v1, :cond_28d

    iput v4, v0, Lcom/tapjoy/internal/s4;->b:I

    :cond_28d
    iget-object v0, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    return-object v0

    :cond_290
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()I
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_9

    and-int/lit16 v0, v0, 0xff

    goto :goto_f

    :catch_9
    iget-object v0, p0, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    const/4 v1, 0x1

    iput v1, v0, Lcom/tapjoy/internal/s4;->b:I

    const/4 v0, 0x0

    :goto_f
    return v0
.end method
