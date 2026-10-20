###### Class com.fyber.inneractive.sdk.protobuf.r0 (com.fyber.inneractive.sdk.protobuf.r0)
.class public final Lcom/fyber/inneractive/sdk/protobuf/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/protobuf/d1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fyber/inneractive/sdk/protobuf/d1<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final r:[I

.field public static final s:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/fyber/inneractive/sdk/protobuf/o0;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:[I

.field public final k:I

.field public final l:I

.field public final m:Lcom/fyber/inneractive/sdk/protobuf/t0;

.field public final n:Lcom/fyber/inneractive/sdk/protobuf/e0;

.field public final o:Lcom/fyber/inneractive/sdk/protobuf/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/inneractive/sdk/protobuf/k1<",
            "**>;"
        }
    .end annotation
.end field

.field public final p:Lcom/fyber/inneractive/sdk/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/inneractive/sdk/protobuf/r<",
            "*>;"
        }
    .end annotation
.end field

.field public final q:Lcom/fyber/inneractive/sdk/protobuf/j0;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->r:[I

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/p1;->a:Lsun/misc/Unsafe;

    :try_start_7
    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/o1;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/protobuf/o1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    goto :goto_14

    :catchall_13
    const/4 v0, 0x0

    :goto_14
    sput-object v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->s:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/fyber/inneractive/sdk/protobuf/o0;ZZ[IIILcom/fyber/inneractive/sdk/protobuf/t0;Lcom/fyber/inneractive/sdk/protobuf/e0;Lcom/fyber/inneractive/sdk/protobuf/k1;Lcom/fyber/inneractive/sdk/protobuf/r;Lcom/fyber/inneractive/sdk/protobuf/j0;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/fyber/inneractive/sdk/protobuf/o0;",
            "ZZ[III",
            "Lcom/fyber/inneractive/sdk/protobuf/t0;",
            "Lcom/fyber/inneractive/sdk/protobuf/e0;",
            "Lcom/fyber/inneractive/sdk/protobuf/k1<",
            "**>;",
            "Lcom/fyber/inneractive/sdk/protobuf/r<",
            "*>;",
            "Lcom/fyber/inneractive/sdk/protobuf/j0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->c:I

    iput p4, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->d:I

    instance-of p1, p5, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->g:Z

    iput-boolean p6, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->h:Z

    if-eqz p14, :cond_1b

    invoke-virtual {p14, p5}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Lcom/fyber/inneractive/sdk/protobuf/o0;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->f:Z

    iput-boolean p7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    iput-object p8, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->j:[I

    iput p9, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->k:I

    iput p10, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->l:I

    iput-object p11, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->m:Lcom/fyber/inneractive/sdk/protobuf/t0;

    iput-object p12, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    iput-object p13, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->o:Lcom/fyber/inneractive/sdk/protobuf/k1;

    iput-object p14, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    iput-object p5, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->e:Lcom/fyber/inneractive/sdk/protobuf/o0;

    iput-object p15, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    return-void
.end method

.method public static a(Lcom/fyber/inneractive/sdk/protobuf/m0;Lcom/fyber/inneractive/sdk/protobuf/t0;Lcom/fyber/inneractive/sdk/protobuf/e0;Lcom/fyber/inneractive/sdk/protobuf/k1;Lcom/fyber/inneractive/sdk/protobuf/r;Lcom/fyber/inneractive/sdk/protobuf/j0;)Lcom/fyber/inneractive/sdk/protobuf/r0;
    .registers 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/fyber/inneractive/sdk/protobuf/m0;",
            "Lcom/fyber/inneractive/sdk/protobuf/t0;",
            "Lcom/fyber/inneractive/sdk/protobuf/e0;",
            "Lcom/fyber/inneractive/sdk/protobuf/k1<",
            "**>;",
            "Lcom/fyber/inneractive/sdk/protobuf/r<",
            "*>;",
            "Lcom/fyber/inneractive/sdk/protobuf/j0;",
            ")",
            "Lcom/fyber/inneractive/sdk/protobuf/r0<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/fyber/inneractive/sdk/protobuf/b1;

    if-eqz v1, :cond_419

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/b1;

    iget v1, v0, Lcom/fyber/inneractive/sdk/protobuf/b1;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_11

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/y0;->PROTO2:Lcom/fyber/inneractive/sdk/protobuf/y0;

    goto :goto_13

    :cond_11
    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/y0;->PROTO3:Lcom/fyber/inneractive/sdk/protobuf/y0;

    :goto_13
    sget-object v3, Lcom/fyber/inneractive/sdk/protobuf/y0;->PROTO3:Lcom/fyber/inneractive/sdk/protobuf/y0;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1a

    const/4 v11, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v11, 0x0

    :goto_1b
    iget-object v1, v0, Lcom/fyber/inneractive/sdk/protobuf/b1;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_35

    const/4 v5, 0x1

    :goto_2b
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_36

    move v5, v7

    goto :goto_2b

    :cond_35
    const/4 v7, 0x1

    :cond_36
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_55

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_42
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_52

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_42

    :cond_52
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    :cond_55
    if-nez v7, :cond_62

    sget-object v7, Lcom/fyber/inneractive/sdk/protobuf/r0;->r:[I

    move-object v14, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto/16 :goto_173

    :cond_62
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_81

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_6e
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_7e

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_6e

    :cond_7e
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    :cond_81
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_a0

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_8d
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_9d

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_8d

    :cond_9d
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    :cond_a0
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_bf

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_ac
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_bc

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_ac

    :cond_bc
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_bf
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_de

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_cb
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_db

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_cb

    :cond_db
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_de
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_fd

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_ea
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_fa

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_ea

    :cond_fa
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_fd
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_11e

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_109
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_11a

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_109

    :cond_11a
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_11e
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_141

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_12a
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_13c

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_12a

    :cond_13c
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_141
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_166

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v4, v16

    const/16 v16, 0xd

    :goto_14f
    add-int/lit8 v17, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_161

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v16

    or-int/2addr v15, v4

    add-int/lit8 v16, v16, 0xd

    move/from16 v4, v17

    goto :goto_14f

    :cond_161
    shl-int v4, v4, v16

    or-int/2addr v15, v4

    move/from16 v16, v17

    :cond_166
    add-int v4, v15, v13

    add-int/2addr v4, v14

    new-array v4, v4, [I

    mul-int/lit8 v14, v5, 0x2

    add-int/2addr v14, v7

    move v7, v14

    move-object v14, v4

    move v4, v5

    move/from16 v5, v16

    :goto_173
    sget-object v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->s:Lsun/misc/Unsafe;

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/protobuf/b1;->c:[Ljava/lang/Object;

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/b1;->a:Lcom/fyber/inneractive/sdk/protobuf/o0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move/from16 v19, v5

    mul-int/lit8 v5, v12, 0x3

    new-array v5, v5, [I

    mul-int/lit8 v12, v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    add-int v20, v15, v13

    move v13, v7

    move/from16 v22, v15

    move/from16 v7, v19

    move/from16 v23, v20

    const/16 v19, 0x0

    const/16 v21, 0x0

    :goto_194
    if-ge v7, v3, :cond_3eb

    add-int/lit8 v24, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v25, v3

    const v3, 0xd800

    if-lt v7, v3, :cond_1c8

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v3, v24

    const/16 v24, 0xd

    :goto_1a9
    add-int/lit8 v26, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v27, v15

    const v15, 0xd800

    if-lt v3, v15, :cond_1c2

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v24

    or-int/2addr v7, v3

    add-int/lit8 v24, v24, 0xd

    move/from16 v3, v26

    move/from16 v15, v27

    goto :goto_1a9

    :cond_1c2
    shl-int v3, v3, v24

    or-int/2addr v7, v3

    move/from16 v3, v26

    goto :goto_1cc

    :cond_1c8
    move/from16 v27, v15

    move/from16 v3, v24

    :goto_1cc
    add-int/lit8 v15, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v24, v15

    const v15, 0xd800

    if-lt v3, v15, :cond_1fe

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v15, v24

    const/16 v24, 0xd

    :goto_1df
    add-int/lit8 v26, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v28, v10

    const v10, 0xd800

    if-lt v15, v10, :cond_1f8

    and-int/lit16 v10, v15, 0x1fff

    shl-int v10, v10, v24

    or-int/2addr v3, v10

    add-int/lit8 v24, v24, 0xd

    move/from16 v15, v26

    move/from16 v10, v28

    goto :goto_1df

    :cond_1f8
    shl-int v10, v15, v24

    or-int/2addr v3, v10

    move/from16 v15, v26

    goto :goto_202

    :cond_1fe
    move/from16 v28, v10

    move/from16 v15, v24

    :goto_202
    and-int/lit16 v10, v3, 0xff

    move/from16 v24, v9

    and-int/lit16 v9, v3, 0x400

    if-eqz v9, :cond_210

    add-int/lit8 v9, v19, 0x1

    aput v21, v14, v19

    move/from16 v19, v9

    :cond_210
    const/16 v9, 0x33

    move-object/from16 v30, v0

    if-lt v10, v9, :cond_2ae

    add-int/lit8 v9, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const v0, 0xd800

    if-lt v15, v0, :cond_23f

    and-int/lit16 v15, v15, 0x1fff

    const/16 v32, 0xd

    :goto_225
    add-int/lit8 v33, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v0, :cond_23a

    and-int/lit16 v0, v9, 0x1fff

    shl-int v0, v0, v32

    or-int/2addr v15, v0

    add-int/lit8 v32, v32, 0xd

    move/from16 v9, v33

    const v0, 0xd800

    goto :goto_225

    :cond_23a
    shl-int v0, v9, v32

    or-int/2addr v15, v0

    move/from16 v9, v33

    :cond_23f
    add-int/lit8 v0, v10, -0x33

    move/from16 v32, v9

    const/16 v9, 0x9

    if-eq v0, v9, :cond_25f

    const/16 v9, 0x11

    if-ne v0, v9, :cond_24c

    goto :goto_25f

    :cond_24c
    const/16 v9, 0xc

    if-ne v0, v9, :cond_26c

    if-nez v11, :cond_26c

    div-int/lit8 v0, v21, 0x3

    mul-int/lit8 v0, v0, 0x2

    const/4 v9, 0x1

    add-int/2addr v0, v9

    add-int/lit8 v9, v13, 0x1

    aget-object v13, v2, v13

    aput-object v13, v12, v0

    goto :goto_26b

    :cond_25f
    :goto_25f
    div-int/lit8 v0, v21, 0x3

    mul-int/lit8 v0, v0, 0x2

    const/4 v9, 0x1

    add-int/2addr v0, v9

    add-int/lit8 v9, v13, 0x1

    aget-object v13, v2, v13

    aput-object v13, v12, v0

    :goto_26b
    move v13, v9

    :cond_26c
    mul-int/lit8 v15, v15, 0x2

    aget-object v0, v2, v15

    instance-of v9, v0, Ljava/lang/reflect/Field;

    if-eqz v9, :cond_277

    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_27f

    :cond_277
    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    aput-object v0, v2, v15

    :goto_27f
    move v9, v4

    move-object/from16 v33, v5

    invoke-virtual {v8, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v0, v4

    add-int/lit8 v15, v15, 0x1

    aget-object v4, v2, v15

    instance-of v5, v4, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_292

    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_29a

    :cond_292
    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v2, v15

    :goto_29a
    invoke-virtual {v8, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v5, v4

    move/from16 v31, v13

    move/from16 v15, v32

    const/16 v17, 0x1

    move-object v13, v6

    const/4 v6, 0x0

    move/from16 v34, v5

    move-object v5, v1

    move/from16 v1, v34

    goto/16 :goto_3ad

    :cond_2ae
    move v9, v4

    move-object/from16 v33, v5

    add-int/lit8 v0, v13, 0x1

    aget-object v4, v2, v13

    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/16 v5, 0x31

    const/16 v13, 0x9

    if-eq v10, v13, :cond_325

    const/16 v13, 0x11

    if-ne v10, v13, :cond_2c6

    goto :goto_325

    :cond_2c6
    const/16 v13, 0x1b

    if-eq v10, v13, :cond_313

    if-ne v10, v5, :cond_2cd

    goto :goto_313

    :cond_2cd
    const/16 v13, 0xc

    if-eq v10, v13, :cond_302

    const/16 v13, 0x1e

    if-eq v10, v13, :cond_302

    const/16 v13, 0x2c

    if-ne v10, v13, :cond_2da

    goto :goto_302

    :cond_2da
    const/16 v13, 0x32

    if-ne v10, v13, :cond_2ff

    add-int/lit8 v13, v22, 0x1

    aput v21, v14, v22

    div-int/lit8 v22, v21, 0x3

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v26, v0, 0x1

    aget-object v0, v2, v0

    aput-object v0, v12, v22

    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_2fb

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v0, v26, 0x1

    aget-object v26, v2, v26

    aput-object v26, v12, v22

    move/from16 v22, v13

    goto :goto_2ff

    :cond_2fb
    move/from16 v22, v13

    move/from16 v0, v26

    :cond_2ff
    :goto_2ff
    const/16 v17, 0x1

    goto :goto_333

    :cond_302
    :goto_302
    if-nez v11, :cond_2ff

    div-int/lit8 v13, v21, 0x3

    mul-int/lit8 v13, v13, 0x2

    const/16 v17, 0x1

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v26, v0, 0x1

    aget-object v0, v2, v0

    aput-object v0, v12, v13

    goto :goto_321

    :cond_313
    :goto_313
    const/16 v17, 0x1

    div-int/lit8 v13, v21, 0x3

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v26, v0, 0x1

    aget-object v0, v2, v0

    aput-object v0, v12, v13

    :goto_321
    move-object v13, v6

    move/from16 v0, v26

    goto :goto_334

    :cond_325
    :goto_325
    const/16 v17, 0x1

    div-int/lit8 v13, v21, 0x3

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v26

    aput-object v26, v12, v13

    :goto_333
    move-object v13, v6

    :goto_334
    invoke-virtual {v8, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v4, v5

    and-int/lit16 v5, v3, 0x1000

    const/16 v6, 0x1000

    if-ne v5, v6, :cond_341

    const/4 v5, 0x1

    goto :goto_342

    :cond_341
    const/4 v5, 0x0

    :goto_342
    if-eqz v5, :cond_394

    const/16 v5, 0x11

    if-gt v10, v5, :cond_394

    add-int/lit8 v5, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v15, 0xd800

    if-lt v6, v15, :cond_36d

    and-int/lit16 v6, v6, 0x1fff

    const/16 v18, 0xd

    :goto_357
    add-int/lit8 v29, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v15, :cond_369

    and-int/lit16 v5, v5, 0x1fff

    shl-int v5, v5, v18

    or-int/2addr v6, v5

    add-int/lit8 v18, v18, 0xd

    move/from16 v5, v29

    goto :goto_357

    :cond_369
    shl-int v5, v5, v18

    or-int/2addr v6, v5

    goto :goto_36f

    :cond_36d
    move/from16 v29, v5

    :goto_36f
    mul-int/lit8 v5, v9, 0x2

    div-int/lit8 v18, v6, 0x20

    add-int v5, v5, v18

    aget-object v15, v2, v5

    move/from16 v31, v0

    instance-of v0, v15, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_380

    check-cast v15, Ljava/lang/reflect/Field;

    goto :goto_389

    :cond_380
    check-cast v15, Ljava/lang/String;

    move-object v0, v13

    invoke-static {v0, v15}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    aput-object v15, v2, v5

    :goto_389
    move-object v5, v1

    invoke-virtual {v8, v15}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    rem-int/lit8 v6, v6, 0x20

    move/from16 v15, v29

    goto :goto_39e

    :cond_394
    move/from16 v31, v0

    move-object v5, v1

    const v0, 0xd800

    const v1, 0xfffff

    const/4 v6, 0x0

    :goto_39e
    const/16 v0, 0x12

    if-lt v10, v0, :cond_3ac

    const/16 v0, 0x31

    if-gt v10, v0, :cond_3ac

    add-int/lit8 v0, v23, 0x1

    aput v4, v14, v23

    move/from16 v23, v0

    :cond_3ac
    move v0, v4

    :goto_3ad
    add-int/lit8 v4, v21, 0x1

    aput v7, v33, v21

    add-int/lit8 v7, v4, 0x1

    move-object/from16 v21, v2

    and-int/lit16 v2, v3, 0x200

    if-eqz v2, :cond_3bc

    const/high16 v2, 0x20000000

    goto :goto_3bd

    :cond_3bc
    const/4 v2, 0x0

    :goto_3bd
    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_3c4

    const/high16 v3, 0x10000000

    goto :goto_3c5

    :cond_3c4
    const/4 v3, 0x0

    :goto_3c5
    or-int/2addr v2, v3

    shl-int/lit8 v3, v10, 0x14

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    aput v0, v33, v4

    add-int/lit8 v0, v7, 0x1

    shl-int/lit8 v2, v6, 0x14

    or-int/2addr v1, v2

    aput v1, v33, v7

    move-object v1, v5

    move v4, v9

    move-object v6, v13

    move v7, v15

    move-object/from16 v2, v21

    move/from16 v9, v24

    move/from16 v3, v25

    move/from16 v15, v27

    move/from16 v10, v28

    move/from16 v13, v31

    move-object/from16 v5, v33

    move/from16 v21, v0

    move-object/from16 v0, v30

    goto/16 :goto_194

    :cond_3eb
    move-object/from16 v30, v0

    move-object/from16 v33, v5

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v27, v15

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/r0;

    move-object/from16 v1, v30

    iget-object v10, v1, Lcom/fyber/inneractive/sdk/protobuf/b1;->a:Lcom/fyber/inneractive/sdk/protobuf/o0;

    const/4 v1, 0x0

    move-object/from16 v2, v33

    move-object v5, v0

    move-object v6, v2

    move-object v7, v12

    move/from16 v8, v24

    move/from16 v9, v28

    move v12, v1

    move-object v13, v14

    move/from16 v14, v27

    move/from16 v15, v20

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    invoke-direct/range {v5 .. v20}, Lcom/fyber/inneractive/sdk/protobuf/r0;-><init>([I[Ljava/lang/Object;IILcom/fyber/inneractive/sdk/protobuf/o0;ZZ[IIILcom/fyber/inneractive/sdk/protobuf/t0;Lcom/fyber/inneractive/sdk/protobuf/e0;Lcom/fyber/inneractive/sdk/protobuf/k1;Lcom/fyber/inneractive/sdk/protobuf/r;Lcom/fyber/inneractive/sdk/protobuf/j0;)V

    return-object v0

    :cond_419
    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/h1;

    const/4 v0, 0x0

    throw v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/lang/Object;J)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/Object;J)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static c(Ljava/lang/Object;J)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Object;J)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static d(I)J
    .registers 3

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static e(Ljava/lang/Object;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static e(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/l1;
    .registers 3

    check-cast p0, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->unknownFields:Lcom/fyber/inneractive/sdk/protobuf/l1;

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/l1;->f:Lcom/fyber/inneractive/sdk/protobuf/l1;

    if-ne v0, v1, :cond_e

    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/l1;->c()Lcom/fyber/inneractive/sdk/protobuf/l1;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->unknownFields:Lcom/fyber/inneractive/sdk/protobuf/l1;

    :cond_e
    return-object v0
.end method

.method public static f(I)I
    .registers 2

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method


# virtual methods
.method public final a(II)I
    .registers 7

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-gt p2, v0, :cond_1e

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_16

    return v2

    :cond_16
    if-ge p1, v3, :cond_1b

    add-int/lit8 v0, v1, -0x1

    goto :goto_7

    :cond_1b
    add-int/lit8 p2, v1, 0x1

    goto :goto_7

    :cond_1e
    const/4 p1, -0x1

    return p1
.end method

.method public final a(Ljava/lang/Object;[BIIIIIIIJILcom/fyber/inneractive/sdk/protobuf/e$b;)I
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/fyber/inneractive/sdk/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    sget-object v12, Lcom/fyber/inneractive/sdk/protobuf/r0;->s:Lsun/misc/Unsafe;

    iget-object v7, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_1ce

    goto/16 :goto_1cc

    :pswitch_28
    const/4 v7, 0x3

    if-ne v5, v7, :cond_1cc

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-virtual {v0, v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->a(Lcom/fyber/inneractive/sdk/protobuf/d1;[BIIILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v2

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4b

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4c

    :cond_4b
    const/4 v15, 0x0

    :goto_4c
    if-nez v15, :cond_54

    iget-object v3, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5d

    :cond_54
    iget-object v3, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->c:Ljava/lang/Object;

    invoke-static {v15, v3}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_5d
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1cd

    :pswitch_62
    if-nez v5, :cond_1cc

    invoke-static {v3, v4, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->e([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v2

    iget-wide v3, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->b:J

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/j;->a(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1cd

    :pswitch_7a
    if-nez v5, :cond_1cc

    invoke-static {v3, v4, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v2

    iget v3, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/protobuf/j;->b(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1cd

    :pswitch_92
    if-nez v5, :cond_1cc

    invoke-static {v3, v4, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v3

    iget v4, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    invoke-virtual {v0, v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(I)Lcom/fyber/inneractive/sdk/protobuf/y$e;

    move-result-object v5

    if-eqz v5, :cond_b4

    invoke-interface {v5, v4}, Lcom/fyber/inneractive/sdk/protobuf/y$e;->a(I)Z

    move-result v5

    if-eqz v5, :cond_a7

    goto :goto_b4

    :cond_a7
    invoke-static/range {p1 .. p1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/l1;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/fyber/inneractive/sdk/protobuf/l1;->a(ILjava/lang/Object;)V

    goto :goto_be

    :cond_b4
    :goto_b4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_be
    move v2, v3

    goto/16 :goto_1cd

    :pswitch_c1
    if-ne v5, v15, :cond_1cc

    invoke-static {v3, v4, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->a([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v2

    iget-object v3, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1cd

    :pswitch_d1
    if-ne v5, v15, :cond_1cc

    invoke-virtual {v0, v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v2

    move/from16 v5, p4

    invoke-static {v2, v3, v4, v5, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->a(Lcom/fyber/inneractive/sdk/protobuf/d1;[BIILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v2

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_e8

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_e9

    :cond_e8
    const/4 v15, 0x0

    :goto_e9
    if-nez v15, :cond_f1

    iget-object v3, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_fa

    :cond_f1
    iget-object v3, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->c:Ljava/lang/Object;

    invoke-static {v15, v3}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_fa
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1cd

    :pswitch_ff
    if-ne v5, v15, :cond_1cc

    invoke-static {v3, v4, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v2

    iget v4, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-nez v4, :cond_10f

    const-string v3, ""

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_12e

    :cond_10f
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_123

    add-int v5, v2, v4

    invoke-static {v3, v2, v5}, Lcom/fyber/inneractive/sdk/protobuf/q1;->b([BII)Z

    move-result v5

    if-eqz v5, :cond_11e

    goto :goto_123

    :cond_11e
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->c()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v1

    throw v1

    :cond_123
    :goto_123
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/fyber/inneractive/sdk/protobuf/y;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    :goto_12e
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1cd

    :pswitch_133
    if-nez v5, :cond_1cc

    invoke-static {v3, v4, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->e([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v2

    iget-wide v3, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_143

    const/4 v15, 0x1

    goto :goto_144

    :cond_143
    const/4 v15, 0x0

    :goto_144
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1cd

    :pswitch_150
    if-ne v5, v7, :cond_1cc

    invoke-static/range {p2 .. p3}, Lcom/fyber/inneractive/sdk/protobuf/e;->a([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1cd

    :pswitch_163
    const/4 v2, 0x1

    if-ne v5, v2, :cond_1cc

    invoke-static/range {p2 .. p3}, Lcom/fyber/inneractive/sdk/protobuf/e;->b([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1cd

    :pswitch_177
    if-nez v5, :cond_1cc

    invoke-static {v3, v4, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v2

    iget v3, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1cd

    :pswitch_18a
    if-nez v5, :cond_1cc

    invoke-static {v3, v4, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->e([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v2

    iget-wide v3, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1cd

    :pswitch_19d
    if-ne v5, v7, :cond_1cc

    invoke-static/range {p2 .. p3}, Lcom/fyber/inneractive/sdk/protobuf/e;->a([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1cd

    :pswitch_1b4
    const/4 v2, 0x1

    if-ne v5, v2, :cond_1cc

    invoke-static/range {p2 .. p3}, Lcom/fyber/inneractive/sdk/protobuf/e;->b([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1cd

    :cond_1cc
    :goto_1cc
    move v2, v4

    :goto_1cd
    return v2

    :pswitch_data_1ce
    .packed-switch 0x33
        :pswitch_1b4
        :pswitch_19d
        :pswitch_18a
        :pswitch_18a
        :pswitch_177
        :pswitch_163
        :pswitch_150
        :pswitch_133
        :pswitch_ff
        :pswitch_d1
        :pswitch_c1
        :pswitch_177
        :pswitch_92
        :pswitch_150
        :pswitch_163
        :pswitch_7a
        :pswitch_62
        :pswitch_28
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;[BIIIIIIJIJLcom/fyber/inneractive/sdk/protobuf/e$b;)I
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/fyber/inneractive/sdk/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Lcom/fyber/inneractive/sdk/protobuf/r0;->s:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fyber/inneractive/sdk/protobuf/y$j;

    invoke-interface {v12}, Lcom/fyber/inneractive/sdk/protobuf/y$j;->d()Z

    move-result v13

    const/4 v14, 0x2

    if-nez v13, :cond_34

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_2b

    const/16 v13, 0xa

    goto :goto_2d

    :cond_2b
    mul-int/lit8 v13, v13, 0x2

    :goto_2d
    invoke-interface {v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/y$j;->b(I)Lcom/fyber/inneractive/sdk/protobuf/y$j;

    move-result-object v12

    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_34
    const/4 v9, 0x5

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    packed-switch p11, :pswitch_data_378

    goto/16 :goto_375

    :pswitch_3d
    const/4 v1, 0x3

    if-ne v6, v1, :cond_375

    invoke-virtual {p0, v8}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/fyber/inneractive/sdk/protobuf/e;->a(Lcom/fyber/inneractive/sdk/protobuf/d1;[BIIILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v4

    iget-object v8, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->c:Ljava/lang/Object;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5d
    if-ge v4, v5, :cond_375

    invoke-static {v3, v4, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v8

    iget v9, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-eq v2, v9, :cond_69

    goto/16 :goto_375

    :cond_69
    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/fyber/inneractive/sdk/protobuf/e;->a(Lcom/fyber/inneractive/sdk/protobuf/d1;[BIIILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v4

    iget-object v8, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->c:Ljava/lang/Object;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :pswitch_7f
    if-ne v6, v14, :cond_87

    invoke-static {v3, v4, v12, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->g([BILcom/fyber/inneractive/sdk/protobuf/y$j;Lcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    goto/16 :goto_376

    :cond_87
    if-nez v6, :cond_375

    check-cast v12, Lcom/fyber/inneractive/sdk/protobuf/f0;

    invoke-static {v3, v4, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->e([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    iget-wide v8, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->b:J

    invoke-static {v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/j;->a(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/f0;->a(J)V

    :goto_98
    if-ge v1, v5, :cond_376

    invoke-static {v3, v1, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v4

    iget v6, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-eq v2, v6, :cond_a4

    goto/16 :goto_376

    :cond_a4
    invoke-static {v3, v4, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->e([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    iget-wide v8, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->b:J

    invoke-static {v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/j;->a(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/f0;->a(J)V

    goto :goto_98

    :pswitch_b2
    if-ne v6, v14, :cond_ba

    invoke-static {v3, v4, v12, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->f([BILcom/fyber/inneractive/sdk/protobuf/y$j;Lcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    goto/16 :goto_376

    :cond_ba
    if-nez v6, :cond_375

    check-cast v12, Lcom/fyber/inneractive/sdk/protobuf/x;

    invoke-static {v3, v4, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    iget v4, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/j;->b(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/fyber/inneractive/sdk/protobuf/x;->c(I)V

    :goto_cb
    if-ge v1, v5, :cond_376

    invoke-static {v3, v1, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v4

    iget v6, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-eq v2, v6, :cond_d7

    goto/16 :goto_376

    :cond_d7
    invoke-static {v3, v4, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    iget v4, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/j;->b(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/fyber/inneractive/sdk/protobuf/x;->c(I)V

    goto :goto_cb

    :pswitch_e5
    if-ne v6, v14, :cond_ec

    invoke-static {v3, v4, v12, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->h([BILcom/fyber/inneractive/sdk/protobuf/y$j;Lcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v2

    goto :goto_fd

    :cond_ec
    if-nez v6, :cond_375

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->a(I[BIILcom/fyber/inneractive/sdk/protobuf/y$j;Lcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v2

    :goto_fd
    check-cast v1, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->unknownFields:Lcom/fyber/inneractive/sdk/protobuf/l1;

    sget-object v4, Lcom/fyber/inneractive/sdk/protobuf/l1;->f:Lcom/fyber/inneractive/sdk/protobuf/l1;

    if-ne v3, v4, :cond_106

    const/4 v3, 0x0

    :cond_106
    invoke-virtual {p0, v8}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(I)Lcom/fyber/inneractive/sdk/protobuf/y$e;

    move-result-object v4

    iget-object v5, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->o:Lcom/fyber/inneractive/sdk/protobuf/k1;

    move/from16 v6, p6

    invoke-static {v6, v12, v4, v3, v5}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/y$e;Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/k1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fyber/inneractive/sdk/protobuf/l1;

    if-eqz v3, :cond_118

    iput-object v3, v1, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->unknownFields:Lcom/fyber/inneractive/sdk/protobuf/l1;

    :cond_118
    move v1, v2

    goto/16 :goto_376

    :pswitch_11b
    if-ne v6, v14, :cond_375

    invoke-static {v3, v4, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    iget v4, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-ltz v4, :cond_170

    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_16b

    if-nez v4, :cond_131

    sget-object v4, Lcom/fyber/inneractive/sdk/protobuf/i;->b:Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_139

    :cond_131
    invoke-static {v3, v1, v4}, Lcom/fyber/inneractive/sdk/protobuf/i;->a([BII)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_138
    add-int/2addr v1, v4

    :goto_139
    if-ge v1, v5, :cond_376

    invoke-static {v3, v1, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v4

    iget v6, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-eq v2, v6, :cond_145

    goto/16 :goto_376

    :cond_145
    invoke-static {v3, v4, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    iget v4, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-ltz v4, :cond_166

    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_161

    if-nez v4, :cond_159

    sget-object v4, Lcom/fyber/inneractive/sdk/protobuf/i;->b:Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_139

    :cond_159
    invoke-static {v3, v1, v4}, Lcom/fyber/inneractive/sdk/protobuf/i;->a([BII)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_138

    :cond_161
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->i()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v1

    throw v1

    :cond_166
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->f()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v1

    throw v1

    :cond_16b
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->i()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v1

    throw v1

    :cond_170
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->f()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v1

    throw v1

    :pswitch_175
    if-ne v6, v14, :cond_375

    invoke-virtual {p0, v8}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/fyber/inneractive/sdk/protobuf/e;->a(Lcom/fyber/inneractive/sdk/protobuf/d1;I[BIILcom/fyber/inneractive/sdk/protobuf/y$j;Lcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    goto/16 :goto_376

    :pswitch_18f
    if-ne v6, v14, :cond_375

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v10

    if-nez v6, :cond_1e4

    invoke-static {v3, v4, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v4

    iget v6, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-ltz v6, :cond_1df

    if-nez v6, :cond_1aa

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b5

    :cond_1aa
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/fyber/inneractive/sdk/protobuf/y;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1b4
    add-int/2addr v4, v6

    :goto_1b5
    if-ge v4, v5, :cond_375

    invoke-static {v3, v4, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v6

    iget v8, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-eq v2, v8, :cond_1c1

    goto/16 :goto_375

    :cond_1c1
    invoke-static {v3, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v4

    iget v6, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-ltz v6, :cond_1da

    if-nez v6, :cond_1cf

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b5

    :cond_1cf
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/fyber/inneractive/sdk/protobuf/y;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b4

    :cond_1da
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->f()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v1

    throw v1

    :cond_1df
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->f()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v1

    throw v1

    :cond_1e4
    invoke-static {v3, v4, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v4

    iget v6, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-ltz v6, :cond_241

    if-nez v6, :cond_1f2

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_205

    :cond_1f2
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lcom/fyber/inneractive/sdk/protobuf/q1;->b([BII)Z

    move-result v9

    if-eqz v9, :cond_23c

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/fyber/inneractive/sdk/protobuf/y;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_204
    move v4, v8

    :goto_205
    if-ge v4, v5, :cond_375

    invoke-static {v3, v4, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v6

    iget v8, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-eq v2, v8, :cond_211

    goto/16 :goto_375

    :cond_211
    invoke-static {v3, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v4

    iget v6, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-ltz v6, :cond_237

    if-nez v6, :cond_21f

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_205

    :cond_21f
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lcom/fyber/inneractive/sdk/protobuf/q1;->b([BII)Z

    move-result v9

    if-eqz v9, :cond_232

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/fyber/inneractive/sdk/protobuf/y;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_204

    :cond_232
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->c()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v1

    throw v1

    :cond_237
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->f()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v1

    throw v1

    :cond_23c
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->c()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v1

    throw v1

    :cond_241
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->f()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v1

    throw v1

    :pswitch_246
    if-ne v6, v14, :cond_24e

    invoke-static {v3, v4, v12, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->a([BILcom/fyber/inneractive/sdk/protobuf/y$j;Lcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    goto/16 :goto_376

    :cond_24e
    if-nez v6, :cond_375

    check-cast v12, Lcom/fyber/inneractive/sdk/protobuf/g;

    invoke-static {v3, v4, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->e([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    iget-wide v8, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->b:J

    const/4 v4, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_25f

    const/4 v6, 0x1

    goto :goto_260

    :cond_25f
    const/4 v6, 0x0

    :goto_260
    invoke-virtual {v12, v6}, Lcom/fyber/inneractive/sdk/protobuf/g;->a(Z)V

    :goto_263
    if-ge v1, v5, :cond_376

    invoke-static {v3, v1, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v6

    iget v8, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-eq v2, v8, :cond_26f

    goto/16 :goto_376

    :cond_26f
    invoke-static {v3, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->e([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    iget-wide v8, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->b:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_27b

    const/4 v6, 0x1

    goto :goto_27c

    :cond_27b
    const/4 v6, 0x0

    :goto_27c
    invoke-virtual {v12, v6}, Lcom/fyber/inneractive/sdk/protobuf/g;->a(Z)V

    goto :goto_263

    :pswitch_280
    if-ne v6, v14, :cond_288

    invoke-static {v3, v4, v12, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->c([BILcom/fyber/inneractive/sdk/protobuf/y$j;Lcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    goto/16 :goto_376

    :cond_288
    if-ne v6, v9, :cond_375

    check-cast v12, Lcom/fyber/inneractive/sdk/protobuf/x;

    invoke-static/range {p2 .. p3}, Lcom/fyber/inneractive/sdk/protobuf/e;->a([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/fyber/inneractive/sdk/protobuf/x;->c(I)V

    :goto_293
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_376

    invoke-static {v3, v1, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v4

    iget v6, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-eq v2, v6, :cond_2a1

    goto/16 :goto_376

    :cond_2a1
    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/e;->a([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/fyber/inneractive/sdk/protobuf/x;->c(I)V

    goto :goto_293

    :pswitch_2a9
    if-ne v6, v14, :cond_2b1

    invoke-static {v3, v4, v12, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/y$j;Lcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    goto/16 :goto_376

    :cond_2b1
    if-ne v6, v13, :cond_375

    check-cast v12, Lcom/fyber/inneractive/sdk/protobuf/f0;

    invoke-static/range {p2 .. p3}, Lcom/fyber/inneractive/sdk/protobuf/e;->b([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/f0;->a(J)V

    :goto_2bc
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_376

    invoke-static {v3, v1, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v4

    iget v6, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-eq v2, v6, :cond_2ca

    goto/16 :goto_376

    :cond_2ca
    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/e;->b([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/f0;->a(J)V

    goto :goto_2bc

    :pswitch_2d2
    if-ne v6, v14, :cond_2da

    invoke-static {v3, v4, v12, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->h([BILcom/fyber/inneractive/sdk/protobuf/y$j;Lcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    goto/16 :goto_376

    :cond_2da
    if-nez v6, :cond_375

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/fyber/inneractive/sdk/protobuf/e;->a(I[BIILcom/fyber/inneractive/sdk/protobuf/y$j;Lcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    goto/16 :goto_376

    :pswitch_2ec
    if-ne v6, v14, :cond_2f4

    invoke-static {v3, v4, v12, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->i([BILcom/fyber/inneractive/sdk/protobuf/y$j;Lcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    goto/16 :goto_376

    :cond_2f4
    if-nez v6, :cond_375

    check-cast v12, Lcom/fyber/inneractive/sdk/protobuf/f0;

    invoke-static {v3, v4, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->e([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    iget-wide v8, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->b:J

    invoke-virtual {v12, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/f0;->a(J)V

    :goto_301
    if-ge v1, v5, :cond_376

    invoke-static {v3, v1, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v4

    iget v6, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-eq v2, v6, :cond_30d

    goto/16 :goto_376

    :cond_30d
    invoke-static {v3, v4, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->e([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    iget-wide v8, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->b:J

    invoke-virtual {v12, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/f0;->a(J)V

    goto :goto_301

    :pswitch_317
    if-ne v6, v14, :cond_31e

    invoke-static {v3, v4, v12, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->e([BILcom/fyber/inneractive/sdk/protobuf/y$j;Lcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    goto :goto_376

    :cond_31e
    if-ne v6, v9, :cond_375

    check-cast v12, Lcom/fyber/inneractive/sdk/protobuf/v;

    invoke-static/range {p2 .. p3}, Lcom/fyber/inneractive/sdk/protobuf/e;->a([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/fyber/inneractive/sdk/protobuf/v;->a(F)V

    :goto_32d
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_376

    invoke-static {v3, v1, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v4

    iget v6, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-eq v2, v6, :cond_33a

    goto :goto_376

    :cond_33a
    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/e;->a([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/fyber/inneractive/sdk/protobuf/v;->a(F)V

    goto :goto_32d

    :pswitch_346
    if-ne v6, v14, :cond_34d

    invoke-static {v3, v4, v12, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->b([BILcom/fyber/inneractive/sdk/protobuf/y$j;Lcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v1

    goto :goto_376

    :cond_34d
    if-ne v6, v13, :cond_375

    check-cast v12, Lcom/fyber/inneractive/sdk/protobuf/n;

    invoke-static/range {p2 .. p3}, Lcom/fyber/inneractive/sdk/protobuf/e;->b([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/n;->a(D)V

    :goto_35c
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_376

    invoke-static {v3, v1, v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v4

    iget v6, v7, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-eq v2, v6, :cond_369

    goto :goto_376

    :cond_369
    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/e;->b([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/n;->a(D)V

    goto :goto_35c

    :cond_375
    :goto_375
    move v1, v4

    :cond_376
    :goto_376
    return v1

    nop

    :pswitch_data_378
    .packed-switch 0x12
        :pswitch_346
        :pswitch_317
        :pswitch_2ec
        :pswitch_2ec
        :pswitch_2d2
        :pswitch_2a9
        :pswitch_280
        :pswitch_246
        :pswitch_18f
        :pswitch_175
        :pswitch_11b
        :pswitch_2d2
        :pswitch_e5
        :pswitch_280
        :pswitch_2a9
        :pswitch_b2
        :pswitch_7f
        :pswitch_346
        :pswitch_317
        :pswitch_2ec
        :pswitch_2ec
        :pswitch_2d2
        :pswitch_2a9
        :pswitch_280
        :pswitch_246
        :pswitch_2d2
        :pswitch_e5
        :pswitch_280
        :pswitch_2a9
        :pswitch_b2
        :pswitch_7f
        :pswitch_3d
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;[BIIIJLcom/fyber/inneractive/sdk/protobuf/e$b;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/fyber/inneractive/sdk/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->s:Lsun/misc/Unsafe;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->b:[Ljava/lang/Object;

    div-int/lit8 p5, p5, 0x3

    mul-int/lit8 p5, p5, 0x2

    aget-object p5, v1, p5

    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    invoke-interface {v2, v1}, Lcom/fyber/inneractive/sdk/protobuf/j0;->d(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    invoke-interface {v2, p5}, Lcom/fyber/inneractive/sdk/protobuf/j0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    invoke-interface {v3, v2, v1}, Lcom/fyber/inneractive/sdk/protobuf/j0;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    :cond_25
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    invoke-interface {p1, p5}, Lcom/fyber/inneractive/sdk/protobuf/j0;->f(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/h0$a;

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    invoke-interface {p1, v1}, Lcom/fyber/inneractive/sdk/protobuf/j0;->c(Ljava/lang/Object;)Ljava/util/Map;

    invoke-static {p2, p3, p8}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result p1

    iget p2, p8, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    if-ltz p2, :cond_3d

    sub-int/2addr p4, p1

    if-le p2, p4, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 p1, 0x0

    throw p1

    :cond_3d
    :goto_3d
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->i()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object p1

    throw p1
.end method

.method public a(Ljava/lang/Object;[BIIILcom/fyber/inneractive/sdk/protobuf/e$b;)I
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/fyber/inneractive/sdk/protobuf/e$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/fyber/inneractive/sdk/protobuf/r0;->s:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_19
    const/16 v17, 0x0

    if-ge v0, v13, :cond_485

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_2c

    invoke-static {v0, v12, v3, v9}, Lcom/fyber/inneractive/sdk/protobuf/e;->a(I[BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    iget v3, v9, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    move v4, v3

    move v3, v0

    goto :goto_2d

    :cond_2c
    move v4, v0

    :goto_2d
    ushr-int/lit8 v0, v4, 0x3

    and-int/lit8 v7, v4, 0x7

    const/4 v8, 0x3

    if-le v0, v1, :cond_44

    div-int/2addr v2, v8

    iget v1, v15, Lcom/fyber/inneractive/sdk/protobuf/r0;->c:I

    if-lt v0, v1, :cond_42

    iget v1, v15, Lcom/fyber/inneractive/sdk/protobuf/r0;->d:I

    if-gt v0, v1, :cond_42

    invoke-virtual {v15, v0, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(II)I

    move-result v1

    goto :goto_48

    :cond_42
    const/4 v1, -0x1

    goto :goto_48

    :cond_44
    invoke-virtual {v15, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(I)I

    move-result v1

    :goto_48
    move v2, v1

    const/4 v1, -0x1

    if-ne v2, v1, :cond_5d

    move/from16 p3, v0

    move v2, v3

    move v9, v4

    move/from16 v20, v5

    move/from16 v22, v6

    move-object/from16 v27, v10

    move v8, v11

    const/16 v18, -0x1

    const/16 v21, 0x0

    goto/16 :goto_3f9

    :cond_5d
    iget-object v1, v15, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 v20, v2, 0x1

    aget v1, v1, v20

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->f(I)I

    move-result v8

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v11

    move/from16 v20, v4

    const/16 v4, 0x11

    move/from16 v21, v1

    if-gt v8, v4, :cond_2f6

    iget-object v4, v15, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 v22, v2, 0x2

    aget v4, v4, v22

    ushr-int/lit8 v22, v4, 0x14

    const/4 v1, 0x1

    shl-int v22, v1, v22

    const v13, 0xfffff

    and-int/2addr v4, v13

    move/from16 v18, v2

    if-eq v4, v6, :cond_94

    if-eq v6, v13, :cond_8c

    int-to-long v1, v6

    invoke-virtual {v10, v14, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_8c
    int-to-long v1, v4

    invoke-virtual {v10, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move/from16 v25, v4

    goto :goto_96

    :cond_94
    move/from16 v25, v6

    :goto_96
    move v6, v5

    const/4 v1, 0x5

    packed-switch v8, :pswitch_data_4d0

    move-object/from16 v12, p2

    move v8, v0

    move v7, v3

    move/from16 v11, v18

    move/from16 v13, v20

    const/16 v18, -0x1

    goto/16 :goto_182

    :pswitch_a7
    const/4 v2, 0x3

    if-ne v7, v2, :cond_e3

    shl-int/lit8 v1, v0, 0x3

    or-int/lit8 v4, v1, 0x4

    move/from16 v2, v18

    invoke-virtual {v15, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v1

    move v8, v0

    move-object v0, v1

    const/16 v18, -0x1

    move-object/from16 v1, p2

    move v7, v2

    move v2, v3

    move/from16 v3, p4

    move/from16 v5, v20

    move v13, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/protobuf/e;->a(Lcom/fyber/inneractive/sdk/protobuf/d1;[BIIILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_d1

    iget-object v1, v9, Lcom/fyber/inneractive/sdk/protobuf/e$b;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_de

    :cond_d1
    invoke-virtual {v10, v14, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/fyber/inneractive/sdk/protobuf/e$b;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_de
    move-object/from16 v12, p2

    move v11, v7

    goto/16 :goto_17c

    :cond_e3
    move v8, v0

    move/from16 v7, v18

    move/from16 v13, v20

    const/16 v18, -0x1

    move-object/from16 v12, p2

    move v11, v7

    goto/16 :goto_1bd

    :pswitch_ef
    move v8, v0

    move/from16 v4, v18

    move/from16 v13, v20

    const/16 v18, -0x1

    if-nez v7, :cond_115

    move-wide v1, v11

    move-object/from16 v12, p2

    invoke-static {v12, v3, v9}, Lcom/fyber/inneractive/sdk/protobuf/e;->e([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v7

    move-wide/from16 v19, v1

    iget-wide v0, v9, Lcom/fyber/inneractive/sdk/protobuf/e$b;->b:J

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/j;->a(J)J

    move-result-wide v23

    move-object v0, v10

    move-wide/from16 v2, v19

    move-object/from16 v1, p1

    move v11, v4

    move-wide/from16 v4, v23

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v0, v7

    goto/16 :goto_17c

    :cond_115
    move-object/from16 v12, p2

    move v11, v4

    goto/16 :goto_181

    :pswitch_11a
    move v8, v0

    move-wide v4, v11

    move/from16 v11, v18

    move/from16 v13, v20

    const/16 v18, -0x1

    move-object/from16 v12, p2

    if-nez v7, :cond_181

    invoke-static {v12, v3, v9}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    iget v1, v9, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/protobuf/j;->b(I)I

    move-result v1

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_17c

    :pswitch_134
    move v8, v0

    move-wide v4, v11

    move/from16 v11, v18

    move/from16 v13, v20

    const/16 v18, -0x1

    move-object/from16 v12, p2

    if-nez v7, :cond_181

    invoke-static {v12, v3, v9}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    iget v1, v9, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    invoke-virtual {v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(I)Lcom/fyber/inneractive/sdk/protobuf/y$e;

    move-result-object v2

    if-eqz v2, :cond_162

    invoke-interface {v2, v1}, Lcom/fyber/inneractive/sdk/protobuf/y$e;->a(I)Z

    move-result v2

    if-eqz v2, :cond_153

    goto :goto_162

    :cond_153
    invoke-static/range {p1 .. p1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/l1;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Lcom/fyber/inneractive/sdk/protobuf/l1;->a(ILjava/lang/Object;)V

    move v5, v6

    goto/16 :goto_2dc

    :cond_162
    :goto_162
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_17c

    :pswitch_166
    move v8, v0

    move-wide v4, v11

    move/from16 v11, v18

    move/from16 v13, v20

    const/4 v0, 0x2

    const/16 v18, -0x1

    move-object/from16 v12, p2

    if-ne v7, v0, :cond_181

    invoke-static {v12, v3, v9}, Lcom/fyber/inneractive/sdk/protobuf/e;->a([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    iget-object v1, v9, Lcom/fyber/inneractive/sdk/protobuf/e$b;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_17c
    const v19, 0xfffff

    goto/16 :goto_2da

    :cond_181
    :goto_181
    move v7, v3

    :goto_182
    const v19, 0xfffff

    goto/16 :goto_2e6

    :pswitch_187
    move v8, v0

    move-wide v4, v11

    move/from16 v11, v18

    move/from16 v13, v20

    const/4 v0, 0x2

    const/16 v18, -0x1

    move-object/from16 v12, p2

    if-ne v7, v0, :cond_1bb

    invoke-virtual {v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v0

    move/from16 v2, p4

    const v19, 0xfffff

    invoke-static {v0, v12, v3, v2, v9}, Lcom/fyber/inneractive/sdk/protobuf/e;->a(Lcom/fyber/inneractive/sdk/protobuf/d1;[BIILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_1ac

    iget-object v1, v9, Lcom/fyber/inneractive/sdk/protobuf/e$b;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2da

    :cond_1ac
    invoke-virtual {v10, v14, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, v9, Lcom/fyber/inneractive/sdk/protobuf/e$b;->c:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2da

    :cond_1bb
    move/from16 v2, p4

    :goto_1bd
    const v19, 0xfffff

    goto/16 :goto_253

    :pswitch_1c2
    move/from16 v2, p4

    move v8, v0

    move-wide v4, v11

    move/from16 v11, v18

    move/from16 v13, v20

    const/4 v0, 0x2

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    if-ne v7, v0, :cond_253

    const/high16 v0, 0x20000000

    and-int v0, v21, v0

    if-nez v0, :cond_1df

    invoke-static {v12, v3, v9}, Lcom/fyber/inneractive/sdk/protobuf/e;->b([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    goto :goto_1e3

    :cond_1df
    invoke-static {v12, v3, v9}, Lcom/fyber/inneractive/sdk/protobuf/e;->c([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    :goto_1e3
    iget-object v1, v9, Lcom/fyber/inneractive/sdk/protobuf/e$b;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2da

    :pswitch_1ea
    move/from16 v2, p4

    move v8, v0

    move-wide v4, v11

    move/from16 v11, v18

    move/from16 v13, v20

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    if-nez v7, :cond_253

    invoke-static {v12, v3, v9}, Lcom/fyber/inneractive/sdk/protobuf/e;->e([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    move/from16 p3, v0

    iget-wide v0, v9, Lcom/fyber/inneractive/sdk/protobuf/e$b;->b:J

    const-wide/16 v20, 0x0

    cmp-long v3, v0, v20

    if-eqz v3, :cond_20b

    const/4 v1, 0x1

    goto :goto_20c

    :cond_20b
    const/4 v1, 0x0

    :goto_20c
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v0, v14, v4, v5, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(Ljava/lang/Object;JZ)V

    move/from16 v0, p3

    goto/16 :goto_2da

    :pswitch_215
    move/from16 v2, p4

    move v8, v0

    move-wide v4, v11

    move/from16 v11, v18

    move/from16 v13, v20

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    if-ne v7, v1, :cond_253

    invoke-static {v12, v3}, Lcom/fyber/inneractive/sdk/protobuf/e;->a([BI)I

    move-result v0

    invoke-virtual {v10, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v3, 0x4

    goto/16 :goto_2da

    :pswitch_231
    move/from16 v2, p4

    move v8, v0

    move-wide v4, v11

    move/from16 v11, v18

    move/from16 v13, v20

    const/4 v0, 0x1

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    if-ne v7, v0, :cond_253

    invoke-static {v12, v3}, Lcom/fyber/inneractive/sdk/protobuf/e;->b([BI)J

    move-result-wide v20

    move-object v0, v10

    move-object/from16 v1, p1

    move v7, v3

    move-wide v2, v4

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_2d8

    :cond_253
    :goto_253
    move v7, v3

    goto/16 :goto_2e6

    :pswitch_256
    move v8, v0

    move v2, v3

    move-wide v4, v11

    move/from16 v11, v18

    move/from16 v13, v20

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    if-nez v7, :cond_2e5

    invoke-static {v12, v2, v9}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    iget v1, v9, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_2da

    :pswitch_271
    move v8, v0

    move v2, v3

    move-wide v4, v11

    move/from16 v11, v18

    move/from16 v13, v20

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    if-nez v7, :cond_2e5

    invoke-static {v12, v2, v9}, Lcom/fyber/inneractive/sdk/protobuf/e;->e([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v7

    iget-wide v2, v9, Lcom/fyber/inneractive/sdk/protobuf/e$b;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v20, v2

    move-wide v2, v4

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v0, v7

    goto :goto_2da

    :pswitch_294
    move v8, v0

    move v2, v3

    move-wide v4, v11

    move/from16 v11, v18

    move/from16 v13, v20

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    if-ne v7, v1, :cond_2e5

    invoke-static {v12, v2}, Lcom/fyber/inneractive/sdk/protobuf/e;->a([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v1, v14, v4, v5, v0}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v2, 0x4

    goto :goto_2da

    :pswitch_2b4
    move v8, v0

    move v2, v3

    move-wide v4, v11

    move/from16 v11, v18

    move/from16 v13, v20

    const/4 v0, 0x1

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    if-ne v7, v0, :cond_2e5

    invoke-static {v12, v2}, Lcom/fyber/inneractive/sdk/protobuf/e;->b([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v20

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    move-object/from16 v1, p1

    move v7, v2

    move-wide v2, v4

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(Ljava/lang/Object;JD)V

    :goto_2d8
    add-int/lit8 v0, v7, 0x8

    :goto_2da
    or-int v5, v6, v22

    :goto_2dc
    move v12, v8

    move-object/from16 v27, v10

    move v2, v11

    move-object v10, v15

    move/from16 v6, v25

    goto/16 :goto_34b

    :cond_2e5
    move v7, v2

    :goto_2e6
    move/from16 v20, v6

    move v2, v7

    move/from16 p3, v8

    move-object/from16 v27, v10

    move/from16 v21, v11

    move v9, v13

    move/from16 v22, v25

    move/from16 v8, p5

    goto/16 :goto_3f9

    :cond_2f6
    move v4, v0

    move v1, v3

    move/from16 v13, v20

    const/16 v18, -0x1

    const v19, 0xfffff

    move-wide/from16 v28, v11

    move-object/from16 v12, p2

    move v11, v2

    move-wide/from16 v2, v28

    const/16 v0, 0x1b

    if-ne v8, v0, :cond_360

    const/4 v0, 0x2

    if-ne v7, v0, :cond_352

    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/y$j;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/protobuf/y$j;->d()Z

    move-result v7

    if-nez v7, :cond_32b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_322

    const/16 v7, 0xa

    goto :goto_324

    :cond_322
    mul-int/lit8 v7, v7, 0x2

    :goto_324
    invoke-interface {v0, v7}, Lcom/fyber/inneractive/sdk/protobuf/y$j;->b(I)Lcom/fyber/inneractive/sdk/protobuf/y$j;

    move-result-object v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_32b
    move-object v7, v0

    invoke-virtual {v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v0

    move v3, v1

    move v1, v13

    move-object/from16 v2, p2

    move v8, v4

    move/from16 v4, p4

    move/from16 v20, v5

    move-object v5, v7

    move/from16 v22, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/fyber/inneractive/sdk/protobuf/e;->a(Lcom/fyber/inneractive/sdk/protobuf/d1;I[BIILcom/fyber/inneractive/sdk/protobuf/y$j;Lcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    move v12, v8

    move-object/from16 v27, v10

    move v2, v11

    move-object v10, v15

    move/from16 v5, v20

    move/from16 v6, v22

    :goto_34b
    move/from16 v8, p5

    move-object v11, v9

    move v9, v13

    move-object v13, v14

    goto/16 :goto_477

    :cond_352
    move/from16 v20, v5

    move/from16 v22, v6

    move v15, v1

    move/from16 p3, v4

    move-object/from16 v27, v10

    move/from16 v21, v11

    move/from16 v24, v13

    goto :goto_3ae

    :cond_360
    move/from16 v20, v5

    move/from16 v22, v6

    move v5, v1

    move v6, v4

    const/16 v0, 0x31

    if-gt v8, v0, :cond_396

    move/from16 v1, v21

    int-to-long v0, v1

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v25, v2

    move-object/from16 v2, p2

    move v3, v5

    move/from16 v4, p4

    move v15, v5

    move v5, v13

    move/from16 p3, v6

    move/from16 v19, v8

    move v8, v11

    move-object/from16 v27, v10

    move-wide/from16 v9, v23

    move/from16 v21, v11

    move/from16 v11, v19

    move/from16 v24, v13

    move-wide/from16 v12, v25

    move-object/from16 v14, p6

    invoke-virtual/range {v0 .. v14}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    if-eq v0, v15, :cond_3f5

    goto :goto_3e1

    :cond_396
    move-wide/from16 v25, v2

    move v15, v5

    move/from16 p3, v6

    move/from16 v19, v8

    move-object/from16 v27, v10

    move/from16 v24, v13

    move/from16 v1, v21

    move/from16 v21, v11

    const/16 v0, 0x32

    move/from16 v9, v19

    if-ne v9, v0, :cond_3c7

    const/4 v0, 0x2

    if-eq v7, v0, :cond_3b4

    :goto_3ae
    move/from16 v8, p5

    move v2, v15

    :goto_3b1
    move/from16 v9, v24

    goto :goto_3f9

    :cond_3b4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v21

    move-wide/from16 v6, v25

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;[BIIIJLcom/fyber/inneractive/sdk/protobuf/e$b;)I

    throw v17

    :cond_3c7
    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v24

    move/from16 v6, p3

    move-wide/from16 v10, v25

    move/from16 v12, v21

    move-object/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;[BIIIIIIIJILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    if-eq v0, v15, :cond_3f5

    :goto_3e1
    move-object/from16 v10, p0

    move-object/from16 v13, p1

    move/from16 v12, p3

    move/from16 v8, p5

    move-object/from16 v11, p6

    move/from16 v5, v20

    move/from16 v2, v21

    move/from16 v6, v22

    move/from16 v9, v24

    goto/16 :goto_477

    :cond_3f5
    move/from16 v8, p5

    move v2, v0

    goto :goto_3b1

    :goto_3f9
    if-ne v9, v8, :cond_409

    if-eqz v8, :cond_409

    move-object/from16 v10, p0

    move-object/from16 v13, p1

    move v0, v2

    move v3, v9

    move/from16 v5, v20

    move/from16 v6, v22

    goto/16 :goto_48e

    :cond_409
    move-object/from16 v10, p0

    iget-boolean v0, v10, Lcom/fyber/inneractive/sdk/protobuf/r0;->f:Z

    if-eqz v0, :cond_45c

    move-object/from16 v11, p6

    iget-object v0, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->d:Lcom/fyber/inneractive/sdk/protobuf/q;

    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/q;->a()Lcom/fyber/inneractive/sdk/protobuf/q;

    move-result-object v1

    if-eq v0, v1, :cond_457

    iget-object v0, v10, Lcom/fyber/inneractive/sdk/protobuf/r0;->e:Lcom/fyber/inneractive/sdk/protobuf/o0;

    iget-object v6, v10, Lcom/fyber/inneractive/sdk/protobuf/r0;->o:Lcom/fyber/inneractive/sdk/protobuf/k1;

    iget-object v1, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->d:Lcom/fyber/inneractive/sdk/protobuf/q;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/protobuf/q;->a:Ljava/util/Map;

    new-instance v3, Lcom/fyber/inneractive/sdk/protobuf/q$a;

    move/from16 v12, p3

    invoke-direct {v3, v0, v12}, Lcom/fyber/inneractive/sdk/protobuf/q$a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$e;

    if-nez v5, :cond_443

    invoke-static/range {p1 .. p1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/l1;

    move-result-object v4

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/protobuf/e;->a(I[BIILcom/fyber/inneractive/sdk/protobuf/l1;Lcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    move-object/from16 v13, p1

    goto :goto_471

    :cond_443
    move-object/from16 v13, p1

    move-object v4, v13

    check-cast v4, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/fyber/inneractive/sdk/protobuf/u;

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/fyber/inneractive/sdk/protobuf/e;->a(I[BIILcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$e;Lcom/fyber/inneractive/sdk/protobuf/k1;Lcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    goto :goto_471

    :cond_457
    move-object/from16 v13, p1

    move/from16 v12, p3

    goto :goto_462

    :cond_45c
    move-object/from16 v13, p1

    move/from16 v12, p3

    move-object/from16 v11, p6

    :goto_462
    invoke-static/range {p1 .. p1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/l1;

    move-result-object v4

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/protobuf/e;->a(I[BIILcom/fyber/inneractive/sdk/protobuf/l1;Lcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    :goto_471
    move/from16 v5, v20

    move/from16 v2, v21

    move/from16 v6, v22

    :goto_477
    move v3, v9

    move-object v15, v10

    move-object v9, v11

    move v1, v12

    move-object v14, v13

    move-object/from16 v10, v27

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v11, v8

    goto/16 :goto_19

    :cond_485
    move/from16 v20, v5

    move/from16 v22, v6

    move-object/from16 v27, v10

    move v8, v11

    move-object v13, v14

    move-object v10, v15

    :goto_48e
    const v1, 0xfffff

    if-eq v6, v1, :cond_499

    int-to-long v1, v6

    move-object/from16 v4, v27

    invoke-virtual {v4, v13, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_499
    iget v1, v10, Lcom/fyber/inneractive/sdk/protobuf/r0;->k:I

    move-object/from16 v2, v17

    :goto_49d
    iget v4, v10, Lcom/fyber/inneractive/sdk/protobuf/r0;->l:I

    if-ge v1, v4, :cond_4b0

    iget-object v4, v10, Lcom/fyber/inneractive/sdk/protobuf/r0;->j:[I

    aget v4, v4, v1

    iget-object v5, v10, Lcom/fyber/inneractive/sdk/protobuf/r0;->o:Lcom/fyber/inneractive/sdk/protobuf/k1;

    invoke-virtual {v10, v13, v4, v2, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/k1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fyber/inneractive/sdk/protobuf/l1;

    add-int/lit8 v1, v1, 0x1

    goto :goto_49d

    :cond_4b0
    if-eqz v2, :cond_4b7

    iget-object v1, v10, Lcom/fyber/inneractive/sdk/protobuf/r0;->o:Lcom/fyber/inneractive/sdk/protobuf/k1;

    invoke-virtual {v1, v13, v2}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4b7
    if-nez v8, :cond_4c3

    move/from16 v1, p4

    if-ne v0, v1, :cond_4be

    goto :goto_4c9

    :cond_4be
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->g()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0

    :cond_4c3
    move/from16 v1, p4

    if-gt v0, v1, :cond_4ca

    if-ne v3, v8, :cond_4ca

    :goto_4c9
    return v0

    :cond_4ca
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->g()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_4d0
    .packed-switch 0x0
        :pswitch_2b4
        :pswitch_294
        :pswitch_271
        :pswitch_271
        :pswitch_256
        :pswitch_231
        :pswitch_215
        :pswitch_1ea
        :pswitch_1c2
        :pswitch_187
        :pswitch_166
        :pswitch_256
        :pswitch_134
        :pswitch_215
        :pswitch_231
        :pswitch_11a
        :pswitch_ef
        :pswitch_a7
    .end packed-switch
.end method

.method public final a(I)Lcom/fyber/inneractive/sdk/protobuf/y$e;
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/fyber/inneractive/sdk/protobuf/y$e;

    return-object p1
.end method

.method public a()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->m:Lcom/fyber/inneractive/sdk/protobuf/t0;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->e:Lcom/fyber/inneractive/sdk/protobuf/o0;

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/t0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/k1;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/fyber/inneractive/sdk/protobuf/k1<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v1, v0, p2

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_13

    return-object p3

    :cond_13
    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(I)Lcom/fyber/inneractive/sdk/protobuf/y$e;

    move-result-object v0

    if-nez v0, :cond_1a

    return-object p3

    :cond_1a
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    invoke-interface {v1, p1}, Lcom/fyber/inneractive/sdk/protobuf/j0;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->b:[Ljava/lang/Object;

    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    aget-object p2, v2, p2

    invoke-interface {v1, p2}, Lcom/fyber/inneractive/sdk/protobuf/j0;->f(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/h0$a;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/y$e;->a(I)Z

    move-result v1

    if-nez v1, :cond_35

    if-nez p3, :cond_56

    invoke-virtual {p4}, Lcom/fyber/inneractive/sdk/protobuf/k1;->a()Ljava/lang/Object;

    :cond_56
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_5e
    return-object p3
.end method

.method public final a(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/s1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_e

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object p3, p3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {p3, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(ILjava/lang/String;)V

    goto :goto_17

    :cond_e
    check-cast p2, Lcom/fyber/inneractive/sdk/protobuf/i;

    check-cast p3, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object p3, p3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {p3, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(ILcom/fyber/inneractive/sdk/protobuf/i;)V

    :goto_17
    return-void
.end method

.method public final a(Lcom/fyber/inneractive/sdk/protobuf/k1;Lcom/fyber/inneractive/sdk/protobuf/r;Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/c1;Lcom/fyber/inneractive/sdk/protobuf/q;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/fyber/inneractive/sdk/protobuf/u$b<",
            "TET;>;>(",
            "Lcom/fyber/inneractive/sdk/protobuf/k1<",
            "TUT;TUB;>;",
            "Lcom/fyber/inneractive/sdk/protobuf/r<",
            "TET;>;TT;",
            "Lcom/fyber/inneractive/sdk/protobuf/c1;",
            "Lcom/fyber/inneractive/sdk/protobuf/q;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v0, p4

    move-object/from16 v11, p5

    const/4 v12, 0x0

    move-object v13, v12

    move-object v14, v13

    :cond_d
    :goto_d
    :try_start_d
    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->s()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(I)I

    move-result v3
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_613

    if-gez v3, :cond_8f

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_33

    iget v0, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->k:I

    :goto_1e
    iget v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->l:I

    if-ge v0, v1, :cond_2d

    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->j:[I

    aget v1, v1, v0

    invoke-virtual {v8, v10, v1, v13, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/k1;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2d
    if-eqz v13, :cond_32

    invoke-virtual {v9, v10, v13}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    return-void

    :cond_33
    :try_start_33
    iget-boolean v2, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->f:Z

    if-nez v2, :cond_3b

    move-object/from16 v15, p2

    move-object v3, v12

    goto :goto_44

    :cond_3b
    iget-object v2, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->e:Lcom/fyber/inneractive/sdk/protobuf/o0;

    move-object/from16 v15, p2

    invoke-virtual {v15, v11, v2, v1}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Lcom/fyber/inneractive/sdk/protobuf/q;Lcom/fyber/inneractive/sdk/protobuf/o0;I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    :goto_44
    if-eqz v3, :cond_5d

    if-nez v14, :cond_4d

    invoke-virtual/range {p2 .. p3}, Lcom/fyber/inneractive/sdk/protobuf/r;->b(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/u;

    move-result-object v1

    move-object v14, v1

    :cond_4d
    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    move-object v5, v14

    move-object v6, v13

    move-object/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Lcom/fyber/inneractive/sdk/protobuf/c1;Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/q;Lcom/fyber/inneractive/sdk/protobuf/u;Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/k1;)Ljava/lang/Object;

    move-result-object v1

    :goto_5b
    move-object v13, v1

    goto :goto_d

    :cond_5d
    invoke-virtual {v9, v0}, Lcom/fyber/inneractive/sdk/protobuf/k1;->a(Lcom/fyber/inneractive/sdk/protobuf/c1;)Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->i()Z

    move-result v1

    if-eqz v1, :cond_78

    goto :goto_d

    :cond_6a
    if-nez v13, :cond_71

    invoke-virtual {v9, v10}, Lcom/fyber/inneractive/sdk/protobuf/k1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    :cond_71
    invoke-virtual {v9, v13, v0}, Lcom/fyber/inneractive/sdk/protobuf/k1;->a(Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/c1;)Z

    move-result v1
    :try_end_75
    .catchall {:try_start_33 .. :try_end_75} :catchall_613

    if-eqz v1, :cond_78

    goto :goto_d

    :cond_78
    iget v0, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->k:I

    :goto_7a
    iget v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->l:I

    if-ge v0, v1, :cond_89

    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->j:[I

    aget v1, v1, v0

    invoke-virtual {v8, v10, v1, v13, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/k1;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    :cond_89
    if-eqz v13, :cond_8e

    invoke-virtual {v9, v10, v13}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8e
    return-void

    :cond_8f
    move-object/from16 v15, p2

    :try_start_91
    invoke-virtual {v8, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->g(I)I

    move-result v4
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_613

    :try_start_95
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->f(I)I

    move-result v2

    packed-switch v2, :pswitch_data_62c

    if-nez v13, :cond_5af

    invoke-virtual/range {p1 .. p1}, Lcom/fyber/inneractive/sdk/protobuf/k1;->a()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5ae

    :pswitch_a4
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-virtual {v8, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v2

    invoke-interface {v0, v2, v11}, Lcom/fyber/inneractive/sdk/protobuf/c1;->a(Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_b8
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->l()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_cc
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_e0
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->t()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_f4
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->m()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_108
    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->b()I

    move-result v2

    invoke-virtual {v8, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(I)Lcom/fyber/inneractive/sdk/protobuf/y$e;

    move-result-object v5

    if-eqz v5, :cond_11f

    invoke-interface {v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/y$e;->a(I)Z

    move-result v5

    if-eqz v5, :cond_119

    goto :goto_11f

    :cond_119
    invoke-static {v1, v2, v13, v9}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(IILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/k1;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5b

    :cond_11f
    :goto_11f
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_12f
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_143
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->a()Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_153
    invoke-virtual {v8, v10, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_175

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v5

    invoke-static {v10, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v5

    invoke-interface {v0, v5, v11}, Lcom/fyber/inneractive/sdk/protobuf/c1;->b(Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-static {v10, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_187

    :cond_175
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-virtual {v8, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v2

    invoke-interface {v0, v2, v11}, Lcom/fyber/inneractive/sdk/protobuf/c1;->b(Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    :goto_187
    invoke-virtual {v8, v10, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_18c
    invoke-virtual {v8, v10, v4, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;ILcom/fyber/inneractive/sdk/protobuf/c1;)V

    invoke-virtual {v8, v10, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_194
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->r()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_1a8
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_1bc
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->g()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_1d0
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_1e4
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_1f8
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->o()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_20c
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->k()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_220
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->h()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v1, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_234
    invoke-virtual {v8, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/q;Lcom/fyber/inneractive/sdk/protobuf/c1;)V

    goto/16 :goto_d

    :pswitch_245
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-virtual {v8, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide v3, v4

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;JLcom/fyber/inneractive/sdk/protobuf/c1;Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)V

    goto/16 :goto_d

    :pswitch_25b
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->g(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_26a
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->c(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_279
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->m(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_288
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->f(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_297
    iget-object v2, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-virtual {v2, v10, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/fyber/inneractive/sdk/protobuf/c1;->p(Ljava/util/List;)V

    invoke-virtual {v8, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(I)Lcom/fyber/inneractive/sdk/protobuf/y$e;

    move-result-object v3

    invoke-static {v1, v2, v3, v13, v9}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/y$e;Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/k1;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5b

    :pswitch_2ae
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->i(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_2bd
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->l(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_2cc
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->e(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_2db
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->n(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_2ea
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->o(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_2f9
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->a(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_308
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->k(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_317
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->d(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_326
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->j(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_335
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->g(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_344
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->c(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_353
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->m(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_362
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->f(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_371
    iget-object v2, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-virtual {v2, v10, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/fyber/inneractive/sdk/protobuf/c1;->p(Ljava/util/List;)V

    invoke-virtual {v8, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(I)Lcom/fyber/inneractive/sdk/protobuf/y$e;

    move-result-object v3

    invoke-static {v1, v2, v3, v13, v9}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/y$e;Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/k1;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5b

    :pswitch_388
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->i(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_397
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->h(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_3a6
    invoke-virtual {v8, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v3, v4

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;ILcom/fyber/inneractive/sdk/protobuf/c1;Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)V

    goto/16 :goto_d

    :pswitch_3b8
    invoke-virtual {v8, v10, v4, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;ILcom/fyber/inneractive/sdk/protobuf/c1;)V

    goto/16 :goto_d

    :pswitch_3bd
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->l(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_3cc
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->e(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_3db
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->n(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_3ea
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->o(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_3f9
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->a(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_408
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->k(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_417
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->d(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_426
    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->j(Ljava/util/List;)V

    goto/16 :goto_d

    :pswitch_435
    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_458

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-static {v10, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v2

    invoke-interface {v0, v2, v11}, Lcom/fyber/inneractive/sdk/protobuf/c1;->a(Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_d

    :cond_458
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-virtual {v8, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v4

    invoke-interface {v0, v4, v11}, Lcom/fyber/inneractive/sdk/protobuf/c1;->a(Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v1, v2, v4}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_d

    :pswitch_46c
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->l()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_d

    :pswitch_47c
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->j()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JI)V

    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_d

    :pswitch_48c
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->t()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_d

    :pswitch_49c
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->m()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JI)V

    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_d

    :pswitch_4ac
    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->b()I

    move-result v2

    invoke-virtual {v8, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(I)Lcom/fyber/inneractive/sdk/protobuf/y$e;

    move-result-object v5

    if-eqz v5, :cond_4c3

    invoke-interface {v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/y$e;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4bd

    goto :goto_4c3

    :cond_4bd
    invoke-static {v1, v2, v13, v9}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(IILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/k1;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5b

    :cond_4c3
    :goto_4c3
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    invoke-static {v10, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JI)V

    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_d

    :pswitch_4cf
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->c()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JI)V

    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_d

    :pswitch_4df
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->a()Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v4

    invoke-static {v10, v1, v2, v4}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_d

    :pswitch_4ef
    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_512

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-static {v10, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v2

    invoke-interface {v0, v2, v11}, Lcom/fyber/inneractive/sdk/protobuf/c1;->b(Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_d

    :cond_512
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-virtual {v8, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v4

    invoke-interface {v0, v4, v11}, Lcom/fyber/inneractive/sdk/protobuf/c1;->b(Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v1, v2, v4}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_d

    :pswitch_526
    invoke-virtual {v8, v10, v4, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;ILcom/fyber/inneractive/sdk/protobuf/c1;)V

    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_d

    :pswitch_52e
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->r()Z

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JZ)V

    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_d

    :pswitch_53e
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->q()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JI)V

    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_d

    :pswitch_54e
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->g()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_d

    :pswitch_55e
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->d()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JI)V

    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_d

    :pswitch_56e
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->f()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_d

    :pswitch_57e
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->o()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_d

    :pswitch_58e
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->k()F

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JF)V

    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_d

    :pswitch_59e
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->h()D

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JD)V

    invoke-virtual {v8, v10, v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_d

    :goto_5ae
    move-object v13, v1

    :cond_5af
    invoke-virtual {v9, v13, v0}, Lcom/fyber/inneractive/sdk/protobuf/k1;->a(Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/c1;)Z

    move-result v1
    :try_end_5b3
    .catch Lcom/fyber/inneractive/sdk/protobuf/z$a; {:try_start_95 .. :try_end_5b3} :catch_5cc
    .catchall {:try_start_95 .. :try_end_5b3} :catchall_613

    if-nez v1, :cond_d

    iget v0, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->k:I

    :goto_5b7
    iget v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->l:I

    if-ge v0, v1, :cond_5c6

    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->j:[I

    aget v1, v1, v0

    invoke-virtual {v8, v10, v1, v13, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/k1;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_5b7

    :cond_5c6
    if-eqz v13, :cond_5cb

    invoke-virtual {v9, v10, v13}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5cb
    return-void

    :catch_5cc
    :try_start_5cc
    invoke-virtual {v9, v0}, Lcom/fyber/inneractive/sdk/protobuf/k1;->a(Lcom/fyber/inneractive/sdk/protobuf/c1;)Z

    move-result v1

    if-eqz v1, :cond_5ef

    invoke-interface/range {p4 .. p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->i()Z

    move-result v1
    :try_end_5d6
    .catchall {:try_start_5cc .. :try_end_5d6} :catchall_613

    if-nez v1, :cond_d

    iget v0, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->k:I

    :goto_5da
    iget v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->l:I

    if-ge v0, v1, :cond_5e9

    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->j:[I

    aget v1, v1, v0

    invoke-virtual {v8, v10, v1, v13, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/k1;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_5da

    :cond_5e9
    if-eqz v13, :cond_5ee

    invoke-virtual {v9, v10, v13}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5ee
    return-void

    :cond_5ef
    if-nez v13, :cond_5f6

    :try_start_5f1
    invoke-virtual {v9, v10}, Lcom/fyber/inneractive/sdk/protobuf/k1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    :cond_5f6
    invoke-virtual {v9, v13, v0}, Lcom/fyber/inneractive/sdk/protobuf/k1;->a(Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/c1;)Z

    move-result v1
    :try_end_5fa
    .catchall {:try_start_5f1 .. :try_end_5fa} :catchall_613

    if-nez v1, :cond_d

    iget v0, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->k:I

    :goto_5fe
    iget v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->l:I

    if-ge v0, v1, :cond_60d

    iget-object v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->j:[I

    aget v1, v1, v0

    invoke-virtual {v8, v10, v1, v13, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/k1;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_5fe

    :cond_60d
    if-eqz v13, :cond_612

    invoke-virtual {v9, v10, v13}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_612
    return-void

    :catchall_613
    move-exception v0

    iget v1, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->k:I

    :goto_616
    iget v2, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->l:I

    if-ge v1, v2, :cond_625

    iget-object v2, v8, Lcom/fyber/inneractive/sdk/protobuf/r0;->j:[I

    aget v2, v2, v1

    invoke-virtual {v8, v10, v2, v13, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/k1;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_616

    :cond_625
    if-eqz v13, :cond_62a

    invoke-virtual {v9, v10, v13}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_62a
    throw v0

    nop

    :pswitch_data_62c
    .packed-switch 0x0
        :pswitch_59e
        :pswitch_58e
        :pswitch_57e
        :pswitch_56e
        :pswitch_55e
        :pswitch_54e
        :pswitch_53e
        :pswitch_52e
        :pswitch_526
        :pswitch_4ef
        :pswitch_4df
        :pswitch_4cf
        :pswitch_4ac
        :pswitch_49c
        :pswitch_48c
        :pswitch_47c
        :pswitch_46c
        :pswitch_435
        :pswitch_426
        :pswitch_417
        :pswitch_408
        :pswitch_3f9
        :pswitch_3ea
        :pswitch_3db
        :pswitch_3cc
        :pswitch_3bd
        :pswitch_3b8
        :pswitch_3a6
        :pswitch_397
        :pswitch_388
        :pswitch_371
        :pswitch_362
        :pswitch_353
        :pswitch_344
        :pswitch_335
        :pswitch_326
        :pswitch_317
        :pswitch_308
        :pswitch_2f9
        :pswitch_2ea
        :pswitch_2db
        :pswitch_2cc
        :pswitch_2bd
        :pswitch_2ae
        :pswitch_297
        :pswitch_288
        :pswitch_279
        :pswitch_26a
        :pswitch_25b
        :pswitch_245
        :pswitch_234
        :pswitch_220
        :pswitch_20c
        :pswitch_1f8
        :pswitch_1e4
        :pswitch_1d0
        :pswitch_1bc
        :pswitch_1a8
        :pswitch_194
        :pswitch_18c
        :pswitch_153
        :pswitch_143
        :pswitch_12f
        :pswitch_108
        :pswitch_f4
        :pswitch_e0
        :pswitch_cc
        :pswitch_b8
        :pswitch_a4
    .end packed-switch
.end method

.method public final a(Lcom/fyber/inneractive/sdk/protobuf/s1;ILjava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fyber/inneractive/sdk/protobuf/s1;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_3f

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->b:[Ljava/lang/Object;

    div-int/lit8 p4, p4, 0x3

    const/4 v2, 0x2

    mul-int/lit8 p4, p4, 0x2

    aget-object p4, v1, p4

    invoke-interface {v0, p4}, Lcom/fyber/inneractive/sdk/protobuf/j0;->f(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/h0$a;

    iget-object p4, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    invoke-interface {p4, p3}, Lcom/fyber/inneractive/sdk/protobuf/j0;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    check-cast p1, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object p4, p1, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_2c

    goto :goto_3f

    :cond_2c
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {p1, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/l;->i(II)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_3f
    :goto_3f
    return-void
.end method

.method public final a(Ljava/lang/Object;ILcom/fyber/inneractive/sdk/protobuf/c1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_16

    invoke-static {p2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/fyber/inneractive/sdk/protobuf/c1;->p()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_31

    :cond_16
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->g:Z

    if-eqz v0, :cond_26

    invoke-static {p2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/fyber/inneractive/sdk/protobuf/c1;->n()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_31

    :cond_26
    invoke-static {p2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/fyber/inneractive/sdk/protobuf/c1;->a()Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_31
    return-void
.end method

.method public final a(Ljava/lang/Object;ILcom/fyber/inneractive/sdk/protobuf/c1;Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Lcom/fyber/inneractive/sdk/protobuf/c1;",
            "Lcom/fyber/inneractive/sdk/protobuf/d1<",
            "TE;>;",
            "Lcom/fyber/inneractive/sdk/protobuf/q;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v0

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-virtual {p2, p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1, p4, p5}, Lcom/fyber/inneractive/sdk/protobuf/c1;->b(Ljava/util/List;Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/q;Lcom/fyber/inneractive/sdk/protobuf/c1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Lcom/fyber/inneractive/sdk/protobuf/q;",
            "Lcom/fyber/inneractive/sdk/protobuf/c1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 p2, p2, 0x1

    aget p2, v0, p2

    invoke-static {p2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1a

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    invoke-interface {p2, p3}, Lcom/fyber/inneractive/sdk/protobuf/j0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_31

    :cond_1a
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    invoke-interface {v2, p2}, Lcom/fyber/inneractive/sdk/protobuf/j0;->d(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    invoke-interface {v2, p3}, Lcom/fyber/inneractive/sdk/protobuf/j0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    invoke-interface {v3, v2, p2}, Lcom/fyber/inneractive/sdk/protobuf/j0;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v2

    :cond_31
    :goto_31
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    invoke-interface {p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/j0;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    invoke-interface {p2, p3}, Lcom/fyber/inneractive/sdk/protobuf/j0;->f(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/h0$a;

    const/4 p2, 0x0

    invoke-interface {p5, p1, p2, p4}, Lcom/fyber/inneractive/sdk/protobuf/c1;->a(Ljava/util/Map;Lcom/fyber/inneractive/sdk/protobuf/h0$a;Lcom/fyber/inneractive/sdk/protobuf/q;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;JLcom/fyber/inneractive/sdk/protobuf/c1;Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Lcom/fyber/inneractive/sdk/protobuf/c1;",
            "Lcom/fyber/inneractive/sdk/protobuf/d1<",
            "TE;>;",
            "Lcom/fyber/inneractive/sdk/protobuf/q;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p4, p1, p5, p6}, Lcom/fyber/inneractive/sdk/protobuf/c1;->a(Ljava/util/List;Lcom/fyber/inneractive/sdk/protobuf/d1;Lcom/fyber/inneractive/sdk/protobuf/q;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/c1;Lcom/fyber/inneractive/sdk/protobuf/q;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fyber/inneractive/sdk/protobuf/c1;",
            "Lcom/fyber/inneractive/sdk/protobuf/q;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->o:Lcom/fyber/inneractive/sdk/protobuf/k1;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Lcom/fyber/inneractive/sdk/protobuf/k1;Lcom/fyber/inneractive/sdk/protobuf/r;Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/c1;Lcom/fyber/inneractive/sdk/protobuf/q;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/s1;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fyber/inneractive/sdk/protobuf/s1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v2

    check-cast v3, Lcom/fyber/inneractive/sdk/protobuf/m;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/fyber/inneractive/sdk/protobuf/s1$a;->ASCENDING:Lcom/fyber/inneractive/sdk/protobuf/s1$a;

    sget-object v5, Lcom/fyber/inneractive/sdk/protobuf/s1$a;->DESCENDING:Lcom/fyber/inneractive/sdk/protobuf/s1$a;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v4, v5, :cond_619

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->o:Lcom/fyber/inneractive/sdk/protobuf/k1;

    invoke-virtual {v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    iget-boolean v4, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->f:Z

    if-eqz v4, :cond_66

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    invoke-virtual {v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/u;

    move-result-object v4

    iget-object v5, v4, Lcom/fyber/inneractive/sdk/protobuf/u;->a:Lcom/fyber/inneractive/sdk/protobuf/g1;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_66

    iget-boolean v5, v4, Lcom/fyber/inneractive/sdk/protobuf/u;->c:Z

    if-eqz v5, :cond_4c

    new-instance v5, Lcom/fyber/inneractive/sdk/protobuf/a0$b;

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/protobuf/u;->a:Lcom/fyber/inneractive/sdk/protobuf/g1;

    iget-object v9, v4, Lcom/fyber/inneractive/sdk/protobuf/g1;->g:Lcom/fyber/inneractive/sdk/protobuf/g1$c;

    if-nez v9, :cond_42

    new-instance v9, Lcom/fyber/inneractive/sdk/protobuf/g1$c;

    invoke-direct {v9, v4}, Lcom/fyber/inneractive/sdk/protobuf/g1$c;-><init>(Lcom/fyber/inneractive/sdk/protobuf/g1;)V

    iput-object v9, v4, Lcom/fyber/inneractive/sdk/protobuf/g1;->g:Lcom/fyber/inneractive/sdk/protobuf/g1$c;

    :cond_42
    iget-object v4, v4, Lcom/fyber/inneractive/sdk/protobuf/g1;->g:Lcom/fyber/inneractive/sdk/protobuf/g1$c;

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/protobuf/g1$c;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/fyber/inneractive/sdk/protobuf/a0$b;-><init>(Ljava/util/Iterator;)V

    goto :goto_5f

    :cond_4c
    iget-object v4, v4, Lcom/fyber/inneractive/sdk/protobuf/u;->a:Lcom/fyber/inneractive/sdk/protobuf/g1;

    iget-object v5, v4, Lcom/fyber/inneractive/sdk/protobuf/g1;->g:Lcom/fyber/inneractive/sdk/protobuf/g1$c;

    if-nez v5, :cond_59

    new-instance v5, Lcom/fyber/inneractive/sdk/protobuf/g1$c;

    invoke-direct {v5, v4}, Lcom/fyber/inneractive/sdk/protobuf/g1$c;-><init>(Lcom/fyber/inneractive/sdk/protobuf/g1;)V

    iput-object v5, v4, Lcom/fyber/inneractive/sdk/protobuf/g1;->g:Lcom/fyber/inneractive/sdk/protobuf/g1$c;

    :cond_59
    iget-object v4, v4, Lcom/fyber/inneractive/sdk/protobuf/g1;->g:Lcom/fyber/inneractive/sdk/protobuf/g1$c;

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/protobuf/g1$c;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5f
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    goto :goto_68

    :cond_66
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_68
    iget-object v9, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x3

    :goto_6d
    if-ltz v9, :cond_602

    invoke-virtual {v0, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->g(I)I

    move-result v10

    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    :goto_77
    if-eqz v4, :cond_95

    iget-object v12, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    invoke-virtual {v12, v4}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Ljava/util/Map$Entry;)I

    move-result v12

    if-le v12, v11, :cond_95

    iget-object v12, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    invoke-virtual {v12, v2, v4}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Lcom/fyber/inneractive/sdk/protobuf/s1;Ljava/util/Map$Entry;)V

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    goto :goto_77

    :cond_93
    const/4 v4, 0x0

    goto :goto_77

    :cond_95
    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->f(I)I

    move-result v12

    packed-switch v12, :pswitch_data_b34

    goto/16 :goto_5fe

    :pswitch_9e
    invoke-virtual {v0, v1, v11, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v12

    invoke-virtual {v3, v11, v10, v12}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/d1;)V

    goto/16 :goto_5fe

    :pswitch_b5
    invoke-virtual {v0, v1, v11, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v3, v11, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(IJ)V

    goto/16 :goto_5fe

    :pswitch_c8
    invoke-virtual {v0, v1, v11, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v3, v11, v10}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(II)V

    goto/16 :goto_5fe

    :pswitch_db
    invoke-virtual {v0, v1, v11, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v12

    iget-object v10, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v10, v11, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/l;->f(IJ)V

    goto/16 :goto_5fe

    :pswitch_f0
    invoke-virtual {v0, v1, v11, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v10

    iget-object v12, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v12, v11, v10}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(II)V

    goto/16 :goto_5fe

    :pswitch_105
    invoke-virtual {v0, v1, v11, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v10

    iget-object v12, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v12, v11, v10}, Lcom/fyber/inneractive/sdk/protobuf/l;->h(II)V

    goto/16 :goto_5fe

    :pswitch_11a
    invoke-virtual {v0, v1, v11, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v10

    iget-object v12, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v12, v11, v10}, Lcom/fyber/inneractive/sdk/protobuf/l;->j(II)V

    goto/16 :goto_5fe

    :pswitch_12f
    invoke-virtual {v0, v1, v11, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fyber/inneractive/sdk/protobuf/i;

    iget-object v12, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v12, v11, v10}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(ILcom/fyber/inneractive/sdk/protobuf/i;)V

    goto/16 :goto_5fe

    :pswitch_146
    invoke-virtual {v0, v1, v11, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v12

    invoke-virtual {v3, v11, v10, v12}, Lcom/fyber/inneractive/sdk/protobuf/m;->b(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/d1;)V

    goto/16 :goto_5fe

    :pswitch_15d
    invoke-virtual {v0, v1, v11, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v11, v10, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    goto/16 :goto_5fe

    :pswitch_170
    invoke-virtual {v0, v1, v11, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;J)Z

    move-result v10

    iget-object v12, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v12, v11, v10}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(IZ)V

    goto/16 :goto_5fe

    :pswitch_185
    invoke-virtual {v0, v1, v11, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v10

    iget-object v12, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v12, v11, v10}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(II)V

    goto/16 :goto_5fe

    :pswitch_19a
    invoke-virtual {v0, v1, v11, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v12

    iget-object v10, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v10, v11, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/l;->f(IJ)V

    goto/16 :goto_5fe

    :pswitch_1af
    invoke-virtual {v0, v1, v11, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v10

    iget-object v12, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v12, v11, v10}, Lcom/fyber/inneractive/sdk/protobuf/l;->h(II)V

    goto/16 :goto_5fe

    :pswitch_1c4
    invoke-virtual {v0, v1, v11, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v12

    iget-object v10, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v10, v11, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(IJ)V

    goto/16 :goto_5fe

    :pswitch_1d9
    invoke-virtual {v0, v1, v11, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v12

    iget-object v10, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v10, v11, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(IJ)V

    goto/16 :goto_5fe

    :pswitch_1ee
    invoke-virtual {v0, v1, v11, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(Ljava/lang/Object;J)F

    move-result v10

    invoke-virtual {v3, v11, v10}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(IF)V

    goto/16 :goto_5fe

    :pswitch_201
    invoke-virtual {v0, v1, v11, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;J)D

    move-result-wide v12

    invoke-virtual {v3, v11, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(ID)V

    goto/16 :goto_5fe

    :pswitch_214
    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v2, v11, v10, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Lcom/fyber/inneractive/sdk/protobuf/s1;ILjava/lang/Object;I)V

    goto/16 :goto_5fe

    :pswitch_221
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-virtual {v0, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v12

    invoke-static {v11, v10, v2, v12}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Lcom/fyber/inneractive/sdk/protobuf/d1;)V

    goto/16 :goto_5fe

    :pswitch_238
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->l(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_24b
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->k(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_25e
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->j(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_271
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->i(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_284
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->c(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_297
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->m(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_2aa
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_2bd
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->d(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_2d0
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->e(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_2e3
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->g(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_2f6
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->n(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_309
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->h(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_31c
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->f(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_32f
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_342
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->l(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_355
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->k(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_368
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->j(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_37b
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->i(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_38e
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->c(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_3a1
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->m(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_3b4
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    goto/16 :goto_5fe

    :pswitch_3c7
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-virtual {v0, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v12

    invoke-static {v11, v10, v2, v12}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Lcom/fyber/inneractive/sdk/protobuf/d1;)V

    goto/16 :goto_5fe

    :pswitch_3de
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    goto/16 :goto_5fe

    :pswitch_3f1
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_404
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->d(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_417
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->e(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_42a
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->g(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_43d
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->n(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_450
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->h(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_463
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->f(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_476
    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v11, v11, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v11, v10, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_5fe

    :pswitch_489
    invoke-virtual {v0, v1, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v12

    invoke-virtual {v3, v11, v10, v12}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/d1;)V

    goto/16 :goto_5fe

    :pswitch_4a0
    invoke-virtual {v0, v1, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v3, v11, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(IJ)V

    goto/16 :goto_5fe

    :pswitch_4b3
    invoke-virtual {v0, v1, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v3, v11, v10}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(II)V

    goto/16 :goto_5fe

    :pswitch_4c6
    invoke-virtual {v0, v1, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v12

    iget-object v10, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v10, v11, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/l;->f(IJ)V

    goto/16 :goto_5fe

    :pswitch_4db
    invoke-virtual {v0, v1, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v10

    iget-object v12, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v12, v11, v10}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(II)V

    goto/16 :goto_5fe

    :pswitch_4f0
    invoke-virtual {v0, v1, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v10

    iget-object v12, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v12, v11, v10}, Lcom/fyber/inneractive/sdk/protobuf/l;->h(II)V

    goto/16 :goto_5fe

    :pswitch_505
    invoke-virtual {v0, v1, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v10

    iget-object v12, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v12, v11, v10}, Lcom/fyber/inneractive/sdk/protobuf/l;->j(II)V

    goto/16 :goto_5fe

    :pswitch_51a
    invoke-virtual {v0, v1, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fyber/inneractive/sdk/protobuf/i;

    iget-object v12, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v12, v11, v10}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(ILcom/fyber/inneractive/sdk/protobuf/i;)V

    goto/16 :goto_5fe

    :pswitch_531
    invoke-virtual {v0, v1, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v12

    invoke-virtual {v3, v11, v10, v12}, Lcom/fyber/inneractive/sdk/protobuf/m;->b(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/d1;)V

    goto/16 :goto_5fe

    :pswitch_548
    invoke-virtual {v0, v1, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v11, v10, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    goto/16 :goto_5fe

    :pswitch_55b
    invoke-virtual {v0, v1, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    sget-object v10, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v10, v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(Ljava/lang/Object;J)Z

    move-result v10

    iget-object v12, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v12, v11, v10}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(IZ)V

    goto/16 :goto_5fe

    :pswitch_572
    invoke-virtual {v0, v1, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v10

    iget-object v12, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v12, v11, v10}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(II)V

    goto/16 :goto_5fe

    :pswitch_587
    invoke-virtual {v0, v1, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v12

    iget-object v10, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v10, v11, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/l;->f(IJ)V

    goto :goto_5fe

    :pswitch_59b
    invoke-virtual {v0, v1, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v10

    iget-object v12, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v12, v11, v10}, Lcom/fyber/inneractive/sdk/protobuf/l;->h(II)V

    goto :goto_5fe

    :pswitch_5af
    invoke-virtual {v0, v1, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v12

    iget-object v10, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v10, v11, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(IJ)V

    goto :goto_5fe

    :pswitch_5c3
    invoke-virtual {v0, v1, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v12

    iget-object v10, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v10, v11, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(IJ)V

    goto :goto_5fe

    :pswitch_5d7
    invoke-virtual {v0, v1, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    sget-object v10, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v10, v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->d(Ljava/lang/Object;J)F

    move-result v10

    invoke-virtual {v3, v11, v10}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(IF)V

    goto :goto_5fe

    :pswitch_5eb
    invoke-virtual {v0, v1, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_5fe

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v12

    sget-object v10, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v10, v1, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->c(Ljava/lang/Object;J)D

    move-result-wide v12

    invoke-virtual {v3, v11, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(ID)V

    :cond_5fe
    :goto_5fe
    add-int/lit8 v9, v9, -0x3

    goto/16 :goto_6d

    :cond_602
    :goto_602
    if-eqz v4, :cond_b33

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    invoke-virtual {v1, v2, v4}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Lcom/fyber/inneractive/sdk/protobuf/s1;Ljava/util/Map$Entry;)V

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_617

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/Map$Entry;

    goto :goto_602

    :cond_617
    const/4 v4, 0x0

    goto :goto_602

    :cond_619
    iget-boolean v4, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->h:Z

    if-eqz v4, :cond_622

    invoke-virtual/range {p0 .. p2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    goto/16 :goto_b33

    :cond_622
    iget-boolean v4, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->f:Z

    if-eqz v4, :cond_63f

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    invoke-virtual {v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/u;

    move-result-object v4

    iget-object v5, v4, Lcom/fyber/inneractive/sdk/protobuf/u;->a:Lcom/fyber/inneractive/sdk/protobuf/g1;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_63f

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/protobuf/u;->f()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_641

    :cond_63f
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_641
    iget-object v9, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    array-length v9, v9

    sget-object v10, Lcom/fyber/inneractive/sdk/protobuf/r0;->s:Lsun/misc/Unsafe;

    const v11, 0xfffff

    const/4 v12, 0x0

    const v13, 0xfffff

    const/4 v14, 0x0

    :goto_64e
    if-ge v12, v9, :cond_b10

    invoke-virtual {v0, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->g(I)I

    move-result v15

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-static {v15}, Lcom/fyber/inneractive/sdk/protobuf/r0;->f(I)I

    move-result v8

    const/16 v7, 0x11

    if-gt v8, v7, :cond_67b

    iget-object v7, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 v16, v12, 0x2

    aget v7, v7, v16

    move-object/from16 v16, v5

    and-int v5, v7, v11

    if-eq v5, v13, :cond_672

    int-to-long v13, v5

    invoke-virtual {v10, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v14

    move v13, v5

    :cond_672
    ushr-int/lit8 v5, v7, 0x14

    const/4 v7, 0x1

    shl-int v5, v7, v5

    move v7, v5

    move-object/from16 v5, v16

    goto :goto_67e

    :cond_67b
    move-object/from16 v16, v5

    const/4 v7, 0x0

    :goto_67e
    if-eqz v5, :cond_69f

    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    invoke-virtual {v11, v5}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v6, :cond_69f

    iget-object v11, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    invoke-virtual {v11, v2, v5}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Lcom/fyber/inneractive/sdk/protobuf/s1;Ljava/util/Map$Entry;)V

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_69a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_69b

    :cond_69a
    const/4 v5, 0x0

    :goto_69b
    const v11, 0xfffff

    goto :goto_67e

    :cond_69f
    move-object v11, v4

    move-object/from16 v16, v5

    invoke-static {v15}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    packed-switch v8, :pswitch_data_bc2

    goto/16 :goto_7ec

    :pswitch_6ab
    invoke-virtual {v0, v1, v6, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7ec

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v5

    invoke-virtual {v3, v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/d1;)V

    goto/16 :goto_7ec

    :pswitch_6be
    invoke-virtual {v0, v1, v6, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7ec

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v3, v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(IJ)V

    goto/16 :goto_7ec

    :pswitch_6cd
    invoke-virtual {v0, v1, v6, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7ec

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(II)V

    goto/16 :goto_7ec

    :pswitch_6dc
    invoke-virtual {v0, v1, v6, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7ec

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    iget-object v7, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v7, v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->f(IJ)V

    goto/16 :goto_7ec

    :pswitch_6ed
    invoke-virtual {v0, v1, v6, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7ec

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v4

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v5, v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(II)V

    goto/16 :goto_7ec

    :pswitch_6fe
    invoke-virtual {v0, v1, v6, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7ec

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v4

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v5, v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->h(II)V

    goto/16 :goto_7ec

    :pswitch_70f
    invoke-virtual {v0, v1, v6, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7ec

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v4

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v5, v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->j(II)V

    goto/16 :goto_7ec

    :pswitch_720
    invoke-virtual {v0, v1, v6, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7ec

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fyber/inneractive/sdk/protobuf/i;

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v5, v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(ILcom/fyber/inneractive/sdk/protobuf/i;)V

    goto/16 :goto_7ec

    :pswitch_733
    invoke-virtual {v0, v1, v6, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7ec

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v5

    invoke-virtual {v3, v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/m;->b(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/d1;)V

    goto/16 :goto_7ec

    :pswitch_746
    invoke-virtual {v0, v1, v6, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7ec

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v6, v4, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    goto/16 :goto_7ec

    :pswitch_755
    invoke-virtual {v0, v1, v6, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7ec

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;J)Z

    move-result v4

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v5, v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(IZ)V

    goto/16 :goto_7ec

    :pswitch_766
    invoke-virtual {v0, v1, v6, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7ec

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v4

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v5, v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(II)V

    goto/16 :goto_7ec

    :pswitch_777
    invoke-virtual {v0, v1, v6, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7ec

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    iget-object v7, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v7, v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->f(IJ)V

    goto :goto_7ec

    :pswitch_787
    invoke-virtual {v0, v1, v6, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7ec

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v4

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v5, v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->h(II)V

    goto :goto_7ec

    :pswitch_797
    invoke-virtual {v0, v1, v6, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7ec

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    iget-object v7, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v7, v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(IJ)V

    goto :goto_7ec

    :pswitch_7a7
    invoke-virtual {v0, v1, v6, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7ec

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    iget-object v7, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v7, v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(IJ)V

    goto :goto_7ec

    :pswitch_7b7
    invoke-virtual {v0, v1, v6, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7ec

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(Ljava/lang/Object;J)F

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(IF)V

    goto :goto_7ec

    :pswitch_7c5
    invoke-virtual {v0, v1, v6, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7ec

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-virtual {v3, v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(ID)V

    goto :goto_7ec

    :pswitch_7d3
    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v6, v4, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Lcom/fyber/inneractive/sdk/protobuf/s1;ILjava/lang/Object;I)V

    goto :goto_7ec

    :pswitch_7db
    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v0, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v5

    invoke-static {v6, v4, v2, v5}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Lcom/fyber/inneractive/sdk/protobuf/d1;)V

    :cond_7ec
    :goto_7ec
    const/4 v8, 0x1

    goto/16 :goto_960

    :pswitch_7ef
    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v8, 0x1

    invoke-static {v6, v4, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->l(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_960

    :pswitch_7ff
    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->k(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_960

    :pswitch_80f
    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->j(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_960

    :pswitch_81f
    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->i(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_960

    :pswitch_82f
    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->c(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_960

    :pswitch_83f
    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->m(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_960

    :pswitch_84f
    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_960

    :pswitch_85f
    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->d(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_960

    :pswitch_86f
    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->e(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_960

    :pswitch_87f
    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->g(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_960

    :pswitch_88f
    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->n(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_960

    :pswitch_89f
    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->h(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_960

    :pswitch_8af
    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->f(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_960

    :pswitch_8bf
    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_960

    :pswitch_8cf
    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v7, 0x0

    invoke-static {v6, v4, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->l(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_960

    :pswitch_8e0
    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->k(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto :goto_960

    :pswitch_8f0
    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->j(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto :goto_960

    :pswitch_900
    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->i(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto :goto_960

    :pswitch_910
    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->c(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto :goto_960

    :pswitch_920
    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v7}, Lcom/fyber/inneractive/sdk/protobuf/f1;->m(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto :goto_960

    :pswitch_930
    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    goto :goto_960

    :pswitch_93f
    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v0, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v5

    invoke-static {v6, v4, v2, v5}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Lcom/fyber/inneractive/sdk/protobuf/d1;)V

    goto :goto_960

    :pswitch_952
    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    :goto_960
    const/4 v15, 0x0

    goto/16 :goto_b04

    :pswitch_963
    const/4 v8, 0x1

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v6, v4, v2, v15}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_b04

    :pswitch_974
    const/4 v8, 0x1

    const/4 v15, 0x0

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v15}, Lcom/fyber/inneractive/sdk/protobuf/f1;->d(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_b04

    :pswitch_985
    const/4 v8, 0x1

    const/4 v15, 0x0

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v15}, Lcom/fyber/inneractive/sdk/protobuf/f1;->e(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_b04

    :pswitch_996
    const/4 v8, 0x1

    const/4 v15, 0x0

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v15}, Lcom/fyber/inneractive/sdk/protobuf/f1;->g(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_b04

    :pswitch_9a7
    const/4 v8, 0x1

    const/4 v15, 0x0

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v15}, Lcom/fyber/inneractive/sdk/protobuf/f1;->n(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_b04

    :pswitch_9b8
    const/4 v8, 0x1

    const/4 v15, 0x0

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v15}, Lcom/fyber/inneractive/sdk/protobuf/f1;->h(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_b04

    :pswitch_9c9
    const/4 v8, 0x1

    const/4 v15, 0x0

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v15}, Lcom/fyber/inneractive/sdk/protobuf/f1;->f(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_b04

    :pswitch_9da
    const/4 v8, 0x1

    const/4 v15, 0x0

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v6, v6, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v2, v15}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_b04

    :pswitch_9eb
    const/4 v8, 0x1

    const/4 v15, 0x0

    and-int/2addr v7, v14

    if-eqz v7, :cond_b04

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v5

    invoke-virtual {v3, v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/d1;)V

    goto/16 :goto_b04

    :pswitch_9fd
    const/4 v8, 0x1

    const/4 v15, 0x0

    and-int/2addr v7, v14

    if-eqz v7, :cond_b04

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v3, v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(IJ)V

    goto/16 :goto_b04

    :pswitch_a0b
    const/4 v8, 0x1

    const/4 v15, 0x0

    and-int/2addr v7, v14

    if-eqz v7, :cond_b04

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(II)V

    goto/16 :goto_b04

    :pswitch_a19
    const/4 v8, 0x1

    const/4 v15, 0x0

    and-int/2addr v7, v14

    if-eqz v7, :cond_b04

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    iget-object v7, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v7, v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->f(IJ)V

    goto/16 :goto_b04

    :pswitch_a29
    const/4 v8, 0x1

    const/4 v15, 0x0

    and-int/2addr v7, v14

    if-eqz v7, :cond_b04

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v5, v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(II)V

    goto/16 :goto_b04

    :pswitch_a39
    const/4 v8, 0x1

    const/4 v15, 0x0

    and-int/2addr v7, v14

    if-eqz v7, :cond_b04

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v5, v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->h(II)V

    goto/16 :goto_b04

    :pswitch_a49
    const/4 v8, 0x1

    const/4 v15, 0x0

    and-int/2addr v7, v14

    if-eqz v7, :cond_b04

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v5, v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->j(II)V

    goto/16 :goto_b04

    :pswitch_a59
    const/4 v8, 0x1

    const/4 v15, 0x0

    and-int/2addr v7, v14

    if-eqz v7, :cond_b04

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fyber/inneractive/sdk/protobuf/i;

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v5, v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(ILcom/fyber/inneractive/sdk/protobuf/i;)V

    goto/16 :goto_b04

    :pswitch_a6b
    const/4 v8, 0x1

    const/4 v15, 0x0

    and-int/2addr v7, v14

    if-eqz v7, :cond_b04

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v12}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v5

    invoke-virtual {v3, v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/m;->b(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/d1;)V

    goto/16 :goto_b04

    :pswitch_a7d
    const/4 v8, 0x1

    const/4 v15, 0x0

    and-int/2addr v7, v14

    if-eqz v7, :cond_b04

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v6, v4, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    goto/16 :goto_b04

    :pswitch_a8b
    const/4 v8, 0x1

    const/4 v15, 0x0

    and-int/2addr v7, v14

    if-eqz v7, :cond_b04

    sget-object v7, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v7, v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(Ljava/lang/Object;J)Z

    move-result v4

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v5, v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(IZ)V

    goto :goto_b04

    :pswitch_a9c
    const/4 v8, 0x1

    const/4 v15, 0x0

    and-int/2addr v7, v14

    if-eqz v7, :cond_b04

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v5, v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(II)V

    goto :goto_b04

    :pswitch_aab
    const/4 v8, 0x1

    const/4 v15, 0x0

    and-int/2addr v7, v14

    if-eqz v7, :cond_b04

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    iget-object v7, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v7, v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->f(IJ)V

    goto :goto_b04

    :pswitch_aba
    const/4 v8, 0x1

    const/4 v15, 0x0

    and-int/2addr v7, v14

    if-eqz v7, :cond_b04

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v5, v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->h(II)V

    goto :goto_b04

    :pswitch_ac9
    const/4 v8, 0x1

    const/4 v15, 0x0

    and-int/2addr v7, v14

    if-eqz v7, :cond_b04

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    iget-object v7, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v7, v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(IJ)V

    goto :goto_b04

    :pswitch_ad8
    const/4 v8, 0x1

    const/4 v15, 0x0

    and-int/2addr v7, v14

    if-eqz v7, :cond_b04

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    iget-object v7, v3, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v7, v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(IJ)V

    goto :goto_b04

    :pswitch_ae7
    const/4 v8, 0x1

    const/4 v15, 0x0

    and-int/2addr v7, v14

    if-eqz v7, :cond_b04

    sget-object v7, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v7, v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->d(Ljava/lang/Object;J)F

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(IF)V

    goto :goto_b04

    :pswitch_af6
    const/4 v8, 0x1

    const/4 v15, 0x0

    and-int/2addr v7, v14

    if-eqz v7, :cond_b04

    sget-object v7, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v7, v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->c(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-virtual {v3, v6, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(ID)V

    :cond_b04
    :goto_b04
    add-int/lit8 v12, v12, 0x3

    move-object v4, v11

    move-object/from16 v5, v16

    const/4 v7, 0x1

    const/4 v8, 0x0

    const v11, 0xfffff

    goto/16 :goto_64e

    :cond_b10
    move-object v11, v4

    move-object/from16 v16, v5

    :goto_b13
    if-eqz v5, :cond_b2a

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    invoke-virtual {v3, v2, v5}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Lcom/fyber/inneractive/sdk/protobuf/s1;Ljava/util/Map$Entry;)V

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b28

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_b13

    :cond_b28
    const/4 v5, 0x0

    goto :goto_b13

    :cond_b2a
    iget-object v3, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->o:Lcom/fyber/inneractive/sdk/protobuf/k1;

    invoke-virtual {v3, v1}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    :cond_b33
    :goto_b33
    return-void

    :pswitch_data_b34
    .packed-switch 0x0
        :pswitch_5eb
        :pswitch_5d7
        :pswitch_5c3
        :pswitch_5af
        :pswitch_59b
        :pswitch_587
        :pswitch_572
        :pswitch_55b
        :pswitch_548
        :pswitch_531
        :pswitch_51a
        :pswitch_505
        :pswitch_4f0
        :pswitch_4db
        :pswitch_4c6
        :pswitch_4b3
        :pswitch_4a0
        :pswitch_489
        :pswitch_476
        :pswitch_463
        :pswitch_450
        :pswitch_43d
        :pswitch_42a
        :pswitch_417
        :pswitch_404
        :pswitch_3f1
        :pswitch_3de
        :pswitch_3c7
        :pswitch_3b4
        :pswitch_3a1
        :pswitch_38e
        :pswitch_37b
        :pswitch_368
        :pswitch_355
        :pswitch_342
        :pswitch_32f
        :pswitch_31c
        :pswitch_309
        :pswitch_2f6
        :pswitch_2e3
        :pswitch_2d0
        :pswitch_2bd
        :pswitch_2aa
        :pswitch_297
        :pswitch_284
        :pswitch_271
        :pswitch_25e
        :pswitch_24b
        :pswitch_238
        :pswitch_221
        :pswitch_214
        :pswitch_201
        :pswitch_1ee
        :pswitch_1d9
        :pswitch_1c4
        :pswitch_1af
        :pswitch_19a
        :pswitch_185
        :pswitch_170
        :pswitch_15d
        :pswitch_146
        :pswitch_12f
        :pswitch_11a
        :pswitch_105
        :pswitch_f0
        :pswitch_db
        :pswitch_c8
        :pswitch_b5
        :pswitch_9e
    .end packed-switch

    :pswitch_data_bc2
    .packed-switch 0x0
        :pswitch_af6
        :pswitch_ae7
        :pswitch_ad8
        :pswitch_ac9
        :pswitch_aba
        :pswitch_aab
        :pswitch_a9c
        :pswitch_a8b
        :pswitch_a7d
        :pswitch_a6b
        :pswitch_a59
        :pswitch_a49
        :pswitch_a39
        :pswitch_a29
        :pswitch_a19
        :pswitch_a0b
        :pswitch_9fd
        :pswitch_9eb
        :pswitch_9da
        :pswitch_9c9
        :pswitch_9b8
        :pswitch_9a7
        :pswitch_996
        :pswitch_985
        :pswitch_974
        :pswitch_963
        :pswitch_952
        :pswitch_93f
        :pswitch_930
        :pswitch_920
        :pswitch_910
        :pswitch_900
        :pswitch_8f0
        :pswitch_8e0
        :pswitch_8cf
        :pswitch_8bf
        :pswitch_8af
        :pswitch_89f
        :pswitch_88f
        :pswitch_87f
        :pswitch_86f
        :pswitch_85f
        :pswitch_84f
        :pswitch_83f
        :pswitch_82f
        :pswitch_81f
        :pswitch_80f
        :pswitch_7ff
        :pswitch_7ef
        :pswitch_7db
        :pswitch_7d3
        :pswitch_7c5
        :pswitch_7b7
        :pswitch_7a7
        :pswitch_797
        :pswitch_787
        :pswitch_777
        :pswitch_766
        :pswitch_755
        :pswitch_746
        :pswitch_733
        :pswitch_720
        :pswitch_70f
        :pswitch_6fe
        :pswitch_6ed
        :pswitch_6dc
        :pswitch_6cd
        :pswitch_6be
        :pswitch_6ab
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_195

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v2, v2, v0

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->f(I)I

    move-result v1

    packed-switch v1, :pswitch_data_1c2

    goto/16 :goto_191

    :pswitch_1e
    invoke-virtual {p0, p1, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_191

    :pswitch_23
    invoke-virtual {p0, p2, v2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_191

    invoke-static {p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_191

    :pswitch_35
    invoke-virtual {p0, p1, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_191

    :pswitch_3a
    invoke-virtual {p0, p2, v2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_191

    invoke-static {p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto/16 :goto_191

    :pswitch_4c
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    sget-object v2, Lcom/fyber/inneractive/sdk/protobuf/f1;->a:Ljava/lang/Class;

    invoke-static {p1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/j0;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_191

    :pswitch_61
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/e0;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_191

    :pswitch_68
    invoke-virtual {p0, p1, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_191

    :pswitch_6d
    invoke-virtual {p0, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_191

    invoke-static {p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_191

    :pswitch_7f
    invoke-virtual {p0, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_191

    invoke-static {p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_191

    :pswitch_91
    invoke-virtual {p0, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_191

    invoke-static {p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_191

    :pswitch_a3
    invoke-virtual {p0, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_191

    invoke-static {p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_191

    :pswitch_b5
    invoke-virtual {p0, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_191

    invoke-static {p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_191

    :pswitch_c7
    invoke-virtual {p0, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_191

    invoke-static {p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_191

    :pswitch_d9
    invoke-virtual {p0, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_191

    invoke-static {p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_191

    :pswitch_eb
    invoke-virtual {p0, p1, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_191

    :pswitch_f0
    invoke-virtual {p0, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_191

    invoke-static {p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_191

    :pswitch_102
    invoke-virtual {p0, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_191

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v1, p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(Ljava/lang/Object;J)Z

    move-result v2

    invoke-virtual {v1, p1, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto/16 :goto_191

    :pswitch_116
    invoke-virtual {p0, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_191

    invoke-static {p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto :goto_191

    :pswitch_127
    invoke-virtual {p0, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_191

    invoke-static {p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto :goto_191

    :pswitch_138
    invoke-virtual {p0, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_191

    invoke-static {p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto :goto_191

    :pswitch_149
    invoke-virtual {p0, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_191

    invoke-static {p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto :goto_191

    :pswitch_15a
    invoke-virtual {p0, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_191

    invoke-static {p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto :goto_191

    :pswitch_16b
    invoke-virtual {p0, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_191

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v1, p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->d(Ljava/lang/Object;J)F

    move-result v2

    invoke-virtual {v1, p1, v4, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(Ljava/lang/Object;JF)V

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto :goto_191

    :pswitch_17e
    invoke-virtual {p0, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_191

    sget-object v2, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v2, p2, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->c(Ljava/lang/Object;J)D

    move-result-wide v6

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(Ljava/lang/Object;JD)V

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    :cond_191
    :goto_191
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_4

    :cond_195
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->o:Lcom/fyber/inneractive/sdk/protobuf/k1;

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/f1;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/k1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/fyber/inneractive/sdk/protobuf/k1;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->f:Z

    if-eqz v0, :cond_1c1

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    invoke-virtual {v0, p2}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/u;

    move-result-object p2

    iget-object v1, p2, Lcom/fyber/inneractive/sdk/protobuf/u;->a:Lcom/fyber/inneractive/sdk/protobuf/g1;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c1

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/r;->b(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/u;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/u;->a(Lcom/fyber/inneractive/sdk/protobuf/u;)V

    :cond_1c1
    return-void

    :pswitch_data_1c2
    .packed-switch 0x0
        :pswitch_17e
        :pswitch_16b
        :pswitch_15a
        :pswitch_149
        :pswitch_138
        :pswitch_127
        :pswitch_116
        :pswitch_102
        :pswitch_f0
        :pswitch_eb
        :pswitch_d9
        :pswitch_c7
        :pswitch_b5
        :pswitch_a3
        :pswitch_91
        :pswitch_7f
        :pswitch_6d
        :pswitch_68
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_4c
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_35
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 v1, p3, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v0

    invoke-virtual {p0, p2, p3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_28

    if-eqz p2, :cond_28

    invoke-static {v2, p2}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    goto :goto_30

    :cond_28
    if-eqz p2, :cond_30

    invoke-static {p1, v0, v1, p2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;I)V

    :cond_30
    :goto_30
    return-void
.end method

.method public a(Ljava/lang/Object;[BIILcom/fyber/inneractive/sdk/protobuf/e$b;)V
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/fyber/inneractive/sdk/protobuf/e$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    iget-boolean v0, v15, Lcom/fyber/inneractive/sdk/protobuf/r0;->h:Z

    if-eqz v0, :cond_353

    sget-object v9, Lcom/fyber/inneractive/sdk/protobuf/r0;->s:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const v7, 0xfffff

    :goto_1b
    if-ge v0, v13, :cond_336

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_2d

    invoke-static {v0, v12, v3, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->a(I[BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    iget v3, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_30

    :cond_2d
    move/from16 v17, v0

    move v4, v3

    :goto_30
    ushr-int/lit8 v5, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-le v5, v1, :cond_47

    div-int/lit8 v2, v2, 0x3

    iget v0, v15, Lcom/fyber/inneractive/sdk/protobuf/r0;->c:I

    if-lt v5, v0, :cond_45

    iget v0, v15, Lcom/fyber/inneractive/sdk/protobuf/r0;->d:I

    if-gt v5, v0, :cond_45

    invoke-virtual {v15, v5, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(II)I

    move-result v0

    goto :goto_4b

    :cond_45
    const/4 v0, -0x1

    goto :goto_4b

    :cond_47
    invoke-virtual {v15, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(I)I

    move-result v0

    :goto_4b
    move v2, v0

    if-ne v2, v10, :cond_59

    move v2, v4

    move/from16 v19, v5

    move-object/from16 v28, v9

    const/16 v18, -0x1

    const/16 v20, 0x0

    goto/16 :goto_313

    :cond_59
    iget-object v0, v15, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v1, v0, v1

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->f(I)I

    move-result v0

    move-object/from16 v18, v9

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    const/16 v10, 0x11

    move/from16 p3, v5

    if-gt v0, v10, :cond_21f

    iget-object v10, v15, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 v21, v2, 0x2

    aget v10, v10, v21

    ushr-int/lit8 v21, v10, 0x14

    const/4 v5, 0x1

    shl-int v21, v5, v21

    const v13, 0xfffff

    and-int/2addr v10, v13

    move/from16 v23, v1

    move/from16 v19, v2

    if-eq v10, v7, :cond_9c

    if-eq v7, v13, :cond_8d

    int-to-long v1, v7

    move-object/from16 v7, v18

    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8f

    :cond_8d
    move-object/from16 v7, v18

    :goto_8f
    if-eq v10, v13, :cond_96

    int-to-long v1, v10

    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :cond_96
    move/from16 v29, v10

    move-object v10, v7

    move/from16 v7, v29

    goto :goto_9e

    :cond_9c
    move-object/from16 v10, v18

    :goto_9e
    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_366

    move v8, v4

    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    goto/16 :goto_216

    :pswitch_ac
    if-nez v3, :cond_c4

    invoke-static {v12, v4, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->e([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v17

    iget-wide v0, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->b:J

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/j;->a(J)J

    move-result-wide v4

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v13, v19

    move-wide v2, v8

    move/from16 v19, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_fd

    :cond_c4
    move/from16 v13, v19

    move/from16 v19, p3

    goto :goto_102

    :pswitch_c9
    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_102

    invoke-static {v12, v4, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v17

    iget v0, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/j;->b(I)I

    move-result v0

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_fd

    :pswitch_dd
    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_102

    invoke-static {v12, v4, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v17

    iget v0, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_fd

    :pswitch_ed
    move/from16 v13, v19

    const/4 v0, 0x2

    move/from16 v19, p3

    if-ne v3, v0, :cond_102

    invoke-static {v12, v4, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->a([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v17

    iget-object v0, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_fd
    const v18, 0xfffff

    goto/16 :goto_20d

    :cond_102
    :goto_102
    move v8, v4

    const v18, 0xfffff

    goto/16 :goto_216

    :pswitch_108
    move/from16 v13, v19

    const/4 v0, 0x2

    move/from16 v19, p3

    if-ne v3, v0, :cond_134

    invoke-virtual {v15, v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v0

    move/from16 v2, p4

    const v18, 0xfffff

    invoke-static {v0, v12, v4, v2, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->a(Lcom/fyber/inneractive/sdk/protobuf/d1;[BIILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v17

    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_129

    iget-object v0, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_20d

    :cond_129
    iget-object v1, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->c:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_20d

    :cond_134
    move/from16 v2, p4

    const v18, 0xfffff

    goto/16 :goto_215

    :pswitch_13b
    move/from16 v2, p4

    move/from16 v13, v19

    const/4 v0, 0x2

    const v18, 0xfffff

    move/from16 v19, p3

    if-ne v3, v0, :cond_215

    const/high16 v0, 0x20000000

    and-int v0, v23, v0

    if-nez v0, :cond_152

    invoke-static {v12, v4, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->b([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    goto :goto_156

    :cond_152
    invoke-static {v12, v4, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->c([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    :goto_156
    move/from16 v17, v0

    iget-object v0, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_20d

    :pswitch_15f
    move/from16 v2, p4

    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-nez v3, :cond_215

    invoke-static {v12, v4, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->e([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v17

    iget-wide v0, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->b:J

    const-wide/16 v3, 0x0

    cmp-long v22, v0, v3

    if-eqz v22, :cond_177

    goto :goto_178

    :cond_177
    const/4 v5, 0x0

    :goto_178
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v0, v14, v8, v9, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(Ljava/lang/Object;JZ)V

    goto/16 :goto_20d

    :pswitch_17f
    move/from16 v2, p4

    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-ne v3, v1, :cond_215

    invoke-static {v12, v4}, Lcom/fyber/inneractive/sdk/protobuf/e;->a([BI)I

    move-result v0

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1ec

    :pswitch_192
    move/from16 v2, p4

    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-ne v3, v5, :cond_215

    invoke-static {v12, v4}, Lcom/fyber/inneractive/sdk/protobuf/e;->b([BI)J

    move-result-wide v22

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_20b

    :pswitch_1ac
    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-nez v3, :cond_215

    invoke-static {v12, v4, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->d([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v17

    iget v0, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->a:I

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_20d

    :pswitch_1bf
    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-nez v3, :cond_215

    invoke-static {v12, v4, v11}, Lcom/fyber/inneractive/sdk/protobuf/e;->e([BILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v17

    iget-wide v4, v11, Lcom/fyber/inneractive/sdk/protobuf/e$b;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_20d

    :pswitch_1d6
    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-ne v3, v1, :cond_215

    invoke-static {v12, v4}, Lcom/fyber/inneractive/sdk/protobuf/e;->a([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v1, v14, v8, v9, v0}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(Ljava/lang/Object;JF)V

    :goto_1ec
    add-int/lit8 v17, v4, 0x4

    goto :goto_20d

    :pswitch_1ef
    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-ne v3, v5, :cond_215

    invoke-static {v12, v4}, Lcom/fyber/inneractive/sdk/protobuf/e;->b([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v22

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(Ljava/lang/Object;JD)V

    :goto_20b
    add-int/lit8 v17, v8, 0x8

    :goto_20d
    or-int v6, v6, v21

    move-object/from16 v28, v10

    move v2, v13

    move/from16 v0, v17

    goto :goto_267

    :cond_215
    :goto_215
    move v8, v4

    :goto_216
    move v2, v8

    move-object/from16 v28, v10

    move/from16 v20, v13

    const/16 v18, -0x1

    goto/16 :goto_313

    :cond_21f
    move/from16 v19, p3

    move/from16 v23, v1

    move v13, v2

    move v5, v4

    move-object/from16 v10, v18

    const v18, 0xfffff

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_278

    const/4 v1, 0x2

    if-ne v3, v1, :cond_26b

    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/y$j;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/protobuf/y$j;->d()Z

    move-result v1

    if-nez v1, :cond_24f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_246

    const/16 v1, 0xa

    goto :goto_248

    :cond_246
    mul-int/lit8 v1, v1, 0x2

    :goto_248
    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/y$j;->b(I)Lcom/fyber/inneractive/sdk/protobuf/y$j;

    move-result-object v0

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_24f
    move-object v8, v0

    invoke-virtual {v15, v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v5

    move/from16 v4, p4

    move-object v5, v8

    move v8, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/fyber/inneractive/sdk/protobuf/e;->a(Lcom/fyber/inneractive/sdk/protobuf/d1;I[BIILcom/fyber/inneractive/sdk/protobuf/y$j;Lcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    move v6, v8

    move-object/from16 v28, v10

    move v2, v13

    :goto_267
    const/16 v18, -0x1

    goto/16 :goto_325

    :cond_26b
    move v15, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v28, v10

    move/from16 v20, v13

    const/16 v18, -0x1

    goto/16 :goto_2d4

    :cond_278
    const/16 v1, 0x31

    if-gt v0, v1, :cond_2b6

    move/from16 v1, v23

    int-to-long v1, v1

    move v4, v0

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 p3, v3

    move v3, v5

    move/from16 v23, v4

    move/from16 v4, p4

    move v15, v5

    move/from16 v5, v17

    move/from16 v24, v6

    move/from16 v6, v19

    move/from16 v25, v7

    move/from16 v7, p3

    move-wide/from16 v26, v8

    const v9, 0xfffff

    move v8, v13

    move-object/from16 v28, v10

    const/16 v18, -0x1

    move-wide/from16 v9, v21

    move/from16 v11, v23

    move/from16 v20, v13

    move-wide/from16 v12, v26

    move-object/from16 v14, p5

    invoke-virtual/range {v0 .. v14}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    if-eq v0, v15, :cond_311

    goto/16 :goto_30a

    :cond_2b6
    move/from16 p3, v3

    move v15, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move-object/from16 v28, v10

    move/from16 v20, v13

    move/from16 v1, v23

    const/16 v18, -0x1

    move/from16 v23, v0

    const/16 v0, 0x32

    move/from16 v9, v23

    if-ne v9, v0, :cond_2ee

    move/from16 v7, p3

    const/4 v0, 0x2

    if-eq v7, v0, :cond_2da

    :goto_2d4
    move v2, v15

    :goto_2d5
    move/from16 v6, v24

    move/from16 v7, v25

    goto :goto_313

    :cond_2da
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide/from16 v6, v26

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;[BIIIJLcom/fyber/inneractive/sdk/protobuf/e$b;)I

    const/4 v0, 0x0

    throw v0

    :cond_2ee
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v19

    move-wide/from16 v10, v26

    move/from16 v12, v20

    move-object/from16 v13, p5

    invoke-virtual/range {v0 .. v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;[BIIIIIIIJILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    if-eq v0, v15, :cond_311

    :goto_30a
    move/from16 v2, v20

    move/from16 v6, v24

    move/from16 v7, v25

    goto :goto_325

    :cond_311
    move v2, v0

    goto :goto_2d5

    :goto_313
    invoke-static/range {p1 .. p1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/l1;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/protobuf/e;->a(I[BIILcom/fyber/inneractive/sdk/protobuf/l1;Lcom/fyber/inneractive/sdk/protobuf/e$b;)I

    move-result v0

    move/from16 v2, v20

    :goto_325
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v19

    move-object/from16 v9, v28

    const/4 v10, -0x1

    goto/16 :goto_1b

    :cond_336
    move/from16 v24, v6

    move-object/from16 v28, v9

    const v1, 0xfffff

    if-eq v7, v1, :cond_349

    int-to-long v1, v7

    move-object/from16 v3, p1

    move/from16 v6, v24

    move-object/from16 v4, v28

    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_349
    move/from16 v4, p4

    if-ne v0, v4, :cond_34e

    goto :goto_365

    :cond_34e
    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/z;->g()Lcom/fyber/inneractive/sdk/protobuf/z;

    move-result-object v0

    throw v0

    :cond_353
    move v4, v13

    move-object v3, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;[BIIILcom/fyber/inneractive/sdk/protobuf/e$b;)I

    :goto_365
    return-void

    :pswitch_data_366
    .packed-switch 0x0
        :pswitch_1ef
        :pswitch_1d6
        :pswitch_1bf
        :pswitch_1bf
        :pswitch_1ac
        :pswitch_192
        :pswitch_17f
        :pswitch_15f
        :pswitch_13b
        :pswitch_108
        :pswitch_ed
        :pswitch_1ac
        :pswitch_dd
        :pswitch_17f
        :pswitch_192
        :pswitch_c9
        :pswitch_ac
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0xfffff

    const/4 v4, 0x0

    :goto_9
    iget v5, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->k:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_101

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->j:[I

    aget v5, v5, v2

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-virtual {p0, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->g(I)I

    move-result v8

    iget-object v9, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 v10, v5, 0x2

    aget v9, v9, v10

    and-int v10, v9, v0

    ushr-int/lit8 v9, v9, 0x14

    shl-int v9, v6, v9

    if-eq v10, v3, :cond_32

    if-eq v10, v0, :cond_31

    sget-object v3, Lcom/fyber/inneractive/sdk/protobuf/r0;->s:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v3, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_31
    move v3, v10

    :cond_32
    const/high16 v10, 0x10000000

    and-int/2addr v10, v8

    if-eqz v10, :cond_39

    const/4 v10, 0x1

    goto :goto_3a

    :cond_39
    const/4 v10, 0x0

    :goto_3a
    if-eqz v10, :cond_4d

    if-ne v3, v0, :cond_43

    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v10

    goto :goto_4a

    :cond_43
    and-int v10, v4, v9

    if-eqz v10, :cond_49

    const/4 v10, 0x1

    goto :goto_4a

    :cond_49
    const/4 v10, 0x0

    :goto_4a
    if-nez v10, :cond_4d

    return v1

    :cond_4d
    invoke-static {v8}, Lcom/fyber/inneractive/sdk/protobuf/r0;->f(I)I

    move-result v10

    const/16 v11, 0x9

    if-eq v10, v11, :cond_db

    const/16 v11, 0x11

    if-eq v10, v11, :cond_db

    const/16 v9, 0x1b

    if-eq v10, v9, :cond_ad

    const/16 v9, 0x3c

    if-eq v10, v9, :cond_94

    const/16 v9, 0x44

    if-eq v10, v9, :cond_94

    const/16 v7, 0x31

    if-eq v10, v7, :cond_ad

    const/16 v6, 0x32

    if-eq v10, v6, :cond_6f

    goto/16 :goto_fd

    :cond_6f
    iget-object v6, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    invoke-static {v8}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/j0;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_85

    goto/16 :goto_fd

    :cond_85
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->b:[Ljava/lang/Object;

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    aget-object p1, p1, v5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    invoke-interface {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/j0;->f(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/h0$a;

    const/4 p1, 0x0

    throw p1

    :cond_94
    invoke-virtual {p0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_fd

    invoke-virtual {p0, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v5

    invoke-static {v8}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/d1;->a(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_fd

    return v1

    :cond_ad
    invoke-static {v8}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_be

    goto :goto_d8

    :cond_be
    invoke-virtual {p0, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v5

    const/4 v8, 0x0

    :goto_c3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_d8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v9}, Lcom/fyber/inneractive/sdk/protobuf/d1;->a(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d5

    const/4 v6, 0x0

    goto :goto_d8

    :cond_d5
    add-int/lit8 v8, v8, 0x1

    goto :goto_c3

    :cond_d8
    :goto_d8
    if-nez v6, :cond_fd

    return v1

    :cond_db
    if-ne v3, v0, :cond_e2

    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v6

    goto :goto_e8

    :cond_e2
    and-int v7, v4, v9

    if-eqz v7, :cond_e7

    goto :goto_e8

    :cond_e7
    const/4 v6, 0x0

    :goto_e8
    if-eqz v6, :cond_fd

    invoke-virtual {p0, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v5

    invoke-static {v8}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/d1;->a(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_fd

    return v1

    :cond_fd
    :goto_fd
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    :cond_101
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->f:Z

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/u;->e()Z

    move-result p1

    if-nez p1, :cond_112

    return v1

    :cond_112
    return v6
.end method

.method public final a(Ljava/lang/Object;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 v1, p2, 0x2

    aget v1, v0, v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/32 v6, 0xfffff

    cmp-long v8, v2, v6

    if-nez v8, :cond_ec

    add-int/2addr p2, v5

    aget p2, v0, p2

    invoke-static {p2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v0

    invoke-static {p2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->f(I)I

    move-result p2

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_fa

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_2a
    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_31

    const/4 v4, 0x1

    :cond_31
    return v4

    :pswitch_32
    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3b

    const/4 v4, 0x1

    :cond_3b
    return v4

    :pswitch_3c
    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_43

    const/4 v4, 0x1

    :cond_43
    return v4

    :pswitch_44
    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4d

    const/4 v4, 0x1

    :cond_4d
    return v4

    :pswitch_4e
    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_55

    const/4 v4, 0x1

    :cond_55
    return v4

    :pswitch_56
    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5d

    const/4 v4, 0x1

    :cond_5d
    return v4

    :pswitch_5e
    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_65

    const/4 v4, 0x1

    :cond_65
    return v4

    :pswitch_66
    sget-object p2, Lcom/fyber/inneractive/sdk/protobuf/i;->b:Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    :pswitch_72
    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_79

    const/4 v4, 0x1

    :cond_79
    return v4

    :pswitch_7a
    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_8a

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    :cond_8a
    instance-of p2, p1, Lcom/fyber/inneractive/sdk/protobuf/i;

    if-eqz p2, :cond_96

    sget-object p2, Lcom/fyber/inneractive/sdk/protobuf/i;->b:Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-virtual {p2, p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    :cond_96
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_9c
    sget-object p2, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {p2, p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_a3
    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_aa

    const/4 v4, 0x1

    :cond_aa
    return v4

    :pswitch_ab
    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_b4

    const/4 v4, 0x1

    :cond_b4
    return v4

    :pswitch_b5
    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_bc

    const/4 v4, 0x1

    :cond_bc
    return v4

    :pswitch_bd
    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_c6

    const/4 v4, 0x1

    :cond_c6
    return v4

    :pswitch_c7
    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_d0

    const/4 v4, 0x1

    :cond_d0
    return v4

    :pswitch_d1
    sget-object p2, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {p2, p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->d(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_dd

    const/4 v4, 0x1

    :cond_dd
    return v4

    :pswitch_de
    sget-object p2, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {p2, p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->c(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_eb

    const/4 v4, 0x1

    :cond_eb
    return v4

    :cond_ec
    ushr-int/lit8 p2, v1, 0x14

    shl-int p2, v5, p2

    invoke-static {p1, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_f8

    const/4 v4, 0x1

    :cond_f8
    return v4

    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_de
        :pswitch_d1
        :pswitch_c7
        :pswitch_bd
        :pswitch_b5
        :pswitch_ab
        :pswitch_a3
        :pswitch_9c
        :pswitch_7a
        :pswitch_72
        :pswitch_66
        :pswitch_5e
        :pswitch_56
        :pswitch_4e
        :pswitch_44
        :pswitch_3c
        :pswitch_32
        :pswitch_2a
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 p3, p3, 0x2

    aget p3, v0, p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method public b(Ljava/lang/Object;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->h:Z

    const/4 v3, 0x0

    const v6, 0xfffff

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    if-eqz v2, :cond_526

    sget-object v2, Lcom/fyber/inneractive/sdk/protobuf/r0;->s:Lsun/misc/Unsafe;

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_14
    iget-object v13, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    array-length v13, v13

    if-ge v11, v13, :cond_519

    invoke-virtual {v0, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->g(I)I

    move-result v13

    invoke-static {v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->f(I)I

    move-result v14

    iget-object v15, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v15, v15, v11

    invoke-static {v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v4

    sget-object v13, Lcom/fyber/inneractive/sdk/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/fyber/inneractive/sdk/protobuf/FieldType;

    invoke-virtual {v13}, Lcom/fyber/inneractive/sdk/protobuf/FieldType;->id()I

    move-result v13

    if-lt v14, v13, :cond_41

    sget-object v13, Lcom/fyber/inneractive/sdk/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/fyber/inneractive/sdk/protobuf/FieldType;

    invoke-virtual {v13}, Lcom/fyber/inneractive/sdk/protobuf/FieldType;->id()I

    move-result v13

    if-gt v14, v13, :cond_41

    iget-object v13, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 v16, v11, 0x2

    aget v13, v13, v16

    and-int/2addr v13, v6

    goto :goto_42

    :cond_41
    const/4 v13, 0x0

    :goto_42
    packed-switch v14, :pswitch_data_abc

    goto/16 :goto_515

    :pswitch_47
    invoke-virtual {v0, v1, v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fyber/inneractive/sdk/protobuf/o0;

    invoke-virtual {v0, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v5

    invoke-static {v15, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ILcom/fyber/inneractive/sdk/protobuf/o0;Lcom/fyber/inneractive/sdk/protobuf/d1;)I

    move-result v4

    goto/16 :goto_514

    :pswitch_5d
    invoke-virtual {v0, v1, v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v15, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->d(IJ)I

    move-result v4

    goto/16 :goto_514

    :pswitch_6d
    invoke-virtual {v0, v1, v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->e(II)I

    move-result v4

    goto/16 :goto_514

    :pswitch_7d
    invoke-virtual {v0, v1, v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_515

    invoke-static {v15, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(IJ)I

    move-result v4

    goto/16 :goto_514

    :pswitch_89
    invoke-virtual {v0, v1, v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_515

    invoke-static {v15, v10}, Lcom/fyber/inneractive/sdk/protobuf/l;->d(II)I

    move-result v4

    goto/16 :goto_514

    :pswitch_95
    invoke-virtual {v0, v1, v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(II)I

    move-result v4

    goto/16 :goto_514

    :pswitch_a5
    invoke-virtual {v0, v1, v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->f(II)I

    move-result v4

    goto/16 :goto_514

    :pswitch_b5
    invoke-virtual {v0, v1, v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-static {v15, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ILcom/fyber/inneractive/sdk/protobuf/i;)I

    move-result v4

    goto/16 :goto_514

    :pswitch_c7
    invoke-virtual {v0, v1, v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v5

    invoke-static {v15, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/d1;)I

    move-result v4

    goto/16 :goto_514

    :pswitch_db
    invoke-virtual {v0, v1, v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/fyber/inneractive/sdk/protobuf/i;

    if-eqz v5, :cond_f1

    check-cast v4, Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-static {v15, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ILcom/fyber/inneractive/sdk/protobuf/i;)I

    move-result v4

    goto/16 :goto_514

    :cond_f1
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_514

    :pswitch_f9
    invoke-virtual {v0, v1, v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_515

    invoke-static {v15, v7}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(IZ)I

    move-result v4

    goto/16 :goto_514

    :pswitch_105
    invoke-virtual {v0, v1, v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_515

    invoke-static {v15, v10}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(II)I

    move-result v4

    goto/16 :goto_514

    :pswitch_111
    invoke-virtual {v0, v1, v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_515

    invoke-static {v15, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(IJ)I

    move-result v4

    goto/16 :goto_514

    :pswitch_11d
    invoke-virtual {v0, v1, v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(II)I

    move-result v4

    goto/16 :goto_514

    :pswitch_12d
    invoke-virtual {v0, v1, v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v15, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->e(IJ)I

    move-result v4

    goto/16 :goto_514

    :pswitch_13d
    invoke-virtual {v0, v1, v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v15, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(IJ)I

    move-result v4

    goto/16 :goto_514

    :pswitch_14d
    invoke-virtual {v0, v1, v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_515

    invoke-static {v15, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(IF)I

    move-result v4

    goto/16 :goto_514

    :pswitch_159
    invoke-virtual {v0, v1, v15, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_515

    const-wide/16 v4, 0x0

    invoke-static {v15, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ID)I

    move-result v13

    goto/16 :goto_513

    :pswitch_167
    iget-object v13, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v13, v15, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/j0;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_514

    :pswitch_177
    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v0, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v5

    invoke-static {v15, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/d1;)I

    move-result v4

    goto/16 :goto_514

    :pswitch_187
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->g(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_515

    iget-boolean v5, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v5, :cond_19b

    int-to-long v13, v13

    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_19b
    invoke-static {v15}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v5

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v13

    goto/16 :goto_328

    :pswitch_1a5
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->f(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_515

    iget-boolean v5, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v5, :cond_1b9

    int-to-long v13, v13

    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1b9
    invoke-static {v15}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v5

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v13

    goto/16 :goto_328

    :pswitch_1c3
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->c(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_515

    iget-boolean v5, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v5, :cond_1d7

    int-to-long v13, v13

    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1d7
    invoke-static {v15}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v5

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v13

    goto/16 :goto_328

    :pswitch_1e1
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_515

    iget-boolean v5, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v5, :cond_1f5

    int-to-long v13, v13

    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1f5
    invoke-static {v15}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v5

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v13

    goto/16 :goto_328

    :pswitch_1ff
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_515

    iget-boolean v5, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v5, :cond_213

    int-to-long v13, v13

    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_213
    invoke-static {v15}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v5

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v13

    goto/16 :goto_328

    :pswitch_21d
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_515

    iget-boolean v5, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v5, :cond_231

    int-to-long v13, v13

    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_231
    invoke-static {v15}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v5

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v13

    goto/16 :goto_328

    :pswitch_23b
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Lcom/fyber/inneractive/sdk/protobuf/f1;->a:Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_515

    iget-boolean v5, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v5, :cond_251

    int-to-long v13, v13

    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_251
    invoke-static {v15}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v5

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v13

    goto/16 :goto_328

    :pswitch_25b
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_515

    iget-boolean v5, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v5, :cond_26f

    int-to-long v13, v13

    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_26f
    invoke-static {v15}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v5

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v13

    goto/16 :goto_328

    :pswitch_279
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->c(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_515

    iget-boolean v5, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v5, :cond_28d

    int-to-long v13, v13

    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_28d
    invoke-static {v15}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v5

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v13

    goto/16 :goto_328

    :pswitch_297
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->d(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_515

    iget-boolean v5, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v5, :cond_2ab

    int-to-long v13, v13

    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2ab
    invoke-static {v15}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v5

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v13

    goto/16 :goto_328

    :pswitch_2b5
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_515

    iget-boolean v5, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v5, :cond_2c9

    int-to-long v13, v13

    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2c9
    invoke-static {v15}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v5

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v13

    goto :goto_328

    :pswitch_2d2
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->e(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_515

    iget-boolean v5, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v5, :cond_2e6

    int-to-long v13, v13

    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2e6
    invoke-static {v15}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v5

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v13

    goto :goto_328

    :pswitch_2ef
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_515

    iget-boolean v5, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v5, :cond_303

    int-to-long v13, v13

    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_303
    invoke-static {v15}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v5

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v13

    goto :goto_328

    :pswitch_30c
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->c(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_515

    iget-boolean v5, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v5, :cond_320

    int-to-long v13, v13

    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_320
    invoke-static {v15}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v5

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v13

    :goto_328
    add-int/2addr v5, v13

    add-int/2addr v4, v5

    goto/16 :goto_514

    :pswitch_32c
    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->h(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_514

    :pswitch_338
    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->g(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_514

    :pswitch_344
    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->d(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_514

    :pswitch_350
    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->c(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_514

    :pswitch_35c
    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_514

    :pswitch_368
    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->i(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_514

    :pswitch_374
    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_514

    :pswitch_380
    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v0, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v5

    invoke-static {v15, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/d1;)I

    move-result v4

    goto/16 :goto_514

    :pswitch_390
    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_514

    :pswitch_39c
    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_514

    :pswitch_3a8
    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->c(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_514

    :pswitch_3b4
    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->d(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_514

    :pswitch_3c0
    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->e(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_514

    :pswitch_3cc
    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->j(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_514

    :pswitch_3d8
    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->f(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_514

    :pswitch_3e4
    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->c(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_514

    :pswitch_3f0
    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->d(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_514

    :pswitch_3fc
    invoke-virtual {v0, v1, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fyber/inneractive/sdk/protobuf/o0;

    invoke-virtual {v0, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v5

    invoke-static {v15, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ILcom/fyber/inneractive/sdk/protobuf/o0;Lcom/fyber/inneractive/sdk/protobuf/d1;)I

    move-result v4

    goto/16 :goto_514

    :pswitch_412
    invoke-virtual {v0, v1, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v15, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->d(IJ)I

    move-result v4

    goto/16 :goto_514

    :pswitch_422
    invoke-virtual {v0, v1, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->e(II)I

    move-result v4

    goto/16 :goto_514

    :pswitch_432
    invoke-virtual {v0, v1, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_515

    invoke-static {v15, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(IJ)I

    move-result v4

    goto/16 :goto_514

    :pswitch_43e
    invoke-virtual {v0, v1, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_515

    invoke-static {v15, v10}, Lcom/fyber/inneractive/sdk/protobuf/l;->d(II)I

    move-result v4

    goto/16 :goto_514

    :pswitch_44a
    invoke-virtual {v0, v1, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(II)I

    move-result v4

    goto/16 :goto_514

    :pswitch_45a
    invoke-virtual {v0, v1, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->f(II)I

    move-result v4

    goto/16 :goto_514

    :pswitch_46a
    invoke-virtual {v0, v1, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-static {v15, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ILcom/fyber/inneractive/sdk/protobuf/i;)I

    move-result v4

    goto/16 :goto_514

    :pswitch_47c
    invoke-virtual {v0, v1, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v5

    invoke-static {v15, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/d1;)I

    move-result v4

    goto/16 :goto_514

    :pswitch_490
    invoke-virtual {v0, v1, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/fyber/inneractive/sdk/protobuf/i;

    if-eqz v5, :cond_4a6

    check-cast v4, Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-static {v15, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ILcom/fyber/inneractive/sdk/protobuf/i;)I

    move-result v4

    goto/16 :goto_514

    :cond_4a6
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_514

    :pswitch_4ae
    invoke-virtual {v0, v1, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_515

    invoke-static {v15, v7}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(IZ)I

    move-result v4

    goto :goto_514

    :pswitch_4b9
    invoke-virtual {v0, v1, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_515

    invoke-static {v15, v10}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(II)I

    move-result v4

    goto :goto_514

    :pswitch_4c4
    invoke-virtual {v0, v1, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_515

    invoke-static {v15, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(IJ)I

    move-result v4

    goto :goto_514

    :pswitch_4cf
    invoke-virtual {v0, v1, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(II)I

    move-result v4

    goto :goto_514

    :pswitch_4de
    invoke-virtual {v0, v1, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v15, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->e(IJ)I

    move-result v4

    goto :goto_514

    :pswitch_4ed
    invoke-virtual {v0, v1, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_515

    invoke-static {v1, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v15, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(IJ)I

    move-result v4

    goto :goto_514

    :pswitch_4fc
    invoke-virtual {v0, v1, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_515

    invoke-static {v15, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(IF)I

    move-result v4

    goto :goto_514

    :pswitch_507
    invoke-virtual {v0, v1, v11}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_515

    const-wide/16 v4, 0x0

    invoke-static {v15, v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ID)I

    move-result v13

    :goto_513
    move v4, v13

    :goto_514
    add-int/2addr v12, v4

    :cond_515
    :goto_515
    add-int/lit8 v11, v11, 0x3

    goto/16 :goto_14

    :cond_519
    iget-object v2, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->o:Lcom/fyber/inneractive/sdk/protobuf/k1;

    invoke-virtual {v2, v1}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/fyber/inneractive/sdk/protobuf/k1;->c(Ljava/lang/Object;)I

    move-result v1

    :goto_523
    add-int/2addr v12, v1

    goto/16 :goto_aba

    :cond_526
    sget-object v2, Lcom/fyber/inneractive/sdk/protobuf/r0;->s:Lsun/misc/Unsafe;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_52e
    iget-object v13, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    array-length v13, v13

    if-ge v4, v13, :cond_a9e

    invoke-virtual {v0, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->g(I)I

    move-result v13

    iget-object v14, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v14, v14, v4

    invoke-static {v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->f(I)I

    move-result v15

    const/16 v3, 0x11

    if-gt v15, v3, :cond_558

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 v17, v4, 0x2

    aget v3, v3, v17

    and-int v10, v3, v6

    ushr-int/lit8 v18, v3, 0x14

    shl-int v18, v7, v18

    if-eq v10, v11, :cond_577

    int-to-long v11, v10

    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v10

    goto :goto_577

    :cond_558
    iget-boolean v3, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v3, :cond_574

    sget-object v3, Lcom/fyber/inneractive/sdk/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/fyber/inneractive/sdk/protobuf/FieldType;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/protobuf/FieldType;->id()I

    move-result v3

    if-lt v15, v3, :cond_574

    sget-object v3, Lcom/fyber/inneractive/sdk/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/fyber/inneractive/sdk/protobuf/FieldType;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/protobuf/FieldType;->id()I

    move-result v3

    if-gt v15, v3, :cond_574

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 v10, v4, 0x2

    aget v3, v3, v10

    and-int/2addr v3, v6

    goto :goto_575

    :cond_574
    const/4 v3, 0x0

    :goto_575
    const/16 v18, 0x0

    :cond_577
    :goto_577
    invoke-static {v13}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v6

    packed-switch v15, :pswitch_data_b4a

    goto/16 :goto_6e6

    :pswitch_580
    invoke-virtual {v0, v1, v14, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_6e6

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fyber/inneractive/sdk/protobuf/o0;

    invoke-virtual {v0, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v6

    invoke-static {v14, v3, v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ILcom/fyber/inneractive/sdk/protobuf/o0;Lcom/fyber/inneractive/sdk/protobuf/d1;)I

    move-result v3

    goto/16 :goto_6bf

    :pswitch_596
    invoke-virtual {v0, v1, v14, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_6e6

    invoke-static {v1, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/l;->d(IJ)I

    move-result v3

    goto/16 :goto_6bf

    :pswitch_5a6
    invoke-virtual {v0, v1, v14, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_6e6

    invoke-static {v1, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->e(II)I

    move-result v3

    goto/16 :goto_6bf

    :pswitch_5b6
    invoke-virtual {v0, v1, v14, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_6e6

    invoke-static {v14, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(IJ)I

    move-result v3

    goto/16 :goto_6bf

    :pswitch_5c2
    invoke-virtual {v0, v1, v14, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_6e6

    const/4 v3, 0x0

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->d(II)I

    move-result v6

    goto/16 :goto_68f

    :pswitch_5cf
    invoke-virtual {v0, v1, v14, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_6e6

    invoke-static {v1, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(II)I

    move-result v3

    goto/16 :goto_6bf

    :pswitch_5df
    invoke-virtual {v0, v1, v14, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_6e6

    invoke-static {v1, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->f(II)I

    move-result v3

    goto/16 :goto_6bf

    :pswitch_5ef
    invoke-virtual {v0, v1, v14, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_6e6

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ILcom/fyber/inneractive/sdk/protobuf/i;)I

    move-result v3

    goto/16 :goto_6bf

    :pswitch_601
    invoke-virtual {v0, v1, v14, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_6e6

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v6

    invoke-static {v14, v3, v6}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/d1;)I

    move-result v3

    goto/16 :goto_6bf

    :pswitch_615
    invoke-virtual {v0, v1, v14, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_6e6

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v6, v3, Lcom/fyber/inneractive/sdk/protobuf/i;

    if-eqz v6, :cond_62b

    check-cast v3, Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ILcom/fyber/inneractive/sdk/protobuf/i;)I

    move-result v3

    goto/16 :goto_6bf

    :cond_62b
    check-cast v3, Ljava/lang/String;

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_6bf

    :pswitch_633
    invoke-virtual {v0, v1, v14, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_6e6

    const/4 v3, 0x1

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(IZ)I

    move-result v6

    move v13, v11

    goto :goto_691

    :pswitch_640
    invoke-virtual {v0, v1, v14, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_6e6

    const/4 v3, 0x0

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(II)I

    move-result v6

    goto :goto_68f

    :pswitch_64c
    invoke-virtual {v0, v1, v14, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_6e6

    invoke-static {v14, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(IJ)I

    move-result v3

    goto :goto_6bf

    :pswitch_657
    invoke-virtual {v0, v1, v14, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_6e6

    invoke-static {v1, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(II)I

    move-result v3

    goto :goto_6bf

    :pswitch_666
    invoke-virtual {v0, v1, v14, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_6e6

    invoke-static {v1, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/l;->e(IJ)I

    move-result v3

    goto :goto_6bf

    :pswitch_675
    invoke-virtual {v0, v1, v14, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_6e6

    invoke-static {v1, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(IJ)I

    move-result v3

    goto :goto_6bf

    :pswitch_684
    invoke-virtual {v0, v1, v14, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_6e6

    const/4 v3, 0x0

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(IF)I

    move-result v6

    :goto_68f
    move v13, v11

    const/4 v3, 0x1

    :goto_691
    const/4 v10, 0x0

    goto/16 :goto_a70

    :pswitch_694
    invoke-virtual {v0, v1, v14, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_6e6

    const-wide/16 v6, 0x0

    invoke-static {v14, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ID)I

    move-result v3

    move v13, v11

    goto :goto_6c2

    :pswitch_6a2
    iget-object v3, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v14, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/j0;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto :goto_6bf

    :pswitch_6b1
    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v6

    invoke-static {v14, v3, v6}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/d1;)I

    move-result v3

    :goto_6bf
    move v13, v11

    const-wide/16 v6, 0x0

    :goto_6c2
    const/4 v10, 0x0

    move v11, v3

    const/4 v3, 0x1

    goto/16 :goto_a90

    :pswitch_6c7
    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/f1;->g(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_6e6

    iget-boolean v7, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    move v13, v11

    if-eqz v7, :cond_6dc

    int-to-long v10, v3

    invoke-virtual {v2, v1, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_6dc
    invoke-static {v14}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v3

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v7

    goto/16 :goto_879

    :cond_6e6
    :goto_6e6
    move v13, v11

    goto/16 :goto_a23

    :pswitch_6e9
    move v13, v11

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/f1;->f(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a23

    iget-boolean v7, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v7, :cond_6fe

    int-to-long v10, v3

    invoke-virtual {v2, v1, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_6fe
    invoke-static {v14}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v3

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v7

    goto/16 :goto_879

    :pswitch_708
    move v13, v11

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/f1;->c(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a23

    iget-boolean v7, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v7, :cond_71d

    int-to-long v10, v3

    invoke-virtual {v2, v1, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_71d
    invoke-static {v14}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v3

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v7

    goto/16 :goto_879

    :pswitch_727
    move v13, v11

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a23

    iget-boolean v7, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v7, :cond_73c

    int-to-long v10, v3

    invoke-virtual {v2, v1, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_73c
    invoke-static {v14}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v3

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v7

    goto/16 :goto_879

    :pswitch_746
    move v13, v11

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a23

    iget-boolean v7, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v7, :cond_75b

    int-to-long v10, v3

    invoke-virtual {v2, v1, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_75b
    invoke-static {v14}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v3

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v7

    goto/16 :goto_879

    :pswitch_765
    move v13, v11

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/f1;->h(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a23

    iget-boolean v7, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v7, :cond_77a

    int-to-long v10, v3

    invoke-virtual {v2, v1, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_77a
    invoke-static {v14}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v3

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v7

    goto/16 :goto_879

    :pswitch_784
    move v13, v11

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    sget-object v7, Lcom/fyber/inneractive/sdk/protobuf/f1;->a:Ljava/lang/Class;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_a23

    iget-boolean v7, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v7, :cond_79b

    int-to-long v10, v3

    invoke-virtual {v2, v1, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_79b
    invoke-static {v14}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v3

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v7

    goto/16 :goto_879

    :pswitch_7a5
    move v13, v11

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a23

    iget-boolean v7, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v7, :cond_7ba

    int-to-long v10, v3

    invoke-virtual {v2, v1, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7ba
    invoke-static {v14}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v3

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v7

    goto/16 :goto_879

    :pswitch_7c4
    move v13, v11

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/f1;->c(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a23

    iget-boolean v7, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v7, :cond_7d9

    int-to-long v10, v3

    invoke-virtual {v2, v1, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7d9
    invoke-static {v14}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v3

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v7

    goto/16 :goto_879

    :pswitch_7e3
    move v13, v11

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/f1;->d(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a23

    iget-boolean v7, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v7, :cond_7f8

    int-to-long v10, v3

    invoke-virtual {v2, v1, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7f8
    invoke-static {v14}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v3

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v7

    goto/16 :goto_879

    :pswitch_802
    move v13, v11

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/f1;->i(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a23

    iget-boolean v7, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v7, :cond_817

    int-to-long v10, v3

    invoke-virtual {v2, v1, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_817
    invoke-static {v14}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v3

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v7

    goto :goto_879

    :pswitch_820
    move v13, v11

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/f1;->e(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a23

    iget-boolean v7, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v7, :cond_835

    int-to-long v10, v3

    invoke-virtual {v2, v1, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_835
    invoke-static {v14}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v3

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v7

    goto :goto_879

    :pswitch_83e
    move v13, v11

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a23

    iget-boolean v7, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v7, :cond_853

    int-to-long v10, v3

    invoke-virtual {v2, v1, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_853
    invoke-static {v14}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v3

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v7

    goto :goto_879

    :pswitch_85c
    move v13, v11

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/f1;->c(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a23

    iget-boolean v7, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->i:Z

    if-eqz v7, :cond_871

    int-to-long v10, v3

    invoke-virtual {v2, v1, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_871
    invoke-static {v14}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(I)I

    move-result v3

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(I)I

    move-result v7

    :goto_879
    add-int/2addr v3, v7

    add-int/2addr v3, v6

    goto/16 :goto_8f8

    :pswitch_87d
    move v13, v11

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v14, v3, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->h(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_966

    :pswitch_88b
    move v13, v11

    const/4 v10, 0x0

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->g(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_966

    :pswitch_899
    move v13, v11

    const/4 v10, 0x0

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->d(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_966

    :pswitch_8a7
    move v13, v11

    const/4 v10, 0x0

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->c(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_966

    :pswitch_8b5
    move v13, v11

    const/4 v10, 0x0

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_966

    :pswitch_8c3
    move v13, v11

    const/4 v10, 0x0

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->i(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_966

    :pswitch_8d1
    move v13, v11

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;)I

    move-result v3

    goto :goto_8f8

    :pswitch_8dd
    move v13, v11

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v6

    invoke-static {v14, v3, v6}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/d1;)I

    move-result v3

    goto :goto_8f8

    :pswitch_8ed
    move v13, v11

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(ILjava/util/List;)I

    move-result v3

    :goto_8f8
    move v11, v3

    :goto_8f9
    const/4 v3, 0x1

    :goto_8fa
    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    goto/16 :goto_a90

    :pswitch_8ff
    move v13, v11

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v14, v3, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;Z)I

    move-result v3

    goto :goto_966

    :pswitch_90c
    move v13, v11

    const/4 v10, 0x0

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->c(ILjava/util/List;Z)I

    move-result v3

    goto :goto_966

    :pswitch_919
    move v13, v11

    const/4 v10, 0x0

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->d(ILjava/util/List;Z)I

    move-result v3

    goto :goto_966

    :pswitch_926
    move v13, v11

    const/4 v10, 0x0

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->e(ILjava/util/List;Z)I

    move-result v3

    goto :goto_966

    :pswitch_933
    move v13, v11

    const/4 v10, 0x0

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->j(ILjava/util/List;Z)I

    move-result v3

    goto :goto_966

    :pswitch_940
    move v13, v11

    const/4 v10, 0x0

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->f(ILjava/util/List;Z)I

    move-result v3

    goto :goto_966

    :pswitch_94d
    move v13, v11

    const/4 v10, 0x0

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->c(ILjava/util/List;Z)I

    move-result v3

    goto :goto_966

    :pswitch_95a
    move v13, v11

    const/4 v10, 0x0

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3, v10}, Lcom/fyber/inneractive/sdk/protobuf/f1;->d(ILjava/util/List;Z)I

    move-result v3

    :goto_966
    move v11, v3

    const/4 v3, 0x1

    :goto_968
    const-wide/16 v6, 0x0

    goto/16 :goto_a90

    :pswitch_96c
    move v13, v11

    and-int v3, v12, v18

    if-eqz v3, :cond_a23

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fyber/inneractive/sdk/protobuf/o0;

    invoke-virtual {v0, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v6

    invoke-static {v14, v3, v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ILcom/fyber/inneractive/sdk/protobuf/o0;Lcom/fyber/inneractive/sdk/protobuf/d1;)I

    move-result v3

    goto/16 :goto_8f8

    :pswitch_981
    move v13, v11

    and-int v3, v12, v18

    if-eqz v3, :cond_a23

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/l;->d(IJ)I

    move-result v3

    goto/16 :goto_8f8

    :pswitch_990
    move v13, v11

    and-int v3, v12, v18

    if-eqz v3, :cond_a23

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->e(II)I

    move-result v3

    goto/16 :goto_8f8

    :pswitch_99f
    move v13, v11

    and-int v3, v12, v18

    if-eqz v3, :cond_a23

    invoke-static {v14, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(IJ)I

    move-result v3

    goto/16 :goto_8f8

    :pswitch_9aa
    move v13, v11

    and-int v3, v12, v18

    if-eqz v3, :cond_a23

    const/4 v3, 0x0

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->d(II)I

    move-result v6

    move v11, v6

    goto/16 :goto_8f9

    :pswitch_9b7
    move v13, v11

    and-int v3, v12, v18

    if-eqz v3, :cond_a23

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(II)I

    move-result v3

    goto/16 :goto_8f8

    :pswitch_9c6
    move v13, v11

    and-int v3, v12, v18

    if-eqz v3, :cond_a23

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->f(II)I

    move-result v3

    goto/16 :goto_8f8

    :pswitch_9d5
    move v13, v11

    and-int v3, v12, v18

    if-eqz v3, :cond_a23

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ILcom/fyber/inneractive/sdk/protobuf/i;)I

    move-result v3

    goto/16 :goto_8f8

    :pswitch_9e6
    move v13, v11

    and-int v3, v12, v18

    if-eqz v3, :cond_a23

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v6

    invoke-static {v14, v3, v6}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/d1;)I

    move-result v3

    goto/16 :goto_8f8

    :pswitch_9f9
    move v13, v11

    and-int v3, v12, v18

    if-eqz v3, :cond_a23

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v6, v3, Lcom/fyber/inneractive/sdk/protobuf/i;

    if-eqz v6, :cond_a0e

    check-cast v3, Lcom/fyber/inneractive/sdk/protobuf/i;

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ILcom/fyber/inneractive/sdk/protobuf/i;)I

    move-result v3

    goto/16 :goto_8f8

    :cond_a0e
    check-cast v3, Ljava/lang/String;

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_8f8

    :pswitch_a16
    move v13, v11

    and-int v3, v12, v18

    if-eqz v3, :cond_a23

    const/4 v3, 0x1

    invoke-static {v14, v3}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(IZ)I

    move-result v6

    move v11, v6

    goto/16 :goto_8fa

    :cond_a23
    :goto_a23
    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    goto/16 :goto_a94

    :pswitch_a29
    move v13, v11

    const/4 v3, 0x1

    and-int v6, v12, v18

    const/4 v10, 0x0

    if-eqz v6, :cond_a92

    invoke-static {v14, v10}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(II)I

    move-result v6

    goto :goto_a70

    :pswitch_a35
    move v13, v11

    const/4 v3, 0x1

    const/4 v10, 0x0

    and-int v6, v12, v18

    if-eqz v6, :cond_a92

    invoke-static {v14, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(IJ)I

    move-result v6

    goto :goto_a70

    :pswitch_a41
    move v13, v11

    const/4 v3, 0x1

    const/4 v10, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_a92

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v14, v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->c(II)I

    move-result v6

    goto :goto_a70

    :pswitch_a51
    move v13, v11

    const/4 v3, 0x1

    const/4 v10, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_a92

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/l;->e(IJ)I

    move-result v6

    goto :goto_a70

    :pswitch_a61
    move v13, v11

    const/4 v3, 0x1

    const/4 v10, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_a92

    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(IJ)I

    move-result v6

    :goto_a70
    move v11, v6

    goto/16 :goto_968

    :pswitch_a73
    move v13, v11

    const/4 v3, 0x1

    const/4 v10, 0x0

    and-int v6, v12, v18

    if-eqz v6, :cond_a92

    const/4 v6, 0x0

    invoke-static {v14, v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(IF)I

    move-result v7

    move v11, v7

    goto/16 :goto_968

    :pswitch_a82
    move v13, v11

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    and-int v7, v12, v18

    if-eqz v7, :cond_a92

    const-wide/16 v6, 0x0

    invoke-static {v14, v6, v7}, Lcom/fyber/inneractive/sdk/protobuf/l;->a(ID)I

    move-result v11

    :goto_a90
    add-int/2addr v5, v11

    goto :goto_a94

    :cond_a92
    const-wide/16 v6, 0x0

    :goto_a94
    add-int/lit8 v4, v4, 0x3

    move v11, v13

    const/4 v3, 0x0

    const v6, 0xfffff

    const/4 v7, 0x1

    goto/16 :goto_52e

    :cond_a9e
    iget-object v2, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->o:Lcom/fyber/inneractive/sdk/protobuf/k1;

    invoke-virtual {v2, v1}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/k1;->c(Ljava/lang/Object;)I

    move-result v2

    add-int v12, v5, v2

    iget-boolean v2, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->f:Z

    if-eqz v2, :cond_aba

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    invoke-virtual {v2, v1}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/protobuf/u;->d()I

    move-result v1

    goto/16 :goto_523

    :cond_aba
    :goto_aba
    return v12

    nop

    :pswitch_data_abc
    .packed-switch 0x0
        :pswitch_507
        :pswitch_4fc
        :pswitch_4ed
        :pswitch_4de
        :pswitch_4cf
        :pswitch_4c4
        :pswitch_4b9
        :pswitch_4ae
        :pswitch_490
        :pswitch_47c
        :pswitch_46a
        :pswitch_45a
        :pswitch_44a
        :pswitch_43e
        :pswitch_432
        :pswitch_422
        :pswitch_412
        :pswitch_3fc
        :pswitch_3f0
        :pswitch_3e4
        :pswitch_3d8
        :pswitch_3cc
        :pswitch_3c0
        :pswitch_3b4
        :pswitch_3a8
        :pswitch_39c
        :pswitch_390
        :pswitch_380
        :pswitch_374
        :pswitch_368
        :pswitch_35c
        :pswitch_350
        :pswitch_344
        :pswitch_338
        :pswitch_32c
        :pswitch_30c
        :pswitch_2ef
        :pswitch_2d2
        :pswitch_2b5
        :pswitch_297
        :pswitch_279
        :pswitch_25b
        :pswitch_23b
        :pswitch_21d
        :pswitch_1ff
        :pswitch_1e1
        :pswitch_1c3
        :pswitch_1a5
        :pswitch_187
        :pswitch_177
        :pswitch_167
        :pswitch_159
        :pswitch_14d
        :pswitch_13d
        :pswitch_12d
        :pswitch_11d
        :pswitch_111
        :pswitch_105
        :pswitch_f9
        :pswitch_db
        :pswitch_c7
        :pswitch_b5
        :pswitch_a5
        :pswitch_95
        :pswitch_89
        :pswitch_7d
        :pswitch_6d
        :pswitch_5d
        :pswitch_47
    .end packed-switch

    :pswitch_data_b4a
    .packed-switch 0x0
        :pswitch_a82
        :pswitch_a73
        :pswitch_a61
        :pswitch_a51
        :pswitch_a41
        :pswitch_a35
        :pswitch_a29
        :pswitch_a16
        :pswitch_9f9
        :pswitch_9e6
        :pswitch_9d5
        :pswitch_9c6
        :pswitch_9b7
        :pswitch_9aa
        :pswitch_99f
        :pswitch_990
        :pswitch_981
        :pswitch_96c
        :pswitch_95a
        :pswitch_94d
        :pswitch_940
        :pswitch_933
        :pswitch_926
        :pswitch_919
        :pswitch_90c
        :pswitch_8ff
        :pswitch_8ed
        :pswitch_8dd
        :pswitch_8d1
        :pswitch_8c3
        :pswitch_8b5
        :pswitch_8a7
        :pswitch_899
        :pswitch_88b
        :pswitch_87d
        :pswitch_85c
        :pswitch_83e
        :pswitch_820
        :pswitch_802
        :pswitch_7e3
        :pswitch_7c4
        :pswitch_7a5
        :pswitch_784
        :pswitch_765
        :pswitch_746
        :pswitch_727
        :pswitch_708
        :pswitch_6e9
        :pswitch_6c7
        :pswitch_6b1
        :pswitch_6a2
        :pswitch_694
        :pswitch_684
        :pswitch_675
        :pswitch_666
        :pswitch_657
        :pswitch_64c
        :pswitch_640
        :pswitch_633
        :pswitch_615
        :pswitch_601
        :pswitch_5ef
        :pswitch_5df
        :pswitch_5cf
        :pswitch_5c2
        :pswitch_5b6
        :pswitch_5a6
        :pswitch_596
        :pswitch_580
    .end packed-switch
.end method

.method public final b(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 p2, p2, 0x2

    aget p2, v0, p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    return-void

    :cond_13
    ushr-int/lit8 p2, p2, 0x14

    const/4 v2, 0x1

    shl-int p2, v2, p2

    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v2

    or-int/2addr p2, v2

    invoke-static {p1, v0, v1, p2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final b(Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 p3, p3, 0x2

    aget p3, v0, p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final b(Ljava/lang/Object;ILcom/fyber/inneractive/sdk/protobuf/c1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {p2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->b(Ljava/util/List;)V

    goto :goto_25

    :cond_18
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    invoke-static {p2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/e0;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/fyber/inneractive/sdk/protobuf/c1;->q(Ljava/util/List;)V

    :goto_25
    return-void
.end method

.method public final b(Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/s1;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fyber/inneractive/sdk/protobuf/s1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/u;

    move-result-object v0

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/protobuf/u;->a:Lcom/fyber/inneractive/sdk/protobuf/g1;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/protobuf/u;->f()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_20

    :cond_1e
    move-object v0, v1

    move-object v2, v0

    :goto_20
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_25
    if-ge v5, v3, :cond_622

    invoke-virtual {p0, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->g(I)I

    move-result v6

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    :goto_2f
    if-eqz v2, :cond_4d

    iget-object v8, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    invoke-virtual {v8, v2}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v7, :cond_4d

    iget-object v8, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    invoke-virtual {v8, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Lcom/fyber/inneractive/sdk/protobuf/s1;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_2f

    :cond_4b
    move-object v2, v1

    goto :goto_2f

    :cond_4d
    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->f(I)I

    move-result v8

    const/4 v9, 0x1

    packed-switch v8, :pswitch_data_642

    goto/16 :goto_61e

    :pswitch_57
    invoke-virtual {p0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v8

    move-object v9, p2

    check-cast v9, Lcom/fyber/inneractive/sdk/protobuf/m;

    invoke-virtual {v9, v7, v6, v8}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/d1;)V

    goto/16 :goto_61e

    :pswitch_71
    invoke-virtual {p0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lcom/fyber/inneractive/sdk/protobuf/m;

    invoke-virtual {v6, v7, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(IJ)V

    goto/16 :goto_61e

    :pswitch_87
    invoke-virtual {p0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/fyber/inneractive/sdk/protobuf/m;

    invoke-virtual {v8, v7, v6}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(II)V

    goto/16 :goto_61e

    :pswitch_9d
    invoke-virtual {p0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v6, v7, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/l;->f(IJ)V

    goto/16 :goto_61e

    :pswitch_b5
    invoke-virtual {p0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v8, v7, v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(II)V

    goto/16 :goto_61e

    :pswitch_cd
    invoke-virtual {p0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v8, v7, v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->h(II)V

    goto/16 :goto_61e

    :pswitch_e5
    invoke-virtual {p0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v8, v7, v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->j(II)V

    goto/16 :goto_61e

    :pswitch_fd
    invoke-virtual {p0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fyber/inneractive/sdk/protobuf/i;

    move-object v8, p2

    check-cast v8, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v8, v7, v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(ILcom/fyber/inneractive/sdk/protobuf/i;)V

    goto/16 :goto_61e

    :pswitch_117
    invoke-virtual {p0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v8

    move-object v9, p2

    check-cast v9, Lcom/fyber/inneractive/sdk/protobuf/m;

    invoke-virtual {v9, v7, v6, v8}, Lcom/fyber/inneractive/sdk/protobuf/m;->b(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/d1;)V

    goto/16 :goto_61e

    :pswitch_131
    invoke-virtual {p0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v7, v6, p2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    goto/16 :goto_61e

    :pswitch_144
    invoke-virtual {p0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;J)Z

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v8, v7, v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(IZ)V

    goto/16 :goto_61e

    :pswitch_15c
    invoke-virtual {p0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v8, v7, v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(II)V

    goto/16 :goto_61e

    :pswitch_174
    invoke-virtual {p0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v6, v7, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/l;->f(IJ)V

    goto/16 :goto_61e

    :pswitch_18c
    invoke-virtual {p0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v8, v7, v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->h(II)V

    goto/16 :goto_61e

    :pswitch_1a4
    invoke-virtual {p0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v6, v7, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(IJ)V

    goto/16 :goto_61e

    :pswitch_1bc
    invoke-virtual {p0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v6, v7, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(IJ)V

    goto/16 :goto_61e

    :pswitch_1d4
    invoke-virtual {p0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(Ljava/lang/Object;J)F

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/fyber/inneractive/sdk/protobuf/m;

    invoke-virtual {v8, v7, v6}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(IF)V

    goto/16 :goto_61e

    :pswitch_1ea
    invoke-virtual {p0, p1, v7, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;J)D

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lcom/fyber/inneractive/sdk/protobuf/m;

    invoke-virtual {v6, v7, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(ID)V

    goto/16 :goto_61e

    :pswitch_200
    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, p2, v7, v6, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Lcom/fyber/inneractive/sdk/protobuf/s1;ILjava/lang/Object;I)V

    goto/16 :goto_61e

    :pswitch_20d
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v8

    invoke-static {v7, v6, p2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Lcom/fyber/inneractive/sdk/protobuf/d1;)V

    goto/16 :goto_61e

    :pswitch_224
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/fyber/inneractive/sdk/protobuf/f1;->l(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_237
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/fyber/inneractive/sdk/protobuf/f1;->k(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_24a
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/fyber/inneractive/sdk/protobuf/f1;->j(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_25d
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/fyber/inneractive/sdk/protobuf/f1;->i(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_270
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/fyber/inneractive/sdk/protobuf/f1;->c(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_283
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/fyber/inneractive/sdk/protobuf/f1;->m(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_296
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_2a9
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/fyber/inneractive/sdk/protobuf/f1;->d(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_2bc
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/fyber/inneractive/sdk/protobuf/f1;->e(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_2cf
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/fyber/inneractive/sdk/protobuf/f1;->g(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_2e2
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/fyber/inneractive/sdk/protobuf/f1;->n(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_2f5
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/fyber/inneractive/sdk/protobuf/f1;->h(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_308
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/fyber/inneractive/sdk/protobuf/f1;->f(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_31b
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_32e
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->l(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_341
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->k(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_354
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->j(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_367
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->i(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_37a
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->c(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_38d
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->m(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_3a0
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    goto/16 :goto_61e

    :pswitch_3b3
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v8

    invoke-static {v7, v6, p2, v8}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Lcom/fyber/inneractive/sdk/protobuf/d1;)V

    goto/16 :goto_61e

    :pswitch_3ca
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    goto/16 :goto_61e

    :pswitch_3dd
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_3f0
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->d(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_403
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->e(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_416
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->g(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_429
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->n(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_43c
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->h(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_44f
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->f(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_462
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v7, v7, v5

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->b(ILjava/util/List;Lcom/fyber/inneractive/sdk/protobuf/s1;Z)V

    goto/16 :goto_61e

    :pswitch_475
    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v8

    move-object v9, p2

    check-cast v9, Lcom/fyber/inneractive/sdk/protobuf/m;

    invoke-virtual {v9, v7, v6, v8}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/d1;)V

    goto/16 :goto_61e

    :pswitch_48f
    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lcom/fyber/inneractive/sdk/protobuf/m;

    invoke-virtual {v6, v7, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(IJ)V

    goto/16 :goto_61e

    :pswitch_4a5
    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/fyber/inneractive/sdk/protobuf/m;

    invoke-virtual {v8, v7, v6}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(II)V

    goto/16 :goto_61e

    :pswitch_4bb
    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v6, v7, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/l;->f(IJ)V

    goto/16 :goto_61e

    :pswitch_4d3
    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v8, v7, v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(II)V

    goto/16 :goto_61e

    :pswitch_4eb
    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v8, v7, v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->h(II)V

    goto/16 :goto_61e

    :pswitch_503
    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v8, v7, v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->j(II)V

    goto/16 :goto_61e

    :pswitch_51b
    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fyber/inneractive/sdk/protobuf/i;

    move-object v8, p2

    check-cast v8, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v8, v7, v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(ILcom/fyber/inneractive/sdk/protobuf/i;)V

    goto/16 :goto_61e

    :pswitch_535
    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v8

    move-object v9, p2

    check-cast v9, Lcom/fyber/inneractive/sdk/protobuf/m;

    invoke-virtual {v9, v7, v6, v8}, Lcom/fyber/inneractive/sdk/protobuf/m;->b(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/d1;)V

    goto/16 :goto_61e

    :pswitch_54f
    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v7, v6, p2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(ILjava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    goto/16 :goto_61e

    :pswitch_562
    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    sget-object v6, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v6, p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(Ljava/lang/Object;J)Z

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v8, v7, v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->b(IZ)V

    goto/16 :goto_61e

    :pswitch_57c
    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v8, v7, v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(II)V

    goto/16 :goto_61e

    :pswitch_594
    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v6, v7, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/l;->f(IJ)V

    goto/16 :goto_61e

    :pswitch_5ac
    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v8, v7, v6}, Lcom/fyber/inneractive/sdk/protobuf/l;->h(II)V

    goto :goto_61e

    :pswitch_5c3
    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v6, v7, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(IJ)V

    goto :goto_61e

    :pswitch_5da
    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lcom/fyber/inneractive/sdk/protobuf/m;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/protobuf/m;->a:Lcom/fyber/inneractive/sdk/protobuf/l;

    invoke-virtual {v6, v7, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/l;->g(IJ)V

    goto :goto_61e

    :pswitch_5f1
    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    sget-object v6, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v6, p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->d(Ljava/lang/Object;J)F

    move-result v6

    move-object v8, p2

    check-cast v8, Lcom/fyber/inneractive/sdk/protobuf/m;

    invoke-virtual {v8, v7, v6}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(IF)V

    goto :goto_61e

    :pswitch_608
    invoke-virtual {p0, p1, v5}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_61e

    invoke-static {v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v8

    sget-object v6, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v6, p1, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->c(Ljava/lang/Object;J)D

    move-result-wide v8

    move-object v6, p2

    check-cast v6, Lcom/fyber/inneractive/sdk/protobuf/m;

    invoke-virtual {v6, v7, v8, v9}, Lcom/fyber/inneractive/sdk/protobuf/m;->a(ID)V

    :cond_61e
    :goto_61e
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_25

    :cond_622
    :goto_622
    if-eqz v2, :cond_638

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    invoke-virtual {v3, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Lcom/fyber/inneractive/sdk/protobuf/s1;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_636

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_622

    :cond_636
    move-object v2, v1

    goto :goto_622

    :cond_638
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->o:Lcom/fyber/inneractive/sdk/protobuf/k1;

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;Lcom/fyber/inneractive/sdk/protobuf/s1;)V

    return-void

    :pswitch_data_642
    .packed-switch 0x0
        :pswitch_608
        :pswitch_5f1
        :pswitch_5da
        :pswitch_5c3
        :pswitch_5ac
        :pswitch_594
        :pswitch_57c
        :pswitch_562
        :pswitch_54f
        :pswitch_535
        :pswitch_51b
        :pswitch_503
        :pswitch_4eb
        :pswitch_4d3
        :pswitch_4bb
        :pswitch_4a5
        :pswitch_48f
        :pswitch_475
        :pswitch_462
        :pswitch_44f
        :pswitch_43c
        :pswitch_429
        :pswitch_416
        :pswitch_403
        :pswitch_3f0
        :pswitch_3dd
        :pswitch_3ca
        :pswitch_3b3
        :pswitch_3a0
        :pswitch_38d
        :pswitch_37a
        :pswitch_367
        :pswitch_354
        :pswitch_341
        :pswitch_32e
        :pswitch_31b
        :pswitch_308
        :pswitch_2f5
        :pswitch_2e2
        :pswitch_2cf
        :pswitch_2bc
        :pswitch_2a9
        :pswitch_296
        :pswitch_283
        :pswitch_270
        :pswitch_25d
        :pswitch_24a
        :pswitch_237
        :pswitch_224
        :pswitch_20d
        :pswitch_200
        :pswitch_1ea
        :pswitch_1d4
        :pswitch_1bc
        :pswitch_1a4
        :pswitch_18c
        :pswitch_174
        :pswitch_15c
        :pswitch_144
        :pswitch_131
        :pswitch_117
        :pswitch_fd
        :pswitch_e5
        :pswitch_cd
        :pswitch_b5
        :pswitch_9d
        :pswitch_87
        :pswitch_71
        :pswitch_57
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 v1, p3, 0x1

    aget v1, v0, v1

    aget v0, v0, p3

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-virtual {p0, p2, v0, p3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-nez v3, :cond_13

    return-void

    :cond_13
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-static {p1, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    :cond_1e
    invoke-static {p2, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v3, :cond_31

    if-eqz p2, :cond_31

    invoke-static {v3, p2}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    goto :goto_39

    :cond_31
    if-eqz p2, :cond_39

    invoke-static {p1, v1, v2, p2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;II)V

    :cond_39
    :goto_39
    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x1

    if-ge v2, v0, :cond_27d

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v5

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/protobuf/r0;->f(I)I

    move-result v4

    packed-switch v4, :pswitch_data_2a6

    goto/16 :goto_276

    :pswitch_1b
    iget-object v4, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 v7, v2, 0x2

    aget v4, v4, v7

    const v7, 0xfffff

    and-int/2addr v4, v7

    int-to-long v7, v4

    invoke-static {p1, v7, v8}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v7, v8}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v7

    if-ne v4, v7, :cond_32

    const/4 v4, 0x1

    goto :goto_33

    :cond_32
    const/4 v4, 0x0

    :goto_33
    if-eqz v4, :cond_275

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_275

    goto/16 :goto_276

    :pswitch_45
    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_276

    :pswitch_53
    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_276

    :pswitch_61
    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p0, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v7

    if-ne v4, v7, :cond_6d

    const/4 v4, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v4, 0x0

    :goto_6e
    if-eqz v4, :cond_275

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_275

    goto/16 :goto_276

    :pswitch_80
    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p0, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v7

    if-ne v4, v7, :cond_8c

    const/4 v4, 0x1

    goto :goto_8d

    :cond_8c
    const/4 v4, 0x0

    :goto_8d
    if-eqz v4, :cond_275

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-nez v6, :cond_275

    goto/16 :goto_276

    :pswitch_9d
    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p0, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v7

    if-ne v4, v7, :cond_a9

    const/4 v4, 0x1

    goto :goto_aa

    :cond_a9
    const/4 v4, 0x0

    :goto_aa
    if-eqz v4, :cond_275

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_275

    goto/16 :goto_276

    :pswitch_b8
    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p0, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v7

    if-ne v4, v7, :cond_c4

    const/4 v4, 0x1

    goto :goto_c5

    :cond_c4
    const/4 v4, 0x0

    :goto_c5
    if-eqz v4, :cond_275

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-nez v6, :cond_275

    goto/16 :goto_276

    :pswitch_d5
    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p0, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v7

    if-ne v4, v7, :cond_e1

    const/4 v4, 0x1

    goto :goto_e2

    :cond_e1
    const/4 v4, 0x0

    :goto_e2
    if-eqz v4, :cond_275

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_275

    goto/16 :goto_276

    :pswitch_f0
    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p0, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v7

    if-ne v4, v7, :cond_fc

    const/4 v4, 0x1

    goto :goto_fd

    :cond_fc
    const/4 v4, 0x0

    :goto_fd
    if-eqz v4, :cond_275

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_275

    goto/16 :goto_276

    :pswitch_10b
    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p0, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v7

    if-ne v4, v7, :cond_117

    const/4 v4, 0x1

    goto :goto_118

    :cond_117
    const/4 v4, 0x0

    :goto_118
    if-eqz v4, :cond_275

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_275

    goto/16 :goto_276

    :pswitch_126
    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p0, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v7

    if-ne v4, v7, :cond_132

    const/4 v4, 0x1

    goto :goto_133

    :cond_132
    const/4 v4, 0x0

    :goto_133
    if-eqz v4, :cond_275

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_275

    goto/16 :goto_276

    :pswitch_145
    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p0, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v7

    if-ne v4, v7, :cond_151

    const/4 v4, 0x1

    goto :goto_152

    :cond_151
    const/4 v4, 0x0

    :goto_152
    if-eqz v4, :cond_275

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_275

    goto/16 :goto_276

    :pswitch_164
    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p0, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v7

    if-ne v4, v7, :cond_170

    const/4 v4, 0x1

    goto :goto_171

    :cond_170
    const/4 v4, 0x0

    :goto_171
    if-eqz v4, :cond_275

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fyber/inneractive/sdk/protobuf/f1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_275

    goto/16 :goto_276

    :pswitch_183
    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p0, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v7

    if-ne v4, v7, :cond_18f

    const/4 v4, 0x1

    goto :goto_190

    :cond_18f
    const/4 v4, 0x0

    :goto_190
    if-eqz v4, :cond_275

    sget-object v4, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v4, p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(Ljava/lang/Object;J)Z

    move-result v7

    invoke-virtual {v4, p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v7, v4, :cond_275

    goto/16 :goto_276

    :pswitch_1a0
    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p0, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v7

    if-ne v4, v7, :cond_1ac

    const/4 v4, 0x1

    goto :goto_1ad

    :cond_1ac
    const/4 v4, 0x0

    :goto_1ad
    if-eqz v4, :cond_275

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_275

    goto/16 :goto_276

    :pswitch_1bb
    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p0, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v7

    if-ne v4, v7, :cond_1c7

    const/4 v4, 0x1

    goto :goto_1c8

    :cond_1c7
    const/4 v4, 0x0

    :goto_1c8
    if-eqz v4, :cond_275

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-nez v6, :cond_275

    goto/16 :goto_276

    :pswitch_1d8
    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p0, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v7

    if-ne v4, v7, :cond_1e4

    const/4 v4, 0x1

    goto :goto_1e5

    :cond_1e4
    const/4 v4, 0x0

    :goto_1e5
    if-eqz v4, :cond_275

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_275

    goto/16 :goto_276

    :pswitch_1f3
    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p0, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v7

    if-ne v4, v7, :cond_1ff

    const/4 v4, 0x1

    goto :goto_200

    :cond_1ff
    const/4 v4, 0x0

    :goto_200
    if-eqz v4, :cond_275

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-nez v6, :cond_275

    goto :goto_276

    :pswitch_20f
    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p0, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v7

    if-ne v4, v7, :cond_21b

    const/4 v4, 0x1

    goto :goto_21c

    :cond_21b
    const/4 v4, 0x0

    :goto_21c
    if-eqz v4, :cond_275

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-nez v6, :cond_275

    goto :goto_276

    :pswitch_22b
    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p0, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v7

    if-ne v4, v7, :cond_237

    const/4 v4, 0x1

    goto :goto_238

    :cond_237
    const/4 v4, 0x0

    :goto_238
    if-eqz v4, :cond_275

    sget-object v4, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v4, p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->d(Ljava/lang/Object;J)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v7

    invoke-virtual {v4, p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->d(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v7, v4, :cond_275

    goto :goto_276

    :pswitch_24f
    invoke-virtual {p0, p1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p0, p2, v2}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;I)Z

    move-result v7

    if-ne v4, v7, :cond_25b

    const/4 v4, 0x1

    goto :goto_25c

    :cond_25b
    const/4 v4, 0x0

    :goto_25c
    if-eqz v4, :cond_275

    sget-object v4, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v4, p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->c(Ljava/lang/Object;J)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    invoke-virtual {v4, p2, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->c(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-nez v6, :cond_275

    goto :goto_276

    :cond_275
    const/4 v3, 0x0

    :goto_276
    if-nez v3, :cond_279

    return v1

    :cond_279
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_5

    :cond_27d
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->o:Lcom/fyber/inneractive/sdk/protobuf/k1;

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->o:Lcom/fyber/inneractive/sdk/protobuf/k1;

    invoke-virtual {v2, p2}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_290

    return v1

    :cond_290
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->f:Z

    if-eqz v0, :cond_2a5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/u;

    move-result-object p1

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    invoke-virtual {v0, p2}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/u;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/u;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2a5
    return v3

    :pswitch_data_2a6
    .packed-switch 0x0
        :pswitch_24f
        :pswitch_22b
        :pswitch_20f
        :pswitch_1f3
        :pswitch_1d8
        :pswitch_1bb
        :pswitch_1a0
        :pswitch_183
        :pswitch_164
        :pswitch_145
        :pswitch_126
        :pswitch_10b
        :pswitch_f0
        :pswitch_d5
        :pswitch_b8
        :pswitch_9d
        :pswitch_80
        :pswitch_61
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_45
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public final c(I)Lcom/fyber/inneractive/sdk/protobuf/d1;
    .registers 5

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    check-cast v1, Lcom/fyber/inneractive/sdk/protobuf/d1;

    if-eqz v1, :cond_d

    return-object v1

    :cond_d
    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/z0;->c:Lcom/fyber/inneractive/sdk/protobuf/z0;

    add-int/lit8 v2, p1, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lcom/fyber/inneractive/sdk/protobuf/z0;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/protobuf/d1;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->b:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->k:I

    :goto_2
    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->l:I

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->j:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->g(I)I

    move-result v1

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_19

    goto :goto_22

    :cond_19
    iget-object v4, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->q:Lcom/fyber/inneractive/sdk/protobuf/j0;

    invoke-interface {v4, v3}, Lcom/fyber/inneractive/sdk/protobuf/j0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_25
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->j:[I

    array-length v0, v0

    :goto_28
    if-ge v1, v0, :cond_37

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->n:Lcom/fyber/inneractive/sdk/protobuf/e0;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->j:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/e0;->a(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_37
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->o:Lcom/fyber/inneractive/sdk/protobuf/k1;

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/k1;->e(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->f:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/r;->c(Ljava/lang/Object;)V

    :cond_45
    return-void
.end method

.method public d(Ljava/lang/Object;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v1, v0, :cond_230

    invoke-virtual {p0, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->g(I)I

    move-result v3

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    aget v4, v4, v1

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(I)J

    move-result-wide v5

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/protobuf/r0;->f(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_252

    goto/16 :goto_22c

    :pswitch_1e
    invoke-virtual {p0, p1, v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_22c

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_22b

    :pswitch_30
    invoke-virtual {p0, p1, v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_22c

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(J)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_42
    invoke-virtual {p0, p1, v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_22c

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_50
    invoke-virtual {p0, p1, v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_22c

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(J)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_62
    invoke-virtual {p0, p1, v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_22c

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_70
    invoke-virtual {p0, p1, v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_22c

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_7e
    invoke-virtual {p0, p1, v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_22c

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_8c
    invoke-virtual {p0, p1, v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_22c

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_22b

    :pswitch_9e
    invoke-virtual {p0, p1, v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_22c

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_22b

    :pswitch_b0
    invoke-virtual {p0, p1, v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_22c

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_22b

    :pswitch_c4
    invoke-virtual {p0, p1, v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_22c

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(Z)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_d6
    invoke-virtual {p0, p1, v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_22c

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_e4
    invoke-virtual {p0, p1, v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_22c

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(J)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_f6
    invoke-virtual {p0, p1, v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_22c

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_104
    invoke-virtual {p0, p1, v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_22c

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(J)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_116
    invoke-virtual {p0, p1, v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_22c

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(J)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_128
    invoke-virtual {p0, p1, v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_22c

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->c(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_13a
    invoke-virtual {p0, p1, v4, v1}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_22c

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/r0;->b(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(J)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_150
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_22b

    :pswitch_15c
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_22b

    :pswitch_168
    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1c1

    :pswitch_173
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(J)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_17f
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_187
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(J)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_193
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_19b
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_1a3
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_22b

    :pswitch_1ab
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_22b

    :pswitch_1b7
    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1c1
    :goto_1c1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_22c

    :pswitch_1c5
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_22b

    :pswitch_1d2
    mul-int/lit8 v2, v2, 0x35

    sget-object v3, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v3, p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->a(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(Z)I

    move-result v3

    goto :goto_22b

    :pswitch_1df
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_22b

    :pswitch_1e6
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(J)I

    move-result v3

    goto :goto_22b

    :pswitch_1f1
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->e(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_22b

    :pswitch_1f8
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(J)I

    move-result v3

    goto :goto_22b

    :pswitch_203
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(J)I

    move-result v3

    goto :goto_22b

    :pswitch_20e
    mul-int/lit8 v2, v2, 0x35

    sget-object v3, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v3, p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->d(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_22b

    :pswitch_21b
    mul-int/lit8 v2, v2, 0x35

    sget-object v3, Lcom/fyber/inneractive/sdk/protobuf/p1;->e:Lcom/fyber/inneractive/sdk/protobuf/p1$d;

    invoke-virtual {v3, p1, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/p1$d;->c(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/y;->a(J)I

    move-result v3

    :goto_22b
    add-int/2addr v2, v3

    :cond_22c
    :goto_22c
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_5

    :cond_230
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->o:Lcom/fyber/inneractive/sdk/protobuf/k1;

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/k1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->f:Z

    if-eqz v0, :cond_250

    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->p:Lcom/fyber/inneractive/sdk/protobuf/r;

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/protobuf/r;->a(Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/protobuf/u;

    move-result-object p1

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/protobuf/u;->a:Lcom/fyber/inneractive/sdk/protobuf/g1;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/g1;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_250
    return v2

    nop

    :pswitch_data_252
    .packed-switch 0x0
        :pswitch_21b
        :pswitch_20e
        :pswitch_203
        :pswitch_1f8
        :pswitch_1f1
        :pswitch_1e6
        :pswitch_1df
        :pswitch_1d2
        :pswitch_1c5
        :pswitch_1b7
        :pswitch_1ab
        :pswitch_1a3
        :pswitch_19b
        :pswitch_193
        :pswitch_187
        :pswitch_17f
        :pswitch_173
        :pswitch_168
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_150
        :pswitch_13a
        :pswitch_128
        :pswitch_116
        :pswitch_104
        :pswitch_f6
        :pswitch_e4
        :pswitch_d6
        :pswitch_c4
        :pswitch_b0
        :pswitch_9e
        :pswitch_8c
        :pswitch_7e
        :pswitch_70
        :pswitch_62
        :pswitch_50
        :pswitch_42
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method

.method public final e(I)I
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->c:I

    if-lt p1, v0, :cond_e

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->d:I

    if-gt p1, v0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r0;->a(II)I

    move-result p1

    return p1

    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method public final g(I)I
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r0;->a:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method
